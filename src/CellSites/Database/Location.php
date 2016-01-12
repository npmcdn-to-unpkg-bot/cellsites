<?php

namespace CellSites\Database;

use CellSites\Database\Base\Location as BaseLocation;

class Location extends BaseLocation {

	public function getURL() {

		return(sprintf('/location/%d',$this->getID()));

	}

}

?>
