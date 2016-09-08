PRAGMA foreign_keys = ON;
.bail on

INSERT INTO network (mcc, mnc, name) VALUES (530, 24, "2degrees");

INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 3005);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10788);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10813);
INSERT INTO network_frequency_umts (mcc, mnc, uarfcn) VALUES (530, 24, 10837);

INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 1);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 8);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 13);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 123);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 138);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 163);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 182);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 205);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 217);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 219);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 233);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 294);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 296);
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
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 568);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 571);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 574);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 575);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 576);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 578);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 581);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 587);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 627);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 637);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 654);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 671);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 683);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 688);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 689);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 690);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 692);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 698);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 708);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 839);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 840);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 841);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 842);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 843);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 844);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 845);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 846);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 847);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 848);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 849);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 850);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 851);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 852);
INSERT INTO network_location (mcc, mnc, location) VALUES (530, 24, 853);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 66337, 3005, 330, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 66339, 3005, 338, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67019, 3005, 128, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67021, 3005, 136, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67027, 3005, 75, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67028, 10837, 75, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67030, 10837, 83, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67031, 3005, 91, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67032, 10837, 91, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67034, 10788, 83, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67035, 10788, 91, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67037, 3005, 421, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67039, 3005, 429, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67069, 3005, 308, NULL); -- Rx Kingsland/Morningside
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67070, 10837, 308, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67071, 3005, 316, NULL); -- Rx Kingsland
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67072, 10837, 316, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67089, 3005, 399, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67097, 3005, 31, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67099, 3005, 39, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67101, 3005, 47, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67103, 10788, 31, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67104, 10788, 39, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67105, 10788, 47, 840);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67137, 3005, 155, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67141, 3005, 171, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67185, 10788, 20, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67338, 10837, 92, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67337, 3005, 92, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67339, 3005, 100, NULL); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67340, 10837, 100, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67344, 10788, 100, NULL); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67343, 10788, 92, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67347, 3005, 68, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67349, 3005, 76, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 67351, 3005, 84, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70547, 3005, 36, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70587, 3005, 228, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70591, 3005, 244, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70607, 3005, 247, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70609, 3005, 255, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70611, 3005, 263, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70613, 10788, 247, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70614, 10788, 255, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70615, 10788, 263, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70617, 3005, 361, 294);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70621, 3005, 377, 294);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70623, 10788, 361, 294);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70627, 3005, 362, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70629, 3005, 370, NULL); -- Rx Meadowbank
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70634, 10788, 370, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70635, 10788, 378, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70643, 10788, 319, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70659, 3005, 221, 1);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70661, 3005, 229, 1);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70665, 10788, 229, 1);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70687, 3005, 103, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70693, 10788, 103, NULL); -- Rx Meadowbank
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70697, 3005, 210, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70699, 3005, 218, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70703, 10788, 210, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70704, 10788, 218, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70707, 3005, 488, NULL); -- Rx Kingsland/Mt Eden
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70709, 3005, 496, NULL); -- Rx Kingsland/Mt Eden
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70717, 3005, 386, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70757, 3005, 93, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70759, 3005, 101, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70769, 3005, 346, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70815, 10788, 435, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70857, 3005, 289, NULL); -- Rx Hobson Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70859, 3005, 297, NULL); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70861, 3005, 305, NULL); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70865, 10788, 305, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70867, 3005, 176, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70869, 3005, 184, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70871, 3005, 192, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70873, 10788, 176, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70877, 3005, 241, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70878, 10837, 241, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70880, 10837, 249, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70881, 3005, 257, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70885, 10788, 257, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70891, 3005, 17, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70897, 3005, 368, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70903, 10788, 368, NULL); -- Rx Downtown
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70909, 3005, 375, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70911, 3005, 383, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70937, 3005, 248, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70939, 3005, 256, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70941, 3005, 264, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70947, 3005, 73, 843);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70951, 3005, 89, 843);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70955, 10788, 89, 843);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70967, 3005, 217, 842);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70969, 3005, 225, 842);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70973, 10788, 217, 842);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70977, 3005, 392, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70979, 3005, 400, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70983, 10788, 392, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70984, 10788, 400, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70985, 10788, 408, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 70999, 3005, 379, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71041, 3005, 445, NULL); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71044, 10788, 437, NULL); -- Greville Road X
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71047, 3005, 60, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71069, 3005, 64, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71071, 3005, 72, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71074, 10788, 64, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71075, 10788, 72, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71077, 3005, 104, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71081, 3005, 120, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71083, 10788, 104, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71087, 3005, 224, 575);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71089, 3005, 232, 575);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71091, 3005, 240, 575);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71099, 3005, 136, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71101, 3005, 144, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71107, 3005, 313, 849);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71109, 3005, 321, 849);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71114, 10788, 321, 849);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71117, 3005, 434, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71119, 3005, 442, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71121, 3005, 450, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71123, 10788, 434, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71127, 3005, 49, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71129, 3005, 57, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71131, 3005, 65, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71167, 3005, 128, 581);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71169, 3005, 136, 581);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71171, 3005, 144, 581);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71173, 10788, 128, 581);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71174, 10788, 136, 581);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71201, 3005, 480, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71205, 10788, 480, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71224, 10788, 94, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71237, 3005, 385, 138);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71239, 3005, 393, 138);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71283, 10788, 60, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71357, 3005, 193, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71359, 3005, 201, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71361, 3005, 209, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71363, 10788, 193, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71365, 10788, 209, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71373, 3005, 457, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71389, 3005, 177, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71391, 3005, 185, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71409, 3005, 88, NULL); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71414, 10788, 88, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71417, 3005, 265, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71454, 10788, 40, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71459, 3005, 190, 8);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71464, 10788, 190, 8);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71483, 10788, 5, NULL); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71484, 10788, 13, NULL); -- Albany Hilltop
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71494, 10788, 274, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71497, 3005, 200, NULL); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71499, 3005, 208, NULL); -- Rx Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71501, 3005, 216, NULL); -- Rx Grafton/Newmarket
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71505, 10788, 216, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71527, 3005, 142, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71529, 3005, 150, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71531, 3005, 158, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71533, 10788, 142, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71534, 10788, 150, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71535, 10788, 158, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71539, 3005, 42, 286);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71544, 10788, 42, 286);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71547, 3005, 458, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71549, 3005, 466, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71553, 10788, 458, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71554, 10788, 466, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71555, 10788, 474, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71619, 3005, 345, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71621, 3005, 353, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71625, 10788, 353, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71687, 3005, 278, 457);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71689, 3005, 286, 457);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71693, 10788, 278, 457);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71694, 10788, 286, 457);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71719, 3005, 355, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71727, 3005, 2, 217);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71729, 3005, 506, 217);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71731, 3005, 202, 217);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71757, 3005, 481, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71761, 3005, 497, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71777, 3005, 58, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71781, 3005, 74, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71784, 10788, 66, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71797, 3005, 127, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71799, 3005, 135, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71817, 3005, 366, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71819, 3005, 374, NULL); -- Rx Baldwin/Mt Albert
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71821, 3005, 382, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71833, 10788, 310, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71837, 3005, 79, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71841, 3005, 95, NULL); -- Rx Mission Bay
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71857, 3005, 152, 568);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71859, 3005, 160, 568);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71863, 10788, 152, 568);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71864, 10788, 160, 568);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71869, 3005, 448, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71871, 3005, 456, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71911, 3005, 426, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71927, 3005, 175, 576);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71931, 3005, 191, 576);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71953, 10788, 55, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71954, 10788, 63, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71955, 10788, 71, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71971, 3005, 168, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71977, 3005, 482, 574);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71979, 3005, 490, 574);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71991, 3005, 431, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71997, 3005, 151, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 71999, 3005, 159, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72001, 3005, 167, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72003, 10788, 151, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72004, 10788, 159, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72005, 10788, 167, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72031, 3005, 146, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72037, 3005, 230, 851);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72039, 3005, 238, 851);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72043, 10788, 230, 851);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72044, 10788, 238, 851);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72053, 10788, 179, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72111, 3005, 51, 233);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72115, 10788, 51, 233);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72117, 3005, 198, 847);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72119, 3005, 206, 847);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72124, 10788, 206, 847);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72149, 3005, 505, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72150, 10837, 505, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72151, 3005, 509, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72152, 10837, 509, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72154, 10788, 505, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72155, 10788, 509, 850);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72158, 10837, 461, 182);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72162, 10837, 502, 182);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72163, 10788, 461, 182);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72174, 10788, 485, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72177, 3005, 500, 848);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72179, 3005, 507, 848);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72183, 10788, 500, 848);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 72184, 10788, 507, 848);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 73257, 3005, 223, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 73261, 3005, 239, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 73267, 3005, 111, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 73273, 10788, 111, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 73275, 10788, 127, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74347, 3005, 300, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74367, 3005, 105, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74369, 3005, 113, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74381, 3005, 196, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74407, 3005, 400, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 74409, 3005, 408, NULL);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 76343, 10813, 330, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77024, 10813, 128, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77033, 10813, 75, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77035, 10813, 91, 839);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77043, 10813, 421, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77044, 10813, 429, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77094, 10813, 399, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77153, 10813, 427, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77184, 10813, 12, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77213, 10813, 422, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77215, 10813, 438, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77223, 10813, 484, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77224, 10813, 492, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77233, 10813, 462, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77235, 10813, 478, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77343, 10813, 92, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77344, 10813, 100, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 77353, 10813, 68, 852);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80553, 10813, 36, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80593, 10813, 228, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80595, 10813, 244, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80614, 10813, 255, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80615, 10813, 263, 270);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80623, 10813, 361, 294);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80625, 10813, 377, 294);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80634, 10813, 370, NULL); -- Rx Meadowbank
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80663, 10813, 213, 1);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80664, 10813, 221, 1);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80695, 10813, 119, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80703, 10813, 210, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80704, 10813, 218, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80714, 10813, 496, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80715, 10813, 504, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80773, 10813, 338, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80775, 10813, 354, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80784, 10813, 452, 671);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80785, 10813, 460, 671);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80863, 10813, 289, NULL); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80865, 10813, 305, NULL); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80873, 10813, 176, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80875, 10813, 192, 571);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80884, 10813, 249, 841);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80903, 10813, 368, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80905, 10813, 384, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80943, 10813, 248, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80945, 10813, 264, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80953, 10813, 73, 843);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80955, 10813, 89, 843);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80973, 10813, 217, 842);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80983, 10813, 392, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80984, 10813, 400, NULL); -- Rx Grafton
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80985, 10813, 408, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 80993, 10813, 11, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81044, 10813, 437, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81045, 10813, 445, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81073, 10813, 56, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81074, 10813, 64, 578);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81083, 10813, 104, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81084, 10813, 112, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81085, 10813, 120, 654);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81113, 10813, 313, 849);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81114, 10813, 321, 849);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81123, 10813, 434, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81125, 10813, 450, 548);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81224, 10813, 94, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81283, 10813, 60, NULL); -- Constellation Station
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81363, 10813, 193, 456);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81414, 3005, 88, NULL); -- TODO Check Frequency
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81423, 10813, 265, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81484, 10813, 13, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81494, 10813, 274, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81505, 10813, 216, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81533, 10813, 142, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81534, 10813, 158, 846);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81544, 10813, 42, 286);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81553, 10813, 458, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81554, 10813, 466, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81555, 10813, 474, 844);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81604, 10813, 105, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81783, 10813, 58, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81803, 10813, 127, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81824, 10813, 374, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81833, 10813, 310, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81874, 10813, 448, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81875, 10813, 456, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81953, 10813, 55, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81954, 10813, 63, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81955, 10813, 71, 13);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 81994, 10813, 423, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82004, 10813, 159, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82005, 10813, 167, 845);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82035, 10813, 146, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82115, 10813, 51, 233);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82124, 10813, 206, 847);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82163, 10813, 461, 182);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82165, 10813, 502, 182);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 82183, 10813, 500, 848);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 83265, 10813, 239, NULL); -- Red Beach
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 83274, 10813, 119, NULL); -- Orewa
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 83465, 10813, 510, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84413, 10813, 400, NULL); -- Silverdale Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84414, 10813, 408, NULL); -- Silverdale Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84463, 10813, 494, NULL); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84464, 10813, 502, NULL); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84465, 10813, 510, NULL); -- Silverdale Shops
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 84405, 10813, 256, NULL);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269655, 3005, 458, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269657, 3005, 466, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269659, 3005, 474, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269663, 10788, 474, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269897, 3005, 10, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269899, 3005, 18, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269917, 3005, 83, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269919, 3005, 91, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269955, 3005, 20, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269957, 3005, 28, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269959, 3005, 36, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269965, 3005, 93, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269967, 3005, 101, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269969, 3005, 109, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 269975, 3005, 69, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270037, 3005, 17, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270287, 3005, 317, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270289, 3005, 325, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270595, 3005, 333, NULL); -- Pokeno
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270597, 3005, 341, NULL); -- Pokeno
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270599, 3005, 249, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 270857, 3005, 58, NULL); -- Tuakau
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 279662, 10813, 466, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 279901, 10813, 2, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 280043, 10813, 25, NULL);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589857, 3005, 112, NULL); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589861, 10788, 104, NULL); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589862, 10788, 112, NULL); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589863, 10788, 120, NULL); -- Takanini South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589867, 3005, 136, NULL); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589871, 10813, 128, NULL); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589872, 10788, 136, NULL); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589873, 10788, 144, NULL); -- Papakura Ex
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589875, 3005, 464, NULL); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589877, 3005, 472, NULL); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589879, 3005, 480, NULL); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589882, 10788, 472, NULL); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589883, 10788, 480, NULL); -- Drury
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589887, 3005, 424, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589889, 3005, 432, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589903, 10788, 96, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589905, 3005, 313, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589906, 10837, 313, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589907, 3005, 321, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589908, 10837, 321, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589909, 3005, 329, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589911, 10788, 313, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589912, 10788, 321, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589915, 3005, 10, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589917, 3005, 18, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589919, 3005, 26, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589921, 10788, 10, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589923, 10788, 26, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589925, 3005, 252, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589927, 3005, 260, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589929, 3005, 268, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589931, 10788, 252, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589932, 10788, 260, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589933, 10788, 268, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589935, 3005, 320, 563);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589939, 3005, 336, 563);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589943, 10813, 336, 563);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589955, 3005, 224, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589957, 3005, 232, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589959, 3005, 240, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589963, 10813, 240, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589977, 3005, 355, NULL); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589982, 10788, 355, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589997, 3005, 376, NULL); -- Papakura South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 589999, 3005, 384, NULL); -- Papakura South
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590005, 3005, 409, 852);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590009, 3005, 425, 852);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590011, 10788, 409, 852);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590013, 10788, 425, 852);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590017, 3005, 284, NULL); -- Manukau NW?
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590019, 3005, 292, NULL); -- Manukau NW?
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590022, 3005, 284, NULL); -- Manukau NW? Should be 10788
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590023, 10788, 292, NULL); -- Manukau NW?
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590025, 3005, 169, 438);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590029, 3005, 185, 438);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590031, 10788, 169, 438);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590039, 3005, 507, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590041, 10788, 491, NULL); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590043, 10788, 507, NULL); -- Rx Mangere
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590047, 3005, 304, NULL); -- Rx Wiri
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590053, 10788, 312, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590067, 3005, 162, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590072, 10788, 162, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590077, 3005, 245, 692);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590079, 3005, 253, 692);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590082, 10788, 245, 692);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590083, 10788, 253, 692);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590087, 3005, 437, 690);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590089, 3005, 445, 690);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590092, 10788, 437, 690);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590093, 10788, 445, 690);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590145, 3005, 477, NULL); -- Rx Otahuhu/Westfield
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590149, 3005, 493, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590151, 10788, 477, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590155, 3005, 107, 683);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590159, 3005, 123, 683);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590163, 10788, 123, 683);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590197, 3005, 64, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590235, 3005, 333, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590237, 3005, 341, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590239, 3005, 349, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590243, 10788, 348, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590247, 3005, 259, 698);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590249, 3005, 267, 698);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590251, 10788, 251, 698);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590252, 10788, 259, 698);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590253, 10788, 267, 698);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590283, 10788, 99, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590287, 3005, 139, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590289, 3005, 147, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590292, 10788, 139, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590293, 10788, 147, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590295, 3005, 309, 688);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590297, 3005, 317, 688);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590299, 3005, 325, 688);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590301, 10788, 309, 688);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590302, 10788, 317, 688);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590305, 3005, 444, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590317, 3005, 283, 853);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590319, 3005, 291, 853);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590322, 10788, 283, 853);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590325, 3005, 227, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590327, 3005, 235, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590329, 3005, 243, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590331, 10788, 227, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590332, 10788, 235, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590333, 10788, 243, NULL); -- Favona
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590355, 3005, 108, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590357, 3005, 116, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590361, 10788, 108, NULL); -- Otahuhu Interchange
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590362, 10788, 116, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590399, 3005, 469, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590403, 10788, 469, NULL); -- Rx New Lynn/Fruitvale
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590405, 3005, 261, NULL); -- Avondale
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590407, 3005, 269, NULL); -- Avondale
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590413, 10788, 277, NULL); -- Avondale
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590417, 3005, 221, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590419, 3005, 229, NULL); -- Rx Avondale/New Lynn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590423, 10788, 229, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590445, 3005, 165, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590449, 3005, 181, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590451, 10788, 165, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590453, 10788, 181, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590469, 3005, 301, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590507, 3005, 164, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590509, 3005, 172, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590555, 3005, 252, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590557, 3005, 260, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590567, 3005, 284, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590569, 3005, 292, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590585, 3005, 178, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590591, 10788, 178, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590595, 3005, 381, 163);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590601, 10788, 381, 163);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590602, 10788, 389, 163);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590645, 3005, 180, 587);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590647, 3005, 188, 587);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590657, 3005, 308, 219);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590675, 3005, 83, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590677, 3005, 91, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590679, 3005, 99, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590681, 10788, 83, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590682, 10788, 91, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590683, 10788, 99, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590685, 3005, 271, 637);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590687, 3005, 279, 637);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590691, 10788, 271, 637);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590692, 10788, 279, 637);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590695, 3005, 487, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590697, 3005, 495, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590699, 3005, 503, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590701, 10788, 487, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590702, 10788, 495, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590703, 10788, 503, 627);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590707, 3005, 447, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590749, 3005, 242, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590771, 10788, 228, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590777, 3005, 379, NULL); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590782, 10788, 379, NULL); -- Rx Otahuhu/Westfield
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590795, 3005, 36, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590815, 3005, 299, NULL); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590819, 3005, 315, NULL); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590821, 10788, 299, NULL); -- Mangere Tidal Rd
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590823, 10788, 315, NULL); -- Mangere Tidal Road
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590827, 3005, 451, NULL); -- Middlemore
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590829, 3005, 459, NULL); -- Middlemore
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590833, 10788, 459, NULL); -- Middlemore
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590839, 3005, 435, NULL); -- Rx Kelston/New Lynn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590885, 3005, 204, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590891, 10788, 204, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590915, 3005, 93, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590925, 3005, 35, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590927, 3005, 43, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590955, 3005, 272, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 590959, 3005, 388, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591095, 3005, 395, NULL); -- Rx Otahuhu Stn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591101, 10788, 395, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591102, 10788, 403, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591105, 3005, 189, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591107, 3005, 197, NULL); -- Rx Sylvia Park/Panmure
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591111, 10788, 189, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591112, 10788, 197, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591163, 10788, 78, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591197, 3005, 398, NULL); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591199, 3005, 406, NULL); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591202, 10788, 398, NULL); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591203, 10788, 406, NULL); -- Ellerslie Commercial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591235, 3005, 198, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591241, 10788, 198, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591335, 3005, 25, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591337, 3005, 33, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591339, 3005, 41, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591341, 10788, 25, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591342, 10788, 33, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591343, 10788, 41, 689);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591541, 10788, 30, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591587, 3005, 14, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591589, 3005, 22, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591592, 10788, 14, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 591593, 10788, 22, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 594935, 3005, 25,  295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 594937, 3005, 33,  295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 594939, 3005, 41, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 594942, 10788, 33, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 594943, 10788, 41, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595639, 3005, 133, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595643, 10788, 133, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595809, 3005, 219, NULL); -- West Tamaki Road
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595875, 3005, 21, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595877, 3005, 29, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595879, 3005, 37, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595882, 10788, 29, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 595883, 10788, 37, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596299, 3005, 75, NULL); -- Rx Panmure/Glen Innes
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596415, 3005, 45, NULL); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596417, 3005, 53, NULL); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596419, 3005, 61, NULL); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596421, 10788, 45, NULL); -- Stonefields
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596485, 3005, 290, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596487, 3005, 298, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596489, 3005, 306, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596491, 10788, 290, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 596492, 10788, 298, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 598597, 3005, 211, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 598602, 10788, 211, NULL);

INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599862, 10813, 112, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599863, 10813, 120, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599871, 10813, 128, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599872, 10813, 136, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599873, 10813, 144, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599882, 10813, 472, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599883, 10813, 480, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599901, 10813, 80, NULL); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599902, 10813, 88, NULL); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599903, 10813, 96, NULL); -- Takanini North
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599911, 10813, 313, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599912, 10813, 321, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599913, 10813, 329, 341);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599922, 10813, 18, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599923, 10813, 26, 377);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599931, 10813, 252, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599933, 10813, 268, 708);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599941, 10813, 320, 563);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599943, 10813, 336, 563);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599962, 10813, 232, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 599963, 10813, 240, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600011, 10813, 409, NULL); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600013, 10813, 425, NULL); -- Wiri Industrial
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600023, 10813, 292, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600032, 10813, 177, 438);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600033, 10813, 185, 438);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600051, 10813, 296, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600052, 10813, 304, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600053, 10813, 312, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600072, 10813, 162, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600073, 10813, 170, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600151, 10813, 477, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600153, 10813, 493, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600242, 10813, 341, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600272, 10813, 352, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600273, 10813, 360, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600311, 10813, 444, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600331, 10813, 227, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600362, 3005, 116, NULL); -- Otahuhu Interchange TODO Check Frequency
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600403, 10813, 469, NULL); -- Rx New Lynn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600411, 10813, 261, NULL); -- Avondale TBC
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600412, 10813, 269, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600423, 10813, 229, NULL); -- Rx Avondale/New Lynn
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600451, 10813, 165, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600453, 10813, 181, 296);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600591, 10813, 178, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600602, 10813, 389, 163);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600641, 10813, 38, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600643, 10813, 54, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600651, 10813, 180, 587);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600653, 10813, 196, 587);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600661, 10813, 300, 219);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600662, 10813, 308, 219);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600663, 10813, 316, 219);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600681, 10813, 83, 123);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600782, 10813, 379, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600832, 10813, 451, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600833, 10813, 459, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600843, 10813, 435, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600941, 10813, 468, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 600942, 10813, 476, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 601101, 10813, 395, NULL); -- Rx Otahuhu/Westfield
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 601102, 10813, 403, NULL); -- Rx Middlemore/Otahuhu
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 601202, 10813, 398, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 601241, 10813, 198, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 604941, 10813, 25, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 604942, 10813, 33, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 604943, 10813, 41, 295);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 605643, 10813, 133, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 605882, 10813, 29, 544);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 606303, 10813, 75, NULL);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 606491, 10813, 290, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 606492, 10813, 298, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 606493, 10813, 306, 205);
INSERT INTO cell_umts (mcc, mnc, lcid, uarfcn, psc, location) VALUES (530, 24, 606542, 10813, 17, NULL);
