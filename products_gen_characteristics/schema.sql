CREATE TABLE "referenzmerkmalstypen"
(
	"merkmalsartcode"         VARCHAR(15),
	"merkmalsartbeschreibung" VARCHAR(80),
	PRIMARY KEY ("merkmalsartcode")
);

CREATE TABLE "referenzfarben"
(
	"farbcode"         VARCHAR(15),
	"farbbeschreibung" VARCHAR(80),
	PRIMARY KEY ("farbcode")
);

CREATE TABLE "referenz_produktkategorien"
(
	"produkt_kategorie_code"            VARCHAR(15),
	"beschreibung_der_produktkategorie" VARCHAR(80),
	"mengeneinheit"                     VARCHAR(20),
	PRIMARY KEY ("produkt_kategorie_code")
);

CREATE TABLE "merkmale"
(
	"merkmal_id"               INTEGER,
	"merkmalsartcode"          VARCHAR(15) NOT NULL,
	"merkmalsdatentyp"         VARCHAR(10),
	"merkmalsname"             VARCHAR(80),
	"sonstige_merkmalsangaben" VARCHAR(255),
	PRIMARY KEY ("merkmal_id"),
	FOREIGN KEY ("merkmalsartcode") REFERENCES "referenzmerkmalstypen" ("merkmalsartcode")
);

CREATE TABLE "produkte"
(
	"produkt_id"              INTEGER,
	"farbcode"                VARCHAR(15) NOT NULL,
	"produkt_kategorie_code"  VARCHAR(15) NOT NULL,
	"produktname"             VARCHAR(80),
	"typischer_einkaufspreis" VARCHAR(20),
	"typischer_verkaufspreis" VARCHAR(20),
	"produktbeschreibung"     VARCHAR(255),
	"andere_produktangaben"   VARCHAR(255),
	PRIMARY KEY ("produkt_id"),
	FOREIGN KEY ("farbcode") REFERENCES "referenzfarben" ("farbcode"),
	FOREIGN KEY ("produkt_kategorie_code") REFERENCES "referenz_produktkategorien" ("produkt_kategorie_code")
);

CREATE TABLE "produkteigenschaften"
(
	"produkt_id"          INTEGER NOT NULL,
	"merkmal_id"          INTEGER NOT NULL,
	"produktmerkmal_wert" VARCHAR(50),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id"),
	FOREIGN KEY ("merkmal_id") REFERENCES "merkmale" ("merkmal_id")
);

BEGIN TRANSACTION;
INSERT INTO "referenzmerkmalstypen" VALUES ('Grade', 'Grade');
INSERT INTO "referenzmerkmalstypen" VALUES ('Purity', 'Purity');

INSERT INTO "referenzfarben" VALUES ('9', 'red');
INSERT INTO "referenzfarben" VALUES ('5', 'green');
INSERT INTO "referenzfarben" VALUES ('1', 'yellow');
INSERT INTO "referenzfarben" VALUES ('4', 'blue');
INSERT INTO "referenzfarben" VALUES ('7', 'black');
INSERT INTO "referenzfarben" VALUES ('2', 'white');
INSERT INTO "referenzfarben" VALUES ('8', 'purple');
INSERT INTO "referenzfarben" VALUES ('3', 'gray');

INSERT INTO "referenz_produktkategorien" VALUES ('Herbs', 'Herbs', 'Handful             ');
INSERT INTO "referenz_produktkategorien" VALUES ('Seeds', 'Seeds', 'Weight - pound,kilo.');
INSERT INTO "referenz_produktkategorien" VALUES ('Spices', 'Spices', 'Weight - pound,kilo.');

