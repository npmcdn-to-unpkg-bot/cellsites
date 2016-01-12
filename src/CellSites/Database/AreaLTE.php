<?php

namespace CellSites\Database;

use CellSites\Database\Base\AreaLTE as BaseAreaLTE;

class AreaLTE extends BaseAreaLTE {

	public function getIDAsHex() {

		return('0x' . mb_strtoupper(dechex($this->getID())));

	}

	public function getURL() {

		return(sprintf('/%03d/%02d/tac-%04d',$this->getCountryID(),$this->getNetworkID(),$this->getID()));

	}

}

?>
