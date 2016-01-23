<?php

namespace CellSites\Web;

use LogicException;
use CellSites\Database\Photo;
use Propel\Runtime\Collection\ObjectCollection;

class ThumbnailsDiv {

    private $photos;

    public function __construct(ObjectCollection $photos) {

        if($photos === NULL) {

            throw new LogicException('Given Photo Collection must not be NULL.');

        } elseif($photos->count() === 0) {

            throw new LogicException('Given Photo Collection must have at least one Photo.');

        }

        foreach($photos as $thisPhoto) {

            if($thisPhoto instanceof Photo !== TRUE) {

                throw new LogicException('Given Photo colleciton must not contain a member that is not a Photo.');

            }

        }

        $this->photos = $photos;

    }

    public function generate() {

        $x = 0;

        foreach($this->photos as $thisPhoto) {

            if($x % 4 === 0) {

                echo('<div class="row">'. PHP_EOL);

            }

            $thumbnailDiv = new ThumbnailDiv($thisPhoto);
            $thumbnailDiv->generate();

            if($x % 4 === 3) {

                echo('</div>' . PHP_EOL); // end .row

            }

            $x++;

        }

        if($x % 4 !== 0) {

            echo('</div>' . PHP_EOL); // end .row

        }

    }

}
