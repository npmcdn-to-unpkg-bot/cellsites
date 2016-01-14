<?php

namespace CellSites\Web;

use CellSites\Database\AreaUMTSQuery;

class AreaUMTSPage extends Page {

	private $area;

	public function __construct($countryID,$networkID,$areaID) {

		if(is_int($areaID) !== true || is_int($countryID) !== true || is_int($networkID) !== true) {

			throw new Exception;

		}

		$this->area = AreaUMTSQuery::create()->findPk(array($countryID,$networkID,$areaID));

		if($this->area === null) {

			$page = new ResourceNotFoundPage();
			$page->generate();
			exit;

		}

		$this->addBreadcrumb(new Breadcrumb($this->area->getNetwork()->getFullName(),$this->area->getNetwork()->getURL()));
		$this->addBreadcrumb(new Breadcrumb($this->area->getName() . ' UMTS',null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>' . $this->area . ' <small>(' . $this->area->getLongID() . ')</small></h1>' . PHP_EOL);

		if($this->area->countCells() === 0) {

			echo('<p>There are currently no information about cells in this area.</p>' . PHP_EOL);

		} else {

			$this->table();

		}

		echo('</div>' . PHP_EOL); // .well

	}

	private function table() {

		echo('<table class="table">' . PHP_EOL);
		echo('<thead>' . PHP_EOL);
		echo('<tr>' . PHP_EOL);
		echo('<th>LCID</th>' . PHP_EOL);
		echo('<th>RNC</th>' . PHP_EOL);
		echo('<th>CID</th>' . PHP_EOL);
		echo('<th>Frequency</th>' . PHP_EOL);
		echo('<th>Scrambling Code</th>' . PHP_EOL);
		echo('<th>Location</th>' . PHP_EOL);
		echo('<th>Last Seen</th>' . PHP_EOL);
		echo('<th>Notes</th>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('</thead>' . PHP_EOL);
		echo('<tbody>' . PHP_EOL);

		$this->tr($thisCell);

		echo('</tbody>' . PHP_EOL);
		echo('</table>' . PHP_EOL);

	}

	private function tr($thisCell) {

		$lastCell = null;

		foreach($this->area->getCells() as $thisCell) {

			if($lastCell === null || $thisCell->getNode() !== $lastCell->getNode()) {

				echo('<tr class="group">' . PHP_EOL);

			} else {

				echo('<tr>' . PHP_EOL);

			}

			$lastCell = $thisCell;

			echo('<td>' . $thisCell->getID() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCell->getRNC() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCell->getShortID() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCell->getFrequencyID() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCell->getScramblingCode() . '</td>' . PHP_EOL);

			if($thisCell->getLocation() === null) {

				echo('<td class="text-muted">n/a</td>' . PHP_EOL);

			} else {

				echo('<td><a href="' . $thisCell->getLocation()->getURL() . '">' . $thisCell->getLocation() . '</a></td>' . PHP_EOL);

			}

			echo('<td>' . $thisCell->getLastSeen()->format(CELLSITES_FORMAT_DATE) . '</td>' . PHP_EOL);

			if($thisCell->getNotes() === null) {

				echo('<td class="text-muted">n/a</td>' . PHP_EOL);

			} else {

				echo('<td>' . $thisCell->getNotes() . '</td>' . PHP_EOL);

			}

			echo('</tr>' . PHP_EOL);

		}

	}

}

?>
