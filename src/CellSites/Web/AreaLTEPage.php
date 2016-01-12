<?php

namespace CellSites\Web;

use CellSites\Database\AreaLTEQuery;
use CellSites\Database\CellLTEQuery;

class AreaLTEPage extends Page {

	private $cellLTEQuery = null;
	private $area = null;

	public function __construct($countryID,$networkID,$areaID) {

		if(!is_int($countryID)) {

			throw new Exception('Given CountryID was not an integer.');

		}

		if(!is_int($networkID)) {

			throw new Exception('Given NetworkID was not an integer.');

		}

		if(!is_int($areaID)) {

			throw new Exception('Given AreaID was not an integer.');

		}

		$this->area = AreaLTEQuery::create()->findPk(array($countryID,$networkID,$areaID));
		$this->cellLTEQuery = CellLTEQuery::create()->filterByArea($this->area);

		$this->addBreadcrumb(new Breadcrumb($this->area->getNetwork()->getFullName(),$this->area->getNetwork()->getURL()));
		$this->addBreadcrumb(new Breadcrumb($this->area->getName() . ' LTE',null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1 style="margin-top: 0px">' .  $this->area . ' <small>(' . $this->area->getCountryID() . '-' . sprintf('%02d',$this->area->getNetworkID()) . '-' . $this->area->getID() . '/' . $this->area->getIDAsHex() . ')</small></h1>' . PHP_EOL);

		if($this->area->getNotes() !== null) {

			echo('<p>' . $this->area->getNotes() . '</p>' . PHP_EOL);

		}

		if($this->cellLTEQuery->count() > 0) {

			$table = new CellLTETable($this->cellLTEQuery);
			$table->setShowMCC(false);
			$table->setShowMNC(false);
			$table->setShowTAC(false);
			$table->generate();

		}

		echo('</div>' . PHP_EOL); // .well

	}

}

?>
