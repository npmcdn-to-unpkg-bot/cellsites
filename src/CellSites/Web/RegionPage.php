<?php

namespace CellSites\Web;

use CellSites\Database\RegionQuery;

class RegionPage extends MapPage {

	public function __construct($regionID) {

		if(!is_int($regionID)) {

			throw new Exception('Given Region ID was not an integer.');

		}

		$this->region = RegionQuery::create()->findPk($regionID);

		if($this->region === null) {

			$page = new ResourceNotFoundPage;
			$page->generate();
			exit;

		}

		$maps = array();
		$maps[] = $this->region->getGeoJSONURL();

		if($this->region->getGeoJSON() !== null) {

			$maps[] = $this->region->getGeoJSON();

		}

		parent::__construct('Map of ' . $this->region->getName(), $maps);

	}

}

?>
