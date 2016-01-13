# Cell Sites in New Zealand website

This is the repository for the *Cell Sites in New Zealand* website located at
http://cellsites.nz/. However I have tried to make it easy for anyone to fork
this repository and set up their own cell sites website with minimal effort.

## Requirements

The requirements are as follows. Recommended versions based on those used on
http://cellsites.nz/ while the supported versions are based on those used on my
laptop (where it differes from the version on the web server. Versions noted as
*runs on* are the exact vesions currently used on the web server and/or my
laptop.

1. An UNIX operating system ([FreeBSD](https://www.freebsd.org/) 10.2
recommended, runs on 10.2-RELEASE-p7; Mac OS X 10.11 supported, runs on
10.11.1)
2. [PHP](http://php.net/) (5.6.x recommended, runs on 5.6.16; 5.5.x supported,
runs on 5.5.29)
3. A PHP-compatiable web server ([Apache](https://httpd.apache.org/) 2.4.x
recommended, runs on 2.4.16 and 2.4.18)
4. [Composer](https://getcomposer.org/) (latest version recommended, runs on
1.0-dev)
5. [Propel](http://propelorm.org/) (appropirate version installed automatically
via Composer)
4. A Propel-compatiable database ([MySQL](http://dev.mysql.com/) 5.6.x
recommended, runs on 5.6.27; 5.7.x supported, runs on 5.6.10)

## Optional

1. ImageMagick is a requirement for the included script that automatically
generates web-friendly photos (with watermark) and thumbnails from original 
photos.

## Install instructions

These instructions assume you have installed FreeBSD, Apache, MySQL, PHP and
Composer already.

1. Clone the git repository.
2. Copy `share/cellsites.php` to `cellsites.php` and change the settings to
suit your requirements.
3. Run `composer update`. This installs dependencies into `vendor/` including
Propel.
4. Create a database in your chosen database backend system.
5. Copy `share/propel.xml.sample` to `propel.xml` and change the settings to
suit your database. The sample configuraiton is for a MySQL database but can be
easily adapted to any database backend supported by Propel.
6. Run `./propel sql:build`. This generates the SQL code neccessary for
generating tables in your database.
7. Run `./propel model:build`. This generates Propel's PHP classes, which are
used for database access.
8. Run `./propel config:convert`. This generates the PHP configuration file,
which are used to initalise Propel in PHP scripts.
9. Run `./propel sql:insert`. This generates tables in your database for
Propel's PHP classes to use.
10. Point your web sever (e.g. Apache) to the `web/` directory of this
repository. A sample Apache configuration is avaliable at
`share/httpd-vhosts.conf.sample`.

## Directory structure

* **bin/** - command line scripts
  * **photos.php** - creates web-friendly photos and thumbnails
* **src/**
  * **CellSites/**
    * **Database/** - database classes
      * **Base/** - Propel's auto-generated classes *(do not touch)*
    * **Scripts/** - classes supporting scripts in `bin/`
    * **Web/** - classes which generate HTML or GeoJSON output
      * **Router.php** - class that determines which class to use
* **web/** - public-facing files *(be careful what you put here)*
  * **data/** - local data *(included in .gitignore)*
  * **img/** - local images *(included in .gitignore)*
  * **index.php** - main script which makes the *magic* happen

