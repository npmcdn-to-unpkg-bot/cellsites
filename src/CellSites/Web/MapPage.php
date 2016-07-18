<?php

namespace CellSites\Web;

abstract class MapPage {

	private $geojsons = null;
	private $title = null;

	protected function __construct($title,$array) {

		if(defined('CELLSITES_GOOGLE_MAPS_API_KEY') !== true) {

			throw new Exception;

		}

		if(is_array($array) !== true) {

			throw new Exception;

		}

		$this->title = $title;
		$this->geojsons = $array;

	}

	public function generate() {

		echo('<!DOCTYPE html>' . PHP_EOL);
		echo('<html>' . PHP_EOL);
		echo('<head>' . PHP_EOL);
		echo('<meta charset="utf-8">' . PHP_EOL);
		echo('<title>' . $this->title . '</title>' . PHP_EOL);
		echo('<meta name="viewport" content="initial-scale=1.0">' . PHP_EOL);
		echo('<style>' . PHP_EOL);
		echo('html,body{height:100%;margin:0;padding:0;}' . PHP_EOL);
		echo('#map{height:100%;}' . PHP_EOL);
		echo('</style>' . PHP_EOL);
		echo('</head>' . PHP_EOL);
		echo('<body>' . PHP_EOL);
		echo('<div id="map"></div>' . PHP_EOL);
		echo('<script type="text/javascript">' . PHP_EOL);
		echo('var map;' . PHP_EOL);
		echo('var infowindow;' . PHP_EOL);
		echo('function initMap() {' . PHP_EOL);
		echo('map = new google.maps.Map(document.getElementById(\'map\'));' . PHP_EOL);
		echo('google.maps.event.addListener(map, \'click\', function() {infowindow.close();});' . PHP_EOL);

		foreach($this->geojsons as $geojson) {

			echo('jQuery.getJSON(\'' . $geojson . '\', function(data){
      map.data.addGeoJson(data);
var bounds = new google.maps.LatLngBounds();
  map.data.forEach(function(feature) {
		processPoints(feature.getGeometry(), bounds.extend, bounds);
  });
  map.fitBounds(bounds);
});' . PHP_EOL);

		}

		echo('infowindow = new google.maps.InfoWindow();' . PHP_EOL);
		echo('map.data.addListener(\'click\', function(event) {
     infowindow.setContent("<a href=\"/location/"+event.feature.getId()+"\">"+event.feature.getProperty(\'name\')+"</a>");
     infowindow.setPosition(event.latLng);
     infowindow.setOptions({pixelOffset: new google.maps.Size(0,-34)});
     infowindow.open(map);
  });' . PHP_EOL);
		echo('}' . PHP_EOL);
		echo('
function processPoints(geometry, callback, thisArg) {
  if (geometry instanceof google.maps.LatLng) {
    callback.call(thisArg, geometry);
  } else if (geometry instanceof google.maps.Data.Point) {
    callback.call(thisArg, geometry.get());
  } else {
    geometry.getArray().forEach(function(g) {
      processPoints(g, callback, thisArg);
    });
  }
}' . PHP_EOL);

		echo('</script>' . PHP_EOL);
		echo('<script async defer src="https://maps.googleapis.com/maps/api/js?key=' . CELLSITES_GOOGLE_MAPS_API_KEY . '&callback=initMap"></script>' . PHP_EOL);
		echo('<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>' . PHP_EOL);
		echo('</body>' . PHP_EOL);
		echo('</html>' . PHP_EOL);

	}

}

?>
