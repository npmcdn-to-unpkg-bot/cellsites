<?php

namespace CellSites\Web;

class IntroductionPage extends Page {

	public function __construct() {

		$this->addBreadcrumb(new Breadcrumb('Introduction',null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1 style="margin-top: 0px;">Introduction to cell sites in New Zealand</h1>' . PHP_EOL);
		echo('<ul class="intro">' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('An <b>operator</b> is an organisation that provides LTE services.' . PHP_EOL);
		echo('In New Zealand LTE operators include <a href="/530/05">Spark</a>, <a href="/530/24">2degrees</a> and <a href="/530/01">Vodafone</a>.' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('A <b>location</b> represents a place where a <b>node</b> is based at.' . PHP_EOL);
		echo('Where more than one <b>operator</b> shares the same <b>location</b>, there will be a <b>node</b> for each <b>operator</b>.' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('A <b>node</b> represents a set of antennas.' . PHP_EOL);
		echo('A typical node will have three sets of antennas. Each set of antennas would have a beam of 120&deg;, and configured so they all cover a total of 360&deg;.' . PHP_EOL);
		echo('However some nodes may have fewer or more antennas and/or a configuration that is less than 360&deg; depending on the network operator\'s requirements at that location.' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('A <b>frequency band</b> represent the area of the radio spectrum through which the <b>node</b> transmits and receives signals.' . PHP_EOL);
		echo('In New Zealand, nodes typically use band 3 (1800 MHz) for urban areas or band 28 (700 MHz) for rural areas.' . PHP_EOL);
		echo('In areas where more capacity is required, band 7 (2600 MHz) is sometimes used as well.' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('A <b>cell</b> represent service provided through a <b>frequency band</b> from a set of <b>antennas</b>.' . PHP_EOL);
		echo('So a node providing services through two frequency bands via three antennas  would have six cells (e.g. three 1800 MHz cells and three 2600 MHz cells).' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('<li>' . PHP_EOL);
		echo('A <b>Tracking Area Code</b> (TAC) is assigned to a group of approximately 50 nodes serving a particular area.' . PHP_EOL);
		echo('When an user equipment (e.g. mobile phone) is idle the network operator only tracks the user equipment by area (rather than by node).' . PHP_EOL);
		echo('</li>' . PHP_EOL);
		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

	}

}

?>
