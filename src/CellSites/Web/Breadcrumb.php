<?php

namespace CellSites\Web;

class Breadcrumb {

	private $name = null;
	private $url = null;

	public function __construct($name,$url) {

		if(strlen($name) === 0) {

			throw new Exception;

		}

		if($url !== null && strlen($url) === 0) {

			throw new Exception;

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
