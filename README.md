# Cell Sites in New Zealand website

This is the repository for the *Cell Sites in New Zealand* website located at http://cellsites.nz/. However I have tried to make it easy for anyone to fork this repository and set up their own cell sites website with minimal effort.

## Requirements

1. An UNIX operating system ([FreeBSD](https://www.freebsd.org/) 10.2 recommended, runs on 10.2-RELEASE-p7)
2. [PHP](http://php.net/) (5.6.x recommended, runs on 5.6.16)
3. A PHP-compatiable web server ([Apache](https://httpd.apache.org/) 2.4.x recommended, runs on 2.4.18)
4. [Composer](https://getcomposer.org/) (latest version recommended, runs on 1.0-dev)
5. [Propel](http://propelorm.org/) (appropirate version installed automatically via Composer)
4. A Propel-compatiable database ([MySQL](http://dev.mysql.com/) 5.6.x recommended, runs on 5.6.27)

## Optional

1. ImageMagick is a requirement for the included script that automatically generates web-friendly photos (with watermark) and thumbnails from original photos.

## Install instructions

These instructions assume you have installed FreeBSD, Apache, MySQL, PHP and Composer already.

1. Clone the git repository.
2. Copy `share/cellsites.php` to `cellsites.php` and change the settings to suit your requirements.
3. Run `composer update`. This installs dependencies into `vendor/` including Propel.
4. Create a database in your chosen database backend system.
5. Copy `share/propel.xml.sample` to `propel.xml` and change the settings to suit your database. The sample configuraiton is for a MySQL database but can be easily adapted to any database backend supported by Propel.
6. Run `./propel sql:build`. This generates the SQL code neccessary for generating tables in your database.
7. Run `./propel model:build`. This generates Propel's PHP classes, which are used for database access.
8. Run `./propel config:convert`. This generates the PHP configuration file, which are used to initalise Propel in PHP scripts.
9. Run `./propel sql:insert`. This generates tables in your database for Propel's PHP classes to use.
10. Point your web sever (e.g. Apache) to the `web/` directory of this repository. A sample Apache configuration is avaliable at `share/httpd-vhosts.conf.sample`.

## Directory structure

* **bin/** - all command line scripts live under here
  * **photos.php** - this script automates the creation of web-friendly photos and thumbnails
* **src/** - all PHP classes live under here
  * **CellSites/**
    * **Database/** - Database classes that extends Propel's auto-generated classes
      * **Base/** - Propel's auto-generated classes *(do not touch)*
    * **Scripts/** - PHP classes that run scripts
    * **Web/** - PHP classes that generate HTML or GeoJSON output
      * **Router.php** - PHP class that determines which Page or GeoJSON class to generate
* **web/** - all public-facing files live under here
  * **data/** - put your local data here (e.g. GeoJSON files) since this directory is .gitignored
  * **img/** - put your photos and thumbnails here since this directory is .gitignored
  * **index.php** - PHP script that makes the magic happen

