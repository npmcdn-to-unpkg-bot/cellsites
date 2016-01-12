#!/usr/bin/env php
<?php

error_reporting(-1);

require(__DIR__ . '/../vendor/autoload.php');
require(__DIR__ . '/../generated-conf/config.php');
require('../cellsites.php');

use CellSites\Scripts\PhotosSync;

$sync = new PhotosSync;
$sync->process();

?>
