<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class RegionGeoJSON extends GeoJSON {

    public function __construct($regionID) {

        if(is_int($regionID) !== TRUE) {

            throw new \LogicException('The given Region ID must be an integer.');

        }

        $query = LocationQuery::create()->filterByRegionID($regionID);

        if($query->count() === 0) {

            $page = new ResourceNotFoundPage;
            $page->generate();
            exit;

        }

        parent::__construct($query->find());

    }

}

?>
