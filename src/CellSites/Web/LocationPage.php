<?php

namespace CellSites\Web;

use LogicException;
use CellSites\Database\LocationQuery;
use CellSites\Database\PhotoQuery;

class LocationPage extends Page {

    private $location = NULL;
    private $photoQuery = NULL;

    public function __construct($locationID) {

        if(is_int($locationID) !== TRUE) {

            throw new LogicException('Given Location ID must be an integer.');

        }

        $this->location = LocationQuery::create()->findPk($locationID);
        $this->photoQuery = PhotoQuery::create()->filterByVisible(TRUE)->orderByTaken()->filterByLocation($this->location);

        if($this->location->getRegion() !== NULL) {

            $this->addBreadcrumb(new Breadcrumb($this->location->getRegion()->getName(),$this->location->getRegion()->getURL()));

        }

        $this->addBreadcrumb(new Breadcrumb($this->location->getName()));

    }

    protected function body() {

        echo('<div class="well"><h1>' . $this->location . ' <small>(#' . $this->location->getID() . ')</small></h1></div>' . PHP_EOL);

        $map = new MapDiv(array($this->location->getGeoJSONURL()));
        $map->generate();

        if($this->photoQuery->count() > 0) {

            echo('<div class="well">' . PHP_EOL);
            echo('<h2 style="margin-top: 0">Photos</h2>' . PHP_EOL);

            $thumbnails = new ThumbnailsDiv($this->photoQuery->find());
            $thumbnails->generate();

            echo('</div>' . PHP_EOL);

        }

    }

}

?>
