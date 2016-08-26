PRAGMA foreign_keys = ON;
.bail on

INSERT INTO network (mcc, mnc, name) VALUES (530, 24, "2degrees");

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 3005);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10788);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10813);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10837);

INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 1);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 71);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 270);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 341);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 377);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 456);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 637);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 654);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 690);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 692);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 708);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67027, 3005, 75, NULL, date("2016-08-22")); -- Countdown Waterfront
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67028, 10837, 75, NULL, date("2016-08-15")); -- Countdown Waterfront
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67030, 10837, 83, NULL, date("2016-08-15")); -- Countdown Waterfront
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67032, 10837, 91, NULL, date("2016-08-15")); -- Countdown Waterfront
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67035, 10788, 91, NULL, date("2016-08-15")); -- Countdown Waterfront
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67069, 3005, 308, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67071, 3005, 316, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67103, 10788, 31, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67104, 10788, 39, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67105, 10788, 47, NULL, date("2016-08-13")); -- Samsung Northcote
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67338, 10837, 92, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67337, 3005, 92, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67339, 3005, 100, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67344, 10788, 100, NULL, date("2016-08-15")); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 67343, 10788, 92, NULL, date("2016-08-15"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70614, 10788, 255, 270, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70615, 10788, 263, 270, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70617, 3005, 361, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70621, 3005, 377, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70659, 3005, 221, 1, date("2016-08-11"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70661, 3005, 229, 1, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70693, 10788, 103, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70697, 3005, 210, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70707, 3005, 488, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70709, 3005, 496, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70815, 10788, 435, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70859, 3005, 297, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70861, 3005, 305, NULL, date("2016-08-22")); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70867, 3005, 176, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70869, 3005, 184, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70871, 3005, 192, NULL, date("2016-08-21")); -- Rx Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70873, 10788, 176, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70878, 10837, 241, NULL, date("2016-08-15")); -- Lower Parnell
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70880, 10837, 249, NULL, date("2016-08-22")); -- Lower Parnell
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70881, 3005, 257, NULL, date("2016-08-15")); -- Lower Parnell
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70891, 3005, 17, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70903, 10788, 368, NULL, date("2016-08-15")); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70947, 3005, 73, NULL, date("2016-08-15")); -- Symonds Street
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70951, 3005, 89, NULL, date("2016-08-15")); -- Symonds Street
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70955, 10788, 89, NULL, date("2016-08-15")); -- Symonds Street
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70967, 3005, 217, NULL, date("2016-08-15")); -- Quay Park
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70969, 3005, 225, NULL, date("2016-08-15")); -- Quay Park
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70973, 10788, 217, NULL, date("2016-08-15")); -- Quay Park
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70979, 3005, 400, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70983, 10788, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 70985, 10788, 408, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71041, 3005, 445, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71044, 10788, 437, NULL, date("2016-08-13")); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71047, 3005, 60, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71081, 3005, 120, 654, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71083, 10788, 104, 654, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71087, 3005, 224, 71, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71089, 3005, 232, 71, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71091, 3005, 240, 71, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71107, 3005, 313, NULL, date("2016-08-13")); -- Harbour Bridge South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71109, 3005, 321, NULL, date("2016-08-13")); -- Harbour Bridge South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71167, 3005, 128, NULL, date("2016-08-13")); -- Newmarket South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71169, 3005, 136, NULL, date("2016-08-22")); -- Newmarket South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71224, 10788, 94, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71357, 3005, 193, 456, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71350, 3005, 201, 456, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71409, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71454, 10788, 40, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71459, 3005, 190, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71464, 10788, 190, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71483, 10788, 5, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71484, 10788, 13, NULL, date("2016-08-13")); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71494, 10788, 274, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71497, 3005, 200, NULL, date("2016-08-22")); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71499, 3005, 208, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71501, 3005, 216, NULL, date("2016-08-21")); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71505, 10788, 216, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71527, 3005, 142, NULL, date("2016-08-15")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71531, 3005, 158, NULL, date("2016-08-22")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71533, 10788, 142, NULL, date("2016-08-13")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71534, 10788, 150, NULL, date("2016-08-22")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71535, 10788, 158, NULL, date("2016-08-22")); -- Greenlane Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71539, 3005, 42, NULL, date("2016-08-21")); -- Morningside
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71553, 10788, 458, NULL, date("2016-08-14")); -- St Heliers Exch
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71554, 10788, 466, NULL, date("2016-08-14")); -- St Heliers Exch
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71555, 10788, 474, NULL, date("2016-08-14")); -- St Heliers Exch
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71693, 10788, 278, NULL, date("2016-08-13")); -- Harbour Bridge North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71694, 10788, 286, NULL, date("2016-08-13")); -- Harbour Bridge North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71727, 3005, 2, NULL, date("2016-08-15")); -- Mission Bay Beach +
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71729, 3005, 506, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71731, 3005, 202, NULL, date("2016-08-15")); -- Mission Bay Beach +
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71819, 3005, 374, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71833, 10788, 310, NULL, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71841, 3005, 95, NULL, date("2016-08-15")); -- Rx Mission Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71859, 3005, 160, NULL, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71863, 10788, 152, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71864, 10788, 160, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71911, 3005, 426, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71997, 3005, 151, NULL, date("2016-08-15")); -- Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 71999, 3005, 159, NULL, date("2016-08-15")); -- Eden Terrace

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72001, 3005, 167, NULL, date("2016-08-21")); -- Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72037, 3005, 230, NULL, date("2016-08-15")); -- K/Queen
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72039, 3005, 238, NULL, date("2016-08-13")); -- K/Queen
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72111, 3005, 51, NULL, date("2016-08-15")); -- Rx Bastion Point, Kohimarama
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72117, 3005, 198, NULL, date("2016-08-15")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72119, 3005, 206, NULL, date("2016-08-22")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72124, 10788, 206, NULL, date("2016-08-15")); -- Bastion Point
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72149, 3005, 505, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72151, 3005, 509, NULL, date("2016-08-21")); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72158, 10837, 461, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72163, 10788, 461, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72177, 3005, 500, NULL, date("2016-08-22")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72179, 3005, 507, NULL, date("2016-08-22")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72183, 10788, 500, NULL, date("2016-08-15")); -- Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 72184, 10788, 507, NULL, date("2016-08-15"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77033, 10813, 75, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77035, 10813, 91, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77153, 10813, 427, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 77353, 10813, 68, NULL, date("2016-08-22"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80553, 10813, 36, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80593, 10813, 228, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80595, 10813, 244, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80623, 10813, 361, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80625, 10813, 377, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80664, 10813, 221, 1, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80784, 10813, 452, NULL, date("2016-08-13")); -- Sunnynook
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80785, 10813, 460, NULL, date("2016-08-13")); -- Sunnynook
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80863, 10813, 289, NULL, date("2016-08-22")); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80865, 10813, 305, NULL, date("2016-08-21")); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80884, 10813, 249, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80903, 10813, 368, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80945, 10813, 264, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80973, 10813, 217, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80983, 10813, 392, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80984, 10813, 400, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 80985, 10813, 408, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81083, 10813, 104, 654, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81084, 10813, 112, 654, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81085, 10813, 120, 654, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81283, 10813, 60, NULL, date("2016-08-13")); -- Constellation Station
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81363, 10813, 193, NULL, date("2016-08-15"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81414, 3005, 88, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81423, 10813, 265, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81505, 10813, 216, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81544, 10813, 42, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81783, 10813, 58, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81824, 10813, 374, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 81994, 10813, 423, NULL, date("2016-08-13"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82004, 10813, 159, NULL, date("2016-08-21")); -- Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82005, 10813, 167, NULL, date("2016-08-21")); -- Eden Terrace
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82035, 10813, 146, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 82163, 10813, 461, NULL, date("2016-08-22"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589905, 3005, 313, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589906, 10837, 313, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589907, 3005, 321, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589909, 3005, 329, 341, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589911, 10788, 313, 341, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589912, 10788, 321, 341, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589917, 3005, 18, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589919, 3005, 26, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589921, 10788, 10, 377, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589923, 10788, 26, 377, date("2016-08-12"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589925, 3005, 252, 708, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589927, 3005, 260, 708, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589929, 3005, 268, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589932, 10788, 260, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589933, 10788, 268, 708, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589977, 3005, 355, NULL, date("2016-08-20")); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 589982, 10788, 355, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590005, 3005, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590009, 3005, 425, NULL, date("2016-08-21")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590011, 10788, 409, NULL, date("2016-08-12")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590013, 10788, 425, NULL, date("2016-08-20")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590029, 3005, 185, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590031, 10788, 169, NULL, date("2016-08-20"));
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

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590243, 10788, 348, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590283, 10788, 99, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590295, 3005, 309, NULL, date("2016-08-14")); -- Penrose Rd/Mt Wellington Hw
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590297, 3005, 317, NULL, date("2016-08-14")); -- Penrose Rd/Mt Wellington Hw
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590302, 10788, 317, NULL, date("2016-08-13")); -- Penrose Rd/Mt Wellington Hw
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590317, 3005, 283, NULL, date("2016-08-14")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590319, 3005, 291, NULL, date("2016-08-14")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590322, 10788, 283, NULL, date("2016-08-13")); -- Hotonui
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590325, 3005, 227, NULL, date("2016-08-22")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590327, 3005, 235, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590329, 3005, 243, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590332, 10788, 235, NULL, date("2016-08-20")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590333, 10788, 243, NULL, date("2016-08-21")); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590361, 10788, 108, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590585, 3005, 178, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590645, 3005, 180, NULL, date("2016-08-15")); -- Kelston Mall
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590685, 3005, 271, 637, date("2016-08-16"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590687, 3005, 279, 637, date("2016-08-26"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590691, 10788, 271, 637, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590692, 10788, 279, 637, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590695, 3005, 487, NULL, date("2016-08-21")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590697, 3005, 495, NULL, date("2016-08-20")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590699, 3005, 503, NULL, date("2016-08-20")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590701, 10788, 487, NULL, date("2016-08-21")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590702, 10788, 495, NULL, date("2016-08-21")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590703, 10788, 503, NULL, date("2016-08-20")); -- Three Kings Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590749, 3005, 242, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590777, 3005, 379, NULL, date("2016-08-22")); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590815, 3005, 299, NULL, date("2016-08-21")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590819, 3005, 315, NULL, date("2016-08-20")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590821, 10788, 299, NULL, date("2016-08-20")); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590823, 10788, 315, NULL, date("2016-08-20")); -- Mangere Tidal Road
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590827, 3005, 451, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590829, 3005, 459, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590885, 3005, 204, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 590891, 10788, 204, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591095, 3005, 395, NULL, date("2016-08-22")); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591202, 10788, 398, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591203, 10788, 406, NULL, date("2016-08-13")); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591337, 3005, 33, NULL, date("2016-08-14")); -- Sylvia Park Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591339, 3005, 41, NULL, date("2016-08-14")); -- Sylvia Park Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591343, 10788, 41, NULL, date("2016-08-13")); -- Sylvia Park Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591587, 3005, 14, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591589, 3005, 22, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591592, 10788, 14, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 591593, 10788, 22, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596415, 3005, 45, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596417, 3005, 53, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596419, 3005, 61, NULL, date("2016-08-14")); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596485, 3005, 290, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596487, 3005, 298, NULL, date("2016-08-22"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 596489, 3005, 306, NULL, date("2016-08-22"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599902, 10813, 88, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599903, 10813, 96, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599911, 10813, 313, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599912, 10813, 321, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599913, 10813, 329, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599922, 10813, 18, 377, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599923, 10813, 26, 377, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 599933, 10813, 268, NULL, date("2016-08-20"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600011, 10813, 409, NULL, date("2016-08-20")); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600051, 10813, 296, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600052, 10813, 304, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600072, 10813, 162, NULL, date("2016-08-13"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600073, 10813, 170, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600272, 10813, 352, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600273, 10813, 360, NULL, date("2016-08-14"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600362, 3005, 116, NULL, date("2016-08-13")); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600411, 10813, 261, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600423, 10813, 229, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600453, 10813, 181, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600591, 10813, 178, NULL, date("2016-08-20"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 600681, 10813, 83, NULL, date("2016-08-21"));

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 604941, 10813, 25, NULL, date("2016-08-21"));
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location, last_seen) VALUES (530, 24, 604942, 10813, 33, NULL, date("2016-08-21"));
