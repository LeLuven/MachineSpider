CREATE TABLE "firma"
(
	"firma_id"                   INT,
	"rang"                       INT,
	"firma"                      TEXT,
	"hauptsitz"                  TEXT,
	"hauptbranche"               TEXT,
	"umsatz_milliarden"          REAL,
	"gewinn_mrd"                 REAL,
	"vermögen_in_milliardenhöhe" REAL,
	"marktwert"                  REAL,
	PRIMARY KEY ("firma_id")
);

CREATE TABLE "tankstelle"
(
	"station_id"                         INT,
	"offenes_jahr"                       INT,
	"standort"                           TEXT,
	"name_des_leiters"                   TEXT,
	"name_des_stellvertretenden_leiters" TEXT,
	"name_des_vertreters"                TEXT,
	PRIMARY KEY ("station_id")
);

CREATE TABLE "bahnhofsgesellschaft"
(
	"station_id"      INT,
	"firma_id"        INT,
	"rang_des_jahres" INT,
	PRIMARY KEY ("station_id", "firma_id"),
	FOREIGN KEY ("station_id") REFERENCES "tankstelle" ("station_id"),
	FOREIGN KEY ("firma_id") REFERENCES "firma" ("firma_id")
);

BEGIN TRANSACTION;
INSERT INTO "firma" VALUES (1, 1, 'ExxonMobil', 'USA', 'Oil and gas', 433.5, 41.1, 331.1, 407.4);
INSERT INTO "firma" VALUES (2, 3, 'General Electric', 'USA', 'Conglomerate', 147.3, 14.2, 717.2, 213.7);
INSERT INTO "firma" VALUES (3, 4, 'Royal Dutch Shell', 'Netherlands', 'Oil and gas', 470.2, 30.9, 340.5, 227.6);
INSERT INTO "firma" VALUES (4, 5, 'Industrial and Commercial Bank of China', 'China', 'Banking', 82.6, 25.1, 2039.1, 237.4);
INSERT INTO "firma" VALUES (5, 6, 'HSBC', 'UK', 'Banking', 102.0, 16.2, 2550.0, 164.3);
INSERT INTO "firma" VALUES (6, 7, 'PetroChina', 'China', 'Oil and gas', 310.1, 20.6, 304.7, 294.7);
INSERT INTO "firma" VALUES (7, 8, 'Berkshire Hathaway', 'USA', 'Conglomerate', 143.7, 10.3, 392.6, 202.2);
INSERT INTO "firma" VALUES (8, 9, 'Wells Fargo', 'USA', 'Banking', 87.6, 15.9, 1313.9, 178.7);
INSERT INTO "firma" VALUES (9, 10, 'Petrobras', 'Brazil', 'Oil and gas', 145.9, 20.1, 319.4, 180.0);
INSERT INTO "firma" VALUES (10, 11, 'BP', 'UK', 'Oil and gas', 375.5, 25.7, 292.5, 147.4);

INSERT INTO "tankstelle" VALUES (1, 1998, 'Herne Hill', 'BrianWingrave', 'Russell Denman', 'Clive Burr');
INSERT INTO "tankstelle" VALUES (2, 1999, 'Channel Hill', 'SimonMarloe', 'Russell Brown', 'Rob Jefferies ');
INSERT INTO "tankstelle" VALUES (3, 2000, 'Reading North', 'Simon Cope Derek Marloe', 'James Colin ', 'Dave Edwards Roger ');
INSERT INTO "tankstelle" VALUES (4, 2002, 'Herne St', 'Colin Denman', 'Martin Garnham', 'Ray Hughes');
INSERT INTO "tankstelle" VALUES (5, 2003, 'Reading', 'Colin Denman', 'Martin Freeman', 'Andrew Russell');
INSERT INTO "tankstelle" VALUES (6, 2004, 'Herne Ave', 'Tom Whit', 'Simon Gaywood', 'Tony Gibb');
INSERT INTO "tankstelle" VALUES (7, 2005, 'Hennry Hill', 'Bryan Taylor', 'James Holland-Leader', 'Simon Gaywood');
INSERT INTO "tankstelle" VALUES (8, 2006, 'Jane Ave', 'BryanDenman', 'James Holland-Leader', 'Simon Gaywood');
INSERT INTO "tankstelle" VALUES (9, 2007, 'Maindy Hill', 'Tony Bristow', 'JameMarloe', 'Courtney Rowe');
INSERT INTO "tankstelle" VALUES (10, 2008, 'Maindy Ave', 'Luke Rowe', 'TonyBristow', 'Chris Pyatt');
INSERT INTO "tankstelle" VALUES (11, 2009, 'Newport Rd', 'Jon Rowe', 'Steve Parsons', 'Tim Read');

INSERT INTO "bahnhofsgesellschaft" VALUES (11, 1, 1);
INSERT INTO "bahnhofsgesellschaft" VALUES (1, 3, 2);
INSERT INTO "bahnhofsgesellschaft" VALUES (6, 6, 3);
INSERT INTO "bahnhofsgesellschaft" VALUES (7, 9, 4);
INSERT INTO "bahnhofsgesellschaft" VALUES (10, 10, 9);
INSERT INTO "bahnhofsgesellschaft" VALUES (4, 1, 13);

COMMIT;