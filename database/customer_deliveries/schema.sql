CREATE TABLE "produkte"
(
	"produkt_id"          INTEGER,
	"produktname"         VARCHAR(20),
	"produktpreis"        DECIMAL(19,4),
	"produktbeschreibung" VARCHAR(255),
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "adressen"
(
	"adresse_id"                   INTEGER,
	"adressdaten"                  VARCHAR(80),
	"ort"                          VARCHAR(50),
	"postleitzahl"                 VARCHAR(20),
	"bundesland_provinz_landkreis" VARCHAR(50),
	"land"                         VARCHAR(50),
	PRIMARY KEY ("adresse_id")
);

CREATE TABLE "kunden"
(
	"kunden_id"         INTEGER,
	"zahlungsmethode"   VARCHAR(10) NOT NULL,
	"kundenname"        VARCHAR(80),
	"kundentelefon"     VARCHAR(80),
	"kunden_e_mail"     VARCHAR(80),
	"datum_wurde_kunde" DATETIME,
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "lieferwege"
(
	"route_id"               INTEGER,
	"route_name"             VARCHAR(50),
	"andere_streckendetails" VARCHAR(255),
	PRIMARY KEY ("route_id")
);

CREATE TABLE "lkw"
(
	"lkw_nummer"      INTEGER,
	"lkw_kennzeichen" VARCHAR(20),
	"lkw_details"     VARCHAR(255),
	PRIMARY KEY ("lkw_nummer")
);

CREATE TABLE "mitarbeiter"
(
	"mitarbeiter_id"           INTEGER,
	"adresse_des_mitarbeiters" INTEGER NOT NULL,
	"mitarbeitername"          VARCHAR(80),
	"mitarbeiter_telefon"      VARCHAR(80),
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("adresse_des_mitarbeiters") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "regelmäßige_bestellungen"
(
	"reguläre_auftrags_id" INTEGER,
	"verteiler_id"         INTEGER NOT NULL,
	PRIMARY KEY ("reguläre_auftrags_id"),
	FOREIGN KEY ("verteiler_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "kundenadressen"
(
	"kunden_id"   INTEGER NOT NULL,
	"adresse_id"  INTEGER NOT NULL,
	"datum_von"   DATETIME NOT NULL,
	"adressentyp" VARCHAR(10) NOT NULL,
	"datum_bis"   DATETIME,
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id"),
	FOREIGN KEY ("adresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "zustellroutenorte"
(
	"ort_code"       VARCHAR(10),
	"route_id"       INTEGER NOT NULL,
	"ort_adresse_id" INTEGER NOT NULL,
	"ortsname"       VARCHAR(50),
	PRIMARY KEY ("ort_code"),
	FOREIGN KEY ("route_id") REFERENCES "lieferwege" ("route_id"),
	FOREIGN KEY ("ort_adresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "regelmäßig_bestellte_produkte"
(
	"reguläre_auftrags_id" INTEGER NOT NULL,
	"produkt_id"           INTEGER NOT NULL,
	FOREIGN KEY ("reguläre_auftrags_id") REFERENCES "regelmäßige_bestellungen" ("reguläre_auftrags_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

CREATE TABLE "tatsächliche_bestellungen"
(
	"actual_order_id"      INTEGER,
	"auftragsstatuscode"   VARCHAR(10) NOT NULL,
	"reguläre_auftrags_id" INTEGER NOT NULL,
	"actual_order_date"    DATETIME,
	PRIMARY KEY ("actual_order_id"),
	FOREIGN KEY ("reguläre_auftrags_id") REFERENCES "regelmäßige_bestellungen" ("reguläre_auftrags_id")
);

CREATE TABLE "tatsächliche_bestellte_produkte"
(
	"actual_order_id" INTEGER NOT NULL,
	"produkt_id"      INTEGER NOT NULL,
	FOREIGN KEY ("actual_order_id") REFERENCES "tatsächliche_bestellungen" ("actual_order_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

CREATE TABLE "bestellungen_lieferungen"
(
	"ort_code"              VARCHAR(10) NOT NULL,
	"actual_order_id"       INTEGER NOT NULL,
	"lieferstatuscode"      VARCHAR(10) NOT NULL,
	"fahrer_mitarbeiter_id" INTEGER NOT NULL,
	"lkw_nummer"            INTEGER NOT NULL,
	"lieferdatum"           DATETIME,
	FOREIGN KEY ("ort_code") REFERENCES "zustellroutenorte" ("ort_code"),
	FOREIGN KEY ("actual_order_id") REFERENCES "tatsächliche_bestellungen" ("actual_order_id"),
	FOREIGN KEY ("fahrer_mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id"),
	FOREIGN KEY ("lkw_nummer") REFERENCES "lkw" ("lkw_nummer")
);

BEGIN TRANSACTION;
INSERT INTO "produkte" VALUES (1, 'dvds', 1322.78, 'good condition');
INSERT INTO "produkte" VALUES (2, 'cloth', 6402.09, 'good condition');
INSERT INTO "produkte" VALUES (3, 'electronics', 2511.29, 'great condition');
INSERT INTO "produkte" VALUES (4, 'books', 7111.68, 'good condition');
INSERT INTO "produkte" VALUES (5, 'food', 3644.45, 'good condition');
INSERT INTO "produkte" VALUES (6, 'gift', 5022.39, 'bad condition');

INSERT INTO "adressen" VALUES (1, '92283 Lora Forges Suite 322', 'Mohrville', '271', 'Nebraska', 'USA');
INSERT INTO "adressen" VALUES (2, '17135 Jaida Fork Suite 798', 'East Brody', '940', 'Colorado', 'USA');
INSERT INTO "adressen" VALUES (3, '41099 Crist Prairie Suite 507', 'Evelinebury', '003', 'Idaho', 'USA');
INSERT INTO "adressen" VALUES (4, '615 Adams Rue Apt. 095', 'Sawaynville', '575', 'Kentucky', 'USA');
INSERT INTO "adressen" VALUES (5, '045 Marquardt Village Suite 484', 'Carterside', '827', 'California', 'USA');
INSERT INTO "adressen" VALUES (6, '203 Joseph Hills', 'Giovannaton', '960', 'Tennessee', 'USA');
INSERT INTO "adressen" VALUES (7, '6187 Feil Extension Apt. 749', 'East Frederic', '674', 'Maine', 'USA');
INSERT INTO "adressen" VALUES (8, '185 Farrell Brooks Apt. 106', 'Mosciskimouth', '076', 'Illinois', 'USA');
INSERT INTO "adressen" VALUES (9, '3720 Pagac Hollow Apt. 131', 'Alvertatown', '234', 'Wyoming', 'USA');
INSERT INTO "adressen" VALUES (10, '57136 Eichmann Ranch Suite 091', 'Gerholdtown', '297', 'Illinois', 'USA');
INSERT INTO "adressen" VALUES (11, '3020 Steuber Gardens Apt. 620', 'Flossiefurt', '460', 'Michigan', 'USA');
INSERT INTO "adressen" VALUES (12, '2060 Hilpert Forge Apt. 379', 'Annietown', '491', 'Michigan', 'USA');
INSERT INTO "adressen" VALUES (13, '469 Roberts Mews', 'Lake Abbey', '838', 'Washington', 'USA');
INSERT INTO "adressen" VALUES (14, '8701 Myrtis Ranch', 'North Marquesfort', '940', 'Ohio', 'USA');
INSERT INTO "adressen" VALUES (15, '06959 Garett Meadows Apt. 259', 'New Lizziechester', '934', 'Massachusetts', 'USA');

INSERT INTO "kunden" VALUES (1, 'Visa', 'Ron Emard', '1-382-503-5179x53639', 'shaniya45@example.net', '2011-04-25 22:20:35');
INSERT INTO "kunden" VALUES (2, 'MasterCard', 'Gabe Schroeder', '1-728-537-4293x0885', 'alexandra91@example.net', '2011-10-17 16:08:25');
INSERT INTO "kunden" VALUES (3, 'Discover', 'Candace Schneider', '940.575.3682x7959', 'tkassulke@example.com', '2012-01-11 21:17:01');
INSERT INTO "kunden" VALUES (4, 'Visa', 'Jaden Lang', '361.151.3489x7272', 'dedric17@example.org', '2009-12-29 17:38:10');
INSERT INTO "kunden" VALUES (5, 'Visa', 'Geovanni Grady', '1-005-644-2495', 'elmira.langworth@example.org', '2017-05-21 07:09:55');
INSERT INTO "kunden" VALUES (6, 'Visa', 'Dr. Karine Farrell', '+49(2)0677806107', 'reichel.winnifred@example.org', '2010-11-06 08:42:56');
INSERT INTO "kunden" VALUES (7, 'Discover', 'Emmanuel Reilly', '129.959.6420', 'gleichner.ethelyn@example.net', '2013-11-29 06:15:22');
INSERT INTO "kunden" VALUES (8, 'MasterCard', 'Keenan Kuhic', '686-517-9923x348', 'dallin76@example.org', '2013-04-09 18:17:05');
INSERT INTO "kunden" VALUES (9, 'American', 'Rusty Morar', '1-123-197-9677x7194', 'njenkins@example.org', '2015-09-09 09:29:06');
INSERT INTO "kunden" VALUES (10, 'Visa', 'Lila Howe', '1-492-284-1097', 'leann.hamill@example.org', '2014-02-04 04:51:58');
INSERT INTO "kunden" VALUES (11, 'Visa', 'Amalia Hudson DDS', '003-991-1506x483', 'danika49@example.com', '2014-02-25 19:39:51');
INSERT INTO "kunden" VALUES (12, 'Discover', 'Verda Streich', '06730471330', 'xgraham@example.org', '2008-10-12 12:19:27');
INSERT INTO "kunden" VALUES (13, 'Discover', 'Patience Yundt', '969-208-8932x715', 'kira82@example.com', '2017-03-25 18:48:04');
INSERT INTO "kunden" VALUES (14, 'Visa', 'Annabell Walsh', '(881)096-1281x6448', 'adriana83@example.org', '2017-06-30 19:02:11');
INSERT INTO "kunden" VALUES (15, 'Visa', 'Aracely Borer V', '531-617-3230', 'rollin95@example.net', '2015-09-13 22:39:50');

INSERT INTO "lieferwege" VALUES (1, 'Torphy Ltd', '16893 Wilderman Terrace
Port Lucasburgh, ND 55978-5550');
INSERT INTO "lieferwege" VALUES (2, 'Heidenreich Group', '6534 Cheyenne Trace Suite 242
Koryburgh, PA 21391-9164');
INSERT INTO "lieferwege" VALUES (3, 'Gerhold Inc', '70469 Unique Crest
Katherynville, IA 92263-4974');
INSERT INTO "lieferwege" VALUES (4, 'Huel, Armstrong and Senger', '534 Lubowitz Terrace
Lake Tomfort, LA 52697-4998');
INSERT INTO "lieferwege" VALUES (5, 'Nader, Leuschke and Huels', '4627 Johnnie Centers
Lake Hipolitoton, RI 37305');
INSERT INTO "lieferwege" VALUES (6, 'Abshire Ltd', '36578 Kirsten Terrace
Krajcikside, NH 29063');
INSERT INTO "lieferwege" VALUES (7, 'Adams, Macejkovic and Carroll', '941 Ritchie Plains Suite 833
North Jerry, LA 32804-7405');
INSERT INTO "lieferwege" VALUES (8, 'Schowalter Group', '52417 Wiza Brook Apt. 000
Zechariahstad, WY 15885-3711');
INSERT INTO "lieferwege" VALUES (9, 'Gorczany Group', '9608 Hoyt Extension
East Linnieview, GA 87356-5339');
INSERT INTO "lieferwege" VALUES (10, 'Grady, King and Price', '4989 Pfeffer Passage Suite 915
West Jacebury, SD 68079-3347');
INSERT INTO "lieferwege" VALUES (11, 'Streich, Spencer and Brakus', '30335 Pacocha Burgs Apt. 400
North Onastad, OR 76419');
INSERT INTO "lieferwege" VALUES (12, 'Brekke, Powlowski and Fritsch', '53685 Abshire Falls
Lake Destineyville, OK 91313');
INSERT INTO "lieferwege" VALUES (13, 'Hermiston, Feeney and Daugherty', '54645 Ziemann Skyway Suite 987
Lake Roderickstad, OH 77820');
INSERT INTO "lieferwege" VALUES (14, 'Renner-Kovacek', '809 Daija Radial Apt. 507
Kavonfort, MN 70034-2797');
INSERT INTO "lieferwege" VALUES (15, 'Hegmann-Waters', '719 Vito Parks
Kassulkeville, NH 77748');

INSERT INTO "lkw" VALUES (1, '58110', 'Frida');
INSERT INTO "lkw" VALUES (2, '33822', 'Randy');
INSERT INTO "lkw" VALUES (3, '17106', 'Laverna');
INSERT INTO "lkw" VALUES (4, '24474', 'Kaya');
INSERT INTO "lkw" VALUES (5, '63359', 'Queen');
INSERT INTO "lkw" VALUES (6, '25232', 'Deon');
INSERT INTO "lkw" VALUES (7, '92426', 'Stacy');
INSERT INTO "lkw" VALUES (8, '69863', 'Rebeka');
INSERT INTO "lkw" VALUES (9, '78683', 'Bud');
INSERT INTO "lkw" VALUES (10, '47865', 'Holly');
INSERT INTO "lkw" VALUES (11, '49160', 'Rosamond');
INSERT INTO "lkw" VALUES (12, '32054', 'Ricky');
INSERT INTO "lkw" VALUES (13, '87695', 'Joanny');
INSERT INTO "lkw" VALUES (14, '75871', 'Luisa');
INSERT INTO "lkw" VALUES (15, '89343', 'Efren');

INSERT INTO "mitarbeiter" VALUES (1, 4, 'Kacie', '716-650-2081');
INSERT INTO "mitarbeiter" VALUES (2, 12, 'Dejuan', '211.289.9042');
INSERT INTO "mitarbeiter" VALUES (3, 1, 'Leonie', '816-890-2580');
INSERT INTO "mitarbeiter" VALUES (4, 11, 'Rogelio', '(539)655-7194x3276');
INSERT INTO "mitarbeiter" VALUES (5, 12, 'Eriberto', '675.047.7555x13273');
INSERT INTO "mitarbeiter" VALUES (6, 9, 'Matteo', '620.905.4152x7146');
INSERT INTO "mitarbeiter" VALUES (7, 4, 'Sasha', '1-547-775-6049');
INSERT INTO "mitarbeiter" VALUES (8, 11, 'Eino', '033.973.3729x07313');
INSERT INTO "mitarbeiter" VALUES (9, 8, 'Cydney', '191.702.4400x1018');
INSERT INTO "mitarbeiter" VALUES (10, 6, 'Cristian', '1-833-492-9430');
INSERT INTO "mitarbeiter" VALUES (11, 5, 'Lew', '776.002.6775');
INSERT INTO "mitarbeiter" VALUES (12, 15, 'Anthony', '+69(6)9999892744');
INSERT INTO "mitarbeiter" VALUES (13, 14, 'Jovani', '+28(9)6180779782');
INSERT INTO "mitarbeiter" VALUES (14, 10, 'Dovie', '944-507-0999');
INSERT INTO "mitarbeiter" VALUES (15, 12, 'Allison', '+48(5)2807285053');

INSERT INTO "regelmäßige_bestellungen" VALUES (1, 12);
INSERT INTO "regelmäßige_bestellungen" VALUES (2, 15);
INSERT INTO "regelmäßige_bestellungen" VALUES (3, 6);
INSERT INTO "regelmäßige_bestellungen" VALUES (4, 3);
INSERT INTO "regelmäßige_bestellungen" VALUES (5, 8);
INSERT INTO "regelmäßige_bestellungen" VALUES (6, 14);
INSERT INTO "regelmäßige_bestellungen" VALUES (7, 2);
INSERT INTO "regelmäßige_bestellungen" VALUES (8, 15);
INSERT INTO "regelmäßige_bestellungen" VALUES (9, 10);
INSERT INTO "regelmäßige_bestellungen" VALUES (10, 7);
INSERT INTO "regelmäßige_bestellungen" VALUES (11, 3);
INSERT INTO "regelmäßige_bestellungen" VALUES (12, 1);
INSERT INTO "regelmäßige_bestellungen" VALUES (13, 1);
INSERT INTO "regelmäßige_bestellungen" VALUES (14, 15);
INSERT INTO "regelmäßige_bestellungen" VALUES (15, 15);

INSERT INTO "kundenadressen" VALUES (5, 6, '2016-09-06 19:23:46', 'House', '2018-02-25 15:34:58');
INSERT INTO "kundenadressen" VALUES (14, 5, '2016-12-21 03:49:54', 'House', '2018-03-13 21:20:21');
INSERT INTO "kundenadressen" VALUES (2, 2, '2014-06-09 06:31:49', 'Flat', '2018-03-02 21:56:40');
INSERT INTO "kundenadressen" VALUES (10, 6, '2011-05-24 21:49:34', 'House', '2018-03-18 12:45:44');
INSERT INTO "kundenadressen" VALUES (14, 2, '2011-12-06 16:49:10', 'Flat', '2018-02-24 20:18:08');
INSERT INTO "kundenadressen" VALUES (10, 1, '2012-05-24 11:47:54', 'House', '2018-03-14 20:26:33');
INSERT INTO "kundenadressen" VALUES (7, 3, '2016-08-17 17:45:20', 'Flat', '2018-03-16 14:09:24');
INSERT INTO "kundenadressen" VALUES (4, 9, '2009-08-03 03:17:03', 'House', '2018-03-15 23:45:59');
INSERT INTO "kundenadressen" VALUES (3, 7, '2010-12-29 11:01:39', 'House', '2018-03-22 02:54:10');
INSERT INTO "kundenadressen" VALUES (12, 6, '2012-08-31 15:41:03', 'Flat', '2018-03-02 23:42:49');
INSERT INTO "kundenadressen" VALUES (12, 11, '2008-04-02 08:23:13', 'Apartment', '2018-03-17 12:51:37');
INSERT INTO "kundenadressen" VALUES (14, 10, '2011-08-18 09:40:49', 'House', '2018-03-06 15:48:13');
INSERT INTO "kundenadressen" VALUES (1, 11, '2014-12-20 18:58:32', 'House', '2018-02-27 00:53:48');
INSERT INTO "kundenadressen" VALUES (8, 6, '2013-05-06 00:49:45', 'Flat', '2018-03-05 01:34:02');
INSERT INTO "kundenadressen" VALUES (12, 5, '2017-11-01 10:59:35', 'Flat', '2018-03-09 05:05:17');

INSERT INTO "zustellroutenorte" VALUES ('27 City Rd', 11, 5, 'Labadie-Crooks');
INSERT INTO "zustellroutenorte" VALUES ('30 Sam Rd', 7, 13, 'VonRueden, Schmeler and Fay');
INSERT INTO "zustellroutenorte" VALUES ('67 LV Rd', 11, 6, 'Carter, Pfannerstill and Rutherford');
INSERT INTO "zustellroutenorte" VALUES ('38 Enisner Av', 10, 7, 'Bradtke-Herman');
INSERT INTO "zustellroutenorte" VALUES ('73 Nancy Av', 14, 10, 'Streich Group');
INSERT INTO "zustellroutenorte" VALUES ('84 OE Av', 14, 7, 'Hessel and Sons');
INSERT INTO "zustellroutenorte" VALUES ('34 Benz St', 2, 15, 'Strosin, Hegmann and Abbott');
INSERT INTO "zustellroutenorte" VALUES ('15 Sixth Av', 8, 6, 'Pouros, Brakus and Konopelski');
INSERT INTO "zustellroutenorte" VALUES ('04 Elm Rd', 8, 8, 'Hermiston, Hand and Wisoky');
INSERT INTO "zustellroutenorte" VALUES ('79 Square St', 15, 5, 'Turner, Dietrich and Smitham');
INSERT INTO "zustellroutenorte" VALUES ('84 Temple Rd', 7, 2, 'Leannon, Erdman and Schneider');
INSERT INTO "zustellroutenorte" VALUES ('64 Kate Rd', 7, 12, 'Dach Group');
INSERT INTO "zustellroutenorte" VALUES ('68 Denny St', 4, 7, 'Ledner-Kozey');
INSERT INTO "zustellroutenorte" VALUES ('76 David St', 11, 3, 'Rosenbaum, Kiehn and Kilback');
INSERT INTO "zustellroutenorte" VALUES ('58 Roof Av', 13, 4, 'Bartoletti, Keebler and Crona');

INSERT INTO "regelmäßig_bestellte_produkte" VALUES (5, 3);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (2, 3);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (10, 1);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (8, 5);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (12, 2);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (1, 4);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (6, 3);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (3, 6);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (3, 1);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (9, 6);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (5, 5);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (1, 1);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (7, 4);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (6, 4);
INSERT INTO "regelmäßig_bestellte_produkte" VALUES (13, 2);

INSERT INTO "tatsächliche_bestellungen" VALUES (1, 'Success', 8, '2018-03-02 23:26:19');
INSERT INTO "tatsächliche_bestellungen" VALUES (2, 'Cancel', 15, '2018-03-02 08:33:39');
INSERT INTO "tatsächliche_bestellungen" VALUES (3, 'Cancel', 4, '2018-02-25 10:13:36');
INSERT INTO "tatsächliche_bestellungen" VALUES (4, 'Cancel', 10, '2018-03-21 01:34:52');
INSERT INTO "tatsächliche_bestellungen" VALUES (5, 'Cancel', 14, '2018-02-28 15:31:06');
INSERT INTO "tatsächliche_bestellungen" VALUES (6, 'Success', 12, '2018-03-12 05:33:57');
INSERT INTO "tatsächliche_bestellungen" VALUES (7, 'Success', 1, '2018-03-06 12:20:31');
INSERT INTO "tatsächliche_bestellungen" VALUES (8, 'Cancel', 11, '2018-03-22 19:30:17');
INSERT INTO "tatsächliche_bestellungen" VALUES (9, 'Success', 6, '2018-03-13 05:43:25');
INSERT INTO "tatsächliche_bestellungen" VALUES (10, 'Success', 13, '2018-03-05 17:31:36');
INSERT INTO "tatsächliche_bestellungen" VALUES (11, 'Cancel', 4, '2018-03-16 00:28:09');
INSERT INTO "tatsächliche_bestellungen" VALUES (12, 'Cancel', 12, '2018-02-26 01:55:52');
INSERT INTO "tatsächliche_bestellungen" VALUES (13, 'Cancel', 8, '2018-03-11 10:45:05');
INSERT INTO "tatsächliche_bestellungen" VALUES (14, 'Cancel', 4, '2018-03-12 11:24:59');
INSERT INTO "tatsächliche_bestellungen" VALUES (15, 'Cancel', 7, '2018-03-10 18:22:34');

INSERT INTO "tatsächliche_bestellte_produkte" VALUES (2, 1);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (14, 5);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (13, 6);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (9, 2);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (3, 2);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (2, 3);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (13, 2);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (3, 1);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (3, 1);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (10, 3);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (6, 6);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (5, 5);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (7, 3);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (5, 3);
INSERT INTO "tatsächliche_bestellte_produkte" VALUES (15, 4);

INSERT INTO "bestellungen_lieferungen" VALUES ('27 City Rd', 11, 'Ready', 6, 11, '2018-03-21 00:57:22');
INSERT INTO "bestellungen_lieferungen" VALUES ('27 City Rd', 1, 'On Road', 4, 10, '2018-02-26 01:32:49');
INSERT INTO "bestellungen_lieferungen" VALUES ('27 City Rd', 3, 'Ready', 1, 2, '2018-03-08 17:17:12');
INSERT INTO "bestellungen_lieferungen" VALUES ('73 Nancy Av', 2, 'Delivered', 12, 10, '2018-03-17 19:42:08');
INSERT INTO "bestellungen_lieferungen" VALUES ('73 Nancy Av', 2, 'On Road', 1, 6, '2018-03-05 03:03:24');
INSERT INTO "bestellungen_lieferungen" VALUES ('34 Benz St', 14, 'Delivered', 11, 6, '2018-03-12 20:45:27');
INSERT INTO "bestellungen_lieferungen" VALUES ('73 Nancy Av', 6, 'On Road', 11, 11, '2018-03-22 22:09:56');
INSERT INTO "bestellungen_lieferungen" VALUES ('34 Benz St', 6, 'Delivered', 2, 10, '2018-03-06 22:39:17');
INSERT INTO "bestellungen_lieferungen" VALUES ('34 Benz St', 5, 'Delivered', 14, 6, '2018-03-02 09:03:13');
INSERT INTO "bestellungen_lieferungen" VALUES ('73 Nancy Av', 8, 'Ready', 13, 4, '2018-03-17 09:09:06');
INSERT INTO "bestellungen_lieferungen" VALUES ('58 Roof Av', 9, 'Ready', 3, 9, '2018-02-26 13:22:53');
INSERT INTO "bestellungen_lieferungen" VALUES ('58 Roof Av', 5, 'Ready', 8, 1, '2018-03-20 20:36:44');
INSERT INTO "bestellungen_lieferungen" VALUES ('58 Roof Av', 9, 'Ready', 14, 5, '2018-03-14 05:16:17');
INSERT INTO "bestellungen_lieferungen" VALUES ('58 Roof Av', 10, 'Ready', 13, 11, '2018-03-18 02:35:08');
INSERT INTO "bestellungen_lieferungen" VALUES ('34 Benz St', 4, 'On Road', 1, 2, '2018-03-01 00:50:45');

COMMIT;