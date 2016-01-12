<?php

namespace CellSites\Web;

use CellSites\Database\RegionQuery;

class RegionPage extends Page {

	private $region = null;

	public function __construct($regionID) {

		if(!is_int($regionID)) {

			throw new Exception('Given Region ID was not an integer.');

		}

		$this->region = RegionQuery::create()
			->useLocationQuery()
				->orderByName()
			->endUse()
			->with('Location')
			->findPk($regionID);

		if($this->region === null) {

			$page = new ResourceNotFoundPage;
			$page->generate();
			exit;

		}

		$this->addBreadcrumb(new Breadcrumb($this->region->getName(),null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>' . $this->region . ' <small>(#' . $this->region->getID() . ')</small></h1>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

		if($this->region->getGeoJSON() !== null) {

			echo('<p class="alert alert-warning">If you are on a slow connnection, you may want to wait until the regional boundary (in with grey shading and black	lines) have finished loading before you explore the map.</p>' . PHP_EOL);

		}

		$maps = array();
		$maps[] = 'http://cellsites.nz/region/' . $this->region->getID() . '/geojson';

		if($this->region->getGeoJSON() !== null) {

			$maps[] = $this->region->getGeoJSON();

		}

		$map = new MapDiv($maps);

		$map->generate();

		echo('<div class="well regionLocations">' . PHP_EOL);
		echo('<ul>' . PHP_EOL);

		foreach($this->region->getLocations() as $thisLocation) {

			print('<li><a href="/location/' . $thisLocation->getID() . '">' . $thisLocation . '</a></li>' . PHP_EOL);

		}

		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

	}

}

?>
