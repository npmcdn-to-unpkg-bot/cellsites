<?php

namespace CellSites\Web;

class GlobalMapPage extends MapPage {

	public function __construct() {

		parent::__construct('Map',array('https://cellsites.nz/locations/geojson'));

	}

}

?>
