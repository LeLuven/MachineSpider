CREATE TABLE "räumlichkeiten"
(
	"räumlichkeit_id"  INTEGER,
	"räumlichkeitstyp" VARCHAR(15) NOT NULL,
	"raum_details"     VARCHAR(255),
	PRIMARY KEY ("räumlichkeit_id")
);

CREATE TABLE "produkte"
(
	"produkt_id"       INTEGER,
	"produktkategorie" VARCHAR(15) NOT NULL,
	"produktname"      VARCHAR(80),
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "kunden"
(
	"kunden_id"       INTEGER,
	"zahlungsmethode" VARCHAR(15) NOT NULL,
	"kundenname"      VARCHAR(80),
	"kundentelefon"   VARCHAR(80),
	"kunden_e_mail"   VARCHAR(80),
	"kundenadresse"   VARCHAR(255),
	"kunden_login"    VARCHAR(80),
	"kundenpasswort"  VARCHAR(10),
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "mailshot_kampagnen"
(
	"mailshot_id"         INTEGER,
	"produktkategorie"    VARCHAR(15),
	"mailshot_name"       VARCHAR(80),
	"mailshot_start_date" DATETIME,
	"mailshot_end_date"   DATETIME,
	PRIMARY KEY ("mailshot_id")
);

CREATE TABLE "kundenadressen"
(
	"kunden_id"         INTEGER NOT NULL,
	"räumlichkeit_id"   INTEGER NOT NULL,
	"datum_adresse_von" DATETIME NOT NULL,
	"adressentyp_code"  VARCHAR(15) NOT NULL,
	"datum_adresse_bis" DATETIME,
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id"),
	FOREIGN KEY ("räumlichkeit_id") REFERENCES "räumlichkeiten" ("räumlichkeit_id")
);

CREATE TABLE "kundenaufträge"
(
	"bestellung_id"                 INTEGER,
	"kunden_id"                     INTEGER NOT NULL,
	"bestellstatus_code"            VARCHAR(15) NOT NULL,
	"versandart_code"               VARCHAR(15) NOT NULL,
	"bestellzeitpunkt"              DATETIME NOT NULL,
	"bestellung_geliefert_datetime" DATETIME,
	"order_shipping_charges"        VARCHAR(255),
	PRIMARY KEY ("bestellung_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "mailshot_kunden"
(
	"mailshot_id"           INTEGER NOT NULL,
	"kunden_id"             INTEGER NOT NULL,
	"ergebnis_code"         VARCHAR(15) NOT NULL,
	"mailshot_kunden_datum" DATETIME,
	FOREIGN KEY ("mailshot_id") REFERENCES "mailshot_kampagnen" ("mailshot_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "auftragspositionen"
(
	"artikel_id"                     INTEGER NOT NULL,
	"statuscode_der_bestellposition" VARCHAR(15) NOT NULL,
	"bestellung_id"                  INTEGER NOT NULL,
	"produkt_id"                     INTEGER NOT NULL,
	"artikel_status_code"            VARCHAR(15),
	"item_delivered_datetime"        DATETIME,
	"artikel_bestellmenge"           VARCHAR(80),
	FOREIGN KEY ("bestellung_id") REFERENCES "kundenaufträge" ("bestellung_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

BEGIN TRANSACTION;
INSERT INTO "räumlichkeiten" VALUES (1, 'Warehouse', '036 Lueilwitz Harbor');
INSERT INTO "räumlichkeiten" VALUES (2, 'Warehouse', '676 Kelly Spur');
INSERT INTO "räumlichkeiten" VALUES (3, 'Residence', '27839 Carissa Tunnel Suite 048');
INSERT INTO "räumlichkeiten" VALUES (4, 'Residence', '2219 Barrows Tunnel Apt. 893');
INSERT INTO "räumlichkeiten" VALUES (5, 'Office', '38291 Jerde Light Apt. 713');
INSERT INTO "räumlichkeiten" VALUES (6, 'Office', '5585 Abbott Walk');
INSERT INTO "räumlichkeiten" VALUES (7, 'Residence', '5510 Veum Green');
INSERT INTO "räumlichkeiten" VALUES (8, 'Warehouse', '7230 Tillman Glens Suite 202');
INSERT INTO "räumlichkeiten" VALUES (9, 'Warehouse', '62282 Wiza Glen Apt. 430');
INSERT INTO "räumlichkeiten" VALUES (10, 'Office', '07318 Annetta Motorway');
INSERT INTO "räumlichkeiten" VALUES (11, 'Office', '00100 Green Mountains Apt. 653');
INSERT INTO "räumlichkeiten" VALUES (12, 'Office', '33294 William Lodge Apt. 953');
INSERT INTO "räumlichkeiten" VALUES (13, 'Office', '2760 Austin Station');
INSERT INTO "räumlichkeiten" VALUES (14, 'Residence', '5109 Jules Squares Apt. 082');
INSERT INTO "räumlichkeiten" VALUES (15, 'Office', '867 Emard Drives Apt. 066');

INSERT INTO "produkte" VALUES (1, 'Food', 'Coffee Bean');
INSERT INTO "produkte" VALUES (2, 'Electronics', 'Keyboard');
INSERT INTO "produkte" VALUES (3, 'Books', 'Four Seasons');
INSERT INTO "produkte" VALUES (4, 'Hardware', 'Mouse');
INSERT INTO "produkte" VALUES (5, 'Books', 'Life of Van gogh');
INSERT INTO "produkte" VALUES (6, 'Hardware', 'Monitor');
INSERT INTO "produkte" VALUES (7, 'Electronics', 'MP3');
INSERT INTO "produkte" VALUES (8, 'Books', 'Learning French');
INSERT INTO "produkte" VALUES (9, 'Books', 'How to read a book');
INSERT INTO "produkte" VALUES (10, 'Electronics', 'iWatch');
INSERT INTO "produkte" VALUES (11, 'Books', 'IOS Programming');
INSERT INTO "produkte" VALUES (12, 'Books', 'Everything about Amazon');
INSERT INTO "produkte" VALUES (13, 'Hardware', 'Drive');
INSERT INTO "produkte" VALUES (14, 'Food', 'Chocolate');
INSERT INTO "produkte" VALUES (15, 'Electronics', 'iPhone');

INSERT INTO "kunden" VALUES (1, 'Credit Card', 'Wendell', '(773)971-9411x759', 'rodriguez.nathanael@example.net', '618 Webster Stream Apt. 161', NULL, 'b4459ad261');
INSERT INTO "kunden" VALUES (2, 'Direct Debit', 'Gage', '(402)890-2603x6005', 'stark.elna@example.net', '0260 Walker Trace', NULL, '7905d7f1b1');
INSERT INTO "kunden" VALUES (3, 'Direct Debit', 'Elvera', '1-878-600-7193x8180', 'madyson.mclaughlin@example.org', '280 Landen Lake', NULL, '0b9f651030');
INSERT INTO "kunden" VALUES (4, 'Direct Debit', 'Stella', '+43(3)1861877192', 'kristina85@example.org', '5607 Ryann Canyon', NULL, 'f64f0fd096');
INSERT INTO "kunden" VALUES (5, 'Credit Card', 'Magdalena', '1-352-291-1721x265', 'franecki.danial@example.com', '523 Mose Hills', NULL, 'bdfdc8e91a');
INSERT INTO "kunden" VALUES (6, 'Direct Debit', 'Carlotta', '+66(7)1491041398', 'fstanton@example.net', '31932 Kailey Lodge', NULL, 'a8467590fd');
INSERT INTO "kunden" VALUES (7, 'Direct Debit', 'Leanna', '203-036-0511x96487', 'marc.schiller@example.com', '94105 Bahringer Oval Suite 178', NULL, '67e9037197');
INSERT INTO "kunden" VALUES (8, 'Direct Debit', 'Ruthie', '(840)754-4148x20545', 'elva.mccullough@example.org', '5514 Ophelia Cliffs Apt. 266', NULL, '280160b7b3');
INSERT INTO "kunden" VALUES (9, 'Credit Card', 'Donnie', '(030)521-0681x0191', 'saul30@example.net', '115 Farrell Squares Suite 599', NULL, '22dc8bfaf5');
INSERT INTO "kunden" VALUES (10, 'Direct Debit', 'Shanel', '1-957-676-9414', 'kheathcote@example.org', '80569 Crona Path Suite 165', NULL, 'd93857e0c2');
INSERT INTO "kunden" VALUES (11, 'Direct Debit', 'Osborne', '232.171.7032', 'vpowlowski@example.net', '509 Isabelle Route', NULL, 'b00e35cc0a');
INSERT INTO "kunden" VALUES (12, 'Direct Debit', 'Kyle', '291-425-7193', 'davis.rosamond@example.net', '056 Ibrahim Path Suite 669', NULL, '341f672c2c');
INSERT INTO "kunden" VALUES (13, 'Credit Card', 'Annabel', '100.220.3484', 'yoshiko.balistreri@example.org', '56955 Desmond Lake Apt. 120', NULL, '9dc50bc5b6');
INSERT INTO "kunden" VALUES (14, 'Direct Debit', 'Geovanny', '205.496.0690x53058', 'jesus.robel@example.org', '0813 Carolina Bridge Suite 488', NULL, '49f32173a2');
INSERT INTO "kunden" VALUES (15, 'Direct Debit', 'Mitchell', '698-327-5792', 'princess75@example.com', '6735 Daron Lane Apt. 271', NULL, '791b1b3e64');

INSERT INTO "mailshot_kampagnen" VALUES (1, 'food', 'US', '2018-02-15 09:52:17', '2018-03-08 14:40:20');
INSERT INTO "mailshot_kampagnen" VALUES (2, 'clothes', 'US', '2017-09-14 12:05:30', '2018-03-15 01:06:16');
INSERT INTO "mailshot_kampagnen" VALUES (3, 'food', 'FED', '2017-06-16 11:18:45', '2018-03-13 14:42:26');
INSERT INTO "mailshot_kampagnen" VALUES (4, 'clothes', 'USPS', '2017-09-27 02:35:45', '2018-03-18 11:29:56');
INSERT INTO "mailshot_kampagnen" VALUES (5, 'food', 'AL', '2017-05-20 20:05:09', '2018-03-02 21:41:46');
INSERT INTO "mailshot_kampagnen" VALUES (6, 'clothes', 'FED', '2017-10-23 05:41:45', '2018-03-03 08:01:57');
INSERT INTO "mailshot_kampagnen" VALUES (7, 'food', 'FED', '2017-11-25 03:14:25', '2018-03-05 03:08:48');
INSERT INTO "mailshot_kampagnen" VALUES (8, 'clothes', 'AL', '2017-10-22 08:46:29', '2018-03-01 13:42:09');
INSERT INTO "mailshot_kampagnen" VALUES (9, 'food', 'US', '2017-11-12 08:26:08', '2018-02-27 07:58:02');
INSERT INTO "mailshot_kampagnen" VALUES (10, 'clothes', 'USPS', '2018-01-14 21:03:10', '2018-03-19 13:07:33');
INSERT INTO "mailshot_kampagnen" VALUES (11, 'food', 'US', '2017-12-13 01:40:06', '2018-03-24 02:05:36');
INSERT INTO "mailshot_kampagnen" VALUES (12, 'clothes', 'USPS', '2018-01-20 05:22:29', '2018-03-23 07:48:46');
INSERT INTO "mailshot_kampagnen" VALUES (13, 'food', 'AL', '2017-05-08 21:14:52', '2018-03-12 12:06:50');
INSERT INTO "mailshot_kampagnen" VALUES (14, 'clothes', 'AL', '2017-06-11 23:24:31', '2018-03-23 03:36:49');
INSERT INTO "mailshot_kampagnen" VALUES (15, 'food', 'FED', '2017-11-29 00:56:35', '2018-03-17 07:54:46');
INSERT INTO "mailshot_kampagnen" VALUES (16, 'clothes', 'US', '2017-11-02 17:26:30', '2018-03-02 17:07:50');
INSERT INTO "mailshot_kampagnen" VALUES (17, 'food', 'FED', '2018-02-04 13:13:36', '2018-02-26 16:12:30');
INSERT INTO "mailshot_kampagnen" VALUES (18, 'clothes', 'USPS', '2017-12-08 10:24:12', '2018-03-20 20:10:16');
INSERT INTO "mailshot_kampagnen" VALUES (19, 'food', 'US', '2017-06-25 11:43:09', '2018-03-15 11:58:52');
INSERT INTO "mailshot_kampagnen" VALUES (20, 'food', 'US', '2017-11-15 15:58:17', '2018-03-15 06:00:47');

INSERT INTO "kundenadressen" VALUES (15, 1, '1992-08-23 21:17:38', 'Billing', '2018-02-28 20:54:58');
INSERT INTO "kundenadressen" VALUES (2, 2, '2010-02-23 02:49:50', 'Billing', '2018-03-15 18:34:41');
INSERT INTO "kundenadressen" VALUES (1, 1, '1975-12-24 10:01:37', 'Shipping', '2018-03-08 08:03:51');
INSERT INTO "kundenadressen" VALUES (3, 2, '1995-03-26 17:39:46', 'Shipping', '2018-02-27 17:42:19');
INSERT INTO "kundenadressen" VALUES (7, 1, '1929-05-14 04:29:43', 'Billing', '2018-03-16 18:51:47');
INSERT INTO "kundenadressen" VALUES (8, 4, '1939-01-15 17:55:39', 'Shipping', '2018-03-13 08:21:27');
INSERT INTO "kundenadressen" VALUES (5, 5, '1931-03-24 11:44:07', 'Shipping', '2018-03-05 02:34:01');
INSERT INTO "kundenadressen" VALUES (11, 6, '1975-04-23 20:41:01', 'Billing', '2018-03-04 03:08:46');
INSERT INTO "kundenadressen" VALUES (11, 3, '1920-08-18 04:42:55', 'Shipping', '2018-03-22 22:46:52');
INSERT INTO "kundenadressen" VALUES (11, 5, '1960-07-31 06:10:20', 'Shipping', '2018-03-09 03:34:11');
INSERT INTO "kundenadressen" VALUES (13, 6, '1990-12-19 22:02:27', 'Billing', '2018-03-24 07:12:35');
INSERT INTO "kundenadressen" VALUES (4, 8, '1985-03-18 20:46:30', 'Shipping', '2018-02-27 16:47:24');
INSERT INTO "kundenadressen" VALUES (10, 10, '1972-06-06 01:50:40', 'Billing', '2018-03-08 21:09:30');
INSERT INTO "kundenadressen" VALUES (8, 12, '1984-06-16 10:10:37', 'Billing', '2018-03-05 11:26:03');
INSERT INTO "kundenadressen" VALUES (3, 14, '2002-02-01 02:55:13', 'Billing', '2018-03-16 11:55:11');

INSERT INTO "kundenaufträge" VALUES (1, 2, 'Cancelled', 'Unspecified', '2015-06-15 18:19:26', '2018-03-20 12:00:00', '85.79');
INSERT INTO "kundenaufträge" VALUES (2, 8, 'Cancelled', 'Unspecified', '2009-07-05 20:02:55', '2018-03-20 12:00:00', '98.4');
INSERT INTO "kundenaufträge" VALUES (3, 9, 'Cancelled', 'FedEx', '2008-11-15 12:22:36', '2018-03-20 12:00:00', '36.87');
INSERT INTO "kundenaufträge" VALUES (4, 1, 'Delivered', 'UPS', '2008-10-23 06:42:10', '2018-03-20 12:00:00', '98.73');
INSERT INTO "kundenaufträge" VALUES (5, 7, 'Paid', 'FedEx', '2017-05-28 05:48:26', '2018-03-20 12:00:00', '35.63');
INSERT INTO "kundenaufträge" VALUES (6, 2, 'Cancelled', 'Unspecified', '2014-06-24 13:53:54', '2018-03-20 12:00:00', '99.26');
INSERT INTO "kundenaufträge" VALUES (7, 15, 'Cancelled', 'FedEx', '2014-08-28 15:08:12', '2018-03-20 12:00:00', '26.56');
INSERT INTO "kundenaufträge" VALUES (8, 2, 'Delivered', 'Unspecified', '2012-06-05 09:05:34', '2018-03-20 12:00:00', '77.32');
INSERT INTO "kundenaufträge" VALUES (9, 1, 'Cancelled', 'FedEx', '2009-05-30 16:13:26', '2018-03-20 12:00:00', '57.36');
INSERT INTO "kundenaufträge" VALUES (10, 14, 'Paid', 'Unspecified', '2013-08-29 03:17:04', '2018-03-20 12:00:00', '33.58');
INSERT INTO "kundenaufträge" VALUES (11, 1, 'Paid', 'Unspecified', '2015-12-29 10:39:56', '2018-03-20 12:00:00', '22.84');
INSERT INTO "kundenaufträge" VALUES (12, 12, 'Cancelled', 'Unspecified', '2016-10-20 20:59:35', '2018-03-20 12:00:00', '21.24');
INSERT INTO "kundenaufträge" VALUES (13, 12, 'Paid', 'FedEx', '2013-06-16 17:51:45', '2018-03-20 12:00:00', '31.33');
INSERT INTO "kundenaufträge" VALUES (14, 14, 'Paid', 'UPS', '2010-04-29 08:21:49', '2018-03-20 12:00:00', '46.4');
INSERT INTO "kundenaufträge" VALUES (15, 5, 'Delivered', 'FedEx', '2009-01-18 20:06:19', '2018-03-20 12:00:00', '74.28');

INSERT INTO "mailshot_kunden" VALUES (4, 3, 'Order', '2018-03-15 15:43:14');
INSERT INTO "mailshot_kunden" VALUES (10, 1, 'No Response', '2018-03-04 13:06:55');
INSERT INTO "mailshot_kunden" VALUES (15, 9, 'No Response', '2018-03-11 11:32:20');
INSERT INTO "mailshot_kunden" VALUES (20, 11, 'Order', '2018-03-01 21:39:07');
INSERT INTO "mailshot_kunden" VALUES (7, 1, 'Order', '2018-03-13 05:18:16');
INSERT INTO "mailshot_kunden" VALUES (10, 4, 'No Response', '2018-03-15 04:05:08');
INSERT INTO "mailshot_kunden" VALUES (15, 6, 'Order', '2018-03-06 21:21:38');
INSERT INTO "mailshot_kunden" VALUES (10, 13, 'Order', '2018-02-26 02:17:16');
INSERT INTO "mailshot_kunden" VALUES (15, 13, 'Order', '2018-03-07 11:19:43');
INSERT INTO "mailshot_kunden" VALUES (17, 11, 'Order', '2018-03-05 20:48:13');
INSERT INTO "mailshot_kunden" VALUES (18, 14, 'Order', '2018-03-14 01:08:29');
INSERT INTO "mailshot_kunden" VALUES (15, 6, 'Order', '2018-02-27 20:51:37');
INSERT INTO "mailshot_kunden" VALUES (18, 2, 'Order', '2018-03-20 23:40:02');
INSERT INTO "mailshot_kunden" VALUES (7, 1, 'No Response', '2018-03-03 15:29:56');
INSERT INTO "mailshot_kunden" VALUES (6, 6, 'No Response', '2018-03-05 17:35:24');

INSERT INTO "auftragspositionen" VALUES (1, 'Delivered', 10, 13, 'good', '2018-02-25 18:22:10', '6');
INSERT INTO "auftragspositionen" VALUES (2, 'Paid', 6, 7, 'good', '2018-02-27 18:04:55', '7');
INSERT INTO "auftragspositionen" VALUES (3, 'Cancelled', 8, 1, 'good', '2018-03-16 15:58:27', '4');
INSERT INTO "auftragspositionen" VALUES (4, 'Cancelled', 13, 11, 'good', '2018-03-04 18:19:12', '3');
INSERT INTO "auftragspositionen" VALUES (5, 'Paid', 11, 5, 'good', '2018-03-07 12:35:59', '6');
INSERT INTO "auftragspositionen" VALUES (6, 'Delivered', 6, 10, 'good', '2018-03-03 22:22:38', '5');
INSERT INTO "auftragspositionen" VALUES (7, 'Delivered', 7, 14, 'good', '2018-03-04 01:39:37', '6');
INSERT INTO "auftragspositionen" VALUES (8, 'Delivered', 2, 5, 'good', '2018-03-05 14:33:02', '4');
INSERT INTO "auftragspositionen" VALUES (9, 'Delivered', 6, 6, 'good', '2018-03-22 04:33:17', '6');
INSERT INTO "auftragspositionen" VALUES (10, 'Cancelled', 7, 9, 'good', '2018-03-03 00:37:19', '2');
INSERT INTO "auftragspositionen" VALUES (11, 'Paid', 15, 3, 'good', '2018-03-12 20:01:38', '1');
INSERT INTO "auftragspositionen" VALUES (12, 'Delivered', 11, 9, 'good', '2018-03-03 00:19:41', '5');
INSERT INTO "auftragspositionen" VALUES (13, 'Paid', 14, 1, 'good', '2018-03-07 15:53:54', '5');
INSERT INTO "auftragspositionen" VALUES (14, 'Paid', 15, 13, 'good', '2018-03-17 07:10:51', '9');
INSERT INTO "auftragspositionen" VALUES (15, 'Paid', 14, 9, 'good', '2018-03-05 12:04:23', '4');

COMMIT;