<?php

namespace CellSites\Web;

use CellSites\Database\Photo;

class ThumbnailDiv {
    
    private $photo;
    
    public function __construct(Photo $photo) {
        
        $this->photo = $photo;
        
    }
    
    public function generate() {
  
        echo('<div class="col-md-3">' . PHP_EOL);
        echo('<a href="' . $this->photo->getURL() . '" class="thumbnail" title="Photo #' . $this->photo->getID() . '">' . PHP_EOL);
        echo('<img src="' . $this->photo->getThumbnailURL() . '" alt="Photo #' . $this->photo->getID() . '">' . PHP_EOL);
        echo('<div class="caption">' . PHP_EOL);

        if($this->photo->getTaken() !== null) {

            echo('<p>#' . $this->photo->getID() . ' ' . $this->photo->getTaken()->format(CELLSITES_FORMAT_DATE . ' ' . CELLSITES_FORMAT_TIME) . '</p>' . PHP_EOL);

        } else {

            echo('<p class="text-danger" style="margin-bottom: 0px;">No data...</p>' . PHP_EOL);

        }

        foreach($this->photo->getLocations() as $thisLocation) {

            echo('<p>' . $thisLocation . '</p>' . PHP_EOL);

        }

        echo('</div>' . PHP_EOL);
        echo('</a>' . PHP_EOL);
        echo('</div>' . PHP_EOL);
        
    }
    
}

?>