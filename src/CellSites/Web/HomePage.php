<?php

namespace CellSites\Web;

use CellSites\Database\NetworkQuery;
use CellSites\Database\RegionQuery;

class HomePage extends Page {

	private $networks = array();
	private $regionsRoot = null;

	public function __construct() {

		$networks = NetworkQuery::create()->orderByName()->find();

		if($networks->count() > 0) {

			foreach($networks as $thisNetwork) {

				if($thisNetwork->countCellLTEs() > 0 || $thisNetwork->countCellUMTSs() > 0) {

					array_push($this->networks,$thisNetwork);

				}

			}

		}

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

		if(count($this->networks) === 0) {

			echo('<p class="alert alert-warning">There were no networks in the database to display here.</p>' . PHP_EOL);

		} else {

			echo('<p class="alert alert-info">Information about cell identities are avaliable below for selected networks. This is more of interest to geeks.</p>' . PHP_EOL);
			echo('<ul class="networkList">' . PHP_EOL);

			foreach($this->networks as $thisNetwork) {

				echo('<li><a href="' . $thisNetwork->getURL() . '">' . $thisNetwork . '</a></li>' . PHP_EOL);

			}

			echo('</ul>' . PHP_EOL);

		}

		echo('</div>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}

	private function regions() {

		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Browse by region</h1>' . PHP_EOL);

		if($this->regionsRoot === null) {

			echo('<p class="alert alert-warning">There were no regions in the database to display here.</p>' . PHP_EOL);

		} else {

			echo('<p class="alert alert-info">Maps of cell site locations are avaliable below, grouped by regions. You can also view a <a href="/map" class="alert-link">map of cell site locations in all regions</a>.</p>' . PHP_EOL);
			echo('<p class="text-muted"><b>Note:</b> Numbers in brackets show the number of cell site locations in that region.</p>' . PHP_EOL);
            
            echo('<ul>' . PHP_EOL);
            $this->regionsRecursive($this->regionsRoot);
            echo('</ul>' . PHP_EOL);

		}

		echo('</div>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}
    
    private function regionsRecursive($region) {
/*
				if($region->getName() === 'Otago Regional Council') {

					$newRegion = new \CellSites\Database\Region();
					$newRegion->setName('Taranaki Regional Council');
					$newRegion->insertAsNextSiblingOf($region);
					$newRegion->save();
					

				}
*/
        
        echo('<li>');
        
        if($region->countLocations() === 0) {
            
            echo($region->getName());
            
        } else {
            
            echo('<a href="' . $region->getURL() . '">' . $region . '</a>' . ' (' . $region->countLocations() . ')');
            
        }
        
        if($region->hasChildren() === TRUE) {
        
            echo(PHP_EOL . '<ul>' . PHP_EOL);
        
            foreach($region->getChildren() as $thisChild) {
            
                $this->regionsRecursive($thisChild);
            
            }
            
            echo('</ul>' . PHP_EOL);
            
        }
        
        echo('</li>' . PHP_EOL);
        
    }

}

?>
