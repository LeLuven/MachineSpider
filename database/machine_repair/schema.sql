CREATE TABLE "reparatur"
(
	"reparatur_id" INT,
	"name"         TEXT,
	"startdatum"   TEXT,
	"notizen"      TEXT,
	PRIMARY KEY ("reparatur_id")
);

CREATE TABLE "maschine"
(
	"maschine_id"    INT,
	"baujahr"        INT,
	"klasse"         TEXT,
	"mannschaft"     TEXT,
	"maschinenreihe" TEXT,
	"wertpunkte"     REAL,
	"qualitätsrang"  INT,
	PRIMARY KEY ("maschine_id")
);

CREATE TABLE "techniker"
(
	"techniker_id" REAL,
	"name"         TEXT,
	"mannschaft"   TEXT,
	"anfangsjahr"  REAL,
	"alter"        INT,
	PRIMARY KEY ("techniker_id")
);

CREATE TABLE "reparaturauftrag"
(
	"techniker_id" INT,
	"reparatur_id" INT,
	"maschine_id"  INT,
	PRIMARY KEY ("techniker_id", "reparatur_id", "maschine_id"),
	FOREIGN KEY ("techniker_id") REFERENCES "techniker" ("techniker_id"),
	FOREIGN KEY ("reparatur_id") REFERENCES "reparatur" ("reparatur_id"),
	FOREIGN KEY ("maschine_id") REFERENCES "maschine" ("maschine_id")
);

BEGIN TRANSACTION;
INSERT INTO "reparatur" VALUES (1, 'Discoverer', '21 Jan 2009', 'repair Failed. Failed to achieve orbit');
INSERT INTO "reparatur" VALUES (2, 'Discoverer 1', '28 Feb 2009', 'First object in polar orbit');
INSERT INTO "reparatur" VALUES (3, 'Discoverer 3', '03 Jun 2009', 'repair failed. Failed to achieve orbit');
INSERT INTO "reparatur" VALUES (4, 'OPS 3236', '13 Jun 2014', 'First object in polar orbit');
INSERT INTO "reparatur" VALUES (5, 'OPS 3467', '24 Mar 2014', 'repair failed. Guidance system failed. No orbit.');
INSERT INTO "reparatur" VALUES (6, 'OPS 3754', '19 Jun 2014', 'Out-of-focus area on some film.');
INSERT INTO "reparatur" VALUES (7, 'OPS 3491', '10 Jun 2014', 'Cameras operated satisfactorily');
INSERT INTO "reparatur" VALUES (8, 'OPS 3042', '05 Aug 2014', 'Cameras operated successfully.');
INSERT INTO "reparatur" VALUES (9, 'OPS 3360', '18 Nov 2014', 'Cameras operated successfully.');

INSERT INTO "maschine" VALUES (1, 1991, '125cc', 'Hero Sports TS- Honda', 'RS125', 105.0, 2);
INSERT INTO "maschine" VALUES (2, 1992, '125cc', 'Marlboro Pileri - Honda', 'RS125', 57.0, 1);
INSERT INTO "maschine" VALUES (3, 1993, '125cc', 'Marlboro Pileri - Honda', 'RS125', 129.0, 4);
INSERT INTO "maschine" VALUES (4, 1994, '125cc', 'Givi Racing- Honda', 'RS125', 194.0, 5);
INSERT INTO "maschine" VALUES (5, 1995, '125cc', 'Givi Racing- Honda', 'RS125', 65.0, 3);
INSERT INTO "maschine" VALUES (6, 1996, '125cc', 'Honda', 'RS125', 126.0, 7);
INSERT INTO "maschine" VALUES (7, 1997, '125cc', 'Honda', 'RS125', 238.0, 8);
INSERT INTO "maschine" VALUES (8, 1998, '125cc', 'Team Givi- Honda LCR', 'RS125', 62.0, 13);
INSERT INTO "maschine" VALUES (9, 1999, '125cc', 'Team Givi- Honda LCR', 'RS125', 171.0, 11);

INSERT INTO "techniker" VALUES (1.0, 'Joe Sewell', 'NYY', 2012.0, 37);
INSERT INTO "techniker" VALUES (2.0, 'John Brown', 'NYY', 2013.0, 36);
INSERT INTO "techniker" VALUES (3.0, 'Tony Sewell', 'CLE', 2005.0, 43);
INSERT INTO "techniker" VALUES (4.0, 'Mark Sewell', 'CLE', 2009.0, 28);
INSERT INTO "techniker" VALUES (5.0, 'Charlie Hollocher', 'CHC', 2002.0, 35);
INSERT INTO "techniker" VALUES (6.0, 'Lou Boudreau', 'CLE', 2016.0, 32);
INSERT INTO "techniker" VALUES (7.0, 'Eddie Collins', 'CWS', 2005.0, 45);
INSERT INTO "techniker" VALUES (8.0, 'Joe Cochrane', 'CLE', 2006.0, 46);
INSERT INTO "techniker" VALUES (9.0, 'Eddie Collins', 'CWS', 2003.0, 47);
INSERT INTO "techniker" VALUES (10.0, 'Mickey Cochrane', 'PHA', 2009.0, 38);

INSERT INTO "reparaturauftrag" VALUES (1, 1, 1);
INSERT INTO "reparaturauftrag" VALUES (2, 2, 2);
INSERT INTO "reparaturauftrag" VALUES (3, 3, 3);
INSERT INTO "reparaturauftrag" VALUES (1, 4, 7);
INSERT INTO "reparaturauftrag" VALUES (1, 5, 6);
INSERT INTO "reparaturauftrag" VALUES (1, 2, 3);
INSERT INTO "reparaturauftrag" VALUES (1, 8, 7);
INSERT INTO "reparaturauftrag" VALUES (5, 5, 2);
INSERT INTO "reparaturauftrag" VALUES (7, 2, 4);

COMMIT;