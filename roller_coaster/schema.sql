CREATE TABLE "land"
(
	"land_id"     INT,
	"name"        TEXT,
	"bevölkerung" INT,
	"gebiet"      INT,
	"sprachen"    TEXT,
	PRIMARY KEY ("land_id")
);

CREATE TABLE "achterbahn"
(
	"achterbahn_id"   INT,
	"name"            TEXT,
	"park"            TEXT,
	"land_id"         INT,
	"länge"           REAL,
	"höhe"            REAL,
	"geschwindigkeit" TEXT,
	"geöffnet"        TEXT,
	"status"          TEXT,
	PRIMARY KEY ("achterbahn_id"),
	FOREIGN KEY ("land_id") REFERENCES "land" ("land_id")
);

BEGIN TRANSACTION;
INSERT INTO "land" VALUES (1, 'Austria', 8206524, 83871, 'German');
INSERT INTO "land" VALUES (2, 'Finland', 5261008, 338145, 'Finnish Swedish');
INSERT INTO "land" VALUES (3, 'Sweden', 9047752, 449964, 'Swedish');

INSERT INTO "achterbahn" VALUES (1, 'Boardwalk Bullet', 'Kemah Boardwalk', 1, 3236.0, 96.0, '51', 'August 31, 2007', 'Operating');
INSERT INTO "achterbahn" VALUES (2, 'Dauling Dragon', 'Happy Valley', 1, 3914.0, 105.0, '55', '2012', 'Operating');
INSERT INTO "achterbahn" VALUES (3, 'Hades 360', 'Mt. Olympus', 1, 4726.0, 136.0, '70', 'May 14, 2005', 'Operating');
INSERT INTO "achterbahn" VALUES (4, 'Ravine Flyer II', 'Waldameer', 2, 2900.0, 120.0, '57', 'May 17, 2008', 'Operating');
INSERT INTO "achterbahn" VALUES (5, 'Twister', 'Gröna Lund', 2, 1574.0, 50.0, '37.9', '2011', 'Operating');
INSERT INTO "achterbahn" VALUES (6, 'The Voyage', 'Holiday World', 3, 6442.0, 163.0, '67', 'May 6, 2006', 'Operating');

COMMIT;