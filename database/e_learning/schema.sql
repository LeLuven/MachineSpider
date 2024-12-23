CREATE TABLE "kursautoren_und_tutoren"
(
	"autor_id"          INTEGER,
	"autor_tutor_atb"   VARCHAR(3),
	"login_name"        VARCHAR(40),
	"passwort"          VARCHAR(40),
	"persönlicher_name" VARCHAR(80),
	"mittlerer_name"    VARCHAR(80),
	"familienname"      VARCHAR(80),
	"geschlecht_mf"     VARCHAR(1),
	"adresse_zeile_1"   VARCHAR(80),
	PRIMARY KEY ("autor_id")
);

CREATE TABLE "studenten"
(
	"student_id"                  INTEGER,
	"datum_der_anmeldung"         DATETIME,
	"datum_der_letzten_anmeldung" DATETIME,
	"login_name"                  VARCHAR(40),
	"passwort"                    VARCHAR(10),
	"persönlicher_name"           VARCHAR(40),
	"mittlerer_name"              VARCHAR(40),
	"familienname"                VARCHAR(40),
	PRIMARY KEY ("student_id")
);

CREATE TABLE "fächer"
(
	"fach_id"    INTEGER,
	"fächername" VARCHAR(120),
	PRIMARY KEY ("fach_id")
);

CREATE TABLE "kurse"
(
	"kurs_id"          INTEGER,
	"autor_id"         INTEGER NOT NULL,
	"fach_id"          INTEGER NOT NULL,
	"kursname"         VARCHAR(120),
	"kursbeschreibung" VARCHAR(255),
	PRIMARY KEY ("kurs_id"),
	FOREIGN KEY ("autor_id") REFERENCES "kursautoren_und_tutoren" ("autor_id"),
	FOREIGN KEY ("fach_id") REFERENCES "fächer" ("fach_id")
);

CREATE TABLE "einschreibung_von_studenten_in_kurse"
(
	"einschreibung_id"        INTEGER,
	"student_id"              INTEGER NOT NULL,
	"kurs_id"                 INTEGER NOT NULL,
	"datum_der_einschreibung" DATETIME NOT NULL,
	"datum_des_abschlusses"   DATETIME NOT NULL,
	PRIMARY KEY ("einschreibung_id"),
	FOREIGN KEY ("student_id") REFERENCES "studenten" ("student_id"),
	FOREIGN KEY ("kurs_id") REFERENCES "kurse" ("kurs_id")
);

CREATE TABLE "student_tests_taken"
(
	"einschreibung_id"    INTEGER NOT NULL,
	"datum_test_abgelegt" DATETIME NOT NULL,
	"testergebnis"        VARCHAR(255),
	FOREIGN KEY ("einschreibung_id") REFERENCES "einschreibung_von_studenten_in_kurse" ("einschreibung_id")
);

