<?php

namespace CellSites\Database;

use CellSites\Database\Base\Network as BaseNetwork;

class Network extends BaseNetwork {

	public function getFullName() {

		return($this->getName() . ' ' . $this->getCountry());

	}

	public function getLongID() {

		return(sprintf('%03d-%02d',$this->getCountryID(),$this->getID()));

	}

	public function getURL() {

		return(sprintf('/%03d/%02d',$this->getCountryID(),$this->getID()));

	}

}

?>
