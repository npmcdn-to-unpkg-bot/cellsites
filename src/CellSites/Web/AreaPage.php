<?php

namespace CellSites\Web;

use \LogicException;
use CellSites\Database\AreaLTEQuery;
use CellSites\Database\AreaUMTSQuery;
use CellSites\Database\CellLTEQuery;
use CellSites\Database\CellUMTSQuery;
use CellSites\Database\Network;

class AreaPage extends Page {

    private $area = NULL;
    private $query = NULL;

    public function __construct($countryID,$networkID,$networkType,$areaID) {

        if(is_int($countryID) !== TRUE) {

            throw new LogicException('Given Country ID must be an integer.');

        } elseif(is_int($networkID) !== TRUE) {

            throw new LogicException('Given Network ID must be an integer.');

        } elseif($networkType !== Network::UMTS && $networkType !== Network::LTE) {

            throw new LogicException('Given Network Type must be either UMTS or LTE.');

        } elseif(is_int($areaID) !== TRUE) {

            throw new LogicException('Given Area ID must be an integer.');

        }

        if($networkType === Network::UMTS) {

            $this->area = AreaUMTSQuery::create()->findPk(array($countryID,$networkID,$areaID));

        } else {

            $this->area = AreaLTEQuery::create()->findPk(array($countryID,$networkID,$areaID));

        }

        if($this->area === NULL) {

            $page = new ResourceNotFoundPage();
            $page->generate();
            exit;

        }

        $this->addBreadcrumb(new Breadcrumb($this->area->getNetwork()->getFullName(),$this->area->getNetwork()->getURL()));

        if($networkType === Network::UMTS) {

            $this->query = CellUMTSQuery::create()->filterByArea($this->area);
            $this->addBreadcrumb(new Breadcrumb($this->area->getName() . ' UMTS'));

        } else {

            $this->query = CellLTEQuery::create()->filterByArea($this->area);
            $this->addBreadcrumb(new Breadcrumb($this->area->getName() . ' LTE'));

        }

    }

    protected function body() {

        echo('<div class="well">' . PHP_EOL);
        echo('<h1>' .  $this->area . ' <small>(' . $this->area->getNetwork()->getLongID() . '-' . $this->area->getID() . '/' . $this->area->getIDAsHex() . ')</small></h1>' . PHP_EOL);

        if($this->area->getNotes() !== null && strlen($this->area->getNotes()) > 0) {

            echo('<p>' . $this->area->getNotes() . '</p>' . PHP_EOL);

        }

        if($this->query->count() === 0) {

            echo('<p>There are currently no information about cells in this area.</p>' . PHP_EOL);

        } else {

            $columns = CellsTable::COLUMN_ID + CellsTable::COLUMN_CELL
                + CellsTable::COLUMN_BAND + CellsTable::COLUMN_FREQUENCY + CellsTable::COLUMN_CODE
                + CellsTable::COLUMN_LOCATION + CellsTable::COLUMN_LAST_SEEN + CellsTable::COLUMN_NOTES;

            if($this->query instanceof CellUMTSQuery) {

                $columns += CellsTable::COLUMN_CONTROLLER;

            } elseif($this->query instanceof CellLTEQuery) {
                
                $columns += CellsTable::COLUMN_NODE;
                
            }

            $table = new CellsTable($this->query,$columns);
            $table->generate();

        }

        echo('</div>' . PHP_EOL);

    }

}

?>
