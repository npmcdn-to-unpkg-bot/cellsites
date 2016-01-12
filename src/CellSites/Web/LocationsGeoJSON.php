<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class LocationsGeoJSON extends GeoJSON {

	public function __construct() {

		$this->setLocations(LocationQuery::create()->find());

	}

}

?>
