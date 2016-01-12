<?php

namespace CellSites\Database;

use CellSites\Database\Base\CellUMTS as BaseCellUMTS;

class CellUMTS extends BaseCellUMTS {

	public function getNode() {

		return(substr($this->getShortID(),0,-1));

	}

	public function getRNC() {

		return($this->getID() >> 16);

	}

	public function getShortID() {

		return($this->getID() & 65535);

	}

}

?>
