PRAGMA foreign_keys = ON;
.bail on

INSERT INTO network (mcc, mnc, name) VALUES (530, 24, "2degrees");

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 3005);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10788);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10813);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10837);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67103, 10788, 31, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67104, 10788, 39, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67105, 10788, 47, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70614, 10788, 255, NULL, date("2016-08-13")); -- Ellerslie Racecourse
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70815, 10788, 435, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70983, 10788, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71041, 3005, 445, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71044, 10788, 437, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71083, 10788, 104, NULL, date("2016-08-13")); -- Market Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71089, 3005, 232, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71091, 3005, 240, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71107, 3005, 313, NULL, date("2016-08-13")); -- Harbour Bridge South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71109, 3005, 321, NULL, date("2016-08-13")); -- Harbour Bridge South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71167, 3005, 128, NULL, date("2016-08-13")); -- Newmarket South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71224, 10788, 94, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71409, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71454, 10788, 40, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71483, 10788, 5, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71484, 10788, 13, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71494, 10788, 274, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71533, 10788, 142, NULL, date("2016-08-13")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71535, 10788, 158, NULL, date("2016-08-13")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71693, 10788, 278, NULL, date("2016-08-13")); -- Harbour Bridge North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71694, 10788, 286, NULL, date("2016-08-13")); -- Harbour Bridge North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71863, 10788, 152, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71864, 10788, 160, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72039, 3005, 238, NULL, date("2016-08-13")); -- K/Queen
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80553, 10813, 36, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80593, 10813, 228, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80595, 10813, 244, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80784, 10813, 452, NULL, date("2016-08-13")); -- Sunnynook
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80785, 10813, 460, NULL, date("2016-08-13")); -- Sunnynook
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80945, 10813, 264, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80983, 10813, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80984, 10813, 400, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81085, 10813, 120, NULL, date("2016-08-13")); -- Newmarket South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81283, 10813, 60, NULL, date("2016-08-13")); -- Constellation Station
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81414, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81423, 10813, 265, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81994, 10813, 423, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82035, 10813, 146, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589905, 3005, 313, NULL, date("2016-08-13")); -- Manukau Central
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589906, 10837, 313, NULL, date("2016-08-13")); -- Manukau Central
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589907, 3005, 321, NULL, date("2016-08-13")); -- Manukau Central
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589909, 3005, 329, NULL, date("2016-08-13")); -- Manukau Central
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589911, 10788, 313, NULL, date("2016-08-20")); -- Manukau Central
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589917, 3005, 18, NULL, date("2016-08-13")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589919, 3005, 26, NULL, date("2016-08-13")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589921, 10788, 10, NULL, date("2016-08-20")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589923, 10788, 26, NULL, date("2016-08-12")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589927, 3005, 260, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589977, 3005, 355, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590005, 3005, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590011, 10788, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590013, 10788, 425, NULL, date("2016-08-20")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590029, 3005, 185, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590031, 10788, 169, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590041, 10788, 491, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590043, 10788, 507, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590047, 3005, 304, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590067, 3005, 162, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590077, 3005, 245, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590082, 10788, 245, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590083, 10788, 253, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590087, 3005, 437, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590089, 3005, 445, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590092, 10788, 437, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590093, 10788, 445, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590243, 10788, 348, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590283, 10788, 99, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590302, 10788, 317, NULL, date("2016-08-13")); -- Penrose East
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590322, 10788, 283, NULL, date("2016-08-13")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590327, 3005, 235, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590329, 3005, 243, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590332, 10788, 235, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590361, 10788, 108, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590585, 3005, 178, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590691, 10788, 271, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590692, 10788, 279, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590697, 3005, 495, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590699, 3005, 503, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590703, 10788, 503, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590749, 3005, 242, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590819, 3005, 315, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590821, 10788, 299, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590823, 10788, 315, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590885, 3005, 204, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590891, 10788, 204, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591202, 10788, 398, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591203, 10788, 406, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591343, 10788, 41, NULL, date("2016-08-13")); -- Sylvia Park Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591589, 3005, 14, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591593, 10788, 22, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599912, 10813, 321, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599922, 10813, 18, NULL, date("2016-08-13")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599923, 10813, 26, NULL, date("2016-08-20")); -- Manukau Exchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599933, 10813, 268, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600011, 10813, 409, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600052, 10813, 304, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600072, 10813, 162, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600073, 10813, 170, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600362, 3005, 116, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600591, 10813, 178, NULL, date("2016-08-20"));
