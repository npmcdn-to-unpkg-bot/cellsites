<?php

namespace CellSites\Database;

use CellSites\Database\Base\Network as BaseNetwork;

class Network extends BaseNetwork {
    
    const GSM = 1;
    const UMTS = 2;
    const LTE = 4;
    
    public function countCells($type) {
        
        if($type === self::UMTS) {
            
            return($this->countCellUMTSs());
            
        } elseif($type === self::LTE) {
            
            return($this->countCellLTEs());
            
        } else {
            
            throw new LogicException;
            
        }
        
    }

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
