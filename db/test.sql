PRAGMA foreign_keys = ON;
.bail on

.read schema.sql

INSERT INTO country (mcc, name) VALUES (530, "New Zealand");

INSERT INTO network (mnc, name) VALUES (1, "Vodafone");

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

.read 530-05.sql
.read 530-24.sql