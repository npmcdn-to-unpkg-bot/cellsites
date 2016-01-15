<?php

namespace CellSites\Database;

use \LogicException;
use CellSites\Database\Base\CellLTE as BaseCellLTE;

class CellLTE extends BaseCellLTE implements CellInterface {

    public function getBand() {

        if($this->getFrequency() === NULL) {

            return(NULL);

        }

        return($this->getFrequency()->getBandID());

    }

    public function getCell() {

        return($this->getID() & 255);

    }

    public function getController() {

        throw new LogicException('CellLTE::getController() should never be called as it is not implemented.');

    }

    public function getNode() {

        return($this->getID() >> 8);

    }

}

?>