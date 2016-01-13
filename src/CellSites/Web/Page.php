<?php

namespace CellSites\Web;

abstract class Page {

	private $breadcrumbs = array();

	public function addBreadcrumb(Breadcrumb $breadcrumb) {

		array_push($this->breadcrumbs,$breadcrumb);

	}

	abstract protected function body();

	private function breadcrumbs() {

		if(count($this->breadcrumbs) !== 0) {

			echo('<ol class="breadcrumb">' . PHP_EOL);
			echo('<li><a href="/">Home</a></li>' . PHP_EOL);

			$x = 0;

			foreach($this->breadcrumbs as $thisBreadcrumbKey => $thisBreadcrumb) {

				$x++;

				if($thisBreadcrumb->getURL() === null) {

					if($x === count($this->breadcrumbs)) {

						echo('<li class="active">' . $thisBreadcrumb . '</li>' . PHP_EOL);

					} else {

						echo('<li>' . $thisBreadcrumb . '</li>' . PHP_EOL);

					}

				} else {

					echo('<li><a href="' . $thisBreadcrumb->getURL() . '">' . $thisBreadcrumb . '</a></li>' . PHP_EOL);

				}

			}

			echo('</ol>' . PHP_EOL);

		}

	}

	private function footer() {

		echo('<footer>' . PHP_EOL);
		echo('<div class="well">' . PHP_EOL);
		echo('<p style="margin:0">');
		echo('This work is licensed under a ');
		echo('<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.');
		echo('</p>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('</footer>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>' . PHP_EOL);
		echo('</body>' . PHP_EOL);
		echo('</html>' . PHP_EOL);

	}

	public function generate() {

		$this->header();
		$this->body();
		$this->footer();

	}

	private function generateTitle() {

		$title = 'Cell Sites in New Zealand';

		foreach($this->breadcrumbs as $thisBreadcrumb) {

			$title = $thisBreadcrumb . ' - ' . $title;

		}

		return($title);

	}

	private function header() {

		echo('<!DOCTYPE html>' . PHP_EOL);
		echo('<html lang="en">' . PHP_EOL);
		echo('<head>' . PHP_EOL);
		echo('<meta charset="utf-8">' . PHP_EOL);
		echo('<meta http-equiv="X-UA-Compatible" content="IE=edge">' . PHP_EOL);
		echo('<meta name="viewport" content="width=device-width, initial-scale=1">' . PHP_EOL);
		echo('<title>' . $this->generateTitle() . '</title>' . PHP_EOL);
		echo('<link href="/twbs/css/bootstrap.min.css" rel="stylesheet">' . PHP_EOL);
		echo('<link href="/style.css" rel="stylesheet">' . PHP_EOL);
		echo('<!--[if lt IE 9]>' . PHP_EOL);
		echo('<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>' . PHP_EOL);
		echo('<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>' . PHP_EOL);
		echo('<![endif]-->' . PHP_EOL);
		echo('</head>' . PHP_EOL);
		echo('<body>' . PHP_EOL);
		echo('<div class="container">' . PHP_EOL);

		$this->nav();
		$this->breadcrumbs();

	}

	private function nav() {

		echo('<nav class="navbar navbar-default navbar-inverse">' . PHP_EOL);
		echo('<div class="container-fluid">' . PHP_EOL);
		echo('<div class="navbar-header">' . PHP_EOL);
		echo('<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">' . PHP_EOL);
		echo('<span class="sr-only">Toggle navigation</span>' . PHP_EOL);
		echo('<span class="icon-bar"></span>' . PHP_EOL);
		echo('<span class="icon-bar"></span>' . PHP_EOL);
		echo('<span class="icon-bar"></span>' . PHP_EOL);
		echo('</button>' . PHP_EOL);
		echo('<a class="navbar-brand" href="/">Cell Sites in N<span class="hidden-xs">ew </span>Z<span class="hidden-xs">ealand</span></a>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('<div class="collapse navbar-collapse" id="navbar-collapse">' . PHP_EOL);
		echo('<ul class="nav navbar-nav">' . PHP_EOL);

		$items[] = array('name' => 'Map', 'url' => '/map');
		$items[] = array('name' => 'Photos', 'url' => '/photos');

		foreach($items as $thisItem) {

			if($_SERVER["REQUEST_URI"] === $thisItem['url']) {

				echo('<li class="active"><a href="' . $thisItem['url'] . '">' . $thisItem['name'] . '</a></li>' . PHP_EOL);

			} else {

				echo('<li><a href="' . $thisItem['url'] . '">' . $thisItem['name'] . '</a></li>' . PHP_EOL);

			}

		}

		echo('</ul>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('</div>' . PHP_EOL);
		echo('</nav>' . PHP_EOL);

	}

}

?>
