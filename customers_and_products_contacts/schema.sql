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

CREATE TABLE "produkte"
(
	"produkt_id"      INTEGER,
	"produkttyp_code" VARCHAR(15),
	"produktname"     VARCHAR(80),
	"produktpreis"    DOUBLE,
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "kunden"
(
	"kunden_id"        INTEGER,
	"zahlungsart_code" VARCHAR(15),
	"kundennummer"     VARCHAR(20),
	"kundenname"       VARCHAR(80),
	"kundenadresse"    VARCHAR(255),
	"kundentelefon"    VARCHAR(80),
	"kunden_e_mail"    VARCHAR(80),
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "kontakte"
(
	"kontakt_id"     INTEGER,
	"kunden_id"      INTEGER NOT NULL,
	"geschlecht"     VARCHAR(1),
	"vorname"        VARCHAR(80),
	"nachname"       VARCHAR(50),
	"kontakttelefon" VARCHAR(80),
	PRIMARY KEY ("kontakt_id")
);

CREATE TABLE "kundenadresshistorie"
(
	"kunden_id"  INTEGER NOT NULL,
	"adresse_id" INTEGER NOT NULL,
	"datum_von"  DATETIME NOT NULL,
	"datum_bis"  DATETIME,
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id"),
	FOREIGN KEY ("adresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "kundenaufträge"
(
	"auftrags_id"        INTEGER,
	"kunden_id"          INTEGER NOT NULL,
	"bestelldatum"       DATETIME NOT NULL,
	"bestellstatus_code" VARCHAR(15),
	PRIMARY KEY ("auftrags_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "auftragspositionen"
(
	"auftragsposition_id" INTEGER NOT NULL,
	"auftrags_id"         INTEGER NOT NULL,
	"produkt_id"          INTEGER NOT NULL,
	"bestellmenge"        VARCHAR(80),
	FOREIGN KEY ("auftrags_id") REFERENCES "kundenaufträge" ("auftrags_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

BEGIN TRANSACTION;
INSERT INTO "adressen" VALUES (1, '4315 Kerluke Canyon Apt. 800', 'Hertafurt', '740', 'Nevada', 'USA');
INSERT INTO "adressen" VALUES (2, '319 Kozey Highway Suite 973', 'Edgardoberg', '282', 'Colorado', 'USA');
INSERT INTO "adressen" VALUES (3, '592 Frederique Ridge', 'Gilbertmouth', '167', 'Virginia', 'USA');
INSERT INTO "adressen" VALUES (4, '01868 Laverna Green', 'Lake Floyd', '041', 'Oklahoma', 'USA');
INSERT INTO "adressen" VALUES (5, '6017 Price Greens', 'Gibsonfurt', '873', 'District of Columbia', 'USA');
INSERT INTO "adressen" VALUES (6, '037 Luella Path', 'North Jairo', '126', 'Maryland', 'USA');
INSERT INTO "adressen" VALUES (7, '044 Greenfelder Fort', 'East Rickey', '564', 'Louisiana', 'USA');
INSERT INTO "adressen" VALUES (8, '2676 Connelly Islands Apt. 199', 'West Kaiatown', '770', 'Oregon', 'USA');
INSERT INTO "adressen" VALUES (9, '6830 Alexanne Forks Apt. 925', 'Agustinstad', '248', 'Illinois', 'USA');
INSERT INTO "adressen" VALUES (10, '918 Lauren Drive', 'Gleasonland', '116', 'Kentucky', 'USA');
INSERT INTO "adressen" VALUES (11, '70345 Marvin Glens Apt. 669', 'Lake Katheryn', '505', 'Kentucky', 'USA');
INSERT INTO "adressen" VALUES (12, '65854 McKenzie Tunnel', 'North Lisandroport', '202', 'Maine', 'USA');
INSERT INTO "adressen" VALUES (13, '494 Bruen Radial Apt. 723', 'Estaland', '381', 'Idaho', 'USA');
INSERT INTO "adressen" VALUES (14, '794 Doyle Lake Apt. 531', 'West Muriel', '571', 'Vermont', 'USA');
INSERT INTO "adressen" VALUES (15, '9590 Rogahn Point Apt. 466', 'Port Montytown', '037', 'SouthDakota', 'USA');

INSERT INTO "produkte" VALUES (1, 'Hardware', 'Apple', 54753982.574522);
INSERT INTO "produkte" VALUES (2, 'Clothes', 'jcrew', 30590929.528306);
INSERT INTO "produkte" VALUES (3, 'Hardware', 'Apple', 10268.85297069);
INSERT INTO "produkte" VALUES (4, 'Hardware', 'Apple', 22956668.699482);
INSERT INTO "produkte" VALUES (5, 'Clothes', 'jcrew', 5927021.8748021);
INSERT INTO "produkte" VALUES (6, 'Hardware', 'Apple', 77.109961147471);
INSERT INTO "produkte" VALUES (7, 'Hardware', 'Apple', 450.39232520498);
INSERT INTO "produkte" VALUES (8, 'Hardware', 'Sony', 4446237.9177554);
INSERT INTO "produkte" VALUES (9, 'Clothes', 'jcrew', 622.79275984494);
INSERT INTO "produkte" VALUES (10, 'Hardware', 'Sony', 7171.5933353284);
INSERT INTO "produkte" VALUES (11, 'Clothes', 'jcrew', 149.95519076938);
INSERT INTO "produkte" VALUES (12, 'Clothes', 'gucci', 593.80519929985);
INSERT INTO "produkte" VALUES (13, 'Clothes', 'gucci', 11388.26282462);
INSERT INTO "produkte" VALUES (14, 'Hardware', 'Sony', 389.91542644329);
INSERT INTO "produkte" VALUES (15, 'Clothes', 'gucci', 310488248.48788);

INSERT INTO "kunden" VALUES (1, 'Credit Card', '456', 'Kayley', '636 Chanelle Isle Apt. 846', '+87(9)5279161988', 'antonette73@example.com');
INSERT INTO "kunden" VALUES (2, 'Credit Card', '553', 'Sterling', '12174 Boyer Crossroad', '896.685.8228x2786', 'stroman.chadd@example.net');
INSERT INTO "kunden" VALUES (3, 'Credit Card', '951', 'Buford', '650 Spencer Way Apt. 584', '(192)144-4687', 'pattie.mayer@example.net');
INSERT INTO "kunden" VALUES (4, 'Direct Debit', '497', 'Caterina', '075 Skiles Expressway', '387.053.1225', 'dbeahan@example.net');
INSERT INTO "kunden" VALUES (5, 'Direct Debit', '752', 'Raymond', '8497 Huel Stravenue', '1-513-427-0125', 'bergnaum.ashton@example.com');
INSERT INTO "kunden" VALUES (6, 'Direct Debit', '838', 'Cheyenne', '058 Ben Street Apt. 034', '009-136-4509x19635', 'rhayes@example.org');
INSERT INTO "kunden" VALUES (7, 'Direct Debit', '429', 'Cecelia', '4065 Forest Vista Apt. 103', '672-559-0630x7875', 'caesar.lemke@example.net');
INSERT INTO "kunden" VALUES (8, 'Credit Card', '564', 'Brenna', '440 Aiden Ports', '1-271-345-4681x1131', 'macy.huel@example.org');
INSERT INTO "kunden" VALUES (9, 'Credit Card', '525', 'Lela', '13256 Valentina Valleys Suite 292', '838.718.8618x23239', 'vandervort.helena@example.org');
INSERT INTO "kunden" VALUES (10, 'Credit Card', '795', 'Cleo', '91702 Hilpert Pines Suite 177', '1-202-928-5395', 'xrosenbaum@example.org');
INSERT INTO "kunden" VALUES (11, 'Direct Debit', '233', 'Shany', '55270 Carter Street Apt. 214', '936.929.9929', 'kling.jesus@example.com');
INSERT INTO "kunden" VALUES (12, 'Credit Card', '586', 'Madaline', '8428 Cecile Land Apt. 192', '097-514-4641', 'brady.ernser@example.net');
INSERT INTO "kunden" VALUES (13, 'Direct Debit', '445', 'Melissa', '251 Botsford Harbors Suite 399', '529.148.1926', 'howard27@example.com');
INSERT INTO "kunden" VALUES (14, 'Direct Debit', '735', 'Orion', '10823 Rollin Spur', '479-171-6355x66065', 'kip.abernathy@example.com');
INSERT INTO "kunden" VALUES (15, 'Direct Debit', '523', 'Ottilie', '4098 Kreiger Knoll Suite 758', '393-750-2077x72779', 'morton06@example.net');

INSERT INTO "kontakte" VALUES (1, 4, 'male', 'Cierra', 'Collins', '+73(2)0854391820');
INSERT INTO "kontakte" VALUES (2, 6, 'male', 'Jennifer', 'Doyle', '482-949-1364x17500');
INSERT INTO "kontakte" VALUES (3, 8, 'female', 'Carli', 'Blick', '(608)868-5069x554');
INSERT INTO "kontakte" VALUES (4, 14, 'female', 'Gustave', 'Ebert', '00414184198');
INSERT INTO "kontakte" VALUES (5, 3, 'male', 'Danika', 'Bauch', '1-368-227-6322');
INSERT INTO "kontakte" VALUES (6, 9, 'female', 'Rachelle', 'Stamm', '048-342-0880x5170');
INSERT INTO "kontakte" VALUES (7, 10, 'male', 'Sid', 'Legros', '658.850.7946x9993');
INSERT INTO "kontakte" VALUES (8, 7, 'female', 'Adella', 'Streich', '1-613-226-7727');
INSERT INTO "kontakte" VALUES (9, 4, 'male', 'Etha', 'Raynor', '385-123-4556');
INSERT INTO "kontakte" VALUES (10, 15, 'female', 'Skye', 'Ratke', '+62(3)0497423927');
INSERT INTO "kontakte" VALUES (11, 10, 'female', 'Leif', 'Buckridge', '+96(5)1807022818');
INSERT INTO "kontakte" VALUES (12, 6, 'female', 'Shyann', 'Hills', '(842)564-7057x121');
INSERT INTO "kontakte" VALUES (13, 3, 'male', 'Darion', 'Leannon', '1-279-181-8737');
INSERT INTO "kontakte" VALUES (14, 8, 'female', 'Amani', 'Kunze', '405-058-1659');
INSERT INTO "kontakte" VALUES (15, 14, 'female', 'Hellen', 'Little', '136.724.5322');

INSERT INTO "kundenadresshistorie" VALUES (12, 7, '2015-07-23 14:37:18', '2018-03-07 12:04:20');
INSERT INTO "kundenadresshistorie" VALUES (12, 2, '2016-11-06 14:33:12', '2018-03-14 21:36:28');
INSERT INTO "kundenadresshistorie" VALUES (3, 9, '2011-11-19 12:17:36', '2018-03-22 10:20:16');
INSERT INTO "kundenadresshistorie" VALUES (13, 15, '2009-02-16 23:04:20', '2018-03-07 17:47:47');
INSERT INTO "kundenadresshistorie" VALUES (3, 12, '2008-06-22 21:50:44', '2018-03-13 00:08:29');
INSERT INTO "kundenadresshistorie" VALUES (11, 10, '2012-04-09 18:10:36', '2018-03-11 20:16:56');
INSERT INTO "kundenadresshistorie" VALUES (11, 10, '2014-11-17 15:11:26', '2018-03-08 23:31:30');
INSERT INTO "kundenadresshistorie" VALUES (2, 13, '2011-01-02 21:42:29', '2018-02-25 19:55:00');
INSERT INTO "kundenadresshistorie" VALUES (13, 11, '2015-05-01 12:44:46', '2018-03-24 06:20:36');
INSERT INTO "kundenadresshistorie" VALUES (12, 3, '2011-06-02 02:53:28', '2018-03-10 00:47:18');
INSERT INTO "kundenadresshistorie" VALUES (6, 1, '2013-06-14 23:07:04', '2018-03-16 14:49:28');
INSERT INTO "kundenadresshistorie" VALUES (14, 12, '2008-10-13 04:37:27', '2018-03-19 10:10:53');
INSERT INTO "kundenadresshistorie" VALUES (13, 5, '2012-03-16 17:42:30', '2018-02-27 07:31:19');
INSERT INTO "kundenadresshistorie" VALUES (7, 13, '2012-11-19 09:20:49', '2018-03-11 20:11:21');
INSERT INTO "kundenadresshistorie" VALUES (7, 3, '2012-11-09 07:15:16', '2018-03-09 12:03:31');
INSERT INTO "kundenadresshistorie" VALUES (2, 4, '2011-11-02 17:31:41', '2018-03-07 05:29:10');
INSERT INTO "kundenadresshistorie" VALUES (9, 13, '2010-03-25 08:23:20', '2018-03-09 16:41:55');
INSERT INTO "kundenadresshistorie" VALUES (6, 12, '2017-10-25 07:35:59', '2018-03-11 21:40:52');
INSERT INTO "kundenadresshistorie" VALUES (7, 3, '2009-05-22 04:42:28', '2018-03-18 11:13:27');
INSERT INTO "kundenadresshistorie" VALUES (12, 9, '2016-12-23 04:42:07', '2018-03-20 01:13:38');

INSERT INTO "kundenaufträge" VALUES (1, 2, '2009-07-19 13:40:49', 'Completed');
INSERT INTO "kundenaufträge" VALUES (2, 2, '1976-05-28 15:02:44', 'Part');
INSERT INTO "kundenaufträge" VALUES (3, 6, '1979-03-29 02:47:13', 'Completed');
INSERT INTO "kundenaufträge" VALUES (4, 4, '2003-01-17 00:06:12', 'Part');
INSERT INTO "kundenaufträge" VALUES (5, 13, '1992-04-19 21:42:58', 'Completed');
INSERT INTO "kundenaufträge" VALUES (6, 4, '1972-03-17 21:42:29', 'Part');
INSERT INTO "kundenaufträge" VALUES (7, 10, '2002-01-20 01:52:53', 'Part');
INSERT INTO "kundenaufträge" VALUES (8, 2, '1985-01-03 05:22:09', 'Part');
INSERT INTO "kundenaufträge" VALUES (9, 9, '2016-09-17 03:00:47', 'Completed');
INSERT INTO "kundenaufträge" VALUES (10, 5, '1971-12-04 19:14:18', 'Completed');
INSERT INTO "kundenaufträge" VALUES (11, 10, '1993-05-08 14:12:06', 'Completed');
INSERT INTO "kundenaufträge" VALUES (12, 10, '1998-06-14 21:22:53', 'Completed');
INSERT INTO "kundenaufträge" VALUES (13, 9, '1997-08-02 09:44:57', 'Part');
INSERT INTO "kundenaufträge" VALUES (14, 3, '1979-07-13 17:19:40', 'Part');
INSERT INTO "kundenaufträge" VALUES (15, 1, '2007-01-19 07:54:50', 'Completed');

INSERT INTO "auftragspositionen" VALUES (1, 9, 15, '3');
INSERT INTO "auftragspositionen" VALUES (2, 8, 12, '7');
INSERT INTO "auftragspositionen" VALUES (3, 11, 9, '9');
INSERT INTO "auftragspositionen" VALUES (4, 15, 2, 'male');
INSERT INTO "auftragspositionen" VALUES (5, 13, 3, '3');
INSERT INTO "auftragspositionen" VALUES (6, 3, 6, '4');
INSERT INTO "auftragspositionen" VALUES (7, 7, 4, '8');
INSERT INTO "auftragspositionen" VALUES (8, 6, 2, '7');
INSERT INTO "auftragspositionen" VALUES (9, 3, 15, '2');
INSERT INTO "auftragspositionen" VALUES (10, 4, 12, '5');
INSERT INTO "auftragspositionen" VALUES (11, 14, 11, '8');
INSERT INTO "auftragspositionen" VALUES (12, 6, 2, '7');
INSERT INTO "auftragspositionen" VALUES (13, 7, 5, '9');
INSERT INTO "auftragspositionen" VALUES (14, 5, 13, '4');
INSERT INTO "auftragspositionen" VALUES (15, 7, 3, '8');

COMMIT;