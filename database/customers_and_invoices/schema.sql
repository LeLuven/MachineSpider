CREATE TABLE "kunden"
(
	"kunden_id"                    INTEGER,
	"vorname_des_kunden"           VARCHAR(50),
	"mittlere_initiale_des_kunden" VARCHAR(1),
	"nachname_des_kunden"          VARCHAR(50),
	"geschlecht"                   VARCHAR(1),
	"e_mail_adresse"               VARCHAR(255),
	"login_name"                   VARCHAR(80),
	"anmeldekennwort"              VARCHAR(20),
	"telefonnummer"                VARCHAR(255),
	"stadt"                        VARCHAR(50),
	"bundesland_landkreis_provinz" VARCHAR(50),
	"land"                         VARCHAR(50),
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "produktkategorien"
(
	"produktionsart_code"     VARCHAR(15),
	"produktart_beschreibung" VARCHAR(80),
	"mwst_einstufung"         DECIMAL(19,4),
	PRIMARY KEY ("produktionsart_code")
);

CREATE TABLE "bestellungen"
(
	"auftragsnummer"       INTEGER,
	"kunden_id"            INTEGER NOT NULL,
	"datum_der_bestellung" DATETIME NOT NULL,
	"auftragsdetails"      VARCHAR(255),
	PRIMARY KEY ("auftragsnummer"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "konten"
(
	"konto_id"             INTEGER,
	"kunden_id"            INTEGER NOT NULL,
	"datum_kontoeröffnung" DATETIME,
	"kontobezeichnung"     VARCHAR(50),
	"andere_kontodetails"  VARCHAR(255),
	PRIMARY KEY ("konto_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "produkte"
(
	"produkt_id"               INTEGER,
	"übergeordnete_produkt_id" INTEGER,
	"produktionsart_code"      VARCHAR(15) NOT NULL,
	"stückpreis"               DECIMAL(19,4),
	"produktname"              VARCHAR(80),
	"produktfarbe"             VARCHAR(20),
	"produktgröße"             VARCHAR(20),
	PRIMARY KEY ("produkt_id"),
	FOREIGN KEY ("produktionsart_code") REFERENCES "produktkategorien" ("produktionsart_code")
);

CREATE TABLE "rechnungen"
(
	"rechnungsnummer" INTEGER,
	"auftragsnummer"  INTEGER NOT NULL,
	"rechnungsdatum"  DATETIME,
	PRIMARY KEY ("rechnungsnummer"),
	FOREIGN KEY ("auftragsnummer") REFERENCES "bestellungen" ("auftragsnummer")
);

CREATE TABLE "auftragspositionen"
(
	"auftragsposition_id"                INTEGER,
	"auftragsnummer"                     INTEGER NOT NULL,
	"produkt_id"                         INTEGER NOT NULL,
	"produktmenge"                       VARCHAR(50),
	"andere_angaben_zur_bestellposition" VARCHAR(255),
	PRIMARY KEY ("auftragsposition_id"),
	FOREIGN KEY ("auftragsnummer") REFERENCES "bestellungen" ("auftragsnummer"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

CREATE TABLE "finanztransaktionen"
(
	"transaktions_id"            INTEGER NOT NULL,
	"konto_id"                   INTEGER NOT NULL,
	"rechnungsnummer"            INTEGER,
	"transaktionsart"            VARCHAR(15) NOT NULL,
	"transaktionsdatum"          DATETIME,
	"transaktionsbetrag"         DECIMAL(19,4),
	"transaktionskommentar"      VARCHAR(255),
	"andere_transaktionsdetails" VARCHAR(255),
	FOREIGN KEY ("konto_id") REFERENCES "konten" ("konto_id"),
	FOREIGN KEY ("rechnungsnummer") REFERENCES "rechnungen" ("rechnungsnummer")
);

CREATE TABLE "rechnungen_einzelposten"
(
	"auftragsposition_id"        INTEGER NOT NULL,
	"rechnungsnummer"            INTEGER NOT NULL,
	"produkt_id"                 INTEGER NOT NULL,
	"produkttitel"               VARCHAR(80),
	"produktmenge"               VARCHAR(50),
	"produktpreis"               DECIMAL(19,4),
	"abgeleitete_produktkosten"  DECIMAL(19,4),
	"abgeleitete_mehrwertsteuer" DECIMAL(19,4),
	"abgeleitete_gesamtkosten"   DECIMAL(19,4),
	FOREIGN KEY ("auftragsposition_id") REFERENCES "auftragspositionen" ("auftragsposition_id"),
	FOREIGN KEY ("rechnungsnummer") REFERENCES "rechnungen" ("rechnungsnummer"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

BEGIN TRANSACTION;
INSERT INTO "kunden" VALUES (1, 'Dee', 'A', 'Larkin', '1', 'thora.torphy@example.org', 'xhartmann', '77789d292604ea04406f', '241.796.1219x37862', 'North Nellie', 'WestVirginia', 'USA');
INSERT INTO "kunden" VALUES (2, 'Brennon', 'H', 'Weimann', '0', 'roosevelt.collier@example.org', 'shayne.lesch', 'ce97a3e4539347daab96', '(943)219-4234x415', 'South Isabell', 'Oklahoma', 'USA');
INSERT INTO "kunden" VALUES (3, 'Joesph', 'K', 'Schaefer', '0', 'homenick.ambrose@example.net', 'feeney.lauriane', 'a6c7a7064c36b038d402', '(488)524-5345', 'New Nikolas', 'Arkansas', 'USA');
INSERT INTO "kunden" VALUES (4, 'Zita', 'L', 'Trantow', '0', 'destinee06@example.com', 'rubye.padberg', 'eb32d2933362d38faff7', '(193)465-6674x4952', 'Ellaburgh', 'Colorado', 'USA');
INSERT INTO "kunden" VALUES (5, 'Murl', 'B', 'Shanahan', '1', 'jovani64@example.com', 'jankunding', '398c1603aec3e9de2684', '1-546-447-9843x13741', 'North Helmerbury', 'Idaho', 'USA');
INSERT INTO "kunden" VALUES (6, 'Vesta', 'E', 'Leuschke', '1', 'philip94@example.org', 'zdeckow', 'bdbc3c18cf28303c4f6a', '+69(0)7149212554', 'North Devonte', 'Mississippi', 'USA');
INSERT INTO "kunden" VALUES (7, 'Dangelo', 'M', 'Spinka', '1', 'zullrich@example.net', 'camilla.dubuque', '180a37476c537e78d3de', '1-904-787-7320', 'West Khaliltown', 'Kansas', 'USA');
INSERT INTO "kunden" VALUES (8, 'Meaghan', 'M', 'Keeling', '0', 'pyundt@example.org', 'lowe.wilber', 'e67856613cd71f1b2884', '06015518212', 'Kenshire', 'Mississippi', 'USA');
INSERT INTO "kunden" VALUES (9, 'Abbey', 'B', 'Ruecker', '0', 'anastacio45@example.org', 'dubuque.gina', 'd7629de5171fe29106c8', '1-344-593-4896x425', 'Bruenchester', 'California', 'USA');
INSERT INTO "kunden" VALUES (10, 'Devin', 'V', 'Glover', '0', 'udeckow@example.com', 'ypowlowski', '604f9062a5a0de83ef9d', '197-955-3766', 'Lake Eusebiomouth', 'Florida', 'USA');
INSERT INTO "kunden" VALUES (11, 'Neoma', 'G', 'Hauck', '1', 'michel92@example.org', 'ahmad.hagenes', '035f2ba1e2a675c4f426', '+95(0)1523064649', 'New Rachellefort', 'Alabama', 'USA');
INSERT INTO "kunden" VALUES (12, 'Jensen', 'M', 'Muller', '0', 'lew.nicolas@example.org', 'pbecker', '5fe7c12dc3176ddf67c4', '(650)406-8761', 'Carleefort', 'Montana', 'USA');
INSERT INTO "kunden" VALUES (13, 'Kieran', 'A', 'Auer', '0', 'nnolan@example.org', 'sophia97', 'd4ade599672bccdabeee', '(157)046-6255x98627', 'Lake Freemanville', 'Kentucky', 'USA');
INSERT INTO "kunden" VALUES (14, 'Percival', 'B', 'Kessler', '1', 'jacobi.shanon@example.org', 'lucy.jast', '178613c20728eec256db', '(791)562-7792x45732', 'Port Hollie', 'Louisiana', 'USA');
INSERT INTO "kunden" VALUES (15, 'Ruby', 'K', 'Boyle', '0', 'gwolff@example.net', 'dthiel', 'eff2c0dbf972481ba23c', '1-546-302-5676', 'East Stephaniafort', 'SouthDakota', 'USA');

INSERT INTO "produktkategorien" VALUES ('Food', 'Food', 15.84);
INSERT INTO "produktkategorien" VALUES ('DVDs', 'Dvd products', 11.4);
INSERT INTO "produktkategorien" VALUES ('Books', 'Books', 13.95);
INSERT INTO "produktkategorien" VALUES ('Electronics', 'Electrical devices', 17.9);

INSERT INTO "bestellungen" VALUES (1, 12, '2012-06-27 20:49:56', NULL);
INSERT INTO "bestellungen" VALUES (2, 12, '2012-08-25 07:51:54', NULL);
INSERT INTO "bestellungen" VALUES (3, 8, '2017-11-05 15:32:38', NULL);
INSERT INTO "bestellungen" VALUES (4, 5, '2017-11-27 21:50:58', NULL);
INSERT INTO "bestellungen" VALUES (5, 15, '2015-05-17 03:05:32', NULL);
INSERT INTO "bestellungen" VALUES (6, 5, '2015-11-25 22:55:41', NULL);
INSERT INTO "bestellungen" VALUES (7, 3, '2016-04-15 03:33:59', NULL);
INSERT INTO "bestellungen" VALUES (8, 3, '2010-01-28 03:43:26', NULL);
INSERT INTO "bestellungen" VALUES (9, 2, '2017-03-08 05:42:10', NULL);
INSERT INTO "bestellungen" VALUES (10, 11, '2017-12-04 02:59:10', NULL);
INSERT INTO "bestellungen" VALUES (11, 14, '2010-10-22 06:45:16', NULL);
INSERT INTO "bestellungen" VALUES (12, 1, '2017-05-24 19:26:44', NULL);
INSERT INTO "bestellungen" VALUES (13, 10, '2015-08-06 22:40:40', NULL);
INSERT INTO "bestellungen" VALUES (14, 10, '2017-10-29 04:20:08', NULL);
INSERT INTO "bestellungen" VALUES (15, 6, '2013-10-25 17:40:25', NULL);

INSERT INTO "konten" VALUES (1, 8, '2016-07-30 22:22:24', '900', 'Regular');
INSERT INTO "konten" VALUES (2, 3, '2017-05-29 16:45:17', '520', 'VIP');
INSERT INTO "konten" VALUES (3, 8, '2012-05-04 18:50:32', '323', 'Regular');
INSERT INTO "konten" VALUES (4, 15, '2011-03-29 15:06:59', '390', 'VIP');
INSERT INTO "konten" VALUES (5, 15, '2014-08-11 18:15:14', '935', 'Regular');
INSERT INTO "konten" VALUES (6, 12, '2014-05-30 12:16:52', '371', 'Regular');
INSERT INTO "konten" VALUES (7, 13, '2015-11-03 08:04:15', '398', 'VIP');
INSERT INTO "konten" VALUES (8, 9, '2009-06-13 11:41:52', '710', 'Regular');
INSERT INTO "konten" VALUES (9, 8, '2010-10-22 13:33:45', '337', 'Regular');
INSERT INTO "konten" VALUES (10, 15, '2016-04-25 21:49:17', '429', 'VIP');
INSERT INTO "konten" VALUES (11, 13, '2012-07-09 23:40:15', '191', 'VIP');
INSERT INTO "konten" VALUES (12, 8, '2015-02-02 09:47:08', '601', 'Regular');
INSERT INTO "konten" VALUES (13, 13, '2010-06-16 09:35:00', '272', 'Regular');
INSERT INTO "konten" VALUES (14, 13, '2014-12-28 07:29:42', '861', 'VIP');
INSERT INTO "konten" VALUES (15, 6, '2008-05-04 22:15:56', '662', 'VIP');

INSERT INTO "produkte" VALUES (1, 4, 'Food', 617.95, 'Coffee Bean', 'Red', 'Medium');
INSERT INTO "produkte" VALUES (2, 4, 'Books', 558.49, 'Learning French', 'Yellow', 'Medium');
INSERT INTO "produkte" VALUES (3, 8, 'Electronics', 563.58, 'Fans', 'Black', 'Medium');
INSERT INTO "produkte" VALUES (4, 8, 'Electronics', 985.78, 'Hard Drive', 'Black', 'Small');
INSERT INTO "produkte" VALUES (5, 7, 'DVDs', 682.06, 'Arts', 'Yellow', 'Small');
INSERT INTO "produkte" VALUES (6, 7, 'Books', 469.71, 'Art History', 'Yellow', 'Small');
INSERT INTO "produkte" VALUES (7, 5, 'Books', 409.83, 'Learning English', 'Red', 'Large');
INSERT INTO "produkte" VALUES (8, 1, 'Books', 49.62, 'Menus', 'Black', 'Small');
INSERT INTO "produkte" VALUES (9, 8, 'Food', 694.31, 'Beer Menus', 'Black', 'Small');
INSERT INTO "produkte" VALUES (10, 9, 'Electronics', 937.85, 'TV', 'Red', 'Medium');
INSERT INTO "produkte" VALUES (11, 8, 'DVDs', 52.88, 'Harry Potter 1', 'Black', 'Small');
INSERT INTO "produkte" VALUES (12, 1, 'DVDs', 729.09, 'Harry Potter 2', 'Red', 'Medium');
INSERT INTO "produkte" VALUES (13, 6, 'Food', 639.76, 'Chocolate', 'Yellow', 'Small');
INSERT INTO "produkte" VALUES (14, 1, 'DVDs', 469.87, 'Harry Potter 3', 'Yellow', 'Small');
INSERT INTO "produkte" VALUES (15, 2, 'DVDs', 82.96, 'Harry Potter 4', 'Yellow', 'Large');

INSERT INTO "rechnungen" VALUES (1, 9, '2018-03-01 16:40:48');
INSERT INTO "rechnungen" VALUES (2, 9, '2018-03-20 00:21:41');
INSERT INTO "rechnungen" VALUES (3, 3, '2018-03-05 08:47:33');
INSERT INTO "rechnungen" VALUES (4, 9, '2018-02-28 19:01:06');
INSERT INTO "rechnungen" VALUES (5, 13, '2018-03-07 02:04:32');
INSERT INTO "rechnungen" VALUES (6, 8, '2018-03-16 21:57:43');
INSERT INTO "rechnungen" VALUES (7, 10, '2018-03-13 07:27:38');
INSERT INTO "rechnungen" VALUES (8, 10, '2018-03-19 17:06:30');
INSERT INTO "rechnungen" VALUES (9, 12, '2018-03-16 11:01:06');
INSERT INTO "rechnungen" VALUES (10, 11, '2018-03-01 01:44:08');
INSERT INTO "rechnungen" VALUES (11, 5, '2018-03-23 04:59:28');
INSERT INTO "rechnungen" VALUES (12, 3, '2018-03-15 21:24:13');
INSERT INTO "rechnungen" VALUES (13, 3, '2018-03-03 20:44:06');
INSERT INTO "rechnungen" VALUES (14, 4, '2018-03-19 22:38:10');
INSERT INTO "rechnungen" VALUES (15, 14, '2018-03-15 09:38:49');

INSERT INTO "auftragspositionen" VALUES (1, 4, 4, '6', NULL);
INSERT INTO "auftragspositionen" VALUES (2, 4, 10, '7', NULL);
INSERT INTO "auftragspositionen" VALUES (3, 15, 5, '4', NULL);
INSERT INTO "auftragspositionen" VALUES (4, 1, 3, '9', NULL);
INSERT INTO "auftragspositionen" VALUES (5, 2, 14, '3', NULL);
INSERT INTO "auftragspositionen" VALUES (6, 13, 12, '8', NULL);
INSERT INTO "auftragspositionen" VALUES (7, 1, 15, '3', NULL);
INSERT INTO "auftragspositionen" VALUES (8, 10, 4, '4', NULL);
INSERT INTO "auftragspositionen" VALUES (9, 14, 5, '1', NULL);
INSERT INTO "auftragspositionen" VALUES (10, 13, 9, '2', NULL);
INSERT INTO "auftragspositionen" VALUES (11, 15, 7, '5', NULL);
INSERT INTO "auftragspositionen" VALUES (12, 4, 14, '4', NULL);
INSERT INTO "auftragspositionen" VALUES (13, 12, 13, '1', NULL);
INSERT INTO "auftragspositionen" VALUES (14, 13, 14, '2', NULL);
INSERT INTO "auftragspositionen" VALUES (15, 13, 14, '6', NULL);

INSERT INTO "finanztransaktionen" VALUES (1, 13, 12, 'Payment', '2018-03-15 21:13:57', 613.96, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (2, 9, 1, 'Payment', '2018-03-13 13:27:46', 368.46, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (3, 6, 1, 'Refund', '2018-03-03 01:50:25', 1598.25, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (4, 9, 12, 'Payment', '2018-03-10 13:46:48', 540.73, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (5, 9, 2, 'Payment', '2018-03-23 04:56:12', 1214.22, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (6, 12, 3, 'Refund', '2018-03-22 21:58:37', 1903.41, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (7, 13, 14, 'Payment', '2018-03-12 03:06:52', 1585.03, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (8, 14, 15, 'Payment', '2018-03-11 21:57:47', 1425.41, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (9, 8, 12, 'Payment', '2018-03-07 04:32:54', 1517.77, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (10, 6, 15, 'Payment', '2018-03-14 19:09:07', 1477.57, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (11, 6, 13, 'Refund', '2018-03-12 22:51:05', 1567.64, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (12, 9, 6, 'Refund', '2018-03-05 19:55:23', 1781.24, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (13, 13, 12, 'Refund', '2018-03-24 12:05:11', 899.87, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (14, 11, 5, 'Refund', '2018-03-13 03:51:59', 1462.62, NULL, NULL);
INSERT INTO "finanztransaktionen" VALUES (15, 4, 14, 'Refund', '2018-02-27 14:58:30', 1979.66, NULL, NULL);

INSERT INTO "rechnungen_einzelposten" VALUES (14, 9, 5, 'prod_name', '4', 742.37, 191.11, NULL, 69.82);
INSERT INTO "rechnungen_einzelposten" VALUES (3, 9, 15, 'prod_name', '1', 814.87, 176.29, NULL, 59.56);
INSERT INTO "rechnungen_einzelposten" VALUES (4, 10, 15, 'prod_name', '8', 943.07, 73.14, NULL, 59.93);
INSERT INTO "rechnungen_einzelposten" VALUES (6, 15, 14, 'prod_name', '2', 749.6, 197.06, NULL, 82.77);
INSERT INTO "rechnungen_einzelposten" VALUES (8, 11, 10, 'prod_name', '2', 942.99, 88.43, NULL, 86.56);
INSERT INTO "rechnungen_einzelposten" VALUES (9, 11, 9, 'prod_name', '6', 486.69, 64.67, NULL, 83.4);
INSERT INTO "rechnungen_einzelposten" VALUES (8, 14, 3, 'prod_name', '3', 995.34, 28.18, NULL, 58.24);
INSERT INTO "rechnungen_einzelposten" VALUES (11, 1, 6, 'prod_name', '9', 429.05, 254.08, NULL, 79.48);
INSERT INTO "rechnungen_einzelposten" VALUES (15, 9, 3, 'prod_name', '4', 727.41, 66, NULL, 53.53);
INSERT INTO "rechnungen_einzelposten" VALUES (7, 9, 14, 'prod_name', '9', 559.95, 89.16, NULL, 45.66);
INSERT INTO "rechnungen_einzelposten" VALUES (5, 7, 8, 'prod_name', '6', 787.61, 150.04, NULL, 51.27);
INSERT INTO "rechnungen_einzelposten" VALUES (10, 10, 1, 'prod_name', '9', 781.46, 256.84, NULL, 71.22);
INSERT INTO "rechnungen_einzelposten" VALUES (10, 14, 11, 'prod_name', '7', 884.4, 249.19, NULL, 78.26);
INSERT INTO "rechnungen_einzelposten" VALUES (10, 5, 11, 'prod_name', '5', 556.36, 295.26, NULL, 61);
INSERT INTO "rechnungen_einzelposten" VALUES (8, 12, 6, 'prod_name', '8', 597.28, 188.71, NULL, 98.77);

COMMIT;