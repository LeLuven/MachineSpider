CREATE TABLE "attributdefinitionen"
(
	"attribut_id"       INTEGER,
	"attribut_name"     VARCHAR(30),
	"attribut_datentyp" VARCHAR(10),
	PRIMARY KEY ("attribut_id")
);

CREATE TABLE "kataloge"
(
	"katalog_id"                      INTEGER,
	"katalogname"                     VARCHAR(50),
	"katalog_herausgeber"             VARCHAR(80),
	"datum_der_veröffentlichung"      DATETIME,
	"datum_der_letzten_überarbeitung" DATETIME,
	PRIMARY KEY ("katalog_id")
);

CREATE TABLE "katalogstruktur"
(
	"katalogebenen_nummer" INTEGER,
	"katalog_id"           INTEGER NOT NULL,
	"katalogebene_name"    VARCHAR(50),
	PRIMARY KEY ("katalogebenen_nummer"),
	FOREIGN KEY ("katalog_id") REFERENCES "kataloge" ("katalog_id")
);

CREATE TABLE "kataloginhalt"
(
	"katalogeintrags_id"           INTEGER,
	"katalogebenen_nummer"         INTEGER NOT NULL,
	"übergeordnete_eintragsnummer" INTEGER,
	"vorheriger_eintragsname"      INTEGER,
	"nächster_eintrag_id"          INTEGER,
	"katalogeintragsname"          VARCHAR(80),
	"produktbestandsnummer"        VARCHAR(50),
	"preis_in_dollar"              DOUBLE,
	"preis_in_euro"                DOUBLE,
	"preis_in_pfund"               DOUBLE,
	"kapazität"                    VARCHAR(20),
	"länge"                        VARCHAR(20),
	"höhe"                         VARCHAR(20),
	"breite"                       VARCHAR(20),
	PRIMARY KEY ("katalogeintrags_id"),
	FOREIGN KEY ("katalogebenen_nummer") REFERENCES "katalogstruktur" ("katalogebenen_nummer")
);

CREATE TABLE "kataloginhalt_zusätzliche_attribute"
(
	"katalogeintrags_id"   INTEGER NOT NULL,
	"katalogebenen_nummer" INTEGER NOT NULL,
	"attribut_id"          INTEGER NOT NULL,
	"attributwert"         VARCHAR(255) NOT NULL,
	FOREIGN KEY ("katalogeintrags_id") REFERENCES "kataloginhalt" ("katalogeintrags_id"),
	FOREIGN KEY ("katalogebenen_nummer") REFERENCES "katalogstruktur" ("katalogebenen_nummer")
);

BEGIN TRANSACTION;
INSERT INTO "attributdefinitionen" VALUES (1, 'Green', 'Bool');
INSERT INTO "attributdefinitionen" VALUES (2, 'Black', 'Bool');
INSERT INTO "attributdefinitionen" VALUES (3, 'Yellow', 'Bool');
INSERT INTO "attributdefinitionen" VALUES (4, 'Sweet', 'Bool');

INSERT INTO "kataloge" VALUES (1, 'Chocolate', 'Koepp-Rutherford handmade chocolate store', '2013-03-15 05:09:17', '2017-09-26 12:10:36');
INSERT INTO "kataloge" VALUES (2, 'Coffee Bean', 'Murray Coffee shop', '2012-04-13 06:37:09', '2017-10-26 01:16:51');
INSERT INTO "kataloge" VALUES (3, 'Lemonade', 'Russel-Gislason Lemon shop', '2012-11-27 19:29:22', '2017-12-04 06:48:13');
INSERT INTO "kataloge" VALUES (4, 'Breakfast Tea', 'Grady & Kautzer', '2011-07-22 04:57:19', '2017-03-30 09:15:37');
INSERT INTO "kataloge" VALUES (5, 'Coco powder', 'Lidl', '2013-03-15 05:09:17', '2017-09-26 12:10:36');
INSERT INTO "kataloge" VALUES (6, 'Latte', 'Murray Coffee shop', '2012-04-13 06:37:09', '2017-10-26 01:16:51');
INSERT INTO "kataloge" VALUES (7, 'Sparkling Water', 'Russel-Gislason Lemon shop', '2012-11-27 19:29:22', '2017-12-04 06:48:13');
INSERT INTO "kataloge" VALUES (8, 'Jam', 'Grady & Kautzer', '2011-07-22 04:57:19', '2017-03-30 09:15:37');

