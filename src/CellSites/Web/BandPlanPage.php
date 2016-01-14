<?php

namespace CellSites\Web;

class BandPlanPage extends Page {

	public function __construct() {

		$this->addBreadcrumb(new Breadcrumb('Band plan',null));

	}

	protected function body() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Band plan</h1>' . PHP_EOL);
		echo('<p class="alert alert-info">This page focues on <i>actual operational usage</i> (rather than <i>ownership</i>) of frequencies used by mobile phone services. Information is included here only when evidence has been obtained (such as observations from field test mode data on phones) that an operator is operating a certain type of service in a specific range of frequencies.</p>' . PHP_EOL);
		echo('<table class="table">' . PHP_EOL);
		echo('<thead>' . PHP_EOL);
		echo('<tr>' . PHP_EOL);
		echo('<th>Band</th>' . PHP_EOL);
		echo('<th>Frequency range</th>' . PHP_EOL);
		echo('<th>Frequency amount</th>' . PHP_EOL);
		echo('<th>Operator</th>' . PHP_EOL);
		echo('<th>Purpose</th>' . PHP_EOL);
		echo('<th>ARFCNs</th>' . PHP_EOL);
		echo('<th class="numeric">MR#</th>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('</thead>' . PHP_EOL);
		echo('<tbody>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td rowspan="2">CLR (850 MHz) band</td>' . PHP_EOL);
		echo('<td>825&ndash;840 MHz</td>' . PHP_EOL);
		echo('<td>15 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>UMTS mobile uplink</td>' . PHP_EOL);
		echo('<td>1237, 1262, 1287</td>' . PHP_EOL);
		echo('<td>288</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td>870&ndash;885 MHz</td>' . PHP_EOL);
		echo('<td>15 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>UMTS mobile downlink</td>' . PHP_EOL);
		echo('<td>1012, 1037, 1062</td>' . PHP_EOL);
		echo('<td>289</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="info group">' . PHP_EOL);
		echo('<td rowspan="2">GSM (900 MHz) band</td>' . PHP_EOL);
		echo('<td>905.5&ndash;914.7 MHz</td>' . PHP_EOL);
		echo('<td>9.2 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>UMTS mobile uplink</td>' . PHP_EOL);
		echo('<td>2840, 2861</td>' . PHP_EOL);
		echo('<td>253</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="info">' . PHP_EOL);
		echo('<td>950.5&ndash;959.7 MHz</td>' . PHP_EOL);
		echo('<td>9.2 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>UMTS mobile downlink</td>' . PHP_EOL);
		echo('<td>3065, 3086</td>' . PHP_EOL);
		echo('<td>257</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="group success">' . PHP_EOL);
		echo('<td rowspan="8">DCS (1800 MHz) band</td>' . PHP_EOL);
		echo('<td>1735&ndash;1755 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>LTE mobile uplink</td>' . PHP_EOL);
		echo('<td>19550</td>' . PHP_EOL);
		echo('<td>138</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success text-muted">' . PHP_EOL);
		echo('<td>1755&ndash;1760 MHz</td>' . PHP_EOL);
		echo('<td>5 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>Unused</td>' . PHP_EOL);
		echo('<td>n/a</td>' . PHP_EOL);
		echo('<td>138</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td>1760&ndash;1780 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>LTE mobile uplink</td>' . PHP_EOL);
		echo('<td>19800</td>' . PHP_EOL);
		echo('<td>315</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success text-muted">' . PHP_EOL);
		echo('<td>1780&ndash;1785 MHz</td>' . PHP_EOL);
		echo('<td>5 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>Unused</td>' . PHP_EOL);
		echo('<td>n/a</td>' . PHP_EOL);
		echo('<td>315</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td>1830&ndash;1850 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>LTE mobile downlink</td>' . PHP_EOL);
		echo('<td>1550</td>' . PHP_EOL);
		echo('<td>139</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success text-muted">' . PHP_EOL);
		echo('<td>1850&ndash;1855 MHz</td>' . PHP_EOL);
		echo('<td>5 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>Unused</td>' . PHP_EOL);
		echo('<td>n/a</td>' . PHP_EOL);
		echo('<td>139</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td>1855&ndash;1875 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>LTE mobile downlink</td>' . PHP_EOL);
		echo('<td>1800</td>' . PHP_EOL);
		echo('<td>314</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success text-muted">' . PHP_EOL);
		echo('<td>1875&ndash;1880 MHz</td>' . PHP_EOL);
		echo('<td>5 MHz</td>' . PHP_EOL);
		echo('<td>Vodafone</td>' . PHP_EOL);
		echo('<td>Unused</td>' . PHP_EOL);
		echo('<td>n/a</td>' . PHP_EOL);
		echo('<td>314</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="group info">' . PHP_EOL);
		echo('<td rowspan="2">IMT (2100 MHz) band</td>' . PHP_EOL);
		echo('<td>1950.1&ndash;1965.1 MHz</td>' . PHP_EOL);
		echo('<td>15 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>UMTS mobile uplink</td>' . PHP_EOL);
		echo('<td>9763, 9788, 9813</td>' . PHP_EOL);
		echo('<td>140</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="info">' . PHP_EOL);
		echo('<td>2140.1&ndash;2155.1 MHz</td>' . PHP_EOL);
		echo('<td>15 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>UMTS mobile downlink</td>' . PHP_EOL);
		echo('<td>10713, 10738, 10763</td>' . PHP_EOL);
		echo('<td>141</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="group success">' . PHP_EOL);
		echo('<td rowspan="2">IMT-E (2600 MHz) band</td>' . PHP_EOL);
		echo('<td>2520&ndash;2540 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>LTE mobile uplink</td>' . PHP_EOL);
		echo('<td>21075 (15 MHz)</td>' . PHP_EOL);
		echo('<td>393</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('<tr class="success">' . PHP_EOL);
		echo('<td>2640&ndash;2660 MHz</td>' . PHP_EOL);
		echo('<td>20 MHz</td>' . PHP_EOL);
		echo('<td>Spark</td>' . PHP_EOL);
		echo('<td>LTE mobile downlink</td>' . PHP_EOL);
		echo('<td>3075 (15 MHz)</td>' . PHP_EOL);
		echo('<td>392</td>' . PHP_EOL);
		echo('</tr>' . PHP_EOL);
		echo('</tbody>' . PHP_EOL);
		echo('</tbody>' . PHP_EOL);
		echo('</table>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

		$this->usefulInfo();

	}

	private function usefulInfo() {

		echo('<div class="well">' . PHP_EOL);
		echo('<h1>Useful links</h1>' . PHP_EOL);
		echo('<ul>' . PHP_EOL);
		echo('<li><a href="https://www.cellmapper.net/arfcn">Frequency calculator</a></li>' . PHP_EOL);
		echo('<li><a href="http://www.rsm.govt.nz/smart-web/smart/page/-smart/WelcomePage.wdk">Register of radio frequencies</a></li>' . PHP_EOL);
		echo('</div>' . PHP_EOL);

	}

}

?>
