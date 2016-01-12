<?php

namespace CellSites\Database;

use CellSites\Database\Base\CellLTE as BaseCellLTE;

class CellLTE extends BaseCellLTE {

	private static $now = null;

	public function getBand() {

		if($this->getEARFCN() === null) {

			return null;

		} elseif($this->getEARFCN() === 1550) {

			return 3;

		} else {

			throw new RuntimeException('Unexected UARFCN.');

		}

	}

	public function getCell() {

		return($this->getID() & 255);

	}

	public function getDaysSinceLastSeen() {

		if($this->getLastSeen() === null) {

			throw new Exception;

		}

		return($this->getLastSeen()->diff(self::getNow())->days);

	}

	public function getNode() {

		return(($this->getID() & 268435200)/256);

	}

	private static function getNow() {

		if(self::$now === null) {

			self::$now = new \DateTime('now');

		}

		return(self::$now);

	}

}
