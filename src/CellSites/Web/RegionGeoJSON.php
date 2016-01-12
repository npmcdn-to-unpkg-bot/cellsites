<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class RegionGeoJSON extends GeoJSON {

	public function __construct($regionID) {

		if(is_int($regionID) !== true) {

			throw new Exception;

		}

		$this->setLocations(LocationQuery::create()->filterByRegionID($regionID)->find());

	}

}

?>
