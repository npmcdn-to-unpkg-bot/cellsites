<?php

namespace CellSites\Database;

use CellSites\Database\Base\AreaUMTS as BaseAreaUMTS;

class AreaUMTS extends BaseAreaUMTS {

	public function getGeoJSONURL() {
		        
		return($this->getURL() . '/geojson');
				        
	}

	public function getLongID() {

		return($this->getNetwork()->getLongID() . '-' . $this->getID());

	}

	public function getIDAsHex() {

		return('0x' . mb_strtoupper(dechex($this->getID())));

	}

	public function getURL() {

		return('/' . $this->getCountryID() . '/' . sprintf('%02d',$this->getNetworkID()) . '/ura-' . $this->getID());

	}

}
