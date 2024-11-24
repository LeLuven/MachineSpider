CREATE TABLE "adressen"
(
	"adresse_id"                   INTEGER NOT NULL,
	"zeile_1"                      VARCHAR(80),
	"zeile_2"                      VARCHAR(80),
	"ort"                          VARCHAR(50),
	"postleitzahl"                 CHAR(20),
	"bundesland_provinz_landkreis" VARCHAR(50),
	"land"                         VARCHAR(50),
	PRIMARY KEY ("adresse_id")
);

CREATE TABLE "leute"
(
	"person_id"      INTEGER NOT NULL,
	"vorname"        VARCHAR(255),
	"mittlerer_name" VARCHAR(255),
	"nachname"       VARCHAR(255),
	"handynummer"    VARCHAR(40),
	"e_mail_adresse" VARCHAR(40),
	"anmeldename"    VARCHAR(40),
	"passwort"       VARCHAR(40),
	PRIMARY KEY ("person_id")
);

CREATE TABLE "kurse"
(
	"kurs_id"          VARCHAR(100) NOT NULL,
	"kursname"         VARCHAR(120),
	"kursbeschreibung" VARCHAR(255),
	"andere_details"   VARCHAR(255),
	PRIMARY KEY ("kurs_id")
);

CREATE TABLE "studenten"
(
	"student_id"      INTEGER NOT NULL,
	"student_details" VARCHAR(255),
	PRIMARY KEY ("student_id"),
	FOREIGN KEY ("student_id") REFERENCES "leute" ("person_id")
);

