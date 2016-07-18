<?php

namespace CellSites\Web;

use CellSites\Database\LocationQuery;
use CellSites\Database\Network;

class AreaGeoJSON extends GeoJSON {

    public function __construct($countryID,$networkID,$networkType,$areaID) {

		if(is_int($countryID) !== TRUE) {

			throw new Exception('Given Country ID was not an integer.');

		} elseif(is_int($networkID) !== TRUE) {

			throw new Exception('Given Network ID was not an integer.');

		} elseif($networkType !== Network::UMTS && $networkType !== Network::LTE) {

			throw new Exception('Given Network Type was not either Network::UMTS or Network::LTE.');

		} elseif(is_int($areaID) !== TRUE) {

			throw new Exception('Given Area ID was not an integer.');

		}

		if($networkType === Network::UMTS) {

			$query = LocationQuery::create()
				->distinct()
				->useCellUMTSQuery()
					->filterByCountryID($countryID)
					->filterByNetworkID($networkID)
					->filterByAreaID($areaID)
				->endUse()
				->orderByName();

		} else {

			$query = LocationQuery::create()
				->distinct()
				->useCellLTEQuery()
					->filterByCountryID($countryID)
					->filterByNetworkID($networkID)
					->filterByAreaID($areaID)
				->endUse()
				->orderByName();

		}

        if($query->count() === 0) {

            $page = new ResourceNotFoundPage;
            $page->generate();
            exit;

        }

        parent::__construct($query->find());

    }

}

?>
