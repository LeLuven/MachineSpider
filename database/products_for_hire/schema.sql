CREATE TABLE "rabattgutscheine"
(
	"kupon_id"          INTEGER,
	"ausstellungsdatum" DATETIME,
	"gutscheinbetrag"   DECIMAL(19,4),
	PRIMARY KEY ("kupon_id")
);

CREATE TABLE "mietartikel"
(
	"produkt_id"          INTEGER,
	"produkttyp_code"     VARCHAR(15) NOT NULL,
	"tagesmietpreis"      DECIMAL(19,4),
	"produktname"         VARCHAR(80),
	"produktbeschreibung" VARCHAR(255),
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "kunden"
(
	"kunden_id"                   INTEGER,
	"kupon_id"                    INTEGER NOT NULL,
	"guter_oder_schlechter_kunde" VARCHAR(4),
	"vorname"                     VARCHAR(80),
	"nachname"                    VARCHAR(80),
	"geschlecht"                  VARCHAR(1),
	"datum_kunde_geworden"        DATETIME,
	"datum_letzte_einstellung"    DATETIME,
	PRIMARY KEY ("kunden_id"),
	FOREIGN KEY ("kupon_id") REFERENCES "rabattgutscheine" ("kupon_id")
);

CREATE TABLE "buchungen"
(
	"buchungs_id"                      INTEGER,
	"kunden_id"                        INTEGER NOT NULL,
	"buchungsstatuscode"               VARCHAR(10) NOT NULL,
	"rückgabe_beschädigt_ja_oder_nein" VARCHAR(40),
	"buchungsstartdatum"               DATETIME,
	"buchungsenddatum"                 DATETIME,
	"anzahl_gemieteter"                VARCHAR(40),
	"zu_zahlender_betrag"              DECIMAL(19,4),
	"höhe_des_rabatts"                 DECIMAL(19,4),
	"ausstehender_betrag"              DECIMAL(19,4),
	"erstattungsbetrag"                DECIMAL(19,4),
	PRIMARY KEY ("buchungs_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "zahlungen"
(
	"zahlung_id"               INTEGER,
	"buchungs_id"              INTEGER,
	"kunden_id"                INTEGER NOT NULL,
	"zahlungsart_code"         VARCHAR(15) NOT NULL,
	"voll_bezahlter_betrag_yn" VARCHAR(1),
	"zahlungsdatum"            DATETIME,
	"fälliger_betrag"          DECIMAL(19,4),
	"gezahlter_betrag"         DECIMAL(19,4),
	PRIMARY KEY ("zahlung_id"),
	FOREIGN KEY ("buchungs_id") REFERENCES "buchungen" ("buchungs_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "gebuchte_produkte"
(
	"buchungs_id"                     INTEGER NOT NULL,
	"produkt_id"                      INTEGER NOT NULL,
	"zurückgegeben_ja_oder_nein"      VARCHAR(1),
	"spät_zurückgegeben_ja_oder_nein" VARCHAR(1),
	"gebuchte_anzahl"                 INTEGER,
	"gebuchter_betrag"                FLOAT,
	PRIMARY KEY ("buchungs_id", "produkt_id"),
	FOREIGN KEY ("buchungs_id") REFERENCES "buchungen" ("buchungs_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "mietartikel" ("produkt_id")
);

CREATE TABLE "ansicht_produktverfügbarkeit"
(
	"produkt_id"             INTEGER NOT NULL,
	"buchungs_id"            INTEGER NOT NULL,
	"status_date"            DATETIME,
	"verfügbar_ja_oder_nein" VARCHAR(1),
	PRIMARY KEY ("status_date"),
	FOREIGN KEY ("produkt_id") REFERENCES "mietartikel" ("produkt_id"),
	FOREIGN KEY ("buchungs_id") REFERENCES "buchungen" ("buchungs_id")
);

BEGIN TRANSACTION;
INSERT INTO "rabattgutscheine" VALUES (1, '2017-09-06 01:33:27', 500);
INSERT INTO "rabattgutscheine" VALUES (2, '2018-02-20 09:40:56', 686.25);
INSERT INTO "rabattgutscheine" VALUES (3, '2017-09-17 23:31:36', 501.3);
INSERT INTO "rabattgutscheine" VALUES (4, '2017-07-21 10:10:47', 370.44);
INSERT INTO "rabattgutscheine" VALUES (5, '2017-06-21 22:47:58', 399.89);
INSERT INTO "rabattgutscheine" VALUES (6, '2017-08-16 03:16:48', 689.29);
INSERT INTO "rabattgutscheine" VALUES (7, '2018-02-10 21:18:23', 508.44);
INSERT INTO "rabattgutscheine" VALUES (8, '2017-12-28 20:11:42', 666.46);
INSERT INTO "rabattgutscheine" VALUES (9, '2017-07-03 23:02:14', 685.96);
INSERT INTO "rabattgutscheine" VALUES (10, '2018-03-22 01:10:03', 175.94);
INSERT INTO "rabattgutscheine" VALUES (11, '2017-10-22 06:03:39', 607.62);
INSERT INTO "rabattgutscheine" VALUES (12, '2018-03-21 11:49:13', 523.78);
INSERT INTO "rabattgutscheine" VALUES (13, '2017-07-13 00:37:36', 770.82);
INSERT INTO "rabattgutscheine" VALUES (14, '2018-02-24 01:40:52', 547.39);
INSERT INTO "rabattgutscheine" VALUES (15, '2017-07-02 06:49:42', 245.36);

INSERT INTO "mietartikel" VALUES (1, 'Cutlery', 26.15, 'Book collection C', 'Anna Karenina');
INSERT INTO "mietartikel" VALUES (2, 'Cutlery', 15.62, 'Book collection B', 'War and Peace');
INSERT INTO "mietartikel" VALUES (3, 'Cutlery', 39.73, 'Book collection A', 'The Great Gatsby');
INSERT INTO "mietartikel" VALUES (4, 'Din_Plates', 18.5, 'DVD collection A', 'Twilight');
INSERT INTO "mietartikel" VALUES (5, 'Cutlery', 39.58, 'DVD collection B', 'One Hundred Years of Solitude');

INSERT INTO "kunden" VALUES (1, 12, 'good', 'Geovany', 'Homenick', '0', '2017-10-20 12:13:17', '2018-02-27 18:55:26');
INSERT INTO "kunden" VALUES (2, 14, 'good', 'Jailyn', 'Gerlach', '0', '2015-04-06 21:18:37', '2018-01-30 04:47:13');
INSERT INTO "kunden" VALUES (3, 7, 'good', 'Rosalee', 'Kessler', '0', '2016-02-03 16:58:11', '2018-03-04 21:30:23');
INSERT INTO "kunden" VALUES (4, 12, 'bad', 'Reba', 'Jacobs', '1', '2016-06-17 14:11:50', '2018-02-19 06:04:01');
INSERT INTO "kunden" VALUES (5, 10, 'good', 'Ericka', 'Greenholt', '0', '2016-08-11 01:50:37', '2018-02-25 04:40:15');
INSERT INTO "kunden" VALUES (6, 14, 'bad', 'Bridget', 'Ankunding', '1', '2015-04-24 02:38:16', '2018-02-10 19:44:08');
INSERT INTO "kunden" VALUES (7, 12, 'good', 'Marilou', 'Strosin', '1', '2015-12-16 08:05:53', '2018-02-01 16:48:30');
INSERT INTO "kunden" VALUES (8, 6, 'good', 'Elinore', 'Crona', '0', '2017-07-27 08:04:22', '2018-03-04 08:59:40');
INSERT INTO "kunden" VALUES (9, 7, 'good', 'German', 'Little', '1', '2017-02-28 14:40:25', '2018-03-13 21:20:05');
INSERT INTO "kunden" VALUES (10, 1, 'bad', 'Layne', 'Terry', '1', '2015-05-05 20:29:01', '2018-02-04 08:56:55');
INSERT INTO "kunden" VALUES (11, 10, 'good', 'Maximilian', 'Murphy', '0', '2015-07-21 09:24:57', '2018-03-12 09:23:41');
INSERT INTO "kunden" VALUES (12, 11, 'good', 'Vergie', 'Nicolas', '0', '2016-02-03 10:31:18', '2018-03-03 23:37:31');
INSERT INTO "kunden" VALUES (13, 2, 'good', 'Laury', 'Lemke', '1', '2017-03-18 04:37:59', '2018-03-18 17:35:43');
INSERT INTO "kunden" VALUES (14, 6, 'good', 'Tyler', 'Breitenberg', '1', '2016-04-20 21:04:35', '2018-03-03 13:46:38');
INSERT INTO "kunden" VALUES (15, 3, 'bad', 'Jamir', 'Schroeder', '1', '2016-05-25 01:12:49', '2018-02-24 11:15:29');

INSERT INTO "buchungen" VALUES (1, 7, 'Provisional', '1', '2016-12-07 23:39:17', '2018-02-01 16:39:13', '298', 214.39, 71.45, 28.22, 179.14);
INSERT INTO "buchungen" VALUES (2, 15, 'Confirmed', '1', '2017-06-16 11:42:31', '2018-02-19 21:53:31', '331', 386.92, 83.82, 57.62, 183.68);
INSERT INTO "buchungen" VALUES (3, 3, 'Confirmed', '1', '2017-04-04 11:02:43', '2018-02-01 09:30:50', '729', 351.32, 49.26, 66.01, 135.94);
INSERT INTO "buchungen" VALUES (4, 7, 'Provisional', '0', '2017-06-05 17:56:01', '2017-12-02 00:37:00', '152', 272.08, 45.06, 38.87, 100.78);
INSERT INTO "buchungen" VALUES (5, 7, 'Provisional', '1', '2016-11-06 20:54:26', '2017-10-11 03:00:15', '546', 338.1, 79.34, 32.99, 191.31);
INSERT INTO "buchungen" VALUES (6, 10, 'Confirmed', '0', '2016-06-05 05:18:17', '2018-01-14 00:29:01', '282', 209.41, 27.78, 52.62, 192.02);
INSERT INTO "buchungen" VALUES (7, 3, 'Provisional', '1', '2017-07-15 06:28:54', '2017-11-28 08:11:52', '236', 322.87, 39.27, 56.02, 126.1);
INSERT INTO "buchungen" VALUES (8, 11, 'Provisional', '0', '2016-09-26 01:09:20', '2018-03-24 21:21:32', '746', 303.3, 61.55, 68.02, 145.63);
INSERT INTO "buchungen" VALUES (9, 10, 'Provisional', '0', '2017-05-24 16:16:29', '2018-03-07 17:39:04', '846', 374.59, 50.93, 26.04, 130.87);
INSERT INTO "buchungen" VALUES (10, 3, 'Confirmed', '1', '2016-05-06 03:50:49', '2017-08-30 04:33:23', '857', 320.73, 39.16, 27.81, 112.63);
INSERT INTO "buchungen" VALUES (11, 9, 'Provisional', '1', '2017-04-11 00:39:03', '2017-10-02 07:28:09', '488', 273.28, 48.73, 73.88, 181.19);
INSERT INTO "buchungen" VALUES (12, 3, 'Provisional', '1', '2017-02-27 12:04:35', '2018-02-06 19:27:09', '914', 281.09, 26.37, 22.97, 110.39);
INSERT INTO "buchungen" VALUES (13, 8, 'Provisional', '0', '2016-11-27 17:19:40', '2018-03-04 21:42:45', '499', 286.47, 89.05, 36.79, 143.99);
INSERT INTO "buchungen" VALUES (14, 8, 'Confirmed', '1', '2016-04-25 11:04:18', '2018-01-01 10:19:20', '843', 221.57, 24.19, 64.01, 161.9);
INSERT INTO "buchungen" VALUES (15, 9, 'Provisional', '1', '2017-04-28 08:35:56', '2018-01-18 23:54:44', '994', 306.26, 78.31, 93.88, 124.95);

INSERT INTO "zahlungen" VALUES (1, 6, 15, 'Check', '1', '2018-03-09 16:28:00', 369.52, 206.27);
INSERT INTO "zahlungen" VALUES (2, 9, 12, 'Cash', '1', '2018-03-03 13:39:44', 278.6, 666.45);
INSERT INTO "zahlungen" VALUES (3, 5, 7, 'Credit Card', '0', '2018-03-22 15:00:23', 840.06, 135.7);
INSERT INTO "zahlungen" VALUES (4, 6, 1, 'Check', '0', '2018-03-22 02:28:11', 678.29, 668.4);
INSERT INTO "zahlungen" VALUES (5, 8, 11, 'Cash', '1', '2018-03-23 20:36:04', 830.25, 305.65);
INSERT INTO "zahlungen" VALUES (6, 15, 8, 'Check', '0', '2018-03-19 12:39:31', 410.1, 175.54);
INSERT INTO "zahlungen" VALUES (7, 1, 8, 'Cash', '1', '2018-03-02 06:25:45', 482.26, 602.8);
INSERT INTO "zahlungen" VALUES (8, 9, 14, 'Cash', '1', '2018-03-12 23:00:55', 653.18, 505.23);
INSERT INTO "zahlungen" VALUES (9, 3, 7, 'Direct Debit', '0', '2018-03-12 23:23:56', 686.85, 321.58);
INSERT INTO "zahlungen" VALUES (10, 13, 10, 'Credit Card', '1', '2018-03-23 13:24:33', 486.75, 681.21);
INSERT INTO "zahlungen" VALUES (11, 14, 15, 'Credit Card', '1', '2018-03-03 03:07:00', 259.18, 464.06);
INSERT INTO "zahlungen" VALUES (12, 14, 9, 'Cash', '0', '2018-02-27 10:50:39', 785.73, 685.32);
INSERT INTO "zahlungen" VALUES (13, 15, 14, 'Direct Debit', '0', '2018-03-03 14:22:51', 665.58, 307.14);
INSERT INTO "zahlungen" VALUES (14, 5, 5, 'Direct Debit', '1', '2018-03-17 15:51:52', 407.51, 704.41);
INSERT INTO "zahlungen" VALUES (15, 4, 12, 'Credit Card', '1', '2018-03-17 03:07:45', 631.93, 334.2);

INSERT INTO "gebuchte_produkte" VALUES (4, 1, '1', '1', 5, 309.73);
INSERT INTO "gebuchte_produkte" VALUES (14, 1, '1', '0', 3, 102.76);
INSERT INTO "gebuchte_produkte" VALUES (13, 3, '1', '0', 4, 151.68);
INSERT INTO "gebuchte_produkte" VALUES (11, 1, '1', '1', 1, 344.38);
INSERT INTO "gebuchte_produkte" VALUES (15, 3, '1', '0', 2, 236.13);
INSERT INTO "gebuchte_produkte" VALUES (10, 4, '1', '0', 6, 123.43);
INSERT INTO "gebuchte_produkte" VALUES (14, 5, '1', '1', 6, 351.38);
INSERT INTO "gebuchte_produkte" VALUES (11, 5, '1', '1', 3, 146.01);
INSERT INTO "gebuchte_produkte" VALUES (3, 5, '1', '1', 3, 189.16);
INSERT INTO "gebuchte_produkte" VALUES (15, 1, '1', '0', 1, 398.68);
INSERT INTO "gebuchte_produkte" VALUES (2, 4, '1', '1', 9, 290.72);
INSERT INTO "gebuchte_produkte" VALUES (1, 2, '1', '0', 5, 110.2);

INSERT INTO "ansicht_produktverfügbarkeit" VALUES (1, 5, '2018-03-18 05:25:55', '1');
INSERT INTO "ansicht_produktverfügbarkeit" VALUES (2, 5, '2018-03-21 15:20:32', '0');
INSERT INTO "ansicht_produktverfügbarkeit" VALUES (3, 11, '2018-03-25 10:20:15', '1');
INSERT INTO "ansicht_produktverfügbarkeit" VALUES (5, 11, '2018-03-22 00:16:58', '1');

COMMIT;