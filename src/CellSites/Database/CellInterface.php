<?php

namespace CellSites\Database;

interface CellInterface {

    public function getArea();
    public function getAreaID();
    public function getBand();
    public function getCell();
    public function getCode();
    public function getController();
    public function getCountry();
    public function getCountryID();
    public function getFrequency();
    public function getFrequencyID();
    public function getID();
    public function getLastSeen();
    public function getLocation();
    public function getNetwork();
    public function getNetworkID();
    public function getNode();
    public function getNotes();

}

?>