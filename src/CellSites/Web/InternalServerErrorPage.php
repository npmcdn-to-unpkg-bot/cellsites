<?php

namespace Cellsites\Web;

class InternalServerErrorPage extends Page {

    const ERROR_MESSAGE = '500 Internal Server Error';

    private $exception;

    public function __construct(\Exception $exception) {

        header('HTTP/1.0 ' . self::ERROR_MESSAGE);

        $this->exception = $exception;

    }

    public function body() {

        echo('<div class="well">' . PHP_EOL);
        echo('<h1>' . self::ERROR_MESSAGE . '</h1>' . PHP_EOL);
        echo('<p>Sorry, we had some kind of error while responding to your request.</p>' . PHP_EOL);
        echo('</div>' . PHP_EOL);

        if(defined('CELLSITES_DEBUG') && CELLSITES_DEBUG === TRUE) {

            echo('<div class="well">' . PHP_EOL);
            echo('<h2>Exception</h2>' . PHP_EOL);
            echo('<ul>' . PHP_EOL);
            echo('<li><b>Message:</b> ' . $this->exception->getMessage() . '</li>' . PHP_EOL);
            echo('<li><b>Code:</b> ' . $this->exception->getCode() . '</li>' . PHP_EOL);
            echo('<li><b>File:</b> ' . $this->exception->getFile() . '</li>' . PHP_EOL);
            echo('<li><b>Line:</b> ' . $this->exception->getLine() . '</li>' . PHP_EOL);
            echo('</ul>' . PHP_EOL);
            echo('</div>' . PHP_EOL);

            if(count($this->exception->getTrace()) !== 0) {

                echo('<div class="well">' . PHP_EOL);
                echo('<h2>Trace</h2>' . PHP_EOL);
		echo($this->exception->getTraceAsString());
                echo('</div>' . PHP_EOL);

            }

        }


    }

}

?>