CREATE TABLE "personen_adressen"
(
	"personen_adresse_id" INTEGER NOT NULL,
	"person_id"           INTEGER NOT NULL,
	"adresse_id"          INTEGER NOT NULL,
	"datum_von"           DATETIME,
	"datum_bis"           DATETIME,
	PRIMARY KEY ("personen_adresse_id"),
	FOREIGN KEY ("person_id") REFERENCES "leute" ("person_id"),
	FOREIGN KEY ("adresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "kandidaten"
(
	"kandidaten_id"      INTEGER NOT NULL,
	"kandidaten_details" VARCHAR(255),
	PRIMARY KEY ("kandidaten_id"),
	FOREIGN KEY ("kandidaten_id") REFERENCES "leute" ("person_id")
);

CREATE TABLE "kursanmeldungen_von_studenten"
(
	"student_id"        INTEGER NOT NULL,
	"kurs_id"           INTEGER NOT NULL,
	"registration_date" DATETIME NOT NULL,
	PRIMARY KEY ("student_id", "kurs_id"),
	FOREIGN KEY ("student_id") REFERENCES "studenten" ("student_id"),
	FOREIGN KEY ("kurs_id") REFERENCES "kurse" ("kurs_id")
);

CREATE TABLE "bewerberbewertungen"
(
	"kandidaten_id"             INTEGER NOT NULL,
	"qualifikation"             CHAR(15) NOT NULL,
	"bewertungsdatum"           DATETIME NOT NULL,
	"beurteilungsergebnis_code" CHAR(15) NOT NULL,
	PRIMARY KEY ("kandidaten_id", "qualifikation"),
	FOREIGN KEY ("kandidaten_id") REFERENCES "kandidaten" ("kandidaten_id")
);

CREATE TABLE "student_course_attendance"
(
	"student_id"            INTEGER NOT NULL,
	"kurs_id"               INTEGER NOT NULL,
	"datum_der_anwesenheit" DATETIME NOT NULL,
	PRIMARY KEY ("student_id", "kurs_id"),
	FOREIGN KEY ("student_id", "kurs_id") REFERENCES "kursanmeldungen_von_studenten" ("student_id", "kurs_id")
);

BEGIN TRANSACTION;
INSERT INTO "adressen" VALUES (5, '0900 Roderick Oval
New Albina, WA 19200-7914', 'Suite 096', 'Linnealand', '862', 'Montana', 'USA');
INSERT INTO "adressen" VALUES (9, '966 Dach Ports Apt. 322
Lake Harmonyhaven, VA 65235', 'Apt. 163', 'South Minnie', '716', 'Texas', 'USA');
INSERT INTO "adressen" VALUES (29, '28550 Broderick Underpass Suite 667
Zakaryhaven, WY 22945-1534', 'Apt. 419', 'North Trystanborough', '112', 'Vermont', 'USA');
INSERT INTO "adressen" VALUES (30, '83706 Ana Trafficway Apt. 992
West Jarret, MI 01112', 'Apt. 884', 'Lake Kaley', '431', 'Washington', 'USA');
INSERT INTO "adressen" VALUES (43, '69165 Beatty Station
Haleighstad, MS 55164', 'Suite 333', 'Stephaniemouth', '559', 'Massachusetts', 'USA');
INSERT INTO "adressen" VALUES (45, '242 Pacocha Streets
East Isabellashire, ND 03506', 'Suite 370', 'O''Connellview', '514', 'NewMexico', 'USA');
INSERT INTO "adressen" VALUES (55, '801 Modesto Island Suite 306
Lacyville, VT 34059', 'Suite 764', 'New Alta', '176', 'Mississippi', 'USA');
INSERT INTO "adressen" VALUES (63, '0177 Fisher Dam
Berniershire, KS 00038-7574', 'Apt. 903', 'South Keenan', '613', 'Michigan', 'USA');
INSERT INTO "adressen" VALUES (68, '09471 Hickle Light
Port Maxime, NJ 91550-5409', 'Suite 903', 'Hannahside', '354', 'Connecticut', 'USA');
INSERT INTO "adressen" VALUES (73, '67831 Lavonne Lodge
Olsontown, DC 20894', 'Apt. 756', 'Alizeshire', '687', 'NewMexico', 'USA');
INSERT INTO "adressen" VALUES (82, '228 Fahey Land
Baileymouth, FL 06297-5606', 'Suite 087', 'South Naomibury', '079', 'Ohio', 'USA');
INSERT INTO "adressen" VALUES (88, '1770 Adriel Ramp Apt. 397
West Ashlynnchester, UT 91968', 'Apt. 617', 'East Tavaresburgh', '179', 'SouthDakota', 'USA');
INSERT INTO "adressen" VALUES (92, '8760 Eldon Squares Suite 260
Marquisestad, GA 38537', 'Apt. 435', 'Lake Devon', '244', 'SouthDakota', 'USA');
INSERT INTO "adressen" VALUES (94, '8263 Abbott Crossing Apt. 066
Oberbrunnerbury, LA 67451', 'Apt. 626', 'Boyleshire', '536', 'Kansas', 'USA');
INSERT INTO "adressen" VALUES (99, '521 Paucek Field
North Oscartown, WI 31527', 'Apt. 849', 'Terencetown', '979', 'Michigan', 'USA');

INSERT INTO "leute" VALUES (111, 'Shannon', 'Elissa', 'Senger', '01955267735', 'javier.trantow@example.net', 'pgub', '5e4ff49a61b3544da3ad7dc7e2cf28847564c64c');
INSERT INTO "leute" VALUES (121, 'Virginie', 'Jasmin', 'Hartmann', '(508)319-2970x043', 'boyer.lonie@example.com', 'bkkv', 'b063331ea8116befaa7b84c59c6a22200f5f8caa');
INSERT INTO "leute" VALUES (131, 'Dariana', 'Hayley', 'Bednar', '(262)347-9364x516', 'leila14@example.net', 'zops', 'b20b6a9f24aadeda70d54e410c3219f61fb063fb');
INSERT INTO "leute" VALUES (141, 'Verna', 'Arielle', 'Grant', '1-372-548-7538x314', 'adele.gibson@example.net', 'uuol', '7be9c03d5467d563555c51ebb3eb78e7f90832ec');
INSERT INTO "leute" VALUES (151, 'Hoyt', 'Mercedes', 'Wintheiser', '1-603-110-0647', 'stanley.monahan@example.org', 'bnto', 'c55795df86182959094b83e27900f7cf44ced570');
INSERT INTO "leute" VALUES (161, 'Mayra', 'Haley', 'Hartmann', '724-681-4161x51632', 'terry.kuhlman@example.org', 'rzxu', 'ecae473cb54601e01457078ac0cdf4a1ced837bb');
INSERT INTO "leute" VALUES (171, 'Lizeth', 'Bell', 'Bartoletti', '812.228.0645x91481', 'celestine11@example.net', 'mkou', '76a93d1d3b7becc932d203beac61d064bd54e947');
INSERT INTO "leute" VALUES (181, 'Nova', 'Amiya', 'Feest', '766-272-9964', 'oreynolds@example.com', 'qrwl', '7dce9b688636ee212294c257dd2f6b85c7f65f2e');

INSERT INTO "kurse" VALUES ('301', 'statistics', 'statistics', NULL);
INSERT INTO "kurse" VALUES ('302', 'English', 'English', NULL);
INSERT INTO "kurse" VALUES ('303', 'French', 'French', NULL);
INSERT INTO "kurse" VALUES ('304', 'database', 'database', NULL);
INSERT INTO "kurse" VALUES ('305', 'data structure', 'data structure', NULL);
INSERT INTO "kurse" VALUES ('306', 'Art history', 'Art history', NULL);

INSERT INTO "studenten" VALUES (111, 'Marry');
INSERT INTO "studenten" VALUES (121, 'Martin');
INSERT INTO "studenten" VALUES (131, 'Barry');
INSERT INTO "studenten" VALUES (141, 'Nikhil');
INSERT INTO "studenten" VALUES (151, 'John');
INSERT INTO "studenten" VALUES (161, 'Sarah');
INSERT INTO "studenten" VALUES (171, 'Joe');
INSERT INTO "studenten" VALUES (181, 'Nancy');

INSERT INTO "personen_adressen" VALUES (122, 111, 9, '2012-09-26 13:21:00', '2018-03-21 09:46:30');
INSERT INTO "personen_adressen" VALUES (257, 121, 5, '2008-07-31 02:17:25', '2018-03-09 02:11:12');
INSERT INTO "personen_adressen" VALUES (269, 131, 88, '2008-05-26 20:43:41', '2018-03-11 20:26:41');
INSERT INTO "personen_adressen" VALUES (276, 141, 99, '2014-05-10 00:32:31', '2018-03-08 06:16:47');
INSERT INTO "personen_adressen" VALUES (281, 151, 92, '2010-11-26 05:21:12', '2018-03-12 21:10:02');
INSERT INTO "personen_adressen" VALUES (340, 161, 45, '2017-05-01 17:32:26', '2018-03-09 08:45:06');
INSERT INTO "personen_adressen" VALUES (363, 171, 55, '2015-05-24 16:14:12', '2018-02-23 22:44:18');
INSERT INTO "personen_adressen" VALUES (396, 181, 82, '2013-12-26 16:57:01', '2018-03-03 16:06:17');

INSERT INTO "kandidaten" VALUES (111, 'Jane');
INSERT INTO "kandidaten" VALUES (121, 'Robert');
INSERT INTO "kandidaten" VALUES (131, 'Alex');
INSERT INTO "kandidaten" VALUES (141, 'Tao');
INSERT INTO "kandidaten" VALUES (151, 'Jack');
INSERT INTO "kandidaten" VALUES (161, 'Leo');
INSERT INTO "kandidaten" VALUES (171, 'Robin');
INSERT INTO "kandidaten" VALUES (181, 'Cindy');

INSERT INTO "kursanmeldungen_von_studenten" VALUES (111, 301, '2008-11-04 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (121, 301, '2008-10-04 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (121, 303, '2008-11-14 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (131, 303, '2008-11-05 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (141, 302, '2008-11-06 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (151, 305, '2008-11-07 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (161, 302, '2008-11-07 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (171, 301, '2008-11-07 10:35:13');
INSERT INTO "kursanmeldungen_von_studenten" VALUES (141, 301, '2008-11-08 10:35:13');

INSERT INTO "bewerberbewertungen" VALUES (111, 'A', '2010-04-07 11:44:34', 'Pass');
INSERT INTO "bewerberbewertungen" VALUES (121, 'B', '2010-04-17 11:44:34', 'Pass');
INSERT INTO "bewerberbewertungen" VALUES (131, 'D', '2010-04-05 11:44:34', 'Fail');
INSERT INTO "bewerberbewertungen" VALUES (141, 'C', '2010-04-06 11:44:34', 'Pass');
INSERT INTO "bewerberbewertungen" VALUES (151, 'B', '2010-04-09 11:44:34', 'Pass');

INSERT INTO "student_course_attendance" VALUES (111, 301, '2008-11-04 10:35:13');
INSERT INTO "student_course_attendance" VALUES (121, 301, '2012-04-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (121, 303, '2014-04-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (141, 302, '2013-04-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (171, 301, '2015-04-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (161, 302, '2014-01-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (151, 305, '2012-05-09 11:44:34');
INSERT INTO "student_course_attendance" VALUES (141, 301, '2012-09-09 11:44:34');

COMMIT;