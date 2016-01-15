<?php

namespace CellSites\Web;

use \LogicException;

class Breadcrumb {

    private $name = NULL;
    private $url = NULL;

    public function __construct($name, $url = NULL) {

        if(strlen($name) === 0) {

            throw new LogicException('Given name must be a string with non-zero length.');

        }

        if($url !== NULL && strlen($url) === 0) {

            throw new LogicException('Given URL must be either NULL or a string with non-zero length.');

        }

        $this->name = $name;
        $this->url = $url;

    }

    public function __toString() {

        return($this->getName());

    }

    public function getName() {

        return($this->name);

    }

    public function getURL() {

        return($this->url);

    }

}

?>
