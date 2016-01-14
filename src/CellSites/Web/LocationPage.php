<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;
use CellSites\Database\PhotoQuery;

class LocationPage extends Page {

	private $location = null;
	private $photoQuery = null;

	public function __construct($locationID) {

		if(is_int($locationID) !== true) {

			throw new Exception;

		}

		$this->location = LocationQuery::create()->findPk($locationID);
		$this->photoQuery = PhotoQuery::create()->filterByVisible(true)->orderByTaken()->filterByLocation($this->location);

		if($this->location->getRegion() !== null) {

			$this->addBreadcrumb(new Breadcrumb($this->location->getRegion()->getName(),$this->location->getRegion()->getURL()));

		}

		$this->addBreadcrumb(new Breadcrumb($this->location->getName(),null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1 style="margin: 0">' . $this->location . ' <small>(#' . $this->location->getID() . ')</small></h1>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

    $map = new MapDiv(array('http://cellsites.nz/location/' . $this->location->getID() . '/geojson'));
    $map->generate();

		if($this->photoQuery->count() > 0) {

			echo('<div class="well">' . PHP_EOL);
			echo('<h2 style="margin-top: 0">Photos</h2>' . PHP_EOL);
			echo('<div class="row">' . PHP_EOL);

			foreach($this->photoQuery->find() as $thisPhoto) {

				$thumbnailDiv = new ThumbnailDiv($thisPhoto);
                $thumbnailDiv->generate();

			}

			echo('</div>' . PHP_EOL); // end .row
			echo('</div>' . PHP_EOL); // end .well

		}


	}

}

?>
