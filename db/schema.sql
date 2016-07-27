--
-- SQLite schema file for cellsites.nz website.
--

--
-- The 'country' table contains rows for each country in the world. Each country
-- is identified by its MCC (Mobile Country Code).
--
CREATE TABLE country (
	mcc  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc),
	UNIQUE (name)
);

--
-- The 'network' table contains rows for each network in each country. Each
-- network is identified by its MCC and MNC (Mobile Network Code). Each network
-- has a name which is unique within each country.
--
CREATE TABLE network (
	mcc  INTEGER NOT NULL,
	mnc  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc, mnc),
	UNIQUE (mcc, name),
	FOREIGN KEY (mcc) REFERENCES country
);

--
-- The 'area_umts' table contains rows for each logical area in each UMTS
-- (Universal Mobile Telecommunications System) network in each country. Each
-- logical area is identified by its MCC, MNC and URA (UTRAN Registration Area).
-- Each logical area has a name which is unique within each UMTS network.
--
CREATE TABLE area_umts (
	mcc  INTEGER NOT NULL,
	mnc  INTEGER NOT NULL,
	ura  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc, mnc, ura),
	UNIQUE (mcc, mnc, name),
	FOREIGN KEY (mcc, mnc) REFERENCES network
);

--
-- The 'frequency_umts' table contains rows for each frequency in the UMTS
-- standard. Each UMTS frequency is identiied by its UARFCN (UTRA Absolute Radio
-- Frequency Channel Number).
--
CREATE TABLE frequency_umts (
	uarfcn INTEGER NOT NULL,
	PRIMARY KEY (frequency),
	CHECK (uarfcn BETWEEN 412 AND 10838)
);

--
-- The 'network_frequency_umts' table contains rows for each frequency used by
-- each network. Each network is identified by its MCC and MNC. Each frequency
-- is identified by its UARFCN.
--
CREATE TABLE network_frequency_umts (
	mcc    INTEGER NOT NULL,
	mnc    INTEGER NOT NULL,
	uarfcn INTEGER NOT NULL,
	PRIMARY KEY (mcc, mnc, frequency),
	FOREIGN KEY (mcc, mnc) REFERENCES network,
	FOREIGN KEY (uarfcn) REFERENCES frequency_umts
);

--
-- The 'coordinates_source' table contains rows for each source of coordinates
-- information. Each source is identified by an unique integer and has a unique
-- name.
--
CREATE TABLE coordinates_source (
	id   INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (name)
);

--
-- The 'location' table contains rows for each location. Each location is
-- identified by an unique integer and has a unique name. Coordinates, the
-- source of that coordinates and whether or not it is considered an accurate
-- coordinates must be recorded for each location.
--
CREATE TABLE location (
	id                 INTEGER NOT NULL,
	name               VARCHAR NOT NULL,
	latitude           REAL    NOT NULL,
	longitude          REAL    NOT NULL,
	coordinates_source INTEGER NOT NULL,
	accurate           INTEGER NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (name),
	FOREIGN KEY (coordinates_source) REFERENCES coordinates_source (id),
	CHECK (latitude >= -90 AND latitude <= 90),
	CHECK (longitude >= -180 AND longitude <= 180),
	CHECK (accurate IN (0,1))
);

--
-- The 'network_location' table contains rows for each location utilised by each
-- network. Each network is identified by its MCC and MNC. Each location is
-- identified by an integer.
--
CREATE TABLE network_location (
	mcc      INTEGER NOT NULL,
	mnc      INTEGER NOT NULL,
	location INTEGER NOT NULL,
	PRIMARY KEY (mcc, mnc, location),
	FOREIGN KEY (mcc, mnc) REFERENCES network
	FOREIGN KEY (location) REFERENES location (id)
);

--
-- The 'cell_umts' table contains rows for each UMTS cell in each network in
-- each country. Each UMTS cell is identified by its MCC, MNC and LCID (Long
-- Cell ID). Each cell may be associated with a logical area (URA), and/or a
-- frequency (UARFCN) and/or a location, when known. A Primary Scrambling
-- Code (PSC) can also recorded for each cell, when known.
--
CREATE TABLE cell_umts (
	mcc      INTEGER NOT NULL,
	mnc      INTEGER NOT NULL,
	lcid     INTEGER NOT NULL,
	ura      INTEGER,
	uarfcn   INTEGER,
	location INTEGER,
	psc      INTEGER,
	PRIMARY KEY (mcc, mnc, lcid),
	FOREIGN KEY (mcc, mnc) REFERENCES network,
	FOREIGN KEY (mcc, mnc, ura) REFERENCES area_umts,
	FOREIGN KEY (mcc, mnc, uarfcn) REFERENCES network_frequency,
	FOREIGN KEY (mcc, mnc, location) REFERENCES network_location,
	CHECK (psc BETWEEN 0 AND 511)
);
