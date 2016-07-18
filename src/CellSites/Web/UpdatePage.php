<?php

namespace CellSites\Web;

use \DateTime;
use CellSites\Database\CellLTEQuery;
use League\Csv\Reader;

class UpdatePage extends Page {

	private $fieldName = 'file';

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Upload updated data</h1>' . PHP_EOL);

		if(isset($_FILES[$this->fieldName]['error']) !== TRUE || $_FILES[$this->fieldName]['error'] !== 0) {

			echo('<form enctype="multipart/form-data" method="POST">' . PHP_EOL);
			echo('<p><input name="' . $this->fieldName . '" type="file"></p>' . PHP_EOL);
			echo('<p><input type="submit" value="Upload file"></p>' . PHP_EOL);
			echo('</form>' . PHP_EOL);

		} else {

			$this->processUpload();

		}

		echo('</div>' . PHP_EOL);

	}

	private function processUpload() {

		$reader = Reader::createFromPath($_FILES[$this->fieldName]['tmp_name']);
		$data = $reader->fetchAssoc(0);

		echo('<table class="table">' . PHP_EOL);
		echo('<thead>' . PHP_EOL);
		echo('<th>MCC</th>' . PHP_EOL);
		echo('<th>MNC</th>' . PHP_EOL);
		echo('<th>LCID</th>' . PHP_EOL);
		echo('<th>TAC</th>' . PHP_EOL);
		echo('<th>EARFCN</th>' . PHP_EOL);
		echo('<th>PCI</th>' . PHP_EOL);
		echo('<th>Date</th>' . PHP_EOL);
		echo('<th>Status</th>' . PHP_EOL);
		echo('</thead>' . PHP_EOL);
		echo('<tbody>' . PHP_EOL);

		foreach($reader->fetchAssoc(0) as $thisData) {

			if(strlen($thisData['MCC']) === 0) {

				continue;

			}

			$cellInDatabase = CellLTEQuery::create()->findPk(array((int)$thisData['MCC'],(int)$thisData['MNC'],(int)$thisData['LCID']));

			$thisDate = new DateTime($thisData['Date']);

			$needsUpdating = FALSE;

			echo('<tr>' . PHP_EOL);

			if($cellInDatabase !== NULL) {

				echo('<td class="text-success">' . (int)$thisData['MCC'] . '</td>' . PHP_EOL);
				echo('<td class="text-success">' . sprintf('%02d',(int)$thisData['MNC']) . '</td>' . PHP_EOL);
				echo('<td class="text-success"><b>' . (int)$thisData['LCID'] . '</b></td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">' . (int)$thisData['MCC'] . '</td>' . PHP_EOL);
				echo('<td class="text-danger">' . sprintf('%02d',(int)$thisData['MNC']) . '</td>' . PHP_EOL);
				echo('<td class="text-danger"><b>' . (int)$thisData['LCID'] . '</b></td>' . PHP_EOL);

				$needsUpdating = TRUE;

			}

			if($cellInDatabase !== NULL && $cellInDatabase->getAreaID() === (int)$thisData['TAC']) {

				echo('<td class="text-success">' . (int)$thisData['TAC'] . '</td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">' . (int)$thisData['TAC'] . '</td>' . PHP_EOL);

			}

			if($cellInDatabase !== NULL && $cellInDatabase->getFrequencyID() === (int)$thisData['EARFCN']) {

				echo('<td class="text-success">' . (int)$thisData['EARFCN'] . '</td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">' . (int)$thisData['EARFCN'] . '</td>' . PHP_EOL);

				$needsUpdating = TRUE;

			}

			if($cellInDatabase !== NULL && $cellInDatabase->getCode() === (int)$thisData['PCI']) {

				echo('<td class="text-success">' . (int)$thisData['PCI'] . '</td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">' . (int)$thisData['PCI'] . '</td>' . PHP_EOL);

				$needsUpdating = TRUE;

			}

			if($cellInDatabase !== NULL && $cellInDatabase->getLastSeen() == $thisDate) {

				echo('<td class="text-success">' . $thisDate->format('d-M-y') . '</td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">' . $thisDate->format('d-M-y') . '</td>' . PHP_EOL);

				$needsUpdating = TRUE;

			}

			if($needsUpdating === FALSE) {

				echo('<td class="text-success">OK</td>' . PHP_EOL);

			} else {

				echo('<td class="text-danger">Needs updating</td>' . PHP_EOL);

			}

			echo('</tr>' . PHP_EOL);

		}

		echo('</tbody>' . PHP_EOL);
		echo('</table>' . PHP_EOL);

	}

}

?>
