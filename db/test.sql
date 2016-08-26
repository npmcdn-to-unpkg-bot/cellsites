--
-- Test script for cellsites.nz with actual real-world data to verify the schema works.
--

PRAGMA foreign_keys = ON;

.bail on

.read schema.sql

INSERT INTO country (mcc, name) VALUES (530, "New Zealand");

INSERT INTO network (mnc, name) VALUES (1, "Vodafone");
INSERT INTO network (mnc, name) VALUES (5, "Spark");

INSERT INTO frequency_umts (uarfcn) VALUES (1012); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (1037); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (1062); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (3005); -- 900
INSERT INTO frequency_umts (uarfcn) VALUES (10713); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10738); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10763); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10788); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10813); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10837); -- 2100

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 1012);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 1037);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 1062);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 10713);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 10738);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 5, 10763);

INSERT INTO coordinates_source (id, name) VALUES (1, "Google Maps");

INSERT INTO region (id, name) VALUES (1, "World");
INSERT INTO region (id, name, parent) VALUES (2, "New Zealand", 1);
INSERT INTO region (id, name, parent) VALUES (3, "Auckland", 2);
INSERT INTO region (id, name, parent) VALUES (8, "Ōrākei Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (9, "Albert-Eden Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (10, "Waitematā Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (11, "Maungakiekie-Tāmaki Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (12, "Puketāpapa Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (13, "Whau Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (14, "Howick Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (15, "Māngere-Ōtāhuhu Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (16, "Ōtara-Papatoetoe Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (17, "Devonport-Takapuna Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (152, "Albert Street", 10, -36.847028, 174.763820, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (115, "Avondale", 13, -36.898290, 174.697732, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (247, "Bastion Point", 8, -36.845450, 174.816957, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (71, "Balmoral", 9, -36.887910, 174.747474, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (9, "Carlaw Park", 10, -36.852366, 174.776646, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (467, "Devonport", 17, -36.831886, 174.796634, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (14, "Eden Terrace", 10, -36.864629, 174.760958, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (270, "Ellerslie", 8, -36.890431, 174.803412, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (654, "Epsom", 9, -36.883273, 174.785318, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (30, "Glendowie", 8, -36.861826, 174.857988, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (2, "Glen Innes", 8, -36.877115, 174.852443, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (26, "Glover Park", 8, -36.850060, 174.869398, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (6, "Grafton", 10, -36.861059, 174.765161, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (302, "Grey Lynn", 10, -36.864912, 174.738109, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (73, "Hamlins Hill", 11, -36.925400, 174.832666, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (24, "Kingsland", 9, -36.868962, 174.752347, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (1, "Kohimarama", 8, -36.853226, 174.843895, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (341, "Manukau Commercial", 16, -36.991777, 174.878600, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (377, "Manukau Exchange", 16, -36.993806, 174.888172, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (3, "Meadowbank", 8, -36.868866, 174.820752, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (7, "Mechanics Bay", 10, -36.850734, 174.782529, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (40, "Middlemore", 16, -36.962858, 174.839797, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (18, "Mission Bay Club", 8, -36.861077, 174.825083, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (4, "Mission Bay Courts", 8, -36.849717, 174.830149, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (105, "Mount Albert", 9, -36.878070, 174.727111, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (99, "Mount Eden Exchange", 9, -36.882566, 174.762753, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (77, "Mount Eden Shops", 9, -36.877008, 174.750369, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (29, "Mount Eden Station", 9, -36.867372, 174.761978, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (637, "Mount Roskill (2degrees)", 12, -36.904120, 174.741407, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (131, "Mount Roskill (Spark)", 12, -36.903177, 174.741813, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (5, "Newmarket Commercial", 10, -36.867685, 174.775615, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (21, "Newmarket Park", 10, -36.865004, 174.780055, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (129, "New Lynn", 13, -36.910742, 174.689842, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (128, "New Windsor", 13, -36.905550, 174.700594, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (8, "Okahu Bay", 8, -36.853086, 174.820591, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (25, "Ōrākei", 8, -36.861977, 174.808480, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (690, "Onehunga", 11, -36.927656, 174.783914, 1, 1);

INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (60, "Panmure", 11, -36.898929, 174.849740, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (62, "Pakuranga", 14, -36.908692, 174.880720, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (41, "Papatoetoe", 16, -36.958337, 174.853209, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (44, "Papatoetoe Station", 16, -36.978689, 174.852655, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (27, "Parnell Cathedral", 10, -36.859229, 174.783026, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (28, "Parnell Shops", 10, -36.854122, 174.779341, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (86, "Penrose", 11, -36.918395, 174.816221, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (111, "Princes Street", 10, -36.847631, 174.769786, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (22, "Point England", 11, -36.876724, 174.870363, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (456, "Ports of Auckland (2degrees)", 10, -36.847828, 174.785326, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (23, "Ports of Auckland (Spark)", 10, -36.847809, 174.785596, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (708, "Puhinui", 16, -36.994783, 174.846394, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (109, "Quay Park", 10, -36.846411, 174.772110, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (106, "Queen's Wharf", 10, -36.844017, 174.768841, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (32, "Remuera", 8, -36.872856, 174.805023, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (692, "Royal Oak", 11, -36.920709, 174.767860, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (20, "Saint Heliers Bay", 8, -36.850808, 174.857148, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (34, "Saint Heliers Exchange", 8, -36.868518, 174.844849, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (117, "Shortland Street", 10, -36.846659, 174.766432, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (93, "Sylvia Park", 11, -36.918913, 174.841285, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (94, "Sylvia Park Station", 11, -36.913658, 174.842817, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (107, "Symonds Street", 10, -36.857543, 174.764938, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (65, "Tāmaki", 8, -36.886187, 174.852043, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (31, "Wai o Taiki Bay", 11, -36.869594, 174.874355, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (108, "University of Auckland", 10, -36.852064, 174.770603, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (143, "Western Springs", 10, -36.868422, 174.728130, 1, 1);
INSERT INTO location (id, name, region, latitude, longitude, coordinates_source, accurate) VALUES (37, "Westfield", 15, -36.936130, 174.836669, 1, 1);

INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 1);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 2);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 3);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 4);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 5);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 6);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 7);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 8);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 9);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 14);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 18);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 20);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 21);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 22);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 23);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 24);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 25);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 26);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 27);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 28);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 29);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 30);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 31);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 32);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 34);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 37);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 40);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 41);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 44);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 60);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 62);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 65);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 71);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 73);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 77);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 86);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 93);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 94);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 99);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 105);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 106);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 107);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 108);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 109);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 111);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 115);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 117);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 128);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 129);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 131);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 143);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 152);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 247);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 302);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 5, 467);

--
-- Data for UMTS 530-05-11000
--

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (750940, 11000, 1037, 3, 109, date("2016-08-08"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751258, 11000, 1062, 81, NULL, date("2016-07-31")); -- Rx Western Springs
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751260, 11000, 1037, 73, NULL, date("2016-08-10")); -- Rx Mt Eden
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751319, 11000, 1062, 113, 302, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751462, 11000, 1037, 184, 152, date("2016-08-11"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751537, 11000, 1062, 414, 106, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751538, 11000, 10713, 422, 106, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751540, 11000, 1037, 414, 106, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751541, 11000, 1037, 422, 106, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751544, 11000, 1037, 422, 106, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751700, 11000, 1037, 243, 111, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751809, 11000, 1062, 355, 108, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751810, 11000, 1037, 339, 108, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751812, 11000, 1037, 355, 108, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (751821, 11000, 1037, 371, 117, date("2016-08-11"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752007, 11000, 1062, 336, 107, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752008, 11000, 1062, 344, 107, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752010, 11000, 1037, 336, 107, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752011, 11000, 1037, 344, 107, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752447, 11000, 10738, 3, 109, date("2016-08-11"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752448, 11000, 10738, 11, 109, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752449, 11000, 10738, 19, 109, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752450, 11000, 10713, 3, 109, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752451, 11000, 10713, 11, 109, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752452, 11000, 10713, 19, 109, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752521, 11000, 10738, 392, NULL, date("2016-08-08")); -- Britomart Underground?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752793, 11000, 10738, 414, 106, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752794, 11000, 10738, 422, 106, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752907, 11000, 1062, 481, 105, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752909, 11000, 1062, 497, 105, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752910, 11000, 1037, 481, 105, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (752987, 11000, 1062, 49, NULL, date("2016-08-02"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (753897, 11000, 1062, 457, 143, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (753898, 11000, 1062, 465, 143, date("2016-07-31"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (754669, 11000, 10738, 497, 105, date("2016-08-08"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (756573, 11000, 10763, 457, 143, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (756830, 11000, 10738, 339, 108, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (756831, 11000, 10738, 347, 108, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (756832, 11000, 10738, 355, 108, date("2016-08-09"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (758127, 11000, 1062, 458, NULL, date("2016-08-12"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (758129, 11000, 1062, 474, NULL, date("2016-08-12"));

--
--- Data for UMTS 530-05-13305
--

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884003, 13305, 10738, 10, 41, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884049, 13305, 1062, 6, NULL, date("2016-08-06"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884323, 13305, 1037, 62, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884330, 13305, 10738, 62, NULL, date("2016-08-06")); -- Rx Wiri
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884350, 13305, 10738, 86, NULL, date("2016-08-06"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884370, 13305, 1062, 153, 40, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884371, 13305, 1062, 161, 40, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884372, 13305, 10738, 145, 40, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884373, 13305, 10738, 153, 40, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884374, 13305, 10738, 161, 40, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884392, 13305, 1037, 78, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884409, 13305, 1062, 97, NULL, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884412, 13305, 1037, 97, NULL, date("2016-08-05")); -- Otahuhu
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884471, 13305, 1062, 190, NULL, date("2016-08-05")); -- Manukau
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884474, 13305, 10738, 190, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884479, 13305, 1062, 198, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884480, 13305, 1062, 206, NULL, date("2016-08-06")); -- Manurewa
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884490, 13305, 1062, 249, 37, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884521, 13305, 1062, 208, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884579, 13305, 1062, 246, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884580, 13305, 1062, 254, NULL, date("2016-08-06")); -- Manurewa
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884582, 13305, 10738, 246, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884610, 13305, 1062, 321, NULL, date("2016-08-05")); -- Otahuhu
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884613, 13305, 10738, 321, NULL, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884654, 13305, 10738, 306, 62, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884669, 13305, 1062, 270, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884670, 13305, 1062, 278, NULL, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884673, 13305, 10738, 278, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884674, 13305, 10738, 286, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884730, 13305, 1062, 346, 44, date("2016-08-05")); 
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884731, 13305, 1062, 354, 44, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884733, 13305, 10738, 346, 44, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884793, 13305, 10738, 370, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884949, 13305, 1062, 385, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (884953, 13305, 10738, 393, NULL, date("2016-07-31"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (885173, 13305, 1037, 80, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (885221, 13305, 1062, 210, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (885822, 13305, 1037, 384, NULL, date("2016-07-30"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (889419, 13305, 1062, 438, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (889841, 13305, 1062, 46, NULL, date("2016-07-30"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (889843, 13305, 1037, 38, NULL, date("2016-07-30"));

--
-- Data for UMTS 530-05-14301
--

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (947805, 14301, 1062, 454, 467, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (947806, 14301, 10738, 454, 467, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (947905, 14301, 1062, 72, 6, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (947908, 14301, 1037, 72, 6, date("2016-07-31"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948059, 14301, 1037, 180, NULL, date("2016-08-10")); -- Rx Mt Eden
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948097, 14301, 1062, 451, 7, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948100, 14301, 1037, 451, 7, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948136, 14301, 10738, 276, 5, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948137, 14301, 10738, 284, 5, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948215, 14301, 1062, 316, 21, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948216, 14301, 1062, 324, 21, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948218, 14301, 1037, 316, 21, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948316, 14301, 1062, 227, 28, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948319, 14301, 1037, 227, 28, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948328, 14301, 10738, 459, 27, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948386, 14301, 1062, 490, 9, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948387, 14301, 1062, 498, 9, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948389, 14301, 1037, 490, 9, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948390, 14301, 1037, 498, 9, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948446, 14301, 1062, 420, 14, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948447, 14301, 1062, 428, 14, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948448, 14301, 10738, 412, 14, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948449, 14301, 10738, 420, 14, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948450, 14301, 10738, 428, 14, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948555, 14301, 1062, 411, 23, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948556, 14301, 1062, 419, 23, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948795, 14301, 1062, 415, 94, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948796, 14301, 1062, 423, 94, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948797, 14301, 1062, 431, 94, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948925, 14301, 1062, 483, 31, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948927, 14301, 1062, 491, 31, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948928, 14301, 10738, 483, 31, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948930, 14301, 10738, 491, 31, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948937, 14301, 1062, 503, 26, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948956, 14301, 10738, 33, 71, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (948957, 14301, 10738, 41, 71, date("2016-08-09"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949078, 14301, 10713, 435, 7, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949080, 14301, 10713, 451, 7, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949086, 14301, 1062, 471, 30, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949087, 14301, 1062, 479, 30, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949089, 14301, 10738, 471, 30, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949090, 14301, 10738, 479, 30, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949117, 14301, 10738, 498, 9, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949119, 14301, 10713, 490, 9, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949237, 14301, 10738, 501, NULL, date("2016-08-08")); -- ?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949311, 14301, 10738, 430, NULL, date("2016-08-08")); -- Kingsland?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949457, 14301, 1062, 449, 3, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949607, 14301, 1062, 44, NULL, date("2016-08-04")); -- ?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949615, 14301, 1062, 220, 32, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949655, 14301, 1062, 4, 247, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949658, 14301, 10738, 4, 247, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949735, 14301, 1062, 79, 2, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949738, 14301, 10738, 79, 2, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949739, 14301, 10738, 87, 2, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949745, 14301, 1062, 103, 73, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949746, 14301, 1062, 111, 73, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949749, 14301, 10738, 111, 73, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949795, 14301, 1062, 100, 25, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949796, 14301, 1062, 108, 25, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949797, 14301, 1062, 116, 25, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949798, 14301, 10738, 100, 25, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949799, 14301, 10738, 108, 25, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949800, 14301, 10738, 116, 25, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949815, 14301, 1062, 148, 18, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949818, 14301, 1037, 148, 18, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949985, 14301, 1062, 271, 4, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949986, 14301, 1062, 279, 4, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949988, 14301, 1037, 271, 4, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (949989, 14301, 1037, 279, 4, date("2016-08-04"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950045, 14301, 1062, 199, 93, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950046, 14301, 1062, 207, 93, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950086, 14301, 1062, 153, 24, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950089, 14301, 10738, 153, 24, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950090, 14301, 10738, 161, 24, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950106, 14301, 1062, 468, 8, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950107, 14301, 1062, 476, 8, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950178, 14301, 10738, 247, 65, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950179, 14301, 10738, 255, 65, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950228, 14301, 10738, 295, 60, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950229, 14301, 10738, 303, 60, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950230, 14301, 10738, 311, 60, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950238, 14301, 10738, 319, 86, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950297, 14301, 1062, 359, 22, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950298, 14301, 10738, 343, 22, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950299, 14301, 10738, 351, 22, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950415, 14301, 1062, 367, 34, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950418, 14301, 10738, 367, 34, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950426, 14301, 1062, 399, 20, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950427, 14301, 1062, 407, 20, date("2016-08-11"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950429, 14301, 1037, 399, 20, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950430, 14301, 1037, 407, 20, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950446, 14301, 10738, 399, 20, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950447, 14301, 10738, 407, 20, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950616, 14301, 1062, 33, 71, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950618, 14301, 1037, 25, 71, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950619, 14301, 1037, 33, 71, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950727, 14301, 1062, 92, 99, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (950730, 14301, 1037, 92, 99, date("2016-08-10"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (951546, 14301, 1062, 393, 77, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (951548, 14301, 1037, 385, 77, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (951549, 14301, 1037, 393, 77, date("2016-08-12"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (952835, 14301, 10738, 411, 23, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (952845, 14301, 10738, 148, 18, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (952846, 14301, 10738, 156, 18, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (952867, 14301, 10738, 476, 8, date("2016-08-10"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953015, 14301, 10738, 385, 77, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953016, 14301, 10738, 393, 77, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953056, 14301, 10738, 180, NULL, date("2016-08-08")); -- ?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953075, 14301, 10738, 72, 6, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953096, 14301, 10738, 272, NULL, date("2016-07-31")); -- ?
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (953097, 14301, 10738, 280, NULL, date("2016-07-31")); -- ?

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (954675, 14301, 1062, 436, 29, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (954676, 14301, 1062, 444, 29, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (954677, 14301, 10738, 436, 29, date("2016-08-10"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (954678, 14301, 10738, 444, 29, date("2016-08-10"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (955498, 14301, 1037, 151, 1, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (955499, 14301, 1037, 159, 1, date("2016-08-04"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (955500, 14301, 1037, 167, 1, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (955505, 14301, 10738, 151, 1, date("2016-08-07"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (955506, 14301, 10738, 159, 1, date("2016-08-07"));

--
-- Data for 530-05-15301
--

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014604, 15301, 10738, 434, NULL, date("2016-08-10")); -- Rx Mt Eden
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014605, 15301, 10738, 442, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014862, 15301, 10738, 129, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014941, 15301, 1062, 482, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014943, 15301, 1062, 498, NULL, date("2016-08-08")); -- New Lynn
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1014946, 15301, 1037, 498, NULL, date("2016-08-08")); -- New Lynn

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015061, 15301, 1062, 26, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015062, 15301, 1062, 34, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015063, 15301, 1062, 42, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015171, 15301, 1062, 98, NULL, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015172, 15301, 1062, 106, NULL, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015173, 15301, 1062, 114, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015341, 15301, 10738, 26, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015342, 15301, 10738, 34, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015343, 15301, 10738, 42, 115, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015381, 15301, 1062, 194, 128, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015382, 15301, 1062, 202, 128, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015383, 15301, 1062, 210, 128, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015412, 15301, 1062, 226, NULL, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015413, 15301, 1062, 234, NULL, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015415, 15301, 1037, 226, NULL, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015601, 15301, 1062, 171, 129, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015602, 15301, 1062, 179, 129, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015603, 15301, 1062, 187, 129, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015604, 15301, 10738, 171, 129, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015605, 15301, 10738, 179, 129, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015606, 15301, 10738, 187, 129, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015611, 15301, 1062, 195, NULL, date("2016-08-08")); -- New Lynn
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015612, 15301, 1062, 203, NULL, date("2016-08-08")); -- New Lynn
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015695, 15301, 10738, 274, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015696, 15301, 10738, 282, NULL, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1015924, 15301, 10738, 314, NULL, date("2016-07-31"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016011, 15301, 1062, 362, NULL, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016012, 15301, 1062, 370, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016052, 15301, 1062, 418, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016201, 15301, 1062, 74, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016285, 15301, 1037, 417, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016286, 15301, 1037, 425, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016284, 15301, 1037, 409, NULL, date("2016-08-05")); -- Rx Westfield
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016465, 15301, 1037, 59, NULL, date("2016-08-07")); -- !Helensville
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016626, 15301, 1037, 209, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016652, 15301, 1062, 250, 131, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016654, 15301, 1037, 242, 131, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016655, 15301, 1037, 250, 131, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016656, 15301, 1037, 258, 131, date("2016-08-02"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016871, 15301, 1062, 341, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1016872, 15301, 1062, 349, NULL, date("2016-07-31"));

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1017217, 15301, 1062, 363, NULL, date("2016-08-07")); -- ~Winery

INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018483, 15301, 10738, 258, 131, date("2016-08-09"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018501, 15301, 10738, 194, 128, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018503, 15301, 10738, 210, 128, date("2016-08-08"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018691, 15301, 10738, 221, NULL, date("2016-08-05"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018721, 15301, 10738, 341, NULL, date("2016-07-31"));
--INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018731, 15301, 10738, 370, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018732, 15301, 10738, 370, NULL, date("2016-07-31"));
INSERT INTO cell_umts (lcid, ura, uarfcn, psc, location, last_seen) VALUES (1018751, 15301, 10738, 410, NULL, date("2016-07-31"));

.read 530-24.sql
