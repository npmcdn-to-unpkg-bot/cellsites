--
-- Test script for cellsites.nz with actual real-world data to verify the schema works.
--

.read schema.sql

INSERT INTO country (mcc, name) VALUES (530, "New Zealand");

INSERT INTO network (mcc, mnc, name) VALUES (530, 1, "Vodafone");
INSERT INTO network (mcc, mnc, name) VALUES (530, 5, "Spark");
INSERT INTO network (mcc, mnc, name) VALUES (530, 24, "2degrees");

INSERT INTO area_umts (mcc, mnc, ura, name) VALUES (530, 5, 11000, "Auckland North");
INSERT INTO area_umts (mcc, mnc, ura, name) VALUES (530, 5, 14301, "Auckland East");

INSERT INTO frequency_umts (uarfcn) VALUES (1037);
INSERT INTO frequency_umts (uarfcn) VALUES (1062);
INSERT INTO frequency_umts (uarfcn) VALUES (10713);
INSERT INTO frequency_umts (uarfcn) VALUES (10738);

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 1037);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 1062);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 10713);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 10738);

INSERT INTO coordinates_source (id, name) VALUES (1, "Google Maps");

INSERT INTO region (id, name) VALUES (1, "World");
INSERT INTO region (id, name, parent) VALUES (2, "New Zealand", 1);
INSERT INTO region (id, name, parent) VALUES (3, "Auckland", 2);
INSERT INTO region (id, name, parent) VALUES (8, "Ōrākei Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate)
	VALUES (1,  "Kohimarama",  8, -36.853226, 174.843895, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate)
	VALUES (6,  "Mission Bay", 8, -36.849717, 174.830149, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate)
	VALUES (25, "Ōrākei",      8, -36.861977, 174.808480, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate)
	VALUES (247, "Bastion Point", 8, -36.845450, 174.816957, 1, 1);

INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 1);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 6);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 25);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 247);

--
-- Data for UMTS 530-05-14301
--

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 751537, 11000, 1062,  414, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 751538, 11000, 10713, 422, NULL, date("2016-08-02")); --
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 751540, 11000, 1037,  414, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 751541, 11000, 1037,  422, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 751812, 11000, 1037,  355, NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752010, 11000, 1037,  336, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752007, 11000, 1062,  336, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752008, 11000, 1062,  344, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752011, 11000, 1037,  344, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752450, 11000, 10713, 3,   NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752451, 11000, 10713, 11,  NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 752452, 11000, 10713, 19,  NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 756830, 11000, 10738, 339, NULL, date("2016-08-02"));

--
-- Data for UMTS 530-05-14301
--

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 947805, 14301, 1062,  454, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 947806, 14301, 10738, 454, NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 948097, 14301, 1062,  451, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 948328, 14301, 10738, 459, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 948555, 14301, 1062,  411, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 948556, 14301, 1062,  419, NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen)
	VALUES (530, 5, 949658, 14301, 10738, 4, 247, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 949795, 14301, 1062,  100, 25,   date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 949797, 14301, 1062,  116, 25,   date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 949800, 14301, 10738, 116, 25,   date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 949985, 14301, 1062,  271, 6,    date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 949988, 14301, 1037,  271, 6,    date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 950430, 14301, 1037,  407, NULL, date("2016-08-02"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 950447, 14301, 10738, 407, NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 952835, 14301, 10738, 411, NULL, date("2016-08-02"));

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 5, 955500, 14301, 1037,  167, 1,    date("2016-08-02"));

