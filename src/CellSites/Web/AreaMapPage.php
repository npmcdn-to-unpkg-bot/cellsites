<?php

namespace CellSites\Web;

use CellSites\Database\AreaLTEQuery;
use CellSites\Database\AreaUMTSQuery;
use CellSites\Database\Network;

class AreaMapPage extends Page {

	private $area = null;

	public function __construct($countryID,$networkID,$networkType,$areaID) {

		if(is_int($countryID) !== TRUE) {

			throw new Exception('Given Country ID was not an integer.');

		} elseif(is_int($networkID) !== TRUE) {

			throw new Exception('Given Network ID was not an integer.');

		} elseif($networkType !== Network::UMTS && $networkType !== Network::LTE) {

			throw new Exception('Given Network Type was not either Network::UMTS or Network::LTE.');

		} elseif(is_int($areaID) !== TRUE) {

			throw new Exception('Given Area ID was not an integer.');

		}

		if($networkType === Network::UMTS) {

			$this->area = AreaUMTSQuery::create()->findPk(array($countryID,$networkID,$areaID));
			$networkTypeName = 'UMTS';

		} else {

			$this->area = AreaLTEQuery::create()->findPk(array($countryID,$networkID,$areaID));
			$networkTypeName = 'LTE';

		}

		if($this->area === null) {

			$page = new ResourceNotFoundPage;
			$page->generate();
			exit;

		}
		$this->addBreadcrumb(new Breadcrumb($this->area->getNetwork()->getFullName(),$this->area->getNetwork()->getURL()));
		$this->addBreadcrumb(new Breadcrumb($this->area->getName() . ' ' . $networkTypeName,$this->area->getURL()));
		$this->addBreadcrumb(new Breadcrumb('Map'));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Map for ' .  $this->area . ' <small>(' . $this->area->getNetwork()->getLongID() . '-' . $this->area->getID() . '/' . $this->area->getIDAsHex() . ')</small></h1>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

		$maps = array();
		$maps[] = $this->area->getGeoJSONURL();
		$map = new MapDiv($maps);
		$map->generate();

	}

}

?>
