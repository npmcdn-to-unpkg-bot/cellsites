<?php

error_reporting(-1);

require(__DIR__ . '/../vendor/autoload.php');
require(__DIR__ . '/../generated-conf/config.php');
require('../cellsites.php');

CellSites\Web\Router::getPage()->generate();

?>
