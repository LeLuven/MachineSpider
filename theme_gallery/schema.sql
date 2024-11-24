CREATE TABLE "künstler"
(
	"künstler_id" INT,
	"name"        TEXT,
	"land"        TEXT,
	"jahrgang"    INT,
	"alter"       INT,
	PRIMARY KEY ("künstler_id")
);

CREATE TABLE "ausstellung"
(
	"ausstellung_id" INT,
	"jahr"           INT,
	"thema"          TEXT,
	"künstler_id"    INT,
	"eintrittspreis" REAL,
	PRIMARY KEY ("ausstellung_id"),
	FOREIGN KEY ("künstler_id") REFERENCES "künstler" ("künstler_id")
);

CREATE TABLE "ausstellungsdatensatz"
(
	"ausstellung_id" INT,
	"datum"          TEXT,
	"teilnahme"      INT,
	PRIMARY KEY ("ausstellung_id", "datum"),
	FOREIGN KEY ("ausstellung_id") REFERENCES "ausstellung" ("ausstellung_id")
);

BEGIN TRANSACTION;
INSERT INTO "künstler" VALUES (1, 'Vijay Singh', 'Fiji', 1998, 45);
INSERT INTO "künstler" VALUES (2, 'John Daly', 'United States', 1991, 46);
INSERT INTO "künstler" VALUES (3, 'Paul Azinger', 'United States', 1993, 47);
INSERT INTO "künstler" VALUES (4, 'Jeff Sluman', 'United States', 1988, 57);
INSERT INTO "künstler" VALUES (5, 'Mark Brooks', 'United States', 1996, 48);
INSERT INTO "künstler" VALUES (6, 'Nick Price', 'Zimbabwe', 1994, 48);
INSERT INTO "künstler" VALUES (7, 'Larry Nelson', 'United States', 1981, 50);

INSERT INTO "ausstellung" VALUES (1, 2004, 'Santa Claus', 1, 19.95);
INSERT INTO "ausstellung" VALUES (2, 2005, 'Christmas stocking', 2, 19.95);
INSERT INTO "ausstellung" VALUES (3, 2006, 'Santa Claus and Rudolph the Red-Nosed Reindeer', 4, 14.95);
INSERT INTO "ausstellung" VALUES (4, 2007, 'Christmas Tree', 1, 16.95);
INSERT INTO "ausstellung" VALUES (5, 2008, 'Spring', 6, 29.95);
INSERT INTO "ausstellung" VALUES (6, 2009, 'Summer', 3, 9.95);

INSERT INTO "ausstellungsdatensatz" VALUES (1, 'December 2', 965);
INSERT INTO "ausstellungsdatensatz" VALUES (1, 'December 5', 1098);
INSERT INTO "ausstellungsdatensatz" VALUES (1, 'December 7', 2983);
INSERT INTO "ausstellungsdatensatz" VALUES (2, 'December 9', 1239);
INSERT INTO "ausstellungsdatensatz" VALUES (2, 'December 12', 1313);
INSERT INTO "ausstellungsdatensatz" VALUES (2, 'December 13', 10908);
INSERT INTO "ausstellungsdatensatz" VALUES (3, 'December 16', 1134);
INSERT INTO "ausstellungsdatensatz" VALUES (3, 'February 19', 1233);
INSERT INTO "ausstellungsdatensatz" VALUES (3, 'February 21', 9089);
INSERT INTO "ausstellungsdatensatz" VALUES (4, 'February 23', 3139);
INSERT INTO "ausstellungsdatensatz" VALUES (5, 'February 25', 24808);
INSERT INTO "ausstellungsdatensatz" VALUES (5, 'February 26', 13142);
INSERT INTO "ausstellungsdatensatz" VALUES (5, 'February 28', 4231);

COMMIT;