<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class LocationGeoJSON extends GeoJSON {

	public function __construct($locationID) {

		if(is_int($locationID) !== true) {

			throw New Exception;

		}

		$this->setLocations(LocationQuery::create()->filterByID($locationID)->find());

	}

}

?>
