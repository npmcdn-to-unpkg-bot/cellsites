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
                echo('<ol class="trace">' . PHP_EOL);

                foreach($this->exception->getTrace() as $thisTrace) {

                    echo('<li><b>' . $thisTrace['file'] . '(' . $thisTrace['line'] . '):</b><br>' . PHP_EOL);

                    if(isset($thisTrace['class'])) {

                        echo($thisTrace['class'] . $thisTrace['type']);

                    }

                    echo($thisTrace['function'] . '(');

                    if(count($thisTrace['args']) !== 0) {

                        for($i = 0; $i < count($thisTrace['args']); $i++) {

                            if(is_string($thisTrace['args'][$i])) {

                                echo('<span class="text-info">"' . htmlentities($thisTrace['args'][$i]) . '"</span>');

                            } else {

                                echo(htmlentities($thisTrace['args'][$i]));

                            }

                            if($i !== (count($thisTrace['args'])-1)) {

                                echo(',');

                            }

                        }

                    }

                    echo(')</li>' . PHP_EOL);

                }

                echo('</ol>' . PHP_EOL);
                echo('</div>' . PHP_EOL);

            }

        }


    }

}

?>