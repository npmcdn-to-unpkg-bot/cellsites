<?php

namespace CellSites\Scripts;

use CellSites\Database\Photo;
use CellSites\Database\PhotoQuery;
use DateTime;
use Imagick;
use ImagickDraw;
use LogicException;

class PhotosSync {

    const ORIGINAL = 1;
    const PHOTO = 2;
    const THUMBNAIL = 3;

    private $options = NULL;
    private $originalsDirectory = NULL;
    private $photosDirectory = NULL;
    private $thumbnailsDirectory = NULL;

    public function __construct() {

        $this->options = getopt('dghopt');

        if(defined('CELLSITES_PHOTOS_ORIGNALS_DIR') !== TRUE) {

            echo('Notice: Configuration constant CELLSITES_PHOTOS_ORIGNALS_DIR has not been defined.' . PHP_EOL . PHP_EOL);

        }

        if(defined('CELLSITES_PHOTOS_TARGET_DIR') !== TRUE) {

            echo('Notice: Configuration constant CELLSITES_PHOTOS_TARGET_DIR has not been defined.' . PHP_EOL . PHP_EOL);

        }

    }

    private function checkDirectory($type) {

        if($type === self::ORIGINAL) {

            if(defined('CELLSITES_PHOTOS_ORIGNALS_DIR') !== TRUE) {

                echo('Skipping check of originals directory because constant CELLSITES_PHOTOS_ORIGNALS_DIR has not been defined.' . PHP_EOL . PHP_EOL);
                return;

            }

            $option = 'o';
            $plural = 'originals';
            $pluralCapitalised = 'Originals';
            $directory =& $this->originalsDirectory;
            $directoryPath = CELLSITES_PHOTOS_ORIGNALS_DIR;

        } elseif($type === self::PHOTO || $type === self::THUMBNAIL) {

            if(defined('CELLSITES_PHOTOS_TARGET_DIR') !== TRUE) {

                echo('Skipping check of ' . $plural . ' directory because constant CELLSITES_PHOTOS_TARGET_DIR has not been defined.' . PHP_EOL);
                return;

            }

            if($type === self::PHOTO) {

                $option = 't';
                $plural = 'photos';
                $pluralCapitalised = 'Photos';
                $directory =& $this->photosDirectory;
                $directoryPath = CELLSITES_PHOTOS_TARGET_DIR . '1280x720/';

            } elseif($type === self::THUMBNAIL) {

                $option = 'p';
                $plural = 'thumbnails';
                $pluralCapitalised = 'Thumbnails';
                $directory =& $this->thumbnailsDirectory;
                $directoryPath = CELLSITES_PHOTOS_TARGET_DIR . '243x161/';

            }

        } else {

            throw new LogicException('Given type must be either a ORIGINAL, PHOTO or THUMBNAIL.');

        }

        echo('Checking ' . $plural . ' directory...' . PHP_EOL);

        if(is_dir($directoryPath) !== true) {

            if(isset($this->options[$option]) !== true) {

                echo($pluralCapitalised . ' directory ' . $directoryPath . ' does not exist. Run with -' . $option . ' flag to create.' . PHP_EOL);
                exit;

            }

            if(mkdir($directoryPath,0777,true) !== true) {

                echo('Could not create ' . $plural . ' directory ' . $directoryPath . '.' . PHP_EOL);
                exit;

            }

            echo($pluralCapitalised . ' directory ' . $directoryPath . ' has been created.' . PHP_EOL);

        }

        $directory = dir($directoryPath);

        echo('Using ' . $plural . ' directory ' . $directoryPath . '.' . PHP_EOL . PHP_EOL);

    }

    private function createDatabaseEntries() {

        if(defined('CELLSITES_PHOTOS_ORIGNALS_DIR') !== TRUE) {

            echo('Skipping creation of database entries because constant CELLSITES_PHOTOS_ORIGNALS_DIR has not been defined.' . PHP_EOL . PHP_EOL);
            return;

        }

		echo('Creating database entries...' . PHP_EOL);

		$this->originalsDirectory->rewind();

		$numberOfPhotosSkipped = 0;

		while(($file = $this->originalsDirectory->read()) !== false) {

			if($file === '.' || $file === '..' ||
					preg_match('/^([1-9][0-9]*)\.jpg$/',$file,$matches) !== 1 ||
					PhotoQuery::create()->filterByID((int)$matches[1])->count() !== 0) {

				$numberOfPhotosSkipped++;
				continue;

			}

			$filePath = $this->originalsDirectory->path . $file;

			$hash = hash_file('fnv1a64',$filePath);

			if(PhotoQuery::create()->filterByHash($hash)->count() !== 0) {

				echo('Duplicate hash <' . $hash . '> for original photo ' . $filePath . '.' . PHP_EOL);
				continue;

			}

			if(isset($this->options['d']) !== true) {

				echo('Database entry for original photo ' . $filePath . ' does not exist. Run with -d flag to create.' . PHP_EOL);

			} else {

				$exif = exif_read_data($filePath);

				$photo = new Photo();
				$photo->setID((int)$matches[1]);
				$photo->setHash($hash);
				$photo->setVisible(true);

				if($exif !== false && isset($exif['DateTimeDigitized'])) {

					$photo->setTaken(new DateTime($exif['DateTimeDigitized']));

				}

				$photo->save();
				echo('Database entry for ' . $filePath . ' has been created.' . PHP_EOL);

			}

		}

		if($numberOfPhotosSkipped > 0) {

			echo($numberOfPhotosSkipped . ' photos skipped because they already had a database entry.' . PHP_EOL);

		}

		echo(PHP_EOL);

	}

    private function deletePhotos($type) {

        if($type === self::PHOTO) {

            $singular = 'photo';
            $plural = 'photos';
            $directory = $this->photosDirectory;

        } elseif($type === self::THUMBNAIL) {

            $singular = 'thumbnail';
            $plural = 'thumbnails';
            $directory = $this->thumbnailsDirectory;

        } else {

            throw new LogicException('Given type must be either a PHOTO or THUMBNAIL.');

        }

        if(defined('CELLSITES_PHOTOS_TARGET_DIR') !== TRUE) {

            echo('Skipping deletion of orphan ' . $plural . ' because constant CELLSITES_PHOTOS_TARGET_DIR has not been defined.' . PHP_EOL);
            return;

        }

        echo('Deleting orphan ' . $plural . '...' . PHP_EOL);

        $directory->rewind();

        while(FALSE !== ($file = $directory->read())) {

            if(preg_match('/^([1-9][0-9]*)\.jpg$/',$file,$matches) === 1) {

                $target[(int)$matches[1]] = FALSE;

            }

        }

        $photos = PhotoQuery::create()->filterByVisible(true)->find();

        foreach($photos as $thisPhoto) {

            if(isset($target[$thisPhoto->getID()]) === TRUE) {

                unset($target[(int)$thisPhoto->getID()]);

            }

        }

        if(count($target) === 0) {

            echo('There were no ' . $plural . ' to delete.' . PHP_EOL);

        }

        echo(PHP_EOL);

    }

    private function generatePhotos($thumbnails = false) {

        if($thumbnails === false) {

            $plural = 'photos';

        } else {

            $plural = 'thumbnails';

        }

        if(defined('CELLSITES_PHOTOS_ORIGNALS_DIR') !== TRUE) {

            echo('Skipping generation of ' .  $plural . ' because constant CELLSITES_PHOTOS_ORIGNALS_DIR has not been defined.' . PHP_EOL);
            return;

        } elseif(defined('CELLSITES_PHOTOS_TARGET_DIR') !== TRUE) {

            echo('Skipping generation of ' . $plural . ' because constant CELLSITES_PHOTOS_TARGET_DIR has not been defined.' . PHP_EOL);
            return;

        }

        echo('Generating ' . $plural . '...' . PHP_EOL);

		$photos = PhotoQuery::create()->filterByVisible(true)->orderByID()->find();

		if($thumbnails === false && isset($this->options['g']) === true) {

			$imagickDraw = new ImagickDraw;
			$imagickDraw->setFillColor('#ffff00');
			$imagickDraw->setTextUnderColor('#ff000088'); 
			$imagickDraw->setFont('Helvetica-Bold');
			$imagickDraw->setFontSize(20);

		}

		$numberOfSkippedPhotos = 0;

		foreach($photos as $thisPhoto) {

			if($thumbnails === false) {

				$photoPath = $this->photosDirectory->path . $thisPhoto->getID() . '.jpg';
				$photoWidth = 1280;
				$photoHeight = 720;

			} else {

				$photoPath = $this->thumbnailsDirectory->path . $thisPhoto->getID() . '.jpg';
				$photoWidth = 243;
				$photoHeight = 161;

			}

			if(file_exists($photoPath) === true) {

				$numberOfSkippedPhotos++;
				continue;

			}

			if($thumbnails === false && isset($this->options['g']) !== true) {

				echo('Photo ' . $photoPath . ' does not exist. Run with -g flag to create with dimensions ' . $photoWidth . 'x' . $photoHeight . '.' . PHP_EOL);

			} elseif($thumbnails === true && isset($this->options['h']) !== true) {

				echo('Photo ' . $photoPath . ' does not exist. Run with -h flag to create with dimensions ' . $photoWidth . 'x' . $photoHeight . '.' . PHP_EOL);

			} else {

				$imagick = new Imagick();
				$imagick->setOption('jpeg:size', $photoWidth . 'x' . $photoHeight);
				$imagick->readImage($this->originalsDirectory->path . '/' . $thisPhoto->getID() . '.jpg');
				self::rotateImagick($imagick,$thisPhoto->getOrientationOverride());

				if($thumbnails === false ) {

					$imagick->thumbnailImage($photoWidth,$photoHeight,true);
					$imagick->annotateImage($imagickDraw,5,25,0,'CC BY-NC-SA 4.0 james@pole.net.nz');

				} else {

					$imagick->cropThumbnailImage($photoWidth,$photoHeight);

				}

				$imagick->writeImage($photoPath);
				echo('Photo ' . $photoPath . ' has been created with dimensions ' . $photoWidth . 'x' . $photoHeight . '.' . PHP_EOL);

			}

		}

		if($numberOfSkippedPhotos > 0) {

            echo($numberOfSkippedPhotos . ' ' . $plural . ' were skipped because they already existed.' . PHP_EOL);

		}

		echo(PHP_EOL);

	}

    public function process() {

        $this->checkDirectory(self::ORIGINAL);
        $this->checkDirectory(self::PHOTO);
        $this->checkDirectory(self::THUMBNAIL);
        $this->createDatabaseEntries();
        $this->deletePhotos(self::PHOTO);
        $this->deletePhotos(self::THUMBNAIL);
        $this->generatePhotos();
        $this->generatePhotos(true);

    }

    private static function rotateImagick($imagick, $orientation = null) {

        if($orientation === null) {

            $orientation = $imagick->getImageOrientation();

        }

        switch($orientation) {

            case Imagick::ORIENTATION_TOPRIGHT:
            $imagick->flopImage();
            break;

            case Imagick::ORIENTATION_BOTTOMRIGHT:
            $imagick->rotateImage('#000', 180);
            break;

            case Imagick::ORIENTATION_BOTTOMLEFT:
            $imagick->flopImage();
            $imagick->rotateImage('#000', 180);
            break;

            case Imagick::ORIENTATION_LEFTTOP:
            $imagick->flopImage();
            $imagick->rotateImage('#000', -90);
            break;

            case Imagick::ORIENTATION_RIGHTTOP:
            $imagick->rotateImage('#000', 90);
            break;

            case Imagick::ORIENTATION_RIGHTBOTTOM:
            $imagick->flopImage();
            $imagick->rotateImage('#000', 90);
            break;

            case Imagick::ORIENTATION_LEFTBOTTOM:
            $imagick->rotateImage('#000', -90);
            break;

        }

        $imagick->setImageOrientation(Imagick::ORIENTATION_TOPLEFT);

    }

}

?>
