<?php

namespace CellSites\Web;

class MapDiv {

	private $geojsons = null;

	public function __construct($array) {

		if(is_array($array) !== true) {

			throw new Exception;

		}

		$this->geojsons = $array;

	}

	public function generate() {

		echo('<div class="well" id="map" style="height: 500px"></div>' . PHP_EOL);
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

	}

}

?>