INSERT INTO "merkmale" VALUES (1, 'Grade', 'numquam', 'slow', NULL);
INSERT INTO "merkmale" VALUES (2, 'Grade', 'doloribus', 'fast', NULL);
INSERT INTO "merkmale" VALUES (3, 'Purity', 'rem', 'warm', NULL);
INSERT INTO "merkmale" VALUES (4, 'Grade', 'aut', 'hot', NULL);
INSERT INTO "merkmale" VALUES (5, 'Purity', 'impedit', 'hot', NULL);
INSERT INTO "merkmale" VALUES (6, 'Purity', 'qui', 'warm', NULL);
INSERT INTO "merkmale" VALUES (7, 'Grade', 'et', 'cool', NULL);
INSERT INTO "merkmale" VALUES (8, 'Grade', 'dolores', 'cool', NULL);
INSERT INTO "merkmale" VALUES (9, 'Grade', 'quam', 'cool', NULL);
INSERT INTO "merkmale" VALUES (10, 'Grade', 'velit', 'fast', NULL);
INSERT INTO "merkmale" VALUES (11, 'Purity', 'at', 'fast', NULL);
INSERT INTO "merkmale" VALUES (12, 'Grade', 'totam', 'error', NULL);
INSERT INTO "merkmale" VALUES (13, 'Purity', 'mollitia', 'slow', NULL);
INSERT INTO "merkmale" VALUES (14, 'Purity', 'placeat', 'slow', NULL);
INSERT INTO "merkmale" VALUES (15, 'Grade', 'facere', 'slow', NULL);

INSERT INTO "produkte" VALUES (1, '4', 'Spices', 'cumin', '', '2878.3', 'et', NULL);
INSERT INTO "produkte" VALUES (2, '2', 'Spices', 'peper', '352447.2874677', '1892070.2803543', 'rerum', NULL);
INSERT INTO "produkte" VALUES (3, '9', 'Herbs', 'basil', '503.8431967', '0.1859512', 'officia', NULL);
INSERT INTO "produkte" VALUES (4, '1', 'Herbs', 'borage', '', '10377614.847385', 'blanditiis', NULL);
INSERT INTO "produkte" VALUES (5, '4', 'Spices', 'chili', '', '39446', 'eius', NULL);
INSERT INTO "produkte" VALUES (6, '4', 'Seeds', 'ginger', '5.578', '52735.6101', 'doloribus', NULL);
INSERT INTO "produkte" VALUES (7, '9', 'Seeds', 'sesame', '1284268.0659', '68205825.7', 'et', NULL);
INSERT INTO "produkte" VALUES (8, '9', 'Herbs', 'caraway', '24493', '', 'nulla', NULL);
INSERT INTO "produkte" VALUES (9, '2', 'Herbs', 'catnip', '12008702.623', '21577.891642', 'vel', NULL);
INSERT INTO "produkte" VALUES (10, '5', 'Seeds', 'flax', '339404395.7', '59622629.74', 'et', NULL);
INSERT INTO "produkte" VALUES (11, '7', 'Herbs', 'chervil', '', '', 'minus', NULL);
INSERT INTO "produkte" VALUES (12, '4', 'Seeds', 'voluptatem', '162', '149', 'officia', NULL);
INSERT INTO "produkte" VALUES (13, '5', 'Spices', 'cinnam', '1686539.4', '17595111.4', 'nisi', NULL);
INSERT INTO "produkte" VALUES (14, '4', 'Seeds', 'lotus', '43221310.465574', '63589.4054376', 'exercitationem', NULL);
INSERT INTO "produkte" VALUES (15, '2', 'Herbs', 'laurel', '', '57857', 'ut', NULL);

INSERT INTO "produkteigenschaften" VALUES (13, 13, 'low');
INSERT INTO "produkteigenschaften" VALUES (11, 2, 'low');
INSERT INTO "produkteigenschaften" VALUES (5, 15, 'low');
INSERT INTO "produkteigenschaften" VALUES (1, 13, 'low');
INSERT INTO "produkteigenschaften" VALUES (7, 12, 'low');
INSERT INTO "produkteigenschaften" VALUES (11, 6, 'low');
INSERT INTO "produkteigenschaften" VALUES (7, 2, 'medium');
INSERT INTO "produkteigenschaften" VALUES (12, 10, 'medium');
INSERT INTO "produkteigenschaften" VALUES (8, 11, 'high');
INSERT INTO "produkteigenschaften" VALUES (14, 4, 'medium');
INSERT INTO "produkteigenschaften" VALUES (11, 3, 'medium');
INSERT INTO "produkteigenschaften" VALUES (6, 15, 'high');
INSERT INTO "produkteigenschaften" VALUES (11, 3, 'high');
INSERT INTO "produkteigenschaften" VALUES (6, 10, 'high');
INSERT INTO "produkteigenschaften" VALUES (12, 2, 'high');

COMMIT;