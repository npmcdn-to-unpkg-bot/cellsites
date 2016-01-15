<?php

namespace CellSites\Web;

use CellSites\Database\Network;

class Router {

	public static function getPage() {

		$request = $_SERVER['REQUEST_URI'];

		if($request === '/') {

			return new HomePage;

		} elseif($request === '/band-plan') {

			return new BandPlanPage;

		} elseif($request === '/intro') {

			return new IntroductionPage;

		} elseif($request === '/locations/geojson') {

			return new LocationsGeoJSON;

		} elseif($request === '/map') {

			return new MapPage;

		} elseif($request === '/photos') {

			return new PhotosPage(1);

		} elseif(preg_match(':^/([0-9]{3})/([0-9]{2})$:',$request,$matches)) {

			return new NetworkPage((int)$matches[1],(int)$matches[2]);

		} elseif(preg_match(':^/([0-9]{3})/([0-9]{2})/tac-([1-9]\d*)$:',$request,$matches)) {

			return new AreaPage((int)$matches[1],(int)$matches[2],Network::LTE,(int)$matches[3]);

		} elseif(preg_match(':^/([0-9]{3})/([0-9]{2})/ura-([1-9]\d*)$:',$request,$matches)) {

			return new AreaPage((int)$matches[1],(int)$matches[2],Network::UMTS,(int)$matches[3]);

		} elseif(preg_match(':^/location/([1-9]\d*)$:',$request,$matches)) {

			return new LocationPage((int)$matches[1]);

		} elseif(preg_match(':^/location/([1-9]\d*)/geojson$:',$request,$matches)) {

			return new LocationGeoJSON((int)$matches[1]);

		} elseif(preg_match(':^/photo/([1-9]\d*)$:',$request,$matches)) {

			return new PhotoPage((int)$matches[1]);

		} elseif(preg_match(':^/photos/([1-9]\d*)$:',$request,$matches)) {

			if((int)$matches[1] === 1) {

				return new ResourceNotFoundPage;

			} else {

				return new PhotosPage((int)$matches[1]);

			}

		} elseif(preg_match(':^/region/([1-9]\d*)$:',$request,$matches)) {

			return new RegionPage((int)$matches[1]);

		} elseif(preg_match(':^/region/([1-9]\d*)/geojson$:',$request,$matches)) {

			return new RegionGeoJSON((int)$matches[1]);

		} else {

			return new ResourceNotFoundPage;

		}

	}

}

?>
