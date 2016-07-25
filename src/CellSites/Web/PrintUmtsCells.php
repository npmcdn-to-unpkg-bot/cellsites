<?php

namespace CellSites\Web;

use \PDO;

class PrintUmtsCells {

	private $area = null;
	private $country = null;
	private $mcc = null;
	private $mnc = null;
	private $network = null;
	private $rows = array();
	private $ura = null;

	public function __construct($mcc, $mnc, $ura) {
		if (is_int($mcc) !== true) {
			throw new Exception('MCC must be an integer.');
		} else if (is_int($mnc) !== true) {
			throw new Exception('MNC must be an integer.');
		} else if (is_int($ura) !== true) {
			throw new Exception('URA must be an integer.');
		}
		try {
			$db = new PDO('pgsql:dbname=cellsites', 'cellsites', '39nLJhQs');
			$stmt = $db->prepare('SELECT mcc, mnc, ura, country, network, area
				FROM areas WHERE mcc = ? AND mnc = ? AND ura = ?');
			if ($stmt->execute(array($mcc, $mnc, $ura)) !== true) {
				self::error('Failed to get metadata from database.');
			}
			if (($result = $stmt->fetch(PDO::FETCH_NUM)) === false) {
				self::error('Empty metadata from database.');
			}
			unset($stmt);
			list($this->mcc, $this->mnc, $this->ura, $this->country, $this->network, $this->area) = $result;
			unset($result);
			$stmt = $db->prepare('SELECT lcid, cid, freq, psc, location, notes
				FROM cell_umts_full WHERE mcc = ? AND mnc = ? AND ura = ?');
			if ($stmt->execute(array($mcc, $mnc, $ura)) !== true) {
				self::error('Failed to get data from database.');
			}
			$this->rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
			unset($stmt);
			unset($db);
		} catch (PDOException $e) {
			self::error('Database error.');
		}
	}

	private static function error($msg) {
		http_response_code(500);
		exit($msg);
	}

	public function generate() {
		$title = sprintf('UMTS cells for %s %s (%03d-%02d) in %s (%d)',
			$this->network, $this->country, $this->mcc, $this->mnc, $this->area, $this->ura);
		echo('<!DOCTYPE html>' . PHP_EOL);
		echo('<html lang="en">' . PHP_EOL);
		echo('<head>' . PHP_EOL);
		echo('<title>' . $title . '</title>' . PHP_EOL);
		echo('<style type="text/css">' . PHP_EOL);
		echo('h1 {color: gray; font-size: 15pt;}' . PHP_EOL);
		echo('table {border-collapse: collapse; width: 100%;}' . PHP_EOL);
		echo('th, td {font-size: 10pt; text-align: center;}' . PHP_EOL);
		echo('.l, .n {text-align: left;}' . PHP_EOL);
		echo('.x {border-top: thin solid gray;}' . PHP_EOL);
		echo('</style>' . PHP_EOL);
		echo('</head>' . PHP_EOL);
		echo('<body>' . PHP_EOL);
		echo('<h1>' . $title . '</h1>' . PHP_EOL);
		echo('<table>' . PHP_EOL);
		echo('<thead>' . PHP_EOL);
		echo('<th>LCID</th>' . PHP_EOL);
		echo('<th>CID</th>' . PHP_EOL);
		echo('<th>Freq</th>' . PHP_EOL);
		echo('<th>PSC</th>' . PHP_EOL);
		echo('<th class="l">Location</th>' . PHP_EOL);
		echo('<th class="n">Notes</th>' . PHP_EOL);
		echo('</thead>' . PHP_EOL);
		echo('<tbody>' . PHP_EOL);
		$lastLocation = null;
		foreach ($this->rows as $row) {
			if ($row['location'] === $lastLocation) {
				echo('<tr>');
			} else {
				echo('<tr class="x">');
			}
			echo('<td>' . $row['lcid'] . '</td>');
			echo('<td>' . substr_replace($row['cid'], '&ndash;', -1, 0) . '</td>');
			echo('<td>' . $row['freq'] . '</td>');
			echo('<td>' . $row['psc'] . '</td>');
			echo('<td class="l">' . self::shortenLocation($row['location']) . '</td>');
			echo('<td class="n">' . $row['notes'] . '</td>');
			echo('</tr>' . PHP_EOL);
			$lastLocation = $row['location'];
		}
		echo('</tbody>' . PHP_EOL);
		echo('</table>' . PHP_EOL);
		echo('</body>' . PHP_EOL);
		echo('</html>' . PHP_EOL);
	}

	// Convert common words to abbrevations. Most of the abbrevations come from NZ Post's address formats guidelines
	// at https://www.nzpost.co.nz/personal/sending-within-nz/how-to-address-mail/correct-address-formats-envelope-layouts
	private static function shortenLocation($location) {
		$location = str_replace(' and ',' & ', $location);
		$location = str_replace(' Central',' Ctrl', $location);
		$location = str_replace(' East',' E', $location);
		$location = str_replace(' North-East',' NE', $location); // Must be before 'North'
		$location = str_replace(' North-West',' NW', $location); // Must be before 'North'
		$location = str_replace(' North',' N', $location);
		$location = str_replace(' Road',' Rd', $location);
		$location = str_replace(' Street',' St', $location);
		$location = str_replace(' South-East',' SE', $location); // Must be before 'South'
		$location = str_replace(' South-West',' SW', $location); // Must be before 'South'
		$location = str_replace(' South',' S', $location);
		$location = str_replace(' West',' W', $location);
		$location = str_replace('Saint ','St ', $location);
		return($location);
	}

}
