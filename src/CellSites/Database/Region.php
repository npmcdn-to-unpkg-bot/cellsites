<?php

namespace CellSites\Database;

use CellSites\Database\Base\Region as BaseRegion;

class Region extends BaseRegion {

	public function getURL() {

		return('/region/' . $this->getID());

	}

}

?>
