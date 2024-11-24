CREATE TABLE "buch"
(
	"buch_id"  INT,
	"titel"    TEXT,
	"ausgaben" REAL,
	"autor"    TEXT,
	PRIMARY KEY ("buch_id")
);

CREATE TABLE "publikation"
(
	"publikation_id"         INT,
	"buch_id"                INT,
	"verlag"                 TEXT,
	"veröffentlichungsdatum" TEXT,
	"preis"                  REAL,
	PRIMARY KEY ("publikation_id"),
	FOREIGN KEY ("buch_id") REFERENCES "buch" ("buch_id")
);

BEGIN TRANSACTION;
INSERT INTO "buch" VALUES (1, 'The Black Lamb', 6.0, 'Timothy Truman');
INSERT INTO "buch" VALUES (2, 'Bloody Mary', 4.0, 'Garth Ennis');
INSERT INTO "buch" VALUES (3, 'Bloody Mary : Lady Liberty', 4.0, 'Garth Ennis');
INSERT INTO "buch" VALUES (4, 'BrainBanx', 6.0, 'Elaine Lee');
INSERT INTO "buch" VALUES (5, 'Cyberella', 12.0, 'Howard Chaykin');
INSERT INTO "buch" VALUES (6, 'Dead Corps', 4.0, 'Christopher Hinz');
INSERT INTO "buch" VALUES (7, 'The Dome: Ground Zero', 1.0, 'Dave Gibbons');
INSERT INTO "buch" VALUES (8, 'Gemini Blood', 9.0, 'Christopher Hinz');
INSERT INTO "buch" VALUES (9, 'Michael Moorcock''s Multiverse', 12.0, 'Michael Moorcock');
INSERT INTO "buch" VALUES (10, 'Sheva''s War', 5.0, 'Christopher Moeller');

INSERT INTO "publikation" VALUES (1, 1, 'Pearson', 'August 2008', 15000000.0);
INSERT INTO "publikation" VALUES (2, 3, 'Thomson Reuters', 'March 2008', 6000000.0);
INSERT INTO "publikation" VALUES (3, 4, 'Wiley', 'June 2006', 4100000.0);
INSERT INTO "publikation" VALUES (4, 5, 'Wiley', 'October 2005', 3000000.0);
INSERT INTO "publikation" VALUES (5, 7, 'Springer Nature', 'August 2008', 3000000.0);
INSERT INTO "publikation" VALUES (6, 9, 'Pearson', 'March 2007', 2000000.0);
INSERT INTO "publikation" VALUES (7, 10, 'Bertelsmann', 'April 2007', 2000000.0);

COMMIT;