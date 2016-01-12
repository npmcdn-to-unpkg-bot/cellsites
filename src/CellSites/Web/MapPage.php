<?php

namespace CellSites\Web;

class MapPage extends Page {

	private $locations= null;

	public function __construct() {

		$this->addBreadcrumb(new Breadcrumb('Map',null));

	}

	protected function body() {

		echo('<p class="alert alert-info">Please note that this map does not contain locations of all cell sites in New Zealand. This map is an attempt to provide <i>accurate</i> locations of as many cell sites as possible. If you want a more complete map of all cell sites in New Zealand please visit <a href="https://gis.geek.nz/celltowers">GIS Geek\'s map</a>. Their map is based on data from <a href="http://www.rsm.govt.nz">Radio Spectrum Management</a>\'s register of radio frequencies (a service of the Ministry of Business, Innovation and Employment) which are, in some cases, out-of-date and/or inaccurate.</p>' . PHP_EOL);
		$map = new MapDiv(array('http://cellsites.nz/locations/geojson'));
		$map->generate();
		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Useful links</h1>' . PHP_EOL);
		echo('<h2>Domestic information</h2>' . PHP_EOL);
		echo('<ul>' . PHP_EOL);
		echo('<li><a href="http://cellsites.nz/locations/geojson">GeoJSON file containing locations in the map above</a> <small class="text-muted">(<span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset" rel="dct:type">dataset</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>)</small></li>' . PHP_EOL);
		echo('<li><a href="https://gis.geek.nz/celltowers">Map of all cell sites in New Zealand from government data</a></li>' . PHP_EOL);
		echo('</ul>' . PHP_EOL);
		echo('<h2>International information</h2>' . PHP_EOL);
		echo('<ul>' . PHP_EOL);
		echo('<li><a href="http://www.sitefinder.ofcom.org.uk">Map of cell sites in the United Kingdom managed by a government agency from data contributed by operators</a>' . PHP_EOL);
		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}

}

?>
