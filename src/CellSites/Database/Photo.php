<?php

namespace CellSites\Database;

use CellSites\Database\Base\Photo as BasePhoto;

class Photo extends BasePhoto {
    
    public function getThumbnailURL() {
        
        return('/img/photos/243x161/' . $this->getID() . '.jpg');
        
    }
    
    public function getURL() {
        
        return('/photo/' . $this->getID());
        
    }

}

?>