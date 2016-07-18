<?php

namespace CellSites\Database;

use CellSites\Database\Base\CellUMTS as BaseCellUMTS;

class CellUMTS extends BaseCellUMTS implements CellInterface {

	public function getBand() {

		if($this->getFrequency() != NULL) {

			return($this->getFrequency()->getBandID());

		}

		return(NULL);

    }

    public function getCell() {

        return($this->getID() & 65535);

    }

    public function getController() {

        return($this->getID() >> 16);

    }

    public function getNode() {

        return(substr($this->getCell(),0,-1));

    }

}

?>
