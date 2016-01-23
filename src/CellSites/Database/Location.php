<?php

namespace CellSites\Database;

use CellSites\Database\Base\Location as BaseLocation;

class Location extends BaseLocation {

    public function getGeoJSONURL() {

        return($this->getURL() . '/geojson');

    }

    public function getURL() {

        return('/location/' . $this->getID());

    }

}

?>
