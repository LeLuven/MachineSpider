CREATE TABLE "leute"
(
	"personen_id"  INT,
	"name"         TEXT,
	"größe"        REAL,
	"gewicht"      REAL,
	"geburtsdatum" TEXT,
	"geburtsort"   TEXT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "body_builder"
(
	"body_builder_id" INT,
	"personen_id"     INT,
	"reißen"          REAL,
	"clean_jerk"      REAL,
	"gesamt"          REAL,
	PRIMARY KEY ("body_builder_id"),
	FOREIGN KEY ("personen_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Jack Campbell', 182.0, 80.0, 'January 1, 1992', 'Port Huron, Michigan');
INSERT INTO "leute" VALUES (2, 'Ty Conklin', 192.0, 90.0, 'March 30, 1976', 'Anchorage, Alaska');
INSERT INTO "leute" VALUES (3, 'Al Montoya', 195.0, 100.0, 'February 13, 1985', 'Glenview, Illinois');
INSERT INTO "leute" VALUES (4, 'Mark Fayne', 215.0, 102.0, 'May 5, 1987', 'Nashua, New Hampshire');
INSERT INTO "leute" VALUES (5, 'Cam Fowler', 196.0, 89.0, 'December 5, 1991', 'Farmington Hills, Michigan');
INSERT INTO "leute" VALUES (6, 'Jake Gardiner', 205.0, 92.0, 'July 4, 1990', 'Minnetonka, Minnesota');

INSERT INTO "body_builder" VALUES (1, 1, 142.5, 175.0, 317.5);
INSERT INTO "body_builder" VALUES (2, 2, 137.5, 177.5, 315.0);
INSERT INTO "body_builder" VALUES (3, 3, 140.0, 175.0, 315.0);
INSERT INTO "body_builder" VALUES (4, 5, 137.5, 175.0, 312.5);
INSERT INTO "body_builder" VALUES (5, 6, 130.0, 162.5, 292.5);

COMMIT;