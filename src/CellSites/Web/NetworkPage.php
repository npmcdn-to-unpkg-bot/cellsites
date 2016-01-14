<?php

namespace CellSites\Web;

use CellSites\Database\AreaLTEQuery;
use CellSites\Database\AreaUMTSQuery;
use CellSites\Database\Network;
use CellSites\Database\NetworkQuery;

class NetworkPage extends Page {

	private $areaLTEQuery = null;
	private $areaUMTSQuery = null;
	private $network = null;

	public function __construct($countryID,$networkID) {

		if(!is_int($countryID)) {

			throw new Exception('Given CountryID was not an integer.');

		}

		if(!is_int($networkID)) {

			throw new Exception('Given NetworkID was not an integer.');

		}

		$this->network = NetworkQuery::create()->findPk(array($countryID,$networkID));
		$this->areaLTEQuery = AreaLTEQuery::create()->filterByNetwork($this->network)->orderByID();
		$this->areaUMTSQuery = AreaUMTSQuery::create()->filterByNetwork($this->network)->orderByID();

		$this->addBreadcrumb(new Breadcrumb($this->network->getFullName(),null));

	}

	private function area($type) {

		if($type === Network::UMTS) {

			$areaName = 'UTRAN Registration Area';
			$query = $this->areaUMTSQuery;
            $typeName = 'UMTS';

		} elseif($type === Network::LTE) {

			$areaName = 'Tracking Area Code';
			$query = $this->areaLTEQuery;
            $typeName = 'LTE';

		} else {
            
            throw new LogicException('Given Network Type was not valid.');
            
        }

		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h2 style="margin-top: 0px">' . $typeName . ' cell identies</h2>' . PHP_EOL);

		if($query->count() === 0) {

			echo('There are no data on ' . $typeName . ' cell identities for this network.');

		} else {

			echo('<table class="table table-condensed">' . PHP_EOL);
			echo('<thead>' . PHP_EOL);
			echo('<tr>' . PHP_EOL);
			echo('<th colspan="2">' . $areaName . '</th>' . PHP_EOL);
			echo('<th>Area</th>' . PHP_EOL);
			echo('<th class="numeric">Number of cell identies</th>' . PHP_EOL);
			echo('</tr>' . PHP_EOL);
			echo('</thead>' . PHP_EOL);
			echo('<tbody>' . PHP_EOL);

			foreach($query->find() as $thisArea) {

				echo('<tr>' . PHP_EOL);
				echo('<td>' . $thisArea->getID() . '</td>' . PHP_EOL);
				echo('<td class="hex">' . $thisArea->getIDAsHex() . '</td>' . PHP_EOL);

				if($thisArea->getName() === 'Unknown') {

					echo('<td><a href="' . $thisArea->getURL() . '" class="text-warning">' . $thisArea . '</a></td>' . PHP_EOL);

				} else {

					echo('<td><a href="' . $thisArea->getURL() . '">' . $thisArea . '</a></td>' . PHP_EOL);

				}

				echo('<td class="numeric">' . $thisArea->countCells() . '</td>' . PHP_EOL);
				echo('</tr>' . PHP_EOL);

			}

			echo('</tbody>' . PHP_EOL);
			echo('<tfoot>' . PHP_EOL);
			echo('<tr>' . PHP_EOL);
			echo('<td colspan="3">Total number of ' . $typeName . ' cell identities</td>' . PHP_EOL);
			echo('<td class="numeric">' . $this->network->countCells($type)  . '</td>' . PHP_EOL);
			echo('</tr>' . PHP_EOL);
			echo('</tfoot>' . PHP_EOL);
			echo('</table>' . PHP_EOL);

		}

		echo('</div>' . PHP_EOL); // .well
		echo('</div>' . PHP_EOL); // .col

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1 style="margin: 0">' . $this->network->getFullName() . ' <small>(' . $this->network->getLongID() . ')</small></h1>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // .well
		echo('<div class="row">' . PHP_EOL);

		$this->area(Network::UMTS);
		$this->area(Network::LTE);

		echo('</div>' . PHP_EOL); // .row

	}

}

?>
