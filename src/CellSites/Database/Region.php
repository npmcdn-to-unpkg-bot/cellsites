<?php

namespace CellSites\Database;

use CellSites\Database\Base\Region as BaseRegion;

class Region extends BaseRegion {
    
    public function getGeoJSONURL() {
        
        return($this->getURL() . '/geojson');
        
    }

	public function getURL() {

		return('/region/' . $this->getID());

	}

}

?>
