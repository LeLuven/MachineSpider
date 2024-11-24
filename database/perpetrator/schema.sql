CREATE TABLE "leute"
(
	"personen_id" INT,
	"name"        TEXT,
	"größe"       REAL,
	"gewicht"     REAL,
	"heimatort"   TEXT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "täter"
(
	"täter_id"    INT,
	"personen_id" INT,
	"datum"       TEXT,
	"jahr"        REAL,
	"ort"         TEXT,
	"land"        TEXT,
	"getötet"     INT,
	"verletzt"    INT,
	PRIMARY KEY ("täter_id"),
	FOREIGN KEY ("personen_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Ron Baxter', 6.4, 205.0, 'Los Angeles, CA');
INSERT INTO "leute" VALUES (2, 'Brent Boyd', 6.3, 185.0, 'Baton Rouge, LA');
INSERT INTO "leute" VALUES (3, 'Tyrone Brayan', 6.7, 220.0, 'Placentia, CA');
INSERT INTO "leute" VALUES (4, 'Rob Cunningham', 6.8, 215.0, 'Westport, CT');
INSERT INTO "leute" VALUES (5, 'John Danks', 6.6, 190.0, 'Beaver Dam, KY');
INSERT INTO "leute" VALUES (6, 'Ovie Dotson', 6.5, 200.0, 'San Antonio, TX');
INSERT INTO "leute" VALUES (7, 'Gary Goodner', 6.7, 220.0, 'Denton, TX');
INSERT INTO "leute" VALUES (8, 'Henry Johnson', 6.6, 190.0, 'Los Angeles, CA');
INSERT INTO "leute" VALUES (9, 'Jim Krivacs', 6.1, 160.0, 'Indianapolis, IN');
INSERT INTO "leute" VALUES (10, 'John Moore', 6.1, 170.0, 'Altoona, PA');
INSERT INTO "leute" VALUES (11, 'Mike Murphy', 6.8, 215.0, 'Austin, TX');

INSERT INTO "täter" VALUES (1, 1, '04.26 April 26/27', 1982.0, 'Uiryeong', 'South Korea', 56, 37);
INSERT INTO "täter" VALUES (2, 3, '11.18 Nov. 18', 1995.0, 'Zhaodong', 'China', 32, 16);
INSERT INTO "täter" VALUES (3, 4, '05.21 May 21', 1938.0, 'Kaio', 'Japan', 30, 3);
INSERT INTO "täter" VALUES (4, 6, '09.20 Sep. 20', 1994.0, 'Beijing', 'China', 23, 80);
INSERT INTO "täter" VALUES (5, 8, '04.00 April', 1950.0, 'Nainital', 'India', 22, 0);

COMMIT;