CREATE TABLE "leute"
(
	"personen_id" INT,
	"bezirk"      TEXT,
	"name"        TEXT,
	"partei"      TEXT,
	"alter"       INT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "debatte"
(
	"debatte_id"         INT,
	"datum"              TEXT,
	"veranstaltungsort"  TEXT,
	"anzahl_der_zuhörer" INT,
	PRIMARY KEY ("debatte_id")
);

CREATE TABLE "diskussionsteilnehmer"
(
	"debatte_id"                    INT,
	"zustimmend"                    INT,
	"negativ"                       INT,
	"wenn_die_befürworter_gewinnen" BOOL,
	PRIMARY KEY ("debatte_id", "zustimmend", "negativ"),
	FOREIGN KEY ("debatte_id") REFERENCES "debatte" ("debatte_id"),
	FOREIGN KEY ("zustimmend") REFERENCES "leute" ("personen_id"),
	FOREIGN KEY ("negativ") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'New York 1', 'Luther C. Carter', 'Republican', 35);
INSERT INTO "leute" VALUES (2, 'New York 2', 'James Humphrey', 'Republican', 38);
INSERT INTO "leute" VALUES (3, 'New York 3', 'Daniel Sickles', 'Democratic', 46);
INSERT INTO "leute" VALUES (4, 'New York 4', 'Thomas J. Barr', 'Independent Democrat', 48);
INSERT INTO "leute" VALUES (5, 'New York 5', 'William B. Maclay', 'Democratic', 36);
INSERT INTO "leute" VALUES (6, 'New York 6', 'John Cochrane', 'Democratic', 46);
INSERT INTO "leute" VALUES (7, 'New York 7', 'George Briggs', 'Republican', 42);
INSERT INTO "leute" VALUES (8, 'New York 8', 'Horace F. Clark', 'Anti-Lecompton Democrat', 45);
INSERT INTO "leute" VALUES (9, 'New York 9', 'John B. Haskin', 'Anti-Lecompton Democrat', 43);
INSERT INTO "leute" VALUES (10, 'New York 10', 'Charles Van Wyck', 'Republican', 36);

INSERT INTO "debatte" VALUES (1, 'October 21, 2011', 'Manama , Bahrain', 342);
INSERT INTO "debatte" VALUES (2, 'December 17, 2014', 'Doha , Qatar', 134);
INSERT INTO "debatte" VALUES (3, 'August 3, 2015', 'Manama , Bahrain', 90);
INSERT INTO "debatte" VALUES (4, 'October 27, 2015', 'Manama , Bahrain', 209);
INSERT INTO "debatte" VALUES (5, 'January 12, 2017', 'Dubai , UAE', 313);
INSERT INTO "debatte" VALUES (6, 'January 21, 2017', 'Abu Dhabi , UAE', 159);

INSERT INTO "diskussionsteilnehmer" VALUES (1, 1, 10, 'F');
INSERT INTO "diskussionsteilnehmer" VALUES (5, 2, 8, 'F');
INSERT INTO "diskussionsteilnehmer" VALUES (3, 4, 7, 'T');
INSERT INTO "diskussionsteilnehmer" VALUES (6, 5, 6, 'T');
INSERT INTO "diskussionsteilnehmer" VALUES (4, 5, 8, 'F');

COMMIT;