CREATE TABLE "hersteller"
(
	"hersteller_id"        INT,
	"eröffnungsjahr"       REAL,
	"name"                 TEXT,
	"anzahl_der_fabriken"  INT,
	"anzahl_der_geschäfte" INT,
	PRIMARY KEY ("hersteller_id")
);

CREATE TABLE "möbel"
(
	"möbel_id"         INT,
	"name"             TEXT,
	"num_of_component" INT,
	"marktpreis"       REAL,
	PRIMARY KEY ("möbel_id")
);

CREATE TABLE "möbel_hersteller"
(
	"hersteller_id"   INT,
	"möbel_id"        INT,
	"preis_in_dollar" REAL,
	PRIMARY KEY ("hersteller_id", "möbel_id"),
	FOREIGN KEY ("hersteller_id") REFERENCES "hersteller" ("hersteller_id"),
	FOREIGN KEY ("möbel_id") REFERENCES "möbel" ("möbel_id")
);

BEGIN TRANSACTION;
INSERT INTO "hersteller" VALUES (1, 1980.0, 'Chevrolet House', 36, 8);
INSERT INTO "hersteller" VALUES (2, 1990.0, 'IKEA', 21, 19);
INSERT INTO "hersteller" VALUES (3, 1991.0, 'Ford Make', 12, 2);
INSERT INTO "hersteller" VALUES (4, 1992.0, 'Jiaju', 1, 35);
INSERT INTO "hersteller" VALUES (5, 2000.0, 'Chevrolet', 38, 24);
INSERT INTO "hersteller" VALUES (6, 2001.0, 'Dodge', 3, 7);
INSERT INTO "hersteller" VALUES (7, 2008.0, 'Tomorrow', 12, 4);

INSERT INTO "möbel" VALUES (1, 'Billiard table', 14, 52.5);
INSERT INTO "möbel" VALUES (2, 'Chabudai', 4, 40.0);
INSERT INTO "möbel" VALUES (3, 'Bookcase', 6, 1.0);
INSERT INTO "möbel" VALUES (4, 'Hatstand', 5, 0.5);
INSERT INTO "möbel" VALUES (5, 'Bench', 5, 3.5);
INSERT INTO "möbel" VALUES (6, 'Four-poster bed', 3, 2.0);
INSERT INTO "möbel" VALUES (7, 'Dining set', 12, 0.5);

INSERT INTO "möbel_hersteller" VALUES (1, 3, 239.0);
INSERT INTO "möbel_hersteller" VALUES (4, 2, 450.0);
INSERT INTO "möbel_hersteller" VALUES (7, 7, 2124.0);
INSERT INTO "möbel_hersteller" VALUES (5, 1, 443.0);
INSERT INTO "möbel_hersteller" VALUES (7, 4, 1234.0);

COMMIT;