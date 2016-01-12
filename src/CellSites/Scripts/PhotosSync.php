<?php

namespace CellSites\Scripts;

use CellSites\Database\Photo;
use CellSites\Database\PhotoQuery;
use DateTime;
use Imagick;
use ImagickDraw;

class PhotosSync {

	private $options = null;
	private $originalsDirectory = null;
	private $photosDirectory = null;
	private $thumbnailsDirectory = null;

	public function __construct() {

		$this->options = getopt('dghpt');

	}

	private function checkOriginalsDirectory() {

		echo('Checking originals directory...' . PHP_EOL);

		if(is_dir(CELLSITES_PHOTOS_ORIGNALS_DIR) !== true) {

			echo('Originals directory ' . CELLSITES_PHOTOS_ORIGNALS_DIR . ' does not exist. Please check your CELLSITES_PHOTOS_ORIGNALS_DIR configuration.');

		}

		$this->originalsDirectory = dir(CELLSITES_PHOTOS_ORIGNALS_DIR);
		echo('Using originals directory ' . CELLSITES_PHOTOS_ORIGNALS_DIR . '.' . PHP_EOL . PHP_EOL);

	}

	private function checkPhotosDirectory() {

		echo('Checking photos directory...' . PHP_EOL);

		$photosDirectory = CELLSITES_PHOTOS_TARGET_DIR . '1280x720/';

		if(is_dir($photosDirectory) !== true) {

			if(isset($this->options['p']) !== true) {

				echo('Photos directory ' . $photosDirectory . ' does not exist. Run with -p flag to create.' . PHP_EOL);
				exit;

			}

			if(mkdir($photosDirectory,0777,true) !== true) {

				echo('Could not create photos directory ' . $photosDirectory . '.' . PHP_EOL);
				exit;

			}

			echo('Photos directory ' . $photosDirectory . ' has been created.' . PHP_EOL);

		}

		$this->photosDirectory = dir($photosDirectory);
		echo('Using photos directory ' . $photosDirectory . '.' . PHP_EOL . PHP_EOL);

	}

	private function checkThumbnailsDirectory() {

		echo('Checking thumbnails directory...' . PHP_EOL);

		$thumbnailsDirectory = CELLSITES_PHOTOS_TARGET_DIR . '243x161/';

		if(is_dir($thumbnailsDirectory) !== true) {

			if(isset($this->options['t']) !== true) {

				echo('Thumbnails directory ' . $thumbnailsDirectory . ' does not exist. Run with -t flag to create.' . PHP_EOL);
				exit;

			}

			if(mkdir($thumbnailsDirectory,0777,true) !== true) {

				echo('Could not create thumbnails directory ' . $thumbnailsDirectory . '.' . PHP_EOL);
				exit;

			}

			echo('Thumbnails directory ' . $thumbnailsDirectory . ' has been created.' . PHP_EOL);

		}

		$this->thumbnailsDirectory = dir($thumbnailsDirectory);
		echo('Using thumbnails directory ' . $thumbnailsDirectory . '.' . PHP_EOL . PHP_EOL);

	}

	private function createDatabaseEntries() {

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

	private function generatePhotos($thumbnails = false) {

		if($thumbnails === false) {

			echo('Generating photos...' . PHP_EOL);

		} else {

			echo('Generating thumbnails...' . PHP_EOL);

		}

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

			if($thumbnails === false) {

				echo($numberOfSkippedPhotos . ' photos were skipped because they already existed.' . PHP_EOL);

			} else {

				echo($numberOfSkippedPhotos . ' thumbnails were skipped because they already existed.' . PHP_EOL);

			}

		}

		echo(PHP_EOL);

	}

	public function process() {

		$this->checkOriginalsDirectory();
		$this->checkPhotosDirectory();
		$this->checkThumbnailsDirectory();
		$this->createDatabaseEntries();
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
