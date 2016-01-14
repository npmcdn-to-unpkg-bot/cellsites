<?php

error_reporting(-1);

require('../vendor/autoload.php');
require('../generated-conf/config.php');
require('../cellsites.php');

use CellSites\Web\Router;
use CellSites\Web\InternalServerErrorPage;

try {

    Router::getPage()->generate();
    exit;

} catch (\Exception $e) {

    $internalServerErrorPage = new InternalServerErrorPage($e);
    $internalServerErrorPage->generate();
    exit;

}

?>
