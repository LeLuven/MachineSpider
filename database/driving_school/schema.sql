CREATE TABLE "adressen"
(
	"adresse_id"                   INTEGER,
	"zeile_1_nummer_gebäude"       VARCHAR(80),
	"ort"                          VARCHAR(50),
	"postleitzahl"                 VARCHAR(20),
	"bundesland_provinz_landkreis" VARCHAR(50),
	"land"                         VARCHAR(50),
	PRIMARY KEY ("adresse_id")
);

CREATE TABLE "fahrzeuge"
(
	"fahrzeug_id"     INTEGER,
	"fahrzeugdetails" VARCHAR(255),
	PRIMARY KEY ("fahrzeug_id")
);

CREATE TABLE "personal"
(
	"personal_id"                             INTEGER,
	"adresse_der_mitarbeiter"                 INTEGER NOT NULL,
	"nickname"                                VARCHAR(80),
	"vorname"                                 VARCHAR(80),
	"mittlerer_name"                          VARCHAR(80),
	"nachname"                                VARCHAR(80),
	"geburtsdatum"                            DATETIME,
	"datum_des_dienstantritts"                DATETIME,
	"datum_des_ausscheidens_aus_dem_personal" DATETIME,
	PRIMARY KEY ("personal_id"),
	FOREIGN KEY ("adresse_der_mitarbeiter") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "kunden"
(
	"kunden_id"           INTEGER,
	"kunden_adresse_id"   INTEGER NOT NULL,
	"kundenstatuscode"    VARCHAR(15) NOT NULL,
	"datum_wurde_kunde"   DATETIME,
	"geburtsdatum"        DATETIME,
	"vorname"             VARCHAR(80),
	"nachname"            VARCHAR(80),
	"ausstehender_betrag" DOUBLE,
	"e_mail_adresse"      VARCHAR(250),
	"telefonnummer"       VARCHAR(255),
	"handynummer"         VARCHAR(255),
	PRIMARY KEY ("kunden_id"),
	FOREIGN KEY ("kunden_adresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "kundenzahlungen"
(
	"kunden_id"        INTEGER NOT NULL,
	"datum_zahlung"    DATETIME NOT NULL,
	"zahlungsart_code" VARCHAR(10) NOT NULL,
	"zahlungsbetrag"   DOUBLE,
	PRIMARY KEY ("kunden_id", "datum_zahlung"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "unterricht"
(
	"lektion_id"          INTEGER,
	"kunden_id"           INTEGER NOT NULL,
	"lektion_status_code" VARCHAR(15) NOT NULL,
	"personal_id"         INTEGER,
	"fahrzeug_id"         INTEGER NOT NULL,
	"unterrichtsdatum"    DATETIME,
	"unterrichtszeit"     VARCHAR(10),
	"preis"               DOUBLE,
	PRIMARY KEY ("lektion_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id"),
	FOREIGN KEY ("personal_id") REFERENCES "personal" ("personal_id"),
	FOREIGN KEY ("fahrzeug_id") REFERENCES "fahrzeuge" ("fahrzeug_id")
);

BEGIN TRANSACTION;
INSERT INTO "adressen" VALUES (1, '3904 Stroman Passage', 'Port Melyssa', '14445', 'Georgia', 'USA');
INSERT INTO "adressen" VALUES (2, '053 Quigley Island', 'Hagenesfurt', '22194', 'Kentucky', 'USA');
INSERT INTO "adressen" VALUES (3, '00704 Zoe Alley', 'Lake Elaina', '08938', 'Georgia', 'USA');
INSERT INTO "adressen" VALUES (4, '484 O''Hara Drive', 'Buckridgehaven', '00005', 'Oregon', 'USA');
INSERT INTO "adressen" VALUES (5, '354 Frederik Ridge', 'Powlowskichester', '27559', 'Ohio', 'USA');
INSERT INTO "adressen" VALUES (6, '376 Kallie Tunnel Apt. 784', 'Elviebury', '63768', 'Connecticut', 'USA');
INSERT INTO "adressen" VALUES (7, '56461 Baumbach Well Suite 634', 'Lockmanfurt', '34975', 'Washington', 'USA');
INSERT INTO "adressen" VALUES (8, '29085 Dejah Pine Suite 059', 'Lake Rafaela', '80376', 'WestVirginia', 'USA');
INSERT INTO "adressen" VALUES (9, '535 Ariel Brook', 'Port Jackelinemouth', '85954', 'Maine', 'USA');
INSERT INTO "adressen" VALUES (10, '2291 Larkin Ports', 'South Richieport', '95098', 'Idaho', 'USA');
INSERT INTO "adressen" VALUES (11, '37698 Hahn Curve Apt. 572', 'South Eugene', '99903', 'Alabama', 'USA');
INSERT INTO "adressen" VALUES (12, '7089 Mueller Forks', 'New Bernieceburgh', '38197', 'Louisiana', 'USA');
INSERT INTO "adressen" VALUES (13, '43235 Jazmin Mountain Suite 251', 'Ericamouth', '75074', 'Louisiana', 'USA');
INSERT INTO "adressen" VALUES (14, '4834 Schaefer Light Suite 947', 'Damianfort', '61121', 'Connecticut', 'USA');
INSERT INTO "adressen" VALUES (15, '9260 Streich Mountain', 'West Edmondview', '43988', 'Kentucky', 'USA');

INSERT INTO "fahrzeuge" VALUES (1, 'Van');
INSERT INTO "fahrzeuge" VALUES (2, 'Truck');
INSERT INTO "fahrzeuge" VALUES (3, 'Car');

INSERT INTO "personal" VALUES (1, 14, 'thompson.constantin', 'Janessa', 'Amara', 'Sawayn', '2010-12-08 16:55:14', '2017-04-27 03:21:26', '2018-03-23 22:53:12');
INSERT INTO "personal" VALUES (2, 3, 'santos45', 'Camylle', 'Icie', 'Weissnat', '2015-08-01 13:22:43', '2016-06-06 08:54:28', '2018-03-10 15:25:00');
INSERT INTO "personal" VALUES (3, 5, 'ynader', 'Kaitlin', 'Stephania', 'Mertz', '1994-05-17 05:32:11', '2018-01-02 12:24:24', '2018-03-24 10:11:08');
INSERT INTO "personal" VALUES (4, 1, 'lsenger', 'Rebekah', 'Sherwood', 'Hermann', '2003-01-16 06:29:11', '2017-10-21 17:20:57', '2018-03-04 17:13:53');
INSERT INTO "personal" VALUES (5, 14, 'ledner.jamie', 'Jedidiah', 'Dejon', 'Herzog', '2015-08-10 11:37:39', '2016-05-16 20:56:53', '2018-03-08 04:23:14');
INSERT INTO "personal" VALUES (6, 12, 'bogisich.geovany', 'Eulalia', 'Tre', 'Maggio', '1998-04-27 12:55:05', '2017-08-27 19:19:44', '2018-02-28 08:26:10');
INSERT INTO "personal" VALUES (7, 13, 'weldon.kling', 'Queenie', 'Madelyn', 'Macejkovic', '2007-06-11 20:03:28', '2017-06-04 14:30:41', '2018-03-08 05:16:29');
INSERT INTO "personal" VALUES (8, 1, 'gabe21', 'Titus', 'Duane', 'Durgan', '2005-05-02 06:23:36', '2016-05-26 00:55:07', '2018-03-05 18:30:12');
INSERT INTO "personal" VALUES (9, 4, 'ymiller', 'Margie', 'Caesar', 'Doyle', '1995-06-03 08:09:17', '2017-12-22 03:06:32', '2018-03-08 12:31:16');
INSERT INTO "personal" VALUES (10, 2, 'sbrown', 'Jaleel', 'Maiya', 'Rogahn', '1996-09-24 09:51:42', '2016-06-05 22:22:23', '2018-03-14 07:14:37');
INSERT INTO "personal" VALUES (11, 1, 'nicholaus92', 'Winnifred', 'Liam', 'Jast', '2000-06-13 18:09:11', '2016-05-01 02:22:45', '2018-03-09 05:08:35');
INSERT INTO "personal" VALUES (12, 7, 'edwin.hudson', 'Lincoln', 'Benny', 'Carroll', '1996-03-09 08:19:49', '2016-11-05 01:43:52', '2018-03-06 23:17:41');
INSERT INTO "personal" VALUES (13, 1, 'norma73', 'Ernestina', 'Clarabelle', 'Mraz', '2004-05-19 14:11:13', '2016-11-13 20:44:23', '2018-02-26 17:56:31');
INSERT INTO "personal" VALUES (14, 6, 'bkunze', 'Ludie', 'Ulices', 'Kuphal', '2000-11-16 06:55:12', '2017-08-30 15:08:37', '2018-03-02 01:48:15');
INSERT INTO "personal" VALUES (15, 3, 'weissnat.vincenzo', 'Simeon', 'Mayra', 'Turner', '1997-03-29 10:55:45', '2017-02-20 18:45:20', '2018-03-01 17:10:03');

INSERT INTO "kunden" VALUES (1, 13, 'Bad Customer', '2016-05-11 17:03:48', '1998-12-15 13:24:40', 'Carole', 'Bernhard', 255.0, 'everette.goyette@example.org', '07278206718', '861-638-9797');
INSERT INTO "kunden" VALUES (2, 10, 'Bad Customer', '2015-11-16 22:52:14', '1995-07-17 12:13:16', 'Genevieve', 'Terry', 7256.0, 'huel.jana@example.org', '+14(5)2351480248', '578-518-4785x612');
INSERT INTO "kunden" VALUES (3, 10, 'Good Customer', '2016-04-08 00:28:15', '1994-06-21 01:34:56', 'Clara', 'Ortiz', 9443.0, 'hilario.sporer@example.org', '374-483-2758x85087', '1-197-686-2849x8761');
INSERT INTO "kunden" VALUES (4, 8, 'Good Customer', '2016-07-22 15:53:44', '1993-02-07 05:40:26', 'Jordy', 'Tromp', 3751.0, 'afranecki@example.com', '218.550.1362', '081-097-3684');
INSERT INTO "kunden" VALUES (5, 2, 'Bad Customer', '2017-11-12 04:34:44', '1991-02-10 00:42:17', 'Millie', 'Bruen', 5687.0, 'asha.kilback@example.org', '1-618-535-9750', '00659133944');
INSERT INTO "kunden" VALUES (6, 9, 'Good Customer', '2017-04-16 05:12:21', '1993-03-08 08:48:42', 'Amya', 'Spinka', 3900.0, 'kozey.citlalli@example.org', '1-673-962-8158x7646', '(780)719-4206x033');
INSERT INTO "kunden" VALUES (7, 1, 'Bad Customer', '2015-06-24 03:50:04', '1996-11-07 05:30:55', 'Marina', 'Koelpin', 8144.0, 'mayert.judy@example.com', '(662)490-3108', '848-099-2095x785');
INSERT INTO "kunden" VALUES (8, 10, 'Bad Customer', '2017-10-05 14:15:46', '1998-09-18 04:45:01', 'Dianna', 'Trantow', 9500.0, 'kroberts@example.org', '206-054-0689x05861', '739-333-6966x187');
INSERT INTO "kunden" VALUES (9, 12, 'Bad Customer', '2016-02-17 08:26:23', '1991-12-05 02:50:15', 'Leif', 'Mertz', 7093.0, 'mariela28@example.org', '753.921.0871', '1-387-258-1016x96963');
INSERT INTO "kunden" VALUES (10, 1, 'Bad Customer', '2017-11-25 01:42:26', '1996-08-29 00:03:08', 'Rylan', 'Goodwin', 1000.0, 'nichole59@example.com', '1-387-884-0656', '+45(6)4872981083');
INSERT INTO "kunden" VALUES (11, 13, 'Good Customer', '2016-11-30 10:37:41', '1994-05-07 01:32:16', 'Ray', 'Kohler', 9447.0, 'karina.carroll@example.net', '(297)122-0086', '577-584-4864');
INSERT INTO "kunden" VALUES (12, 9, 'Bad Customer', '2016-05-13 07:38:23', '1993-07-09 11:11:36', 'Omer', 'Leuschke', 2099.0, 'myrl.lind@example.net', '417.136.2900x672', '200.830.8723');
INSERT INTO "kunden" VALUES (13, 7, 'Good Customer', '2016-09-04 23:08:20', '1988-09-19 14:45:56', 'Sigrid', 'Schmeler', 2255.0, 'wehner.harold@example.com', '192-395-2411', '+57(9)4602098297');
INSERT INTO "kunden" VALUES (14, 10, 'Good Customer', '2016-03-18 06:14:18', '1996-05-23 01:21:54', 'Estelle', 'Grant', 5494.0, 'ehowell@example.com', '1-875-045-0806', '1-401-108-8016x078');
INSERT INTO "kunden" VALUES (15, 1, 'Bad Customer', '2015-09-25 13:59:21', '1996-08-30 06:17:50', 'Dameon', 'Sanford', 9332.0, 'kitty.hand@example.net', '(729)396-4354x3576', '(630)964-2426');

INSERT INTO "kundenzahlungen" VALUES (11, '2018-02-05 18:44:46', 'Direct Debit', 9570.93);
INSERT INTO "kundenzahlungen" VALUES (2, '2018-02-24 10:07:05', 'Direct Debit', 8180.26);
INSERT INTO "kundenzahlungen" VALUES (14, '2018-02-27 20:08:53', 'Direct Debit', 4610.26);
INSERT INTO "kundenzahlungen" VALUES (6, '2018-03-12 08:41:47', 'Direct Debit', 4032.33);
INSERT INTO "kundenzahlungen" VALUES (3, '2018-02-06 13:35:58', 'Credit Card', 787.12);
INSERT INTO "kundenzahlungen" VALUES (14, '2018-03-12 13:31:36', 'Credit Card', 6970.98);
INSERT INTO "kundenzahlungen" VALUES (4, '2018-02-03 15:04:36', 'Direct Debit', 6311.37);
INSERT INTO "kundenzahlungen" VALUES (7, '2018-02-15 16:38:49', 'Direct Debit', 4773.16);
INSERT INTO "kundenzahlungen" VALUES (13, '2018-02-21 05:28:49', 'Credit Card', 7440.34);
INSERT INTO "kundenzahlungen" VALUES (6, '2018-02-19 09:06:29', 'Direct Debit', 5475.26);
INSERT INTO "kundenzahlungen" VALUES (2, '2018-03-20 21:38:41', 'Direct Debit', 1708.18);
INSERT INTO "kundenzahlungen" VALUES (10, '2018-02-01 06:15:31', 'Direct Debit', 6782.84);
INSERT INTO "kundenzahlungen" VALUES (1, '2018-03-18 13:48:13', 'Direct Debit', 9886.62);
INSERT INTO "kundenzahlungen" VALUES (14, '2018-02-19 01:49:59', 'Credit Card', 3073.98);
INSERT INTO "kundenzahlungen" VALUES (12, '2018-03-06 21:36:41', 'Credit Card', 9414.74);

INSERT INTO "unterricht" VALUES (1, 6, 'Cancelled', 8, 3, '2018-02-28 10:55:36', '5', 199.0);
INSERT INTO "unterricht" VALUES (2, 8, 'Cancelled', 14, 3, '2018-03-07 16:12:36', '6', 167.0);
INSERT INTO "unterricht" VALUES (3, 6, 'Cancelled', 11, 2, '2018-03-03 15:10:16', '3', 352.0);
INSERT INTO "unterricht" VALUES (4, 8, 'Completed', 1, 2, '2018-03-17 19:02:07', '9', 306.0);
INSERT INTO "unterricht" VALUES (5, 10, 'Completed', 3, 2, '2018-03-12 00:41:59', '9', 295.0);
INSERT INTO "unterricht" VALUES (6, 5, 'Completed', 4, 2, '2018-03-07 22:03:49', '6', 492.0);
INSERT INTO "unterricht" VALUES (7, 9, 'Cancelled', 11, 1, '2018-03-08 16:05:05', '9', 231.0);
INSERT INTO "unterricht" VALUES (8, 3, 'Completed', 8, 2, '2018-03-21 06:48:45', '2', 277.0);
INSERT INTO "unterricht" VALUES (9, 2, 'Completed', 4, 2, '2018-03-05 20:05:33', '9', 456.0);
INSERT INTO "unterricht" VALUES (10, 2, 'Cancelled', 5, 2, '2018-02-26 02:36:35', '4', 495.0);
INSERT INTO "unterricht" VALUES (11, 10, 'Cancelled', 15, 1, '2018-03-04 06:55:46', '2', 223.0);
INSERT INTO "unterricht" VALUES (12, 11, 'Cancelled', 12, 2, '2018-03-16 07:08:52', '2', 184.0);
INSERT INTO "unterricht" VALUES (13, 13, 'Completed', 12, 1, '2018-03-05 18:05:31', '5', 446.0);
INSERT INTO "unterricht" VALUES (14, 11, 'Cancelled', 11, 1, '2018-03-07 11:53:32', '5', 483.0);
INSERT INTO "unterricht" VALUES (15, 3, 'Cancelled', 8, 1, '2018-03-06 21:48:51', '9', 340.0);

COMMIT;