<?php

namespace CellSites\Web;

use GeoJson\Feature\Feature;
use GeoJson\Feature\FeatureCollection;
use GeoJson\Geometry\Point;

class GeoJSON {

	private $locations = null;

	public function generate() {

		if($this->locations === null) {

			throw new Exception;

		}

		header('Content-type: application/json');

		$features = array();

		foreach($this->locations as $thisLocation) {

			$point = new Point(array($thisLocation->getLongitude(),$thisLocation->getLatitude()));
			$properties = array('name' => $thisLocation->getName());
			$features[] = new Feature($point,$properties,$thisLocation->getID());

		}

		$collection = new FeatureCollection($features);

		echo(json_encode($collection,JSON_PRETTY_PRINT));

	}

	protected function setLocations($locations) {

		// TODO be more specific than is_object()
		if(is_object($locations) !== true) {

			throw new Exception;

		}

		$this->locations = $locations;

	}

}

?>