BEGIN TRANSACTION;
INSERT INTO "kursautoren_und_tutoren" VALUES (1, '331', 'jmckenzie', 'c40fa148bdd0d2d45cd6e9ec1e685750fe07f81b', 'Cathrine', 'Ruthie', 'Grant', '0', '756 Monahan Mews
Spinkashire, NJ 64230-5098');
INSERT INTO "kursautoren_und_tutoren" VALUES (2, '975', 'heidenreich.ara', '24b0ee84063c3b017ab1839e01b7280f47f7c7c2', 'Retha', 'Corene', 'Armstrong', '0', '98623 Huels Manor
Jasttown, DE 31611');
INSERT INTO "kursautoren_und_tutoren" VALUES (3, '349', 'clementina29', 'cdaf6c3483f19e2253659a40a3aab786a3390f78', 'Darius', 'Ethyl', 'Reichel', '0', '99296 Keeling Courts
North Audreanne, IL 28272');
INSERT INTO "kursautoren_und_tutoren" VALUES (4, '782', 'wlehner', 'd34378200c9b5f72d3039fa640e7920aaec0fdf2', 'Julio', 'Aniyah', 'Nader', '1', '644 Montana Hill Suite 489
Daijamouth, CA 19587-4254');
INSERT INTO "kursautoren_und_tutoren" VALUES (5, '388', 'nyundt', '2c196efe8aee23a1b9a7e752fe63029c5879af6f', 'Yessenia', 'Zena', 'Barrows', '1', '5284 Champlin Roads
Cassinport, WY 54636');
INSERT INTO "kursautoren_und_tutoren" VALUES (6, '817', 'al75', 'e96c0bcbbbb14747747a56ff4c17354f343a5b4f', 'Adolf', 'Keira', 'Rohan', '1', '92220 Hellen Skyway Apt. 635
Rennerview, MS 81036');
INSERT INTO "kursautoren_und_tutoren" VALUES (7, '869', 'marty.bergnaum', '3e2f7bf1e6acf0d616a8703ee0050fba13bc007f', 'Logan', 'Ethelyn', 'Treutel', '1', '67541 Osborne Creek Suite 532
Bernhardview, WV 30288-1050');
INSERT INTO "kursautoren_und_tutoren" VALUES (8, '557', 'medhurst.alvah', '02d64f11de97436343a0beba41bfcf69af61be1e', 'Kelsie', 'Kennith', 'Rowe', '0', '0256 Walter Meadows Suite 523
Norbertoborough, AZ 49193');
INSERT INTO "kursautoren_und_tutoren" VALUES (9, '505', 'antonetta19', '4d8e909ae9b8888c93a2c5f1eccbd0c4ac6a01c3', 'Georgiana', 'Mathew', 'Zboncak', '0', '445 Quigley Fall
Port Antonette, IN 81992-1255');
INSERT INTO "kursautoren_und_tutoren" VALUES (10, '159', 'adam.rippin', 'b517a107b5f08fafe9628e88e7263a6f3a4a55c0', 'Deja', 'Joyce', 'Champlin', '1', '22575 Effertz Neck Apt. 046
Port Scotty, NY 67108-9197');
INSERT INTO "kursautoren_und_tutoren" VALUES (11, '229', 'dschaefer', '4f149f75ecd84afcdf27343509cdd03d81edb119', 'Ciara', 'Alejandra', 'Greenholt', '0', '425 White Brooks
Emmaleefort, IN 97850-2510');
INSERT INTO "kursautoren_und_tutoren" VALUES (12, '847', 'nellie.mosciski', 'a48e25a58b3088e9cfdaca61130555ed2c772452', 'Sheldon', 'Jayce', 'Kreiger', '1', '513 Collins Plain Apt. 829
Clementinaville, VT 59908-2793');
INSERT INTO "kursautoren_und_tutoren" VALUES (13, '613', 'qking', '6b9979a83b4a9e03ead034c8de47f1b013a3d3af', 'Madonna', 'Jaclyn', 'Effertz', '1', '139 O''Conner Circles
Virginieland, KS 23365');
INSERT INTO "kursautoren_und_tutoren" VALUES (14, '833', 'fiona77', '120ac8a5744f5b710ecaebbd8dd1633e3e33886e', 'Dusty', 'Amani', 'Crist', '1', '3602 Boehm Forest
Zulaufton, DC 35229-0366');
INSERT INTO "kursautoren_und_tutoren" VALUES (15, '974', 'ekshlerin', '6d587cec8006e3a40565e1dad2c5b5b12b475b8f', 'Shakira', 'Fritz', 'Haley', '0', '8928 Kunze Valley Apt. 747
South Jedidiahmouth, DE 28167');

INSERT INTO "studenten" VALUES (1, '2015-07-22 13:32:35', '2017-10-17 22:52:26', 'annamae.hoppe', 'db8765bb6f', 'Wilson', 'Aubrey', 'Ward');
INSERT INTO "studenten" VALUES (2, '2015-07-02 00:21:42', '2017-06-24 22:16:27', 'wmiller', '35faf8182a', 'Karson', 'Luella', 'Jaskolski');
INSERT INTO "studenten" VALUES (3, '2015-10-11 03:23:27', '2018-03-10 23:22:23', 'ahartmann', '8e064ec4e6', 'Mariela', 'Brandt', 'Legros');
INSERT INTO "studenten" VALUES (4, '2016-01-05 17:21:32', '2018-02-24 23:15:41', 'ylockman', 'a18d639a12', 'Krystel', 'Casimir', 'Langosh');
INSERT INTO "studenten" VALUES (5, '2015-04-27 10:25:31', '2017-09-05 23:04:07', 'mohamed50', 'aedd08a3b9', 'Autumn', 'Lawson', 'Schumm');
INSERT INTO "studenten" VALUES (6, '2015-05-12 03:59:32', '2017-09-09 13:19:18', 'bmarquardt', '3e72450865', 'Bernie', 'Asa', 'Zieme');
INSERT INTO "studenten" VALUES (7, '2015-09-05 10:49:02', '2017-07-17 23:13:31', 'darrin56', '35cd4a47a3', 'Jewel', 'Marianne', 'Hodkiewicz');
INSERT INTO "studenten" VALUES (8, '2015-12-06 07:43:56', '2017-08-24 19:42:33', 'eichmann.lera', '623af75b4a', 'Marshall', 'Linnea', 'Johns');
INSERT INTO "studenten" VALUES (9, '2015-08-13 03:31:42', '2017-11-25 03:14:32', 'sdaugherty', '7c90dbbfde', 'Prince', 'Kailey', 'Ziemann');
INSERT INTO "studenten" VALUES (10, '2015-04-12 11:07:48', '2017-12-11 14:29:41', 'myron.bergnaum', '5bc0d35e75', 'Alicia', 'Vicente', 'Carroll');
INSERT INTO "studenten" VALUES (11, '2015-10-15 09:36:40', '2017-05-29 19:06:35', 'gia.jacobson', '2e05a1e6a3', 'Clotilde', 'Kolby', 'Windler');
INSERT INTO "studenten" VALUES (12, '2016-03-25 18:58:58', '2018-01-07 00:15:03', 'kiarra28', 'aa33f3b875', 'Claudia', 'Karley', 'Mitchell');
INSERT INTO "studenten" VALUES (13, '2015-03-29 14:43:22', '2018-01-10 11:27:03', 'francisca48', '1c760b9d5d', 'Else', 'Camilla', 'Hartmann');
INSERT INTO "studenten" VALUES (14, '2015-08-11 01:04:31', '2017-09-15 08:10:04', 'ruthie.rolfson', '9031f3a72e', 'Cary', 'Ursula', 'O''Reilly');
INSERT INTO "studenten" VALUES (15, '2016-01-12 15:33:36', '2018-02-22 18:38:02', 'jgulgowski', '0f37421f02', 'Eliza', 'Shanel', 'Leannon');

INSERT INTO "fächer" VALUES (1, 'Computer Science');
INSERT INTO "fächer" VALUES (2, 'Arts');
INSERT INTO "fächer" VALUES (3, 'Language');

INSERT INTO "kurse" VALUES (1, 8, 1, 'database', 'database');
INSERT INTO "kurse" VALUES (2, 6, 1, 'advanced database', 'advanced database');
INSERT INTO "kurse" VALUES (3, 15, 1, 'operating system', 'operating system');
INSERT INTO "kurse" VALUES (4, 14, 2, 'Art history', 'Art history');
INSERT INTO "kurse" VALUES (5, 11, 1, 'data structure', 'data structure');
INSERT INTO "kurse" VALUES (6, 12, 3, 'English', 'English');
INSERT INTO "kurse" VALUES (7, 8, 3, 'French', 'French');
INSERT INTO "kurse" VALUES (8, 4, 3, 'Japanese', 'Japanese');
INSERT INTO "kurse" VALUES (9, 13, 1, 'AI', 'AI');
INSERT INTO "kurse" VALUES (10, 5, 3, 'Writing in French', 'Writing in French');
INSERT INTO "kurse" VALUES (11, 9, 3, 'Spanish', 'Spanish');
INSERT INTO "kurse" VALUES (12, 5, 2, 'European Arts', 'European Arts');
INSERT INTO "kurse" VALUES (13, 13, 1, 'machine learning', 'machine learning');
INSERT INTO "kurse" VALUES (14, 6, 2, 'modern Arts', 'modern Arts');
INSERT INTO "kurse" VALUES (15, 14, 2, 'Chinese Painting', 'Chinese Painting');

INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (1, 11, 2, '2017-10-09 07:09:02', '2018-02-26 07:48:52');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (2, 15, 4, '2017-11-13 12:49:33', '2018-03-04 01:24:56');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (3, 10, 8, '2017-10-17 13:50:40', '2018-03-22 02:53:01');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (4, 13, 7, '2017-09-06 06:27:15', '2018-03-07 09:45:48');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (5, 15, 10, '2017-08-20 01:07:18', '2018-03-06 00:27:09');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (6, 14, 1, '2017-09-24 15:17:26', '2018-03-01 00:08:30');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (7, 12, 9, '2017-09-21 07:05:01', '2018-03-04 22:34:37');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (8, 15, 11, '2017-12-07 02:21:13', '2018-02-27 20:06:06');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (9, 8, 9, '2017-08-02 17:21:44', '2018-03-07 00:39:37');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (10, 6, 1, '2017-10-10 10:05:03', '2018-03-19 07:34:05');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (11, 15, 11, '2017-08-17 00:16:46', '2018-03-16 09:00:44');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (12, 3, 7, '2017-11-30 11:40:56', '2018-03-02 14:38:49');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (13, 14, 10, '2017-10-26 20:42:34', '2018-03-10 16:38:28');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (14, 8, 2, '2017-07-15 12:48:43', '2018-03-18 03:23:54');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (15, 4, 8, '2017-12-09 20:49:23', '2018-02-28 09:34:51');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (16, 8, 14, '2017-12-16 15:53:06', '2018-03-22 18:04:54');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (17, 9, 7, '2017-10-29 15:39:31', '2018-03-01 07:12:39');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (18, 2, 4, '2017-11-22 18:29:18', '2018-03-09 17:56:18');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (19, 15, 15, '2017-10-23 08:23:22', '2018-02-26 23:46:25');
INSERT INTO "einschreibung_von_studenten_in_kurse" VALUES (20, 10, 14, '2017-12-04 12:16:10', '2018-03-14 23:33:47');

INSERT INTO "student_tests_taken" VALUES (12, '2018-03-25 03:27:16', 'Fail');
INSERT INTO "student_tests_taken" VALUES (10, '2018-03-25 21:50:22', 'Pass');
INSERT INTO "student_tests_taken" VALUES (7, '2018-03-21 00:32:25', 'Pass');
INSERT INTO "student_tests_taken" VALUES (7, '2018-03-25 00:44:50', 'Pass');
INSERT INTO "student_tests_taken" VALUES (4, '2018-03-25 15:06:12', 'Pass');
INSERT INTO "student_tests_taken" VALUES (16, '2018-03-25 12:00:08', 'Fail');
INSERT INTO "student_tests_taken" VALUES (16, '2018-03-25 21:22:00', 'Fail');
INSERT INTO "student_tests_taken" VALUES (19, '2018-03-24 13:22:17', 'Pass');
INSERT INTO "student_tests_taken" VALUES (19, '2018-03-25 16:59:22', 'Fail');
INSERT INTO "student_tests_taken" VALUES (4, '2018-03-25 21:41:51', 'Fail');
INSERT INTO "student_tests_taken" VALUES (9, '2018-03-19 02:04:26', 'Pass');
INSERT INTO "student_tests_taken" VALUES (5, '2018-03-22 17:07:11', 'Fail');
INSERT INTO "student_tests_taken" VALUES (17, '2018-03-23 23:47:42', 'Pass');
INSERT INTO "student_tests_taken" VALUES (2, '2018-03-22 13:10:06', 'Fail');
INSERT INTO "student_tests_taken" VALUES (2, '2018-03-19 14:48:12', 'Pass');

COMMIT;