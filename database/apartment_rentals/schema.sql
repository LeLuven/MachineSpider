CREATE TABLE "mehrfamilienhäuser"
(
	"gebäude_id"                 INTEGER NOT NULL,
	"gebäude_kurzname"           CHAR(15),
	"gebäude_vollständiger_name" VARCHAR(80),
	"gebäudebeschreibung"        VARCHAR(255),
	"adresse_des_gebäudes"       VARCHAR(255),
	"gebäudemanager"             VARCHAR(50),
	"gebäude_telefon"            VARCHAR(80),
	PRIMARY KEY ("gebäude_id"),
	UNIQUE ("gebäude_id")
);

CREATE TABLE "gäste"
(
	"gast_id"             INTEGER NOT NULL,
	"geschlechtscode"     CHAR(1),
	"gast_vorname"        VARCHAR(80),
	"nachname_des_gastes" VARCHAR(80),
	"geburtsdatum"        DATETIME,
	PRIMARY KEY ("gast_id"),
	UNIQUE ("gast_id")
);

CREATE TABLE "wohnungen"
(
	"wohnung_id"              INTEGER NOT NULL,
	"gebäude_id"              INTEGER NOT NULL,
	"wohnungstyp_code"        CHAR(15),
	"wohnungsnummer"          CHAR(10),
	"anzahl_der_badezimmer"   INTEGER,
	"anzahl_der_schlafzimmer" INTEGER,
	"zimmeranzahl"            CHAR(5),
	PRIMARY KEY ("wohnung_id"),
	FOREIGN KEY ("gebäude_id") REFERENCES "mehrfamilienhäuser" ("gebäude_id"),
	UNIQUE ("wohnung_id")
);

CREATE TABLE "wohnungseinrichtungen"
(
	"wohnung_id"       INTEGER NOT NULL,
	"einrichtungscode" CHAR(15) NOT NULL,
	PRIMARY KEY ("wohnung_id", "einrichtungscode"),
	FOREIGN KEY ("wohnung_id") REFERENCES "wohnungen" ("wohnung_id")
);

CREATE TABLE "wohnungen_buchungen"
(
	"wohnung_buchung_id" INTEGER NOT NULL,
	"wohnung_id"         INTEGER,
	"gast_id"            INTEGER NOT NULL,
	"buchungsstatuscode" CHAR(15) NOT NULL,
	"buchungsstartdatum" DATETIME,
	"buchungsenddatum"   DATETIME,
	PRIMARY KEY ("wohnung_buchung_id"),
	FOREIGN KEY ("wohnung_id") REFERENCES "wohnungen" ("wohnung_id"),
	FOREIGN KEY ("gast_id") REFERENCES "gäste" ("gast_id"),
	UNIQUE ("wohnung_buchung_id")
);

CREATE TABLE "ansicht_einheit_status"
(
	"wohnung_id"             INTEGER,
	"wohnung_buchung_id"     INTEGER,
	"statusdatum"            DATETIME NOT NULL,
	"verfügbar_ja_oder_nein" BIT,
	PRIMARY KEY ("statusdatum"),
	FOREIGN KEY ("wohnung_id") REFERENCES "wohnungen" ("wohnung_id"),
	FOREIGN KEY ("wohnung_buchung_id") REFERENCES "wohnungen_buchungen" ("wohnung_buchung_id")
);

