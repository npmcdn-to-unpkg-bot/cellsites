<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;

class LocationGeoJSON extends GeoJSON {

    public function __construct($locationID) {

        if(is_int($locationID) !== TRUE) {

            throw new \LogicException('The given Location ID must be an integer.');

        }

        $query = LocationQuery::create()->filterByID($locationID);

        if($query->count() === 0) {

            $page = new ResourceNotFoundPage;
            $page->generate();
            exit;

        }

        parent::__construct($query->find());

    }

}

?>
