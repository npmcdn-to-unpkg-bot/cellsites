PRAGMA foreign_keys = ON;

-- See "area_lte" after "network".

-- See "cell_lte" after "location". TODO

-- See "cell_umts" after "location".

CREATE TABLE coordinates_source (
	id   INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (name)
);

CREATE TABLE country (
	mcc  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc),
	UNIQUE (name)
);

CREATE TABLE frequency_lte (
	earfcn INTEGER NOT NULL,
	PRIMARY KEY (earfcn),
	CHECK (earfcn BETWEEN 0 AND 54339)
);

CREATE TABLE frequency_umts (
	uarfcn INTEGER NOT NULL,
	PRIMARY KEY (uarfcn),
	CHECK (uarfcn BETWEEN 412 AND 10838)
);

-- See "location" after "region".

CREATE TABLE network (
	mcc  INTEGER NOT NULL DEFAULT 530,
	mnc  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc, mnc),
	UNIQUE (mcc, name),
	FOREIGN KEY (mcc) REFERENCES country
);

CREATE TABLE area_lte (
	mcc  INTEGER NOT NULL DEFAULT 530,
	mnc  INTEGER NOT NULL DEFAULT 5,
	tac  INTEGER NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (mcc, mnc, tac),
	UNIQUE (mcc, mnc, name),
	FOREIGN KEY (mcc, mnc) REFERENCES network
);

CREATE TABLE network_frequency_umts (
	mcc    INTEGER NOT NULL DEFAULT 530,
	mnc    INTEGER NOT NULL DEFAULT 5,
	uarfcn INTEGER NOT NULL,
	PRIMARY KEY (mcc, mnc, uarfcn),
	FOREIGN KEY (mcc, mnc) REFERENCES network,
	FOREIGN KEY (uarfcn) REFERENCES frequency_umts
);

CREATE TABLE photo (
	id                  INTEGER NOT NULL,
	hash                VARCHAR NOT NULL,
	taken               DATETIME,
	orientation_overide INTEGER, -- TODO CHECK constraint
	visible             BOOLEAN DEFAULT 0,
	PRIMARY KEY (id),
	UNIQUE (hash)
	CHECK (visible IN (0,1))
);

CREATE TABLE region (
	id     INTEGER NOT NULL,
	name   VARCHAR NOT NULL,
	parent INTEGER,
	PRIMARY KEY (id),
	UNIQUE (name),
	FOREIGN KEY (parent) REFERENCES region (id)
);

-- Depends: region
CREATE TABLE location (
	id                 INTEGER NOT NULL,
	region             INTEGER NOT NULL,
	name               VARCHAR NOT NULL,
	latitude           REAL    NOT NULL,
	longitude          REAL    NOT NULL,
	coordinates_source INTEGER NOT NULL,
	accurate           BOOLEAN NOT NULL DEFAULT 0,
	PRIMARY KEY (id),
	UNIQUE (name),
	FOREIGN KEY (region) REFERENCES region (id),
	FOREIGN KEY (coordinates_source) REFERENCES coordinates_source (id),
	CHECK (latitude >= -90 AND latitude <= 90),
	CHECK (longitude >= -180 AND longitude <= 180),
	CHECK (accurate IN (0,1))
);

-- Depends: location
CREATE TABLE cell_umts (
	mcc       INTEGER NOT NULL DEFAULT 530,
	mnc       INTEGER NOT NULL DEFAULT 5,
	lcid      INTEGER NOT NULL,
	ura       INTEGER NULL,
	uarfcn    INTEGER NOT NULL,
	psc       INTEGER NOT NULL,
	location  INTEGER,
	last_seen DATETIME NOT NULL DEFAULT (date('now')), -- TODO default now()
	PRIMARY KEY (mcc, mnc, lcid),
	FOREIGN KEY (mcc, mnc) REFERENCES network,
	FOREIGN KEY (mcc, mnc, uarfcn) REFERENCES network_frequency_umts,
	FOREIGN KEY (mcc, mnc, location) REFERENCES network_location,
	CHECK (psc BETWEEN 0 AND 511),
	CHECK (last_seen BETWEEN date('2000-01-01') AND date('now','localtime'))
);

-- Depends: location
CREATE VIEW region_full AS SELECT
	region.id,
	region.name,
	region.parent,
	count(location.id) AS locations_count
FROM region
LEFT OUTER JOIN location ON location.region = region.id
GROUP BY region.id, region.name, region.parent;

-- Depends: cell_umts
CREATE VIEW cell_umts_full AS SELECT
	mcc,
	mnc,
	lcid,
	lcid >> 16 AS rnc,
	lcid & 0xFFFF AS cid,
	ura,
	uarfcn,
	psc,
	location,
	last_seen
FROM cell_umts;

-- Depends: location
CREATE TABLE network_location (
	mcc       INTEGER NOT NULL DEFAULT 530,
	mnc       INTEGER NOT NULL DEFAULT 5,
	location  INTEGER NOT NULL,
	reference VARCHAR,
	PRIMARY KEY (mcc, mnc, location),
	FOREIGN KEY (mcc, mnc) REFERENCES network
	FOREIGN KEY (location) REFERENCES location (id)
	UNIQUE (reference)
);

