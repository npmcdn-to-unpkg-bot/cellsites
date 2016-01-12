<?php

namespace CellSites\Web;

use CellSites\Database\NetworkQuery;
use CellSites\Database\RegionQuery;

class HomePage extends Page {

	private $networks = null;
	private $regionsRoot = null;

	public function __construct() {

		$this->networks = NetworkQuery::create()->orderByName()->find();
		$this->regionsRoot = RegionQuery::create()->findRoot();

	}

	protected function body() {

		echo('<div class="row">' . PHP_EOL);

		$this->regions();
		$this->networks();

		echo('</div>' . PHP_EOL);

	}

	private function networks() {

		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Browse by network</h1>' . PHP_EOL);
		echo('<p class="alert alert-info">Information about cell identities are avaliable below for selected networks. This is more of interest to geeks.</p>' . PHP_EOL);
		echo('<ul class="networkList">' . PHP_EOL);

		foreach($this->networks as $thisNetwork) {

			if($thisNetwork->countCellLTEs() > 0) {

				echo('<li><a href="' . $thisNetwork->getURL() . '">' . $thisNetwork . '</a></li>' . PHP_EOL);

			}

		}

		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}

	private function regions() {

		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Browse by region</h1>' . PHP_EOL);
		echo('<p class="alert alert-info">Maps of cell site locations are avaliable below for each local board in Auckland as well as some regional coucils outside Auckland. You can also view a <a href="/map" class="alert-link">map of cell site locations in all regions</a>.</p>' . PHP_EOL);
		echo('<p class="text-muted"><b>Note:</b> Numbers in brackets show the number of cell site locations in that region.</p>' . PHP_EOL);

		foreach($this->regionsRoot->getChildren() as $thisRegion) {

			echo('<ul>' . PHP_EOL);

			foreach($thisRegion->getChildren() as $thisSubRegion) {

				if($thisSubRegion->countLocations() > 0) {

					echo('<li><a href="' . $thisSubRegion->getURL() . '">' . $thisSubRegion . '</a> (' . $thisSubRegion->countLocations() . ')');

				} else {

					echo('<li>' . $thisSubRegion . PHP_EOL);

				}

				echo('<ul>' . PHP_EOL);

				foreach($thisSubRegion->getChildren() as $thisSubSubRegion) {

					echo('<li><a href="' . $thisSubSubRegion->getURL() . '">' . $thisSubSubRegion . '</a> (' . $thisSubSubRegion->countLocations() . ')</li>' . PHP_EOL);

				}

				echo('</ul>' . PHP_EOL);
				echo( '</li>' . PHP_EOL);

			}

			echo('</ul>' . PHP_EOL);

		}


		echo('</div>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}

}

?>
