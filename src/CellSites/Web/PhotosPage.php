<?php

namespace CellSites\Web;

use CellSites\Database\PhotoQuery;
use Propel\Runtime\Collection\ObjectCollection;

class PhotosPage extends Page {

	private $page = null;
	private $query = null;

	public function __construct($page) {

		if(is_int($page) !== true) {

			throw new Exception;

		}

		$this->page = $page;

		if($this->page === 1) {

			$this->addBreadcrumb(new Breadcrumb('Photos',null));

		} else {

			$this->addBreadcrumb(new Breadcrumb('Photos','/photos'));
			$this->addBreadcrumb(new Breadcrumb('Page ' . $this->page,null));

		}

		$this->query = PhotoQuery::create()->filterByVisible(true)->orderByTaken();

	}

	protected function body() {


		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Photos</h1>' . PHP_EOL);

		if($this->query->count() === 0) {

			echo('<p class="alert alert-warning">There were no photos in the database to display here.</p>' . PHP_EOL);

		} else {
            
            $photoPager = $this->query->paginate($this->page,40);

            $this->photos($photoPager->getResults());

			$this->pagination($photoPager);

		}

		echo('</div>' . PHP_EOL);

	}
    
    private function pagination(\Propel\Runtime\Util\PropelModelPager $photoPager) {
        
        echo('<nav>' . PHP_EOL);
        echo('<ul class="pagination">' . PHP_EOL);

        if($this->page === 1) {

            echo('<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>' . PHP_EOL);

        } else {
            
            $previousURL = '/photos';
                
            if($this->page !== 2) {
                
                $previousURL .= '/' . ($this->page - 1);
                
            }

            echo('<li><a href="' . $previousURL . '" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>' . PHP_EOL);

        }

        for($i = 1; $i <= $photoPager->getLastPage(); $i++) {
                
            $thisURL = '/photos';
                
            if($i !== 1) {
                
                $thisURL .= '/' . $i;
                
            }

            if($this->page === $i) {

                echo('<li class="active"><a href="' . $thisURL . '">' . $i . ' <span class="sr-only">(current)</span></a></li>' . PHP_EOL);

            } else {

                echo('<li><a href="' . $thisURL . '">' . $i . '</a></li>' . PHP_EOL);

            }

        }

        if($this->page !== $photoPager->getLastPage()) {
            
            echo('<li><a href="/photos/' . ($this->page + 1) . '" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>' . PHP_EOL);
            
        } else {
            
            echo('<li class="disabled"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>' . PHP_EOL);
            
        }

        echo('</ul>' . PHP_EOL);
        echo('</nav>' . PHP_EOL);
        
    }

	private function photo($thisPhoto) {

			echo('<div class="col-md-3">' . PHP_EOL);
			echo('<a href="/photo/' . $thisPhoto->getID() . '" class="thumbnail" title="Photo #' . $thisPhoto->getID() . '">' . PHP_EOL);
			echo('<img src="/img/photos/243x161/' . $thisPhoto->getID() . '.jpg" alt="Photo #' . $thisPhoto->getID() . '">' . PHP_EOL);
			echo('<div class="caption">' . PHP_EOL);

			if($thisPhoto->getTaken() !== null) {

				echo('<p>#' . $thisPhoto->getID() . ' ' . $thisPhoto->getTaken()->format('d-M-y H:i') . '</p>' . PHP_EOL);

			} else {

				echo('<p class="text-danger" style="margin-bottom: 0px;">No data...</p>' . PHP_EOL);

			}

			foreach($thisPhoto->getLocations() as $thisLocation) {

				echo('<p>' . $thisLocation . '</p>' . PHP_EOL);

			}

			echo('</div>' . PHP_EOL); // end .caption
			echo('</a>' . PHP_EOL);
			echo('</div>' . PHP_EOL); // end .col

	}

	private function photos(ObjectCollection $photos) {

		$x = 0;

		foreach($photos as $thisPhoto) {

			if($x % 4 === 0) {

				echo('<div class="row">'. PHP_EOL);

			}

			$this->photo($thisPhoto);

			if($x % 4 === 3) {

				echo('</div>' . PHP_EOL); // end .row

			}

			$x++;

		}

		if($x % 4 !== 0) {

			echo('</div>' . PHP_EOL); // end .row

		}

	}

}

?>
