<?php

namespace CellSites\Web;

use CellSites\Database\Location;
use GeoJson\Feature\Feature;
use GeoJson\Feature\FeatureCollection;
use GeoJson\Geometry\Point;
use Propel\Runtime\Collection\ObjectCollection;

class GeoJSON {

    private $locations = NULL;

    protected function __construct(ObjectCollection $locations) {

        if($locations === NULL) {

            throw new \LogicException('The given ObjectCollection must not be null.');

        }

        if($locations->count() === 0) {

            throw new \LogicException('The given ObjectCollection must not be empty.');

        }

        foreach($locations as $thisLocation) {

            if($thisLocation instanceof Location !== TRUE) {

                throw new \LogicException('The given ObjectCollection must not contain an object that is not a Location.');

            }

        }

        $this->locations = $locations;

    }

    public function generate() {

        header('Content-type: application/json');

        foreach($this->locations as $thisLocation) {

            $point = new Point(array($thisLocation->getLongitude(),$thisLocation->getLatitude()));
            $properties = array('name' => $thisLocation->getName());
            $features[] = new Feature($point,$properties,$thisLocation->getID());

        }

        $collection = new FeatureCollection($features);

        echo(json_encode($collection));

	}

}

?>
