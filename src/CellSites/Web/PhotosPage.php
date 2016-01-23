<?php

namespace CellSites\Web;

use CellSites\Database\PhotoQuery;
use Propel\Runtime\Util\PropelModelPager;

class PhotosPage extends Page {

    private $page = null;
    private $query = null;

    public function __construct($page) {

        if(is_int($page) !== TRUE) {

            throw new LogicException('Given Page ID must be an integer.');

        }

        $this->page = $page;

        if($this->page === 1) {

            $this->addBreadcrumb(new Breadcrumb('Photos'));

        } else {

            $this->addBreadcrumb(new Breadcrumb('Photos','/photos'));
            $this->addBreadcrumb(new Breadcrumb('Page ' . $this->page));

        }

        $this->query = PhotoQuery::create()->filterByVisible(TRUE)->orderByTaken();

    }

    protected function body() {

        echo('<div class="well">' . PHP_EOL);
        echo('<h1>Photos</h1>' . PHP_EOL);

        if($this->query->count() === 0) {

            echo('<p class="alert alert-warning">There were no photos in the database to display here.</p>' . PHP_EOL);

        } else {

            $photoPager = $this->query->paginate($this->page,40);

            $thumbnails = new ThumbnailsDiv($photoPager->getResults());
            $thumbnails->generate();

            $this->pagination($photoPager);

        }

        echo('</div>' . PHP_EOL);

    }

    private function pagination(PropelModelPager $photoPager) {

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

}

?>
