<?php

namespace CellSites\Web;

use CellSites\Database\CellLTEQuery;

class CellLTETable {

	const DATE_FORMAT = 'd-M-y';

	private $query = null;
	private $showMCC = true;
	private $showMNC = true;
	private $showTAC = true;

	public function __construct(CellLTEQuery $query) {

		$this->query = $query;

	}

	private function country($cell) {

		if($this->showMCC === true) {

			echo('<td><abbr title="' . $cell->getCountry() . '">' . $cell->getCountryID() . '</abbr></td>' . PHP_EOL);

		}

	}

	private function earfcn($cell) {

		if($cell->getEARFCN() === null) {

			echo('<td class="unknown">Unknown</td>' . PHP_EOL);

		} else {

			echo('<td><span title="Band ' . $cell->getEARFCN()->getBandID() . '">' . $cell->getEARFCN()->getID() . '</span></td>' . PHP_EOL);

		}

	}

	public function generate() {

		if($this->query === null) {

			throw new Exception('No CellLTEQuery defined.');

		}

		if($this->query->count() === 0) {

			throw new Exception('Given CellLTEQuery resulted in no rows.');

		}

		echo('<table class="table">' . PHP_EOL);
		$this->thead();
		$this->tbody();
		echo('</table>' . PHP_EOL);

	}

	private function lastSeen($cell) {

		if($cell->getLastSeen() === null) {

			echo('<td class="unknown">Unknown</td>' . PHP_EOL);
			return;

		}

		if($cell->getDaysSinceLastSeen() > 28) {

			echo('<td class="unknown">');

		} else {

			echo('<td>');

		}

		echo('<span title="' . $cell->getDaysSinceLastSeen() . ' days since last seen">' . $cell->getLastSeen()->format(self::DATE_FORMAT) . '</span></td>' . PHP_EOL);

	}

	private function location($cell) {

		if($cell->getLocation() === null) {

			echo('<td class="unknown">Unknown</td>' . PHP_EOL);

		} else {

			echo('<td><a href="/location/' . $cell->getLocation()->getID() . '">' . $cell->getLocation() . '</a>');

			if($cell->getLocation()->countPhotos() > 0) {

				echo(' <span class="glyphicon glyphicon-camera" aria-hidden="true"></span>');

			}

			echo('</td>' . PHP_EOL);

		}

	}

	private function network($cell) {

		if($this->showMNC === true) {

			echo('<td><a href="/' . $cell->getCountryID() . '/' . $cell->getNetworkID() . '">' . PHP_EOL);
			echo('<abbr title="' . $cell->getNetwork() . '">' . sprintf('%02d',$cell->getNetworkID()) . '</abbr>' . PHP_EOL);
			echo('</a></td>' . PHP_EOL);

		}

	}

	private function notes($cell) {

		if(strlen($cell->getNotes()) > 0) {

			if(strpos($cell->getNotes(),'?') !== false || strpos($cell->getNotes(),'TODO') !== false) {

				echo('<td class="unknown">' . $cell->getNotes() . '</td>' . PHP_EOL);

			} else {

				echo('<td>' . $cell->getNotes() . '</td>' . PHP_EOL);

			}

		} else {

			echo('<td class="na">n/a</td>' . PHP_EOL);

		}

	}

	public function setShowMCC($boolean) {

		if(!is_bool($boolean)) {

			throw new Exception('Given value was not a boolean.');

		}

		$this->showMCC = $boolean;

	}

	public function setShowMNC($boolean) {

		if(!is_bool($boolean)) {

			throw new Exception('Given value was not a boolean.');

		}

		$this->showMNC = $boolean;

	}

	public function setShowTAC($boolean) {

		if(!is_bool($boolean)) {

			throw new Exception('Given value was not a boolean.');

		}

		$this->showTAC = $boolean;

	}

	private function tbody() {

		echo('<tbody>' . PHP_EOL);

		$lastCell = null;

		foreach($this->query->find() as $thisCellLTE) {

			if($lastCell === null || $thisCellLTE->getNode() !== $lastCell->getNode()) {

				echo('<tr class="group">' . PHP_EOL);

			} else {

				echo('<tr>' . PHP_EOL);

			}

			$this->country($thisCellLTE);
			$this->network($thisCellLTE);

			if($this->showTAC === true) {

				echo('<td><abbr title="' . $thisCellLTE->getArea() . '">' . $thisCellLTE->getAreaID() . '</abbr></td>' . PHP_EOL);

			}

			echo('<td>' . $thisCellLTE->getID() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCellLTE->getNode() . '</td>' . PHP_EOL);
			echo('<td>' . $thisCellLTE->getCell() . '</td>' . PHP_EOL);
			$this->earfcn($thisCellLTE);
			echo('<td>' . $thisCellLTE->getPhysicalCellID() . '</td>' . PHP_EOL);
			$this->location($thisCellLTE);
			$this->lastSeen($thisCellLTE);
			$this->notes($thisCellLTE);
			echo('</tr>' . PHP_EOL);

			$lastCell = $thisCellLTE;

		}

		echo('</tbody>' . PHP_EOL);

	}

	private function thead() {

		echo('<thead>' . PHP_EOL);

		if($this->showMCC === true) {

			echo('<th><abbr title="Mobile Country Code">MCC</abbr></th>' . PHP_EOL);

		}

		if($this->showMNC === true) {

			echo('<th><abbr title="Mobile Network Code">MNC</abbr></th>' . PHP_EOL);

		}

		if($this->showTAC === true) {

			echo('<th><abbr title="Tracking Area Code">TAC</abbr></th>' . PHP_EOL);

		}

		echo('<th>ECI</th>' . PHP_EOL);
		echo('<th>Node</th>' . PHP_EOL);
		echo('<th>Cell</th>' . PHP_EOL);
		echo('<th>EARFCN</th>' . PHP_EOL);
		echo('<th><abbr title="Physical Cell Identifier">PCI</abbr></th>' . PHP_EOL);
		echo('<th>Location</th>' . PHP_EOL);
		echo('<th>Last Seen</th>' . PHP_EOL);
		echo('<th>Notes</th>' . PHP_EOL);
		echo('</thead>' . PHP_EOL);

	}

}

?>