BEGIN TRANSACTION;
INSERT INTO "mehrfamilienhäuser" VALUES (133, 'Normandie Court', 'Normandie Court', 'Studio', '7950 Casper Vista Apt. 176
Marquiseberg, CA 70496', 'Emma', '(948)040-1064x387');
INSERT INTO "mehrfamilienhäuser" VALUES (153, 'Mercedes House', 'Mercedes House', 'Studio', '354 Otto Villages
Charliefort, VT 71664', 'Brenden', '915-617-2408x832');
INSERT INTO "mehrfamilienhäuser" VALUES (191, 'The Eugene', 'The Eugene', 'Flat', '71537 Gorczany Inlet
Wisozkburgh, AL 08256', 'Melyssa', '(609)946-0491');
INSERT INTO "mehrfamilienhäuser" VALUES (196, 'VIA 57 WEST', 'VIA 57 WEST', 'Studio', '959 Ethel Viaduct
West Efrainburgh, DE 40074', 'Kathlyn', '681.772.2454');
INSERT INTO "mehrfamilienhäuser" VALUES (225, 'Columbus Square', 'Columbus Square', 'Studio', '0703 Danika Mountains Apt. 362
Mohrland, AL 56839-5028', 'Kyle', '1-724-982-9507x640');
INSERT INTO "mehrfamilienhäuser" VALUES (532, 'Avalon Park', 'Avalon Park', 'Duplex', '6827 Kessler Parkway Suite 908
Ahmedberg, WI 48788', 'Albert', '376-017-3538');
INSERT INTO "mehrfamilienhäuser" VALUES (556, 'Peter Cooper Village', 'Peter Cooper Village', 'Flat', '861 Narciso Glens Suite 392
East Ottis, ND 73970', 'Darlene', '1-224-619-0295x13195');
INSERT INTO "mehrfamilienhäuser" VALUES (624, 'Stuyvesant Town', 'Stuyvesant Town', 'Studio', '101 Queenie Mountains Suite 619
New Korbinmouth, KS 88726-1376', 'Marie', '(145)411-6406');
INSERT INTO "mehrfamilienhäuser" VALUES (644, 'The Anthem', 'The Anthem', 'Flat', '50804 Mason Isle Suite 844
West Whitney, ID 66511', 'Ewald', '(909)086-5221x3455');
INSERT INTO "mehrfamilienhäuser" VALUES (673, 'Barclay Tower', 'Barclay Tower', 'Flat', '1579 Runte Forges Apt. 548
Leuschkeland, OK 12009-8683', 'Rogers', '1-326-267-3386x613');
INSERT INTO "mehrfamilienhäuser" VALUES (734, 'Windsor Court', 'Windsor Court', 'Studio', '601 Graham Roads
Port Luz, VA 29660-6703', 'Olaf', '(480)480-7401');
INSERT INTO "mehrfamilienhäuser" VALUES (744, 'Silver Towers', 'Silver Towers', 'Flat', '1844 Armstrong Stravenue Suite 853
Myrnatown, CT 13528', 'Claude', '1-667-728-2287x3158');
INSERT INTO "mehrfamilienhäuser" VALUES (790, 'Biltmore Plaza', 'Biltmore Plaza', 'Duplex', '489 Josh Orchard Apt. 998
Sipesview, DE 69053', 'Sydni', '544-148-5565x2847');
INSERT INTO "mehrfamilienhäuser" VALUES (808, 'Petersfield', 'Petersfield', 'Studio', '54686 Christopher Circles Apt. 321
Daytonland, ID 88081-3991', 'Juvenal', '318-398-8140');
INSERT INTO "mehrfamilienhäuser" VALUES (968, 'The Clinton', 'The Clinton', 'Flat', '012 Arnoldo Mountain
Gerholdland, ID 23342', 'Holly', '1-605-511-1973x25011');

INSERT INTO "gäste" VALUES (1, 'Male', 'Kip', 'DuBuque', '1995-11-04 07:09:57');
INSERT INTO "gäste" VALUES (2, 'Unknown', 'Rebeca', 'Runolfsdottir', '1974-05-12 21:53:58');
INSERT INTO "gäste" VALUES (3, 'Female', 'Keon', 'Treutel', '1974-08-20 09:28:05');
INSERT INTO "gäste" VALUES (4, 'Female', 'Gabe', 'Bode', '2007-09-11 19:01:39');
INSERT INTO "gäste" VALUES (5, 'Female', 'Lou', 'Grady', '1997-01-15 17:37:40');
INSERT INTO "gäste" VALUES (6, 'Unknown', 'Josefina', 'Jerde', '1978-03-08 04:43:04');
INSERT INTO "gäste" VALUES (7, 'Female', 'Mozell', 'Toy', '1997-01-20 17:11:31');
INSERT INTO "gäste" VALUES (8, 'Unknown', 'Keith', 'Hoeger', '2001-06-18 20:05:55');
INSERT INTO "gäste" VALUES (9, 'Female', 'Crystal', 'Runolfsson', '1971-01-04 04:22:58');
INSERT INTO "gäste" VALUES (10, 'Female', 'Nikki', 'Lehner', '1980-06-20 18:15:39');
INSERT INTO "gäste" VALUES (11, 'Male', 'Gregoria', 'Schowalter', '2015-02-03 23:34:13');
INSERT INTO "gäste" VALUES (12, 'Male', 'Louvenia', 'Crona', '1983-08-26 15:45:08');
INSERT INTO "gäste" VALUES (13, 'Female', 'Else', 'Roberts', '1971-11-02 01:51:56');
INSERT INTO "gäste" VALUES (14, 'Female', 'Juvenal', 'Kautzer', '2003-07-29 22:08:15');
INSERT INTO "gäste" VALUES (15, 'Female', 'Tamia', 'Mante', '2013-02-22 11:26:22');

INSERT INTO "wohnungen" VALUES (1, 808, 'Flat', 'Suite 645', 1, 3, '7');
INSERT INTO "wohnungen" VALUES (2, 624, 'Flat', 'Apt. 585', 2, 4, '5');
INSERT INTO "wohnungen" VALUES (3, 225, 'Studio', 'Apt. 908', 1, 6, '7');
INSERT INTO "wohnungen" VALUES (4, 225, 'Duplex', 'Suite 749', 1, 5, '8');
INSERT INTO "wohnungen" VALUES (5, 744, 'Flat', 'Suite 307', 2, 4, '9');
INSERT INTO "wohnungen" VALUES (6, 191, 'Studio', 'Apt. 187', 3, 5, '9');
INSERT INTO "wohnungen" VALUES (7, 790, 'Studio', 'Suite 088', 2, 4, '6');
INSERT INTO "wohnungen" VALUES (8, 153, 'Flat', 'Suite 693', 2, 3, '9');
INSERT INTO "wohnungen" VALUES (9, 624, 'Studio', 'Apt. 940', 1, 4, '8');
INSERT INTO "wohnungen" VALUES (10, 225, 'Duplex', 'Apt. 859', 2, 3, '6');
INSERT INTO "wohnungen" VALUES (11, 734, 'Flat', 'Apt. 794', 1, 5, '3');
INSERT INTO "wohnungen" VALUES (12, 673, 'Duplex', 'Apt. 477', 2, 6, '3');
INSERT INTO "wohnungen" VALUES (13, 744, 'Duplex', 'Apt. 411', 2, 5, '9');
INSERT INTO "wohnungen" VALUES (14, 225, 'Flat', 'Apt. 837', 2, 4, '8');
INSERT INTO "wohnungen" VALUES (15, 790, 'Duplex', 'Suite 634', 3, 6, '8');

INSERT INTO "wohnungseinrichtungen" VALUES (1, 'Boardband');
INSERT INTO "wohnungseinrichtungen" VALUES (2, 'Boardband');
INSERT INTO "wohnungseinrichtungen" VALUES (3, 'Gym');
INSERT INTO "wohnungseinrichtungen" VALUES (5, 'Swimming Pool');
INSERT INTO "wohnungseinrichtungen" VALUES (6, 'Cable TV');
INSERT INTO "wohnungseinrichtungen" VALUES (9, 'Boardband');
INSERT INTO "wohnungseinrichtungen" VALUES (15, 'Gym');

INSERT INTO "wohnungen_buchungen" VALUES (258, 10, 2, 'Provisional', '2016-09-26 17:13:49', '2017-10-07 11:38:48');
INSERT INTO "wohnungen_buchungen" VALUES (279, 15, 15, 'Provisional', '2016-04-01 06:28:08', '2017-10-25 11:08:42');
INSERT INTO "wohnungen_buchungen" VALUES (337, 8, 5, 'Provisional', '2017-03-13 16:20:14', '2018-02-19 16:59:08');
INSERT INTO "wohnungen_buchungen" VALUES (343, 4, 13, 'Confirmed', '2016-08-04 10:33:00', '2017-09-29 12:43:50');
INSERT INTO "wohnungen_buchungen" VALUES (365, 9, 12, 'Confirmed', '2017-02-11 14:34:14', '2017-10-07 20:47:19');
INSERT INTO "wohnungen_buchungen" VALUES (401, 7, 14, 'Provisional', '2016-05-24 20:09:38', '2017-10-03 01:56:21');
INSERT INTO "wohnungen_buchungen" VALUES (497, 10, 8, 'Confirmed', '2016-07-25 02:57:04', '2017-09-28 11:08:15');
INSERT INTO "wohnungen_buchungen" VALUES (526, 8, 7, 'Confirmed', '2016-11-26 05:04:31', '2018-02-25 15:15:37');
INSERT INTO "wohnungen_buchungen" VALUES (575, 6, 3, 'Provisional', '2017-05-13 18:17:20', '2017-10-06 11:15:58');
INSERT INTO "wohnungen_buchungen" VALUES (577, 12, 2, 'Provisional', '2017-03-04 02:23:49', '2018-02-06 16:57:05');
INSERT INTO "wohnungen_buchungen" VALUES (623, 4, 5, 'Provisional', '2016-06-07 05:05:18', '2017-11-13 13:59:45');
INSERT INTO "wohnungen_buchungen" VALUES (807, 11, 2, 'Provisional', '2016-04-17 12:53:59', '2018-03-20 17:32:58');
INSERT INTO "wohnungen_buchungen" VALUES (889, 10, 4, 'Confirmed', '2016-09-28 05:00:50', '2017-09-30 18:41:04');
INSERT INTO "wohnungen_buchungen" VALUES (920, 2, 2, 'Confirmed', '2017-04-07 04:53:27', '2017-11-29 12:59:42');
INSERT INTO "wohnungen_buchungen" VALUES (924, 8, 3, 'Confirmed', '2017-07-03 14:15:56', '2017-11-12 01:05:09');

INSERT INTO "ansicht_einheit_status" VALUES (11, 920, '1970-09-28 10:24:29', 1);
INSERT INTO "ansicht_einheit_status" VALUES (15, 575, '1972-03-23 22:55:53', 1);
INSERT INTO "ansicht_einheit_status" VALUES (15, 924, '1973-10-28 04:30:14', 1);
INSERT INTO "ansicht_einheit_status" VALUES (6, 497, '1976-12-18 04:03:51', 1);
INSERT INTO "ansicht_einheit_status" VALUES (12, 807, '1977-04-15 13:42:19', 1);
INSERT INTO "ansicht_einheit_status" VALUES (13, 575, '1978-12-28 11:53:34', 1);
INSERT INTO "ansicht_einheit_status" VALUES (2, 497, '1980-11-12 13:34:45', 1);
INSERT INTO "ansicht_einheit_status" VALUES (14, 401, '1985-11-05 11:46:35', 0);
INSERT INTO "ansicht_einheit_status" VALUES (11, 497, '1990-11-04 17:57:50', 1);
INSERT INTO "ansicht_einheit_status" VALUES (13, 337, '2000-02-04 07:50:09', 0);
INSERT INTO "ansicht_einheit_status" VALUES (14, 279, '2001-02-17 20:17:09', 1);
INSERT INTO "ansicht_einheit_status" VALUES (5, 337, '2003-07-25 10:13:48', 1);
INSERT INTO "ansicht_einheit_status" VALUES (1, 497, '2003-08-02 08:36:36', 1);
INSERT INTO "ansicht_einheit_status" VALUES (10, 497, '2006-02-23 05:50:04', 1);
INSERT INTO "ansicht_einheit_status" VALUES (6, 401, '2011-02-12 09:04:07', 1);
INSERT INTO "ansicht_einheit_status" VALUES (9, 623, '2011-11-06 22:08:42', 1);
INSERT INTO "ansicht_einheit_status" VALUES (14, 920, '2012-11-24 13:39:37', 0);
INSERT INTO "ansicht_einheit_status" VALUES (4, 258, '2014-12-10 13:53:21', 1);
INSERT INTO "ansicht_einheit_status" VALUES (13, 343, '2015-06-19 07:59:01', 1);
INSERT INTO "ansicht_einheit_status" VALUES (5, 889, '2015-07-15 11:06:29', 1);

COMMIT;