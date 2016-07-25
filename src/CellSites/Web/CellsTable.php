<?php

namespace CellSites\Web;

use \DateTime;
use \LogicException;
use CellSites\Database\CellInterface;
use CellSites\Database\CellLTEQuery;
use CellSites\Database\CellUMTSQuery;
use Propel\Runtime\ActiveQuery\ModelCriteria;

class CellsTable {

    const COLUMN_COUNTRY = 1;
    const COLUMN_NETWORK = 2;
    const COLUMN_AREA = 4;
    const COLUMN_ID = 8;
    const COLUMN_CONTROLLER = 16;
    const COLUMN_NODE = 32;
    const COLUMN_CELL = 64;
    const COLUMN_BAND = 128;
    const COLUMN_FREQUENCY = 256;
    const COLUMN_CODE = 512;
    const COLUMN_LOCATION = 1024;
    const COLUMN_LAST_SEEN = 2048;
    const COLUMN_NOTES = 4096;

    private $columns = NULL;
    private $now = NULL;
    private $query = NULL;

    public function __construct(ModelCriteria $query, $columns) {

        if($query instanceof CellUMTSQuery !== TRUE && $query instanceof CellLTEQuery !== TRUE) {

            throw new LogicException('Given query must be an instance of CellUMTSQuery or CellLTEQuery.');

        } elseif(is_int($columns) !== TRUE) {

            throw new LogicException('Given column selections must be an integer.');

        } elseif($columns & self::COLUMN_CONTROLLER !== 0 && $query instanceof CellUMTSQuery === FALSE) {

            throw new LogicException('Given column selections must not include COLUMN_CONTROLLER if the query is not an instance of CellUMTSQuery.');

        } elseif($query->count() === 0) {

            throw new LogicException('Given query had an empty result set.');

        }

        $this->columns = $columns;
        $this->query = $query;

        if(($this->columns & self::COLUMN_LAST_SEEN) !== 0) {

            $this->now = new DateTime('now');

        }

    }

    private function area(CellInterface $cell) {

        if(($this->columns & self::COLUMN_AREA) === 0) {

            return;

        }

        echo('<td><abbr title="' . $cell->getArea() . '">' . $cell->getAreaID() . '</abbr></td>' . PHP_EOL);

    }

    private function band(CellInterface $cell) {

        if(($this->columns & self::COLUMN_BAND) === 0) {

            return;

        } elseif($cell->getBand() === NULL) {

            echo('<td class="text-muted">Unknown</td>' . PHP_EOL);

        } else {

            echo('<td>' . $cell->getBand() . '</td>' . PHP_EOL);

        }

    }

    private function cell(CellInterface $cell) {

        if(($this->columns & self::COLUMN_CELL) === 0) {

            return;

        }

        echo('<td>' . $cell->getCell() . '</td>' . PHP_EOL);

    }

    private function code(CellInterface $cell) {

        if(($this->columns & self::COLUMN_CODE) === 0) {

            return;

        } elseif($cell->getCode() === NULL) {

            echo('<td class="text-muted">Unknown</td>' . PHP_EOL);

        } else {

            echo('<td>' . $cell->getCode() . '</td>' . PHP_EOL);

        }

    }

    private function controller(CellInterface $cell) {

        if(($this->columns & self::COLUMN_CONTROLLER) === 0) {

            return;

        }

        echo('<td>' . $cell->getController() . '</td>' . PHP_EOL);

    }

    private function country(CellInterface $cell) {

        if(($this->columns & self::COLUMN_COUNTRY) === 0) {

            return;

        }

        echo('<td><abbr title="' . $cell->getCountry() . '">' . $cell->getCountryID() . '</abbr></td>' . PHP_EOL);

    }

    private function frequency(CellInterface $cell) {

        if(($this->columns & self::COLUMN_FREQUENCY) === 0) {

            return;

        } else if($cell->getFrequency() === NULL) {

            echo('<td class="text-muted">Unknown</td>' . PHP_EOL);

        } else {

            echo('<td>' . $cell->getFrequencyID() . '</td>' . PHP_EOL);

        }

    }

    public function generate() {

        echo('<table class="table">' . PHP_EOL);
        $this->thead();
        $this->tbody();
        echo('</table>' . PHP_EOL);

    }

    private function id(CellInterface $cell) {

        if(($this->columns & self::COLUMN_ID) === 0) {

            return;

        }

        echo('<td>' . $cell->getID() . '</td>' . PHP_EOL);

    }

    private function lastSeen(CellInterface $cell) {

        if($this->columns & self::COLUMN_LAST_SEEN === 0) {

            return;

        } elseif($cell->getLastSeen() === NULL) {

            echo('<td class="text-muted">Unknown</td>' . PHP_EOL);
            return;

        }

        $daysSinceLastSeen = $cell->getLastSeen()->diff($this->now)->days;

        if($daysSinceLastSeen > 100) {

            echo('<td class="text-warning"><span title="' . $daysSinceLastSeen . ' days since last seen">' . $cell->getLastSeen()->format(CELLSITES_FORMAT_DATE) . '</span></td>' . PHP_EOL);

        } elseif($daysSinceLastSeen > 30) {

            echo('<td><span title="' . $daysSinceLastSeen . ' days since last seen">' . $cell->getLastSeen()->format(CELLSITES_FORMAT_DATE) . '</span></td>' . PHP_EOL);

		} else {

			echo('<td class="text-success"><span title="' . $daysSinceLastSeen . ' days since last seen">' . $cell->getLastSeen()->format(CELLSITES_FORMAT_DATE) . '</span></td>' . PHP_EOL);

		}

    }

    private function location(CellInterface $cell) {

        if($this->columns & self::COLUMN_LOCATION === 0) {

            return;

        } elseif($cell->getLocation() === NULL) {

            echo('<td class="text-muted">Unknown</td>' . PHP_EOL);

        } elseif($cell->getLocation()->countPhotos() > 0) {

            echo('<td><a href="' . $cell->getLocation()->getURL() . '">' . $cell->getLocation() . '</a> <span class="glyphicon glyphicon-camera" aria-hidden="true"></span></td>' . PHP_EOL);

        } else {

            echo('<td><a href="' . $cell->getLocation()->getURL() . '">' . $cell->getLocation() . '</a></span></td>' . PHP_EOL);

        }

    }

    private function network(CellInterface $cell) {

        if(($this->columns & self::COLUMN_NETWORK) === 0) {

            return;

        }

        echo('<td><abbr title="' . $cell->getNetwork() . '">' . sprintf('%02d',$cell->getNetworkID()) . '</abbr></td>' . PHP_EOL);

    }

    private function node(CellInterface $cell) {

        if(($this->columns & self::COLUMN_NODE) === 0) {

            return;

        }

        echo('<td>' . $cell->getNode() . '</td>' . PHP_EOL);

    }

    private function notes(CellInterface $cell) {

        if(($this->columns & self::COLUMN_NOTES) === 0) {

            return;

        } elseif($cell->getNotes() === NULL || strlen($cell->getNotes()) === 0) {

            echo('<td class="text-muted">n/a</td>' . PHP_EOL);

        } elseif(strpos($cell->getNotes(),'?') !== FALSE) {

            echo('<td class="text-warning">' . $cell->getNotes() . '</td>' . PHP_EOL);

        } else {

            echo('<td>' . $cell->getNotes() . '</td>' . PHP_EOL);

        }

    }

    private function tbody() {

        echo('<tbody>' . PHP_EOL);

        $lastCell = NULL;

        foreach($this->query->find() as $thisCell) {

            if($lastCell !== NULL && $lastCell->getNode() !== $thisCell->getNode()) {

                echo('<tr class="group">' . PHP_EOL);

            } else {

                echo('<tr>' . PHP_EOL);

            }

            $this->country($thisCell);
            $this->network($thisCell);
            $this->area($thisCell);
            $this->id($thisCell);
            $this->controller($thisCell);
            $this->node($thisCell);
            $this->cell($thisCell);
            $this->band($thisCell);
            $this->frequency($thisCell);
            $this->code($thisCell);
            $this->location($thisCell);
            $this->lastSeen($thisCell);
            $this->notes($thisCell);
            echo('</tr>' . PHP_EOL);

            $lastCell = $thisCell;

        }

        echo('</tbody>' . PHP_EOL);

    }

    private function thead() {

        echo('<thead>' . PHP_EOL);

        if(($this->columns & self::COLUMN_COUNTRY) !== 0) {

            echo('<th>Country</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_NETWORK) !== 0) {

            echo('<th>Network</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_AREA) !== 0) {

            echo('<th>Area</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_ID) !== 0) {

            if(($this->query instanceof CellLTEQuery) === TRUE) {

                echo('<th><abbr title="E-UTRAN Cell Identifier">ECI</abbr></th>' . PHP_EOL);

            } elseif(($this->query instanceof CellUMTSQuery) === TRUE) {

                echo('<th><abbr title="Long Cell Identifier">LCID</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>ID</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_CONTROLLER) !== 0) {

            if(($this->query instanceof CellUMTSQuery) === TRUE) {

                echo('<th><abbr title="Radio Network Controller">RNC</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>Controller</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_NODE) !== 0) {

            if(($this->query instanceof CellLTEQuery) === TRUE) {

                echo('<th><abbr title="eNodeB Identifier">eNB-ID</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>Node</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_CELL) !== 0) {

            if(($this->query instanceof CellUMTSQuery) === TRUE) {

                echo('<th><abbr title="Cell Identifier">CID</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>Cell</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_BAND) !== 0) {

            echo('<th>Band</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_FREQUENCY) !== 0) {

            if(($this->query instanceof CellLTEQuery) === TRUE) {

                echo('<th><abbr title="E-UTRA Absolute Radio Frequency Channel Number">EARFCN</abbr></th>' . PHP_EOL);

            } elseif(($this->query instanceof CellUMTSQuery) === TRUE) {

                echo('<th><abbr title="UTRA Absolute Radio Frequency Channel Number">UARFCN</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>Frequency</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_CODE) !== 0) {

            if(($this->query instanceof CellLTEQuery) === TRUE) {

                echo('<th><abbr title="Physical Cell Identiﬁer">PCI</abbr></th>' . PHP_EOL);

            } elseif(($this->query instanceof CellUMTSQuery) === TRUE) {

                echo('<th><abbr title="Primary Scrambling Code">PSC</abbr></th>' . PHP_EOL);

            } else {

                echo('<th>Code</th>' . PHP_EOL);

            }

        }

        if(($this->columns & self::COLUMN_LOCATION) !== 0) {

            echo('<th>Location</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_LAST_SEEN) !== 0) {

            echo('<th>Last Seen</th>' . PHP_EOL);

        }

        if(($this->columns & self::COLUMN_NOTES) !== 0) {

            echo('<th>Notes</th>' . PHP_EOL);

        }

        echo('</thead>' . PHP_EOL);

    }

}

?>
