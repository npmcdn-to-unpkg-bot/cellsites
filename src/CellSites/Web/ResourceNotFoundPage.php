<?php

namespace CellSites\Web;

class ResourceNotFoundPage extends Page {

	public function __construct() {

		header("HTTP/1.0 404 Not Found");

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>404 Resource Not Found</h1>' . PHP_EOL);
		echo('<p>Sorry, the resource you were looking for was not found.</p>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well

	}

}

?>
