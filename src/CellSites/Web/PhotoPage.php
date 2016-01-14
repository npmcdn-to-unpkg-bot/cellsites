<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;
use CellSites\Database\PhotoQuery;

class PhotoPage extends Page {

	private $locations = null;
	private $photo = null;

	public function __construct($photoID) {

		if(!is_int($photoID)) {

			throw new Exception('Given CountryID was not an integer.');

		}

		$this->photo = PhotoQuery::create()->filterByVisible(true)->findPK($photoID);

		if($this->photo === null) {

			$page = new ResourceNotFoundPage;
			$page->generate();
			exit;

		}

		$this->locations = LocationQuery::create()->filterByPhoto($this->photo)->orderByName()->find();

		$this->addBreadcrumb(new Breadcrumb('Photos','/photos'));
		$this->addBreadcrumb(new Breadcrumb('Photo #' . $this->photo->getID(),null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Photo #' . $this->photo->getID() . '</h1>' . PHP_EOL);
		echo('<img src="' . $this->photo->getPhotoURL() . '" class="img-responsive">' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well
		echo('<div class="row">' . PHP_EOL);
		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h2 style="margin-top: 0;">Associated locations</h2>' . PHP_EOL);
		echo('<ul>' . PHP_EOL);

		foreach($this->locations as $thisLocation) {

			echo('<li><a href="' . $thisLocation->getURL() . '">' . $thisLocation . '</a></li>' . PHP_EOL);

		}

		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well
		echo('</div>' . PHP_EOL); // end .col
		echo('<div class="col-md-6">' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<h2 style="margin-top: 0">Photo information</h2>' . PHP_EOL);
		echo('<ul>' . PHP_EOL);
		echo('<li><b>ID:</b> ' . $this->photo->getID() . '</li>' . PHP_EOL);
		echo('<li><b>Date/time taken:</b> ' . $this->photo->getTaken()->format('l jS F Y \a\t g:ma') . '</li>' . PHP_EOL);
		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL); // end .well
		echo('</div>' . PHP_EOL); // end .col
		echo('</div>' . PHP_EOL); // end .row

	}

}

?>
