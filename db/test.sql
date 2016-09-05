PRAGMA foreign_keys = ON;
.bail on

.read schema.sql

INSERT INTO country (mcc, name) VALUES (530, "New Zealand");

INSERT INTO frequency_umts (uarfcn) VALUES (1012); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (1037); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (1062); -- 850
INSERT INTO frequency_umts (uarfcn) VALUES (3005); -- 900
INSERT INTO frequency_umts (uarfcn) VALUES (3065); -- 900
INSERT INTO frequency_umts (uarfcn) VALUES (3086); -- 900
INSERT INTO frequency_umts (uarfcn) VALUES (10713); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10738); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10763); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10788); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10813); -- 2100
INSERT INTO frequency_umts (uarfcn) VALUES (10837); -- 2100

INSERT INTO frequency_lte (earfcn) VALUES (1550); -- 1800
INSERT INTO frequency_lte (earfcn) VALUES (9310); -- APT 700

INSERT INTO region (id, name) VALUES (1, "World");
INSERT INTO region (id, name, parent) VALUES (2, "New Zealand", 1);
INSERT INTO region (id, name, parent) VALUES (3, "Auckland", 2);
INSERT INTO region (id, name, parent) VALUES (12, "Puketāpapa Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (14, "Howick Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (15, "Māngere-Ōtāhuhu Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (17, "Devonport-Takapuna Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (18, "Kaipātiki Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (20, "Manurewa Local Board", 3);
INSERT INTO region (id, name, parent) VALUES (21, "Waitākere Ranges Local Board", 3);

INSERT INTO region (id, name, parent) VALUES (8, "Ōrākei Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (247, "Bastion Point", 8, -36.845450, 174.816957);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (270, "Ellerslie", 8, -36.890431, 174.803412);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (30, "Glendowie", 8, -36.861826, 174.857988);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (544, "Glen Innes (2degrees)", 8, -36.878766, 174.852779);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (2, "Glen Innes (Spark)", 8, -36.877115, 174.852443);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (26, "Glover Park", 8, -36.850060, 174.869398);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (1, "Kohimarama", 8, -36.853226, 174.843895);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (3, "Meadowbank Hospital", 8, -36.868866, 174.820752);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (13, "Meadowbank Shops", 8, -36.876383, 174.825860);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (18, "Mission Bay Club", 8, -36.861077, 174.825083);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (4, "Mission Bay Courts", 8, -36.849717, 174.830149);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (8, "Okahu Bay", 8, -36.853086, 174.820591);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (25, "Ōrākei", 8, -36.861977, 174.808480);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (548, "Remuera Shops", 8, -36.880128, 174.812749);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (32, "Remuera Suburban", 8, -36.872856, 174.805023);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (20, "Saint Heliers Bay", 8, -36.850808, 174.857148);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (844, "Saint Heliers Church", 8, -36.867978, 174.845455);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (34, "Saint Heliers Exchange", 8, -36.868518, 174.844849);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (65, "Tāmaki", 8, -36.886187, 174.852043);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (217, "Tamaki Drive and Patteson Avenue", 8, -36.848387, 174.831316);

INSERT INTO region (id, name, parent) VALUES (9, "Albert-Eden Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (578, "Alexandra Park", 9, -36.892279, 174.776591);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (71, "Balmoral", 9, -36.887910, 174.747474);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (576, "Balmoral Heights", 9, -36.890232, 174.761397);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (29, "Boston and Mount Eden Roads", 9, -36.867372, 174.761978);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (581, "Epsom Commercial", 9, -36.877068, 174.778774);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (654, "Epsom Shops", 9, -36.883273, 174.785318);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (846, "Greenlane", 9, -36.889370, 174.796602);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (24, "Kingsland", 9, -36.868962, 174.752347);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (286, "Morningside", 9, -36.873350, 174.736746);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (105, "Mount Albert Exchange", 9, -36.878070, 174.727111);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (295, "Mount Albert Shops", 9, -36.888264, 174.710816);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (99, "Mount Eden Exchange", 9, -36.882566, 174.762753);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (77, "Mount Eden Shops", 9, -36.877008, 174.750369);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (296, "New North Road and Soljak Place", 9, -36.894913, 174.704354);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (294, "Saint Lukes Road and Jesmond Terrace", 9, -36.876936, 174.726221);

INSERT INTO region (id, name, parent) VALUES (10, "Waitematā Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (152, "Albert Street", 10, -36.847028, 174.763820);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (842, "Beach Road", 10, -36.848580, 174.774187);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (9, "Carlaw Park", 10, -36.852366, 174.776646);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (841, "Earle and Parnell Streets", 10, -36.851881, 174.778615);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (845, "Flower and Nikau Streets", 10, -36.865896, 174.760457);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (6, "Grafton", 10, -36.861059, 174.765161);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (302, "Grey Lynn", 10, -36.864912, 174.738109);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (14, "Khyber Pass Road and Symonds Street", 10, -36.864629, 174.760958);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (7, "Mechanics Bay", 10, -36.850734, 174.782529);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (5, "Newmarket Commercial", 10, -36.867685, 174.775615);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (21, "Newmarket Park", 10, -36.865004, 174.780055);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (27, "Parnell Cathedral", 10, -36.859229, 174.783026);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (28, "Parnell Shops", 10, -36.854122, 174.779341);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (839, "Plumer and Quay Streets", 10, -36.845069, 174.774241);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (111, "Princes Street", 10, -36.847631, 174.769786);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (456, "Ports of Auckland (2degrees)", 10, -36.847828, 174.785326);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (23, "Ports of Auckland (Spark)", 10, -36.847809, 174.785596);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (182, "Quay and Queen Streets", 10, -36.841589, 174.768290);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (109, "Quay Park", 10, -36.846411, 174.772110);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (106, "Queen's Wharf", 10, -36.844017, 174.768841);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (117, "Shortland Street", 10, -36.846659, 174.766432);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (107, "Symonds Street and Saint Martins Lane", 10, -36.857543, 174.764938);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (843, "Symonds Street and Whitaker Place", 10, -36.856081, 174.766535);

INSERT INTO region (id, name, parent) VALUES (11, "Maungakiekie-Tāmaki Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (698, "Great South Road and Bell Avenue", 11, -36.928872, 174.832855);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (73, "Hamlins Hill", 11, -36.925400, 174.832666);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (688, "Mount Wellington", 11, -36.908037, 174.837392);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (690, "Onehunga", 11, -36.927656, 174.783914);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (60, "Panmure", 11, -36.898929, 174.849740);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (683, "Jellicoe and Pleasant View Roads", 11, -36.897989, 174.852644);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (86, "Penrose", 11, -36.918395, 174.816221);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (22, "Point England", 11, -36.876724, 174.870363);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (692, "Royal Oak", 11, -36.920709, 174.767860);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (689, "Sylvia Park Interchange (2degrees)", 11, -36.919617, 174.842929);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (93, "Sylvia Park Interchange (Spark)", 11, -36.918913, 174.841285);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (94, "Sylvia Park Station", 11, -36.913658, 174.842817);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (31, "Wai o Taiki Bay", 11, -36.869594, 174.874355);

INSERT INTO region (id, name, parent) VALUES (13, "Whau Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (123, "Great North Road and Delta Avenue", 13, -36.907518, 174.682929);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (587, "Kelston", 13, -36.909606, 174.663809);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (128, "New Windsor", 13, -36.905550, 174.700594);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (129, "Portage Road and Wolverton Street", 13, -36.910742, 174.689842);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (163, "Rosebank Road and Ash Street", 13, -36.895535, 174.691333);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (115, "Saint Jude Street and Geddes Terrace", 13, -36.898290, 174.697732);

INSERT INTO region (id, name, parent) VALUES (16, "Ōtara-Papatoetoe Local Board", 3);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (341, "Manukau Commercial", 16, -36.991777, 174.878600);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (377, "Manukau Exchange", 16, -36.993806, 174.888172);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (40, "Middlemore", 16, -36.962858, 174.839797);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (41, "Papatoetoe", 16, -36.958337, 174.853209);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (44, "Papatoetoe Station", 16, -36.978689, 174.852655);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (708, "Puhinui", 16, -36.994783, 174.846394);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (205, "Station Road and Spring Street", 16, -36.976705, 174.848169);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (467, "Devonport", 17, -36.831886, 174.796634);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (219, "Glen Eden", 21, -36.909378, 174.650855);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (438, "Homai", 20, -37.013071, 174.874629);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (563, "Manurewa", 20, -37.020968, 174.892654);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (637, "Mount Roskill (2degrees)", 12, -36.904120, 174.741407);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (131, "Mount Roskill (Spark)", 12, -36.903177, 174.741813);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (840, "Northcote Commercial", 18, -36.801319, 174.759855);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (457, "Northcote Point", 18, -36.822607, 174.750730);

INSERT INTO location (id, name, region, latitude, longitude) VALUES (62, "Pakuranga", 14, -36.908692, 174.880720);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (671, "Sunnynook", 17, -36.761516, 174.738655);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (627, "Three Kings", 12, -36.914628, 174.752935);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (108, "University of Auckland", 10, -36.852064, 174.770603);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (143, "Western Springs", 10, -36.868422, 174.728130);
INSERT INTO location (id, name, region, latitude, longitude) VALUES (37, "Westfield", 15, -36.936130, 174.836669);

.read 530-01.sql
.read 530-05.sql
.read 530-24.sql
