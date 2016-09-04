PRAGMA foreign_keys = ON;
.bail on

INSERT INTO network (mcc, mnc, name) VALUES (530, 24, "2degrees");

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 3005);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10788);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10813);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10837);

INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 1);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 13);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 71);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 219);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 270);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 286);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 295);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 341);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 377);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 438);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 456);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 457);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 544);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 548);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 563);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 576);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 578);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 581);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 587);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 627);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 637);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 654);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 671);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 688);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 689);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 690);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 692);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 708);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 839);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 840);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 841);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 842);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 843);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 844);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 845);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 846);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 66337, 3005, 330, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 66339, 3005, 338, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67027, 3005, 75, 839, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67028, 10837, 75, 839, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67030, 10837, 83, 839, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67031, 3005, 91, 839, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67032, 10837, 91, 839, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67035, 10788, 91, 839, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67069, 3005, 308, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67070, 10837, 308, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67071, 3005, 316, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67072, 10837, 316, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67103, 10788, 31, 840, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67104, 10788, 39, 840, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67105, 10788, 47, 840, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67338, 10837, 92, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67337, 3005, 92, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67339, 3005, 100, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67340, 10837, 100, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67344, 10788, 100, NULL, date("2016-08-15")); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67343, 10788, 92, NULL, date("2016-08-15"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70607, 3005, 247, 270, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70609, 3005, 255, 270, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70611, 3005, 263, 270, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70613, 10788, 247, 270, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70614, 10788, 255, 270, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70615, 10788, 263, 270, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70617, 3005, 361, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70621, 3005, 377, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70623, 10788, 361, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70629, 3005, 370, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70634, 10788, 370, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70635, 10788, 378, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70659, 3005, 221, 1, date("2016-08-11"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70661, 3005, 229, 1, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70687, 3005, 103, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70693, 10788, 103, NULL, date("2016-08-14")); -- Rx Meadowbank
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70697, 3005, 210, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70699, 3005, 218, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70703, 10788, 210, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70704, 10788, 218, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70707, 3005, 488, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70709, 3005, 496, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70717, 3005, 386, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70769, 3005, 346, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70815, 10788, 435, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70857, 3005, 289, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70859, 3005, 297, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70861, 3005, 305, NULL, date("2016-08-22")); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70865, 10788, 305, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70867, 3005, 176, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70869, 3005, 184, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70871, 3005, 192, NULL, date("2016-08-21")); -- Rx Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70873, 10788, 176, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70877, 3005, 241, 841, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70878, 10837, 241, 841, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70880, 10837, 249, 841, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70881, 3005, 257, 841, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70891, 3005, 17, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70903, 10788, 368, NULL, date("2016-08-15")); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70947, 3005, 73, 843, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70951, 3005, 89, 843, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70955, 10788, 89, 843, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70967, 3005, 217, 842, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70969, 3005, 225, 842, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70973, 10788, 217, 842, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70977, 3005, 392, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70979, 3005, 400, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70983, 10788, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70984, 10788, 400, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70985, 10788, 408, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71041, 3005, 445, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71044, 10788, 437, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71047, 3005, 60, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71069, 3005, 64, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71071, 3005, 72, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71074, 10788, 64, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71075, 10788, 72, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71077, 3005, 104, 654, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71081, 3005, 120, 654, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71083, 10788, 104, 654, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71087, 3005, 224, 71, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71089, 3005, 232, 71, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71091, 3005, 240, 71, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71099, 3005, 136, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71101, 3005, 144, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71107, 3005, 313, NULL, date("2016-08-13")); -- Harbour Bridge South TODO
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71109, 3005, 321, NULL, date("2016-08-13")); -- Harbour Bridge South TODO
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71114, 10788, 321, NULL, date("2016-08-28")); -- Harbour Bridge South TODO
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71117, 3005, 434, 548, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71119, 3005, 442, 548, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71121, 3005, 450, 548, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71123, 10788, 434, 548, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71167, 3005, 128, 581, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71169, 3005, 136, 581, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71171, 3005, 144, 581, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71173, 10788, 128, 581, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71174, 10788, 136, 581, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71224, 10788, 94, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71237, 3005, 385, NULL, date("2016-08-15")); -- St Lukes TODO
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71239, 3005, 393, NULL, date("2016-08-15")); -- St Lukes TODO
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71357, 3005, 193, 456, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71359, 3005, 201, 456, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71361, 3005, 209, 456, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71409, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71414, 10788, 88, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71454, 10788, 40, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71459, 3005, 190, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71464, 10788, 190, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71483, 10788, 5, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71484, 10788, 13, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71494, 10788, 274, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71497, 3005, 200, NULL, date("2016-08-22")); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71499, 3005, 208, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71501, 3005, 216, NULL, date("2016-08-21")); -- Rx Grafton/Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71505, 10788, 216, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71527, 3005, 142, 846, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71529, 3005, 150, 846, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71531, 3005, 158, 846, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71533, 10788, 142, 846, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71534, 10788, 150, 846, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71535, 10788, 158, 846, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71539, 3005, 42, 286, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71544, 10788, 42, 286, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71547, 3005, 458, 844, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71549, 3005, 466, 844, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71553, 10788, 458, 844, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71554, 10788, 466, 844, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71555, 10788, 474, 844, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71693, 10788, 278, 457, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71694, 10788, 286, 457, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71727, 3005, 2, NULL, date("2016-08-15")); -- Mission Bay Beach +
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71729, 3005, 506, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71731, 3005, 202, NULL, date("2016-08-15")); -- Mission Bay Beach +
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71797, 3005, 127, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71799, 3005, 135, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71819, 3005, 374, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71833, 10788, 310, NULL, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71841, 3005, 95, NULL, date("2016-08-15")); -- Rx Mission Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71859, 3005, 160, NULL, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71863, 10788, 152, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71864, 10788, 160, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71911, 3005, 426, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71927, 3005, 175, 576, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71931, 3005, 191, 576, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71953, 10788, 55, 13, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71954, 10788, 63, 13, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71955, 10788, 71, 13, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71971, 3005, 168, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71997, 3005, 151, 845, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71999, 3005, 159, 845, date("2016-08-15"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72001, 3005, 167, 845, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72004, 10788, 159, 845, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72037, 3005, 230, NULL, date("2016-08-15")); -- K/Queen
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72039, 3005, 238, NULL, date("2016-08-13")); -- K/Queen
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72111, 3005, 51, NULL, date("2016-08-15")); -- Rx Bastion Point, Kohimarama
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72117, 3005, 198, NULL, date("2016-08-15")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72119, 3005, 206, NULL, date("2016-08-22")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72124, 10788, 206, NULL, date("2016-08-15")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72149, 3005, 505, NULL, date("2016-08-21")); -- Kingsland Station
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72150, 10837, 505, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72151, 3005, 509, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72152, 10837, 509, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72154, 10788, 505, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72155, 10788, 509, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72158, 10837, 461, NULL, date("2016-08-15")); -- Queens Wharf
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72162, 10837, 502, NULL, date("2016-09-03")); -- Queens Wharf
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72163, 10788, 461, NULL, date("2016-08-15")); -- Queens Wharf
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72177, 3005, 500, NULL, date("2016-08-22")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72179, 3005, 507, NULL, date("2016-08-22")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72183, 10788, 500, NULL, date("2016-08-15")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72184, 10788, 507, NULL, date("2016-08-15"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 73257, 3005, 223, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 73267, 3005, 111, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 73273, 10788, 111, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 73275, 10788, 127, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74347, 3005, 300, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74367, 3005, 105, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74369, 3005, 113, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74381, 3005, 196, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74407, 3005, 400, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 74409, 3005, 408, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77033, 10813, 75, 839, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77035, 10813, 91, 839, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77153, 10813, 427, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77353, 10813, 68, NULL, date("2016-08-22"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80553, 10813, 36, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80593, 10813, 228, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80595, 10813, 244, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80614, 10813, 255, 270, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80615, 10813, 263, 270, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80623, 10813, 361, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80625, 10813, 377, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80634, 10813, 370, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80664, 10813, 221, 1, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80695, 10813, 119, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80703, 10813, 210, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80704, 10813, 218, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80714, 10813, 496, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80784, 10813, 452, 671, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80785, 10813, 460, 671, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80863, 10813, 289, NULL, date("2016-08-22")); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80865, 10813, 305, NULL, date("2016-08-21")); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80873, 10813, 176, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80884, 10813, 249, 841, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80903, 10813, 368, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80905, 10813, 384, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80943, 10813, 248, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80945, 10813, 264, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80973, 10813, 217, 842, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80983, 10813, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80984, 10813, 400, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80985, 10813, 408, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81073, 10813, 56, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81074, 10813, 64, 578, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81083, 10813, 104, 654, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81084, 10813, 112, 654, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81085, 10813, 120, 654, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81113, 10813, 313, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81114, 10813, 321, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81123, 10813, 434, 548, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81125, 10813, 450, 548, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81283, 10813, 60, NULL, date("2016-08-13")); -- Constellation Station
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81363, 10813, 193, 456, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81414, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81423, 10813, 265, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81494, 10813, 274, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81505, 10813, 216, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81533, 10813, 142, 846, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81534, 10813, 158, 846, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81544, 10813, 42, 286, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81554, 10813, 466, 844, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81555, 10813, 474, 844, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81783, 10813, 58, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81803, 10813, 127, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81824, 10813, 374, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81953, 10813, 55, 13, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81954, 10813, 63, 13, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81955, 10813, 71, 13, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81994, 10813, 423, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82004, 10813, 159, 845, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82005, 10813, 167, 845, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82035, 10813, 146, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82163, 10813, 461, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82165, 10813, 502, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82183, 10813, 500, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 83265, 10813, 239, NULL, date("2016-08-28")); -- Red Beach
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 83274, 10813, 119, NULL, date("2016-08-13")); -- Orewa
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84413, 10813, 400, NULL, date("2016-08-28")); -- Silverdale Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84414, 10813, 408, NULL, date("2016-08-28")); -- Silverdale Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84463, 10813, 494, NULL, date("2016-08-28")); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84464, 10813, 502, NULL, date("2016-08-28")); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84465, 10813, 510, NULL, date("2016-08-28")); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 84405, 10813, 256, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269655, 3005, 458, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269657, 3005, 466, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269659, 3005, 474, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269663, 10788, 474, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269897, 3005, 10, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269899, 3005, 18, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269917, 3005, 83, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269919, 3005, 91, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269955, 3005, 20, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269957, 3005, 28, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269959, 3005, 36, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269965, 3005, 93, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269967, 3005, 101, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269969, 3005, 109, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 269975, 3005, 69, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270037, 3005, 17, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270287, 3005, 317, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270289, 3005, 325, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270595, 3005, 333, NULL, date("2016-09-01")); -- Pokeno
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270597, 3005, 341, NULL, date("2016-08-14")); -- Pokeno
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270599, 3005, 249, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 270857, 3005, 58, NULL, date("2016-09-01")); -- Tuakau
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 279662, 10813, 466, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 279901, 10813, 2, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 280043, 10813, 25, NULL, date("2016-08-14"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589857, 3005, 112, NULL, date("2016-08-14")); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589861, 10788, 104, NULL, date("2016-09-01")); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589862, 10788, 112, NULL, date("2016-09-01")); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589863, 10788, 120, NULL, date("2016-09-01")); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589867, 3005, 136, NULL, date("2016-09-01")); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589871, 10813, 128, NULL, date("2016-09-01")); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589872, 10788, 136, NULL, date("2016-09-01")); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589873, 10788, 144, NULL, date("2016-09-01")); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589875, 3005, 464, NULL, date("2016-08-14")); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589877, 3005, 472, NULL, date("2016-08-14")); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589879, 3005, 480, NULL, date("2016-08-14")); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589882, 10788, 472, NULL, date("2016-08-14")); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589883, 10788, 480, NULL, date("2016-08-14")); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589887, 3005, 424, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589889, 3005, 432, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589903, 10788, 96, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589905, 3005, 313, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589906, 10837, 313, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589907, 3005, 321, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589908, 10837, 321, 341, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589909, 3005, 329, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589911, 10788, 313, 341, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589912, 10788, 321, 341, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589915, 3005, 10, 377, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589917, 3005, 18, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589919, 3005, 26, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589921, 10788, 10, 377, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589923, 10788, 26, 377, date("2016-08-12"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589925, 3005, 252, 708, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589927, 3005, 260, 708, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589929, 3005, 268, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589931, 10788, 252, 708, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589932, 10788, 260, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589933, 10788, 268, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589935, 3005, 320, 563, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589939, 3005, 336, 563, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589943, 10813, 336, 563, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589955, 3005, 224, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589957, 3005, 232, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589959, 3005, 240, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589963, 10813, 240, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589977, 3005, 355, NULL, date("2016-08-20")); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589982, 10788, 355, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589997, 3005, 376, NULL, date("2016-09-01")); -- Papakura South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589999, 3005, 384, NULL, date("2016-09-01")); -- Papakura South

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590005, 3005, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590009, 3005, 425, NULL, date("2016-08-21")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590011, 10788, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590013, 10788, 425, NULL, date("2016-08-20")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590017, 3005, 284, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590019, 3005, 292, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590022, 3005, 284, NULL, date("2016-09-01")); -- Should be 10788
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590023, 10788, 292, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590025, 3005, 169, 438, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590029, 3005, 185, 438, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590031, 10788, 169, 438, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590039, 3005, 507, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590041, 10788, 491, NULL, date("2016-08-20")); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590043, 10788, 507, NULL, date("2016-08-20")); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590047, 3005, 304, NULL, date("2016-08-13")); -- Rx Wiri
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590053, 10788, 312, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590067, 3005, 162, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590072, 10788, 162, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590077, 3005, 245, 692, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590079, 3005, 253, 692, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590082, 10788, 245, 692, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590083, 10788, 253, 692, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590087, 3005, 437, 690, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590089, 3005, 445, 690, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590092, 10788, 437, 690, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590093, 10788, 445, 690, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590145, 3005, 477, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590149, 3005, 493, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590151, 10788, 477, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590155, 3005, 107, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590159, 3005, 123, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590197, 3005, 64, NULL, date("2016-08-14"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590235, 3005, 333, NULL, date("2016-08-28"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590237, 3005, 341, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590239, 3005, 349, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590243, 10788, 348, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590247, 3005, 259, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590249, 3005, 267, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590251, 10788, 251, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590252, 10788, 259, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590253, 10788, 267, NULL, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590283, 10788, 99, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590292, 10788, 139, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590293, 10788, 147, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590295, 3005, 309, 688, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590297, 3005, 317, 688, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590299, 3005, 325, 688, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590301, 10788, 309, 688, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590302, 10788, 317, 688, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590305, 3005, 444, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590317, 3005, 283, NULL, date("2016-08-14")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590319, 3005, 291, NULL, date("2016-08-14")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590322, 10788, 283, NULL, date("2016-08-13")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590325, 3005, 227, NULL, date("2016-08-22")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590327, 3005, 235, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590329, 3005, 243, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590331, 10788, 227, NULL, date("2016-08-29")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590332, 10788, 235, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590333, 10788, 243, NULL, date("2016-08-21")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590361, 10788, 108, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590403, 10788, 469, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590405, 3005, 261, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590407, 3005, 269, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590419, 3005, 229, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590451, 10788, 165, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590453, 10788, 181, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590507, 3005, 164, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590509, 3005, 172, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590555, 3005, 252, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590557, 3005, 260, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590567, 3005, 284, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590569, 3005, 292, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590585, 3005, 178, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590595, 3005, 381, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590645, 3005, 180, 587, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590647, 3005, 188, 587, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590657, 3005, 308, 219, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590675, 3005, 83, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590677, 3005, 91, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590682, 10788, 91, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590685, 3005, 271, 637, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590687, 3005, 279, 637, date("2016-08-26"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590691, 10788, 271, 637, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590692, 10788, 279, 637, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590695, 3005, 487, 627, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590697, 3005, 495, 627, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590699, 3005, 503, 627, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590701, 10788, 487, 627, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590702, 10788, 495, 627, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590703, 10788, 503, 627, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590749, 3005, 242, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590777, 3005, 379, NULL, date("2016-08-22")); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590782, 10788, 379, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590815, 3005, 299, NULL, date("2016-08-21")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590819, 3005, 315, NULL, date("2016-08-20")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590821, 10788, 299, NULL, date("2016-08-20")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590823, 10788, 315, NULL, date("2016-08-20")); -- Mangere Tidal Road
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590827, 3005, 451, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590829, 3005, 459, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590833, 10788, 459, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590839, 3005, 435, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590885, 3005, 204, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590891, 10788, 204, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590915, 3005, 93, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590925, 3005, 35, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590927, 3005, 43, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590955, 3005, 272, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590959, 3005, 388, NULL, date("2016-08-30"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591095, 3005, 395, NULL, date("2016-08-22")); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591101, 10788, 395, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591102, 10788, 403, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591105, 3005, 189, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591107, 3005, 197, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591163, 10788, 78, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591197, 3005, 398, NULL, date("2016-08-27")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591199, 3005, 406, NULL, date("2016-08-27")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591202, 10788, 398, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591203, 10788, 406, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591235, 3005, 198, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591241, 10788, 198, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591337, 3005, 33, 689, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591339, 3005, 41, 689, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591341, 10788, 25, 689, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591342, 10788, 33, 689, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591343, 10788, 41, 689, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591541, 10788, 30, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591587, 3005, 14, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591589, 3005, 22, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591592, 10788, 14, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591593, 10788, 22, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 594935, 3005, 25,  295, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 594939, 3005, 41, 295, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 594942, 10788, 33, 295, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595639, 3005, 133, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595643, 10788, 133, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595809, 3005, 219, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595875, 3005, 21, 544, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595877, 3005, 29, 544, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595879, 3005, 37, 544, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595882, 10788, 29, 544, date("2016-09-03"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 595883, 10788, 37, 544, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596299, 3005, 75, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596415, 3005, 45, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596417, 3005, 53, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596419, 3005, 61, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596421, 10788, 45, NULL, date("2016-08-27")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596485, 3005, 290, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596487, 3005, 298, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596489, 3005, 306, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596491, 10788, 290, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596492, 10788, 298, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 598597, 3005, 211, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 598602, 10788, 211, NULL, date("2016-09-01"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599862, 10813, 112, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599863, 10813, 120, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599871, 10813, 128, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599872, 10813, 136, NULL, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599873, 10813, 144, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599882, 10813, 472, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599883, 10813, 480, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599901, 10813, 80, NULL, date("2016-09-01")); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599902, 10813, 88, NULL, date("2016-08-14")); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599903, 10813, 96, NULL, date("2016-08-14")); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599911, 10813, 313, 341, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599912, 10813, 321, 341, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599913, 10813, 329, 341, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599922, 10813, 18, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599923, 10813, 26, 377, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599931, 10813, 252, 708, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599933, 10813, 268, 708, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599941, 10813, 320, 563, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599943, 10813, 336, 563, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599962, 10813, 232, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599963, 10813, 240, NULL, date("2016-08-14"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600011, 10813, 409, NULL, date("2016-08-20")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600013, 10813, 425, NULL, date("2016-08-29")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600023, 10813, 292, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600032, 10813, 177, 438, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600033, 10813, 185, 438, date("2016-09-01"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600051, 10813, 296, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600052, 10813, 304, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600053, 10813, 312, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600072, 10813, 162, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600073, 10813, 170, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600151, 10813, 477, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600272, 10813, 352, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600273, 10813, 360, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600331, 10813, 227, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600362, 3005, 116, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600403, 10813, 469, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600411, 10813, 261, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600412, 10813, 269, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600423, 10813, 229, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600451, 10813, 165, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600453, 10813, 181, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600591, 10813, 178, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600641, 10813, 38, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600643, 10813, 54, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600651, 10813, 180, 587, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600653, 10813, 196, 587, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600661, 10813, 300, 219, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600662, 10813, 308, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600663, 10813, 316, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600681, 10813, 83, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600782, 10813, 379, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600832, 10813, 451, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600833, 10813, 459, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600843, 10813, 435, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600941, 10813, 468, NULL, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600942, 10813, 476, NULL, date("2016-08-30"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 601101, 10813, 395, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 601102, 10813, 403, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 601241, 10813, 198, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 604941, 10813, 25, 295, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 604942, 10813, 33, 295, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 604943, 10813, 41, 295, date("2016-08-30"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 605643, 10813, 133, NULL, date("2016-08-27"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 606303, 10813, 75, NULL, date("2016-08-27"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 606491, 10813, 290, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 606492, 10813, 298, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 606493, 10813, 306, NULL, date("2016-08-29"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 606542, 10813, 17, NULL, date("2016-08-14"));
