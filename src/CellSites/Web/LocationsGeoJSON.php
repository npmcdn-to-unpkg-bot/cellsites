<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class LocationsGeoJSON extends GeoJSON {

    public function __construct() {

        parent::__construct(LocationQuery::create()->find());

    }

}

?>