INSERT INTO "katalogstruktur" VALUES (1, 1, 'Category');
INSERT INTO "katalogstruktur" VALUES (8, 2, 'Sub-Category');
INSERT INTO "katalogstruktur" VALUES (9, 8, 'Product');

INSERT INTO "kataloginhalt" VALUES (1, 1, 5, 9, 7, 'Cola', '89 cp', 200.78, 159.84, 172.17, '1', '3', '9', '5');
INSERT INTO "kataloginhalt" VALUES (2, 8, 6, 9, 8, 'Root beer', '37 hq', 687.59, 590.11, 471.78, '8', '6', '5', '6');
INSERT INTO "kataloginhalt" VALUES (3, 8, 6, 6, 1, 'Cream Soda', '52 ee', 360.5, 202.32, 110.32, '5', '9', '7', '8');
INSERT INTO "kataloginhalt" VALUES (4, 1, 7, 8, 6, 'Carbonated Water', '15 mr', 667.89, 458.45, 349.01, '8', '6', '2', '1');
INSERT INTO "kataloginhalt" VALUES (5, 9, 4, 7, 6, 'Ginger Beer', '42 cp', 616.22, 537.66, 405.75, '5', '5', '7', '9');
INSERT INTO "kataloginhalt" VALUES (6, 1, 3, 4, 8, 'Tizer', '61 py', 642.37, 434.21, 331.43, '6', '6', '7', '1');
INSERT INTO "kataloginhalt" VALUES (7, 9, 7, 3, 3, 'Vimto', '01 ap', 745.02, 510.32, 497.4, '6', '9', '6', '5');
INSERT INTO "kataloginhalt" VALUES (8, 8, 6, 5, 3, 'Ramune', '53 bg', 574.35, 441.82, 440.52, '4', '4', '7', '5');
INSERT INTO "kataloginhalt" VALUES (9, 1, 7, 9, 9, 'Sprite Lemo', '24 ec', 952.37, 703.17, 433.82, '8', '7', '1', '3');
INSERT INTO "kataloginhalt" VALUES (10, 8, 5, 6, 6, 'Dr Pepper', '26 op', 777.41, 616.54, 572.41, '1', '6', '1', '6');
INSERT INTO "kataloginhalt" VALUES (11, 1, 3, 6, 9, 'Diet Pepsi', '49 jg', 808.31, 643.77, 515.62, '9', '8', '3', '3');
INSERT INTO "kataloginhalt" VALUES (12, 8, 4, 5, 3, 'Diet Mountain Dew', '96 zx', 883.43, 752.87, 678.01, '8', '8', '1', '3');
INSERT INTO "kataloginhalt" VALUES (13, 1, 5, 9, 1, 'Mountain Dew', '49 cz', 475.79, 457.4, 335.63, '7', '8', '4', '5');
INSERT INTO "kataloginhalt" VALUES (14, 9, 3, 5, 8, 'Fenta Orange', '65 wc', 415.92, 385.85, 371.9, '7', '4', '3', '7');
INSERT INTO "kataloginhalt" VALUES (15, 1, 6, 8, 9, 'Wanglaoji', '51 kr', 533.6, 498.62, 422.71, '4', '5', '8', '8');

INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (5, 8, 4, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (15, 9, 3, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (11, 1, 2, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (12, 1, 4, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (1, 8, 3, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (8, 1, 3, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (14, 9, 2, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (15, 9, 2, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (15, 1, 3, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (1, 8, 4, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (11, 1, 3, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (8, 9, 3, '0');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (2, 8, 4, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (6, 1, 1, '1');
INSERT INTO "kataloginhalt_zusätzliche_attribute" VALUES (4, 8, 4, '0');

COMMIT;