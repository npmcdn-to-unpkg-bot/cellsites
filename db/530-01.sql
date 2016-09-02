PRAGMA foreign_keys = ON;
.bail on

INSERT INTO network (mnc, name) VALUES (1, "Vodafone");

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 1, 3065);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 1, 3086);

INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 1, 62358283, 9514, 3086, 72, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 1, 62384201, 9514, 3086, 382, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 1, 62384856, 9512, 3065, 252, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 1, 62385545, 9512, 3065, 232, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, ura, uarfcn, psc, location, last_seen) VALUES (530, 1, 64345085, 9512, 3065, 445, NULL, date("2016-08-14"));
