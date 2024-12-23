CREATE TABLE "stadt"
(
	"stadt_id"          INT,
	"offizieller_name"  TEXT,
	"status"            TEXT,
	"fläche_km_2"       REAL,
	"bevölkerung"       REAL,
	"volkszählungsrang" TEXT,
	PRIMARY KEY ("stadt_id")
);

CREATE TABLE "bauernhof"
(
	"betrieb_id"        INT,
	"jahr"              INT,
	"pferde_gesamt"     REAL,
	"arbeitspferde"     REAL,
	"rinder_insgesamt"  REAL,
	"ochsen"            REAL,
	"stiere"            REAL,
	"kühe"              REAL,
	"schweine"          REAL,
	"schafe_und_ziegen" REAL,
	PRIMARY KEY ("betrieb_id")
);

CREATE TABLE "bauernhof_wettbewerb"
(
	"wettbewerb_id"     INT,
	"jahr"              INT,
	"thema"             TEXT,
	"gastgeberstadt_id" INT,
	"gastgeber"         TEXT,
	PRIMARY KEY ("wettbewerb_id"),
	FOREIGN KEY ("gastgeberstadt_id") REFERENCES "stadt" ("stadt_id")
);

CREATE TABLE "wettbewerb_rekord"
(
	"wettbewerb_id" INT,
	"betrieb_id"    INT,
	"rang"          INT,
	PRIMARY KEY ("wettbewerb_id", "betrieb_id"),
	FOREIGN KEY ("wettbewerb_id") REFERENCES "bauernhof_wettbewerb" ("wettbewerb_id"),
	FOREIGN KEY ("betrieb_id") REFERENCES "bauernhof" ("betrieb_id")
);

BEGIN TRANSACTION;
INSERT INTO "stadt" VALUES (1, 'Grand Falls/Grand-Sault', 'Town', 18.06, 5706.0, '636 of 5008');
INSERT INTO "stadt" VALUES (2, 'Perth-Andover', 'Village', 8.89, 1778.0, '1442 of 5,008');
INSERT INTO "stadt" VALUES (3, 'Plaster Rock', 'Village', 3.09, 1135.0, '1936 of 5,008');
INSERT INTO "stadt" VALUES (4, 'Drummond', 'Village', 8.91, 775.0, '2418 of 5008');
INSERT INTO "stadt" VALUES (5, 'Aroostook', 'Village', 2.24, 351.0, '3460 of 5008');

INSERT INTO "bauernhof" VALUES (1, 1927, 5056.5, 3900.1, 8374.5, 805.5, 31.6, 3852.1, 4412.4, 7956.3);
INSERT INTO "bauernhof" VALUES (2, 1928, 5486.9, 4090.5, 8604.8, 895.3, 32.8, 3987.0, 6962.9, 8112.2);
INSERT INTO "bauernhof" VALUES (3, 1929, 5607.5, 4198.8, 7611.0, 593.7, 26.9, 3873.0, 4161.2, 7030.8);
INSERT INTO "bauernhof" VALUES (4, 1930, 5308.2, 3721.6, 6274.1, 254.8, 49.6, 3471.6, 3171.8, 4533.4);
INSERT INTO "bauernhof" VALUES (5, 1931, 4781.3, 3593.7, 6189.5, 113.8, 40.0, 3377.0, 3373.3, 3364.8);
INSERT INTO "bauernhof" VALUES (6, 1932, 3658.9, 3711.6, 5006.7, 105.2, 71.6, 2739.5, 2623.7, 2109.5);
INSERT INTO "bauernhof" VALUES (7, 1933, 2604.8, 3711.2, 4446.3, 116.9, 37.6, 2407.2, 2089.2, 2004.7);
INSERT INTO "bauernhof" VALUES (8, 1934, 2546.9, 2197.3, 5277.5, 156.5, 46.7, 2518.0, 4236.7, 2197.1);

INSERT INTO "bauernhof_wettbewerb" VALUES (1, 2013, 'Carnival M is back!', 1, 'Miley Cyrus Jared Leto and Karen Mok');
INSERT INTO "bauernhof_wettbewerb" VALUES (2, 2006, 'Codehunters', 2, 'Leehom Wang and Kelly Rowland');
INSERT INTO "bauernhof_wettbewerb" VALUES (3, 2005, 'MTV Asia Aid', 3, 'Alicia Keys');
INSERT INTO "bauernhof_wettbewerb" VALUES (4, 2004, 'Valentine''s Day', 4, 'Vanness Wu and Michelle Branch');
INSERT INTO "bauernhof_wettbewerb" VALUES (5, 2003, 'MTV Cube', 5, 'Shaggy and Coco Lee');
INSERT INTO "bauernhof_wettbewerb" VALUES (6, 2002, 'Aliens', 5, 'Mandy Moore and Ronan Keating');

INSERT INTO "wettbewerb_rekord" VALUES (1, 8, 1);
INSERT INTO "wettbewerb_rekord" VALUES (1, 2, 2);
INSERT INTO "wettbewerb_rekord" VALUES (1, 3, 3);
INSERT INTO "wettbewerb_rekord" VALUES (2, 1, 3);
INSERT INTO "wettbewerb_rekord" VALUES (2, 4, 1);
INSERT INTO "wettbewerb_rekord" VALUES (2, 3, 2);
INSERT INTO "wettbewerb_rekord" VALUES (3, 7, 1);
INSERT INTO "wettbewerb_rekord" VALUES (3, 1, 3);
INSERT INTO "wettbewerb_rekord" VALUES (4, 3, 2);
INSERT INTO "wettbewerb_rekord" VALUES (4, 1, 4);
INSERT INTO "wettbewerb_rekord" VALUES (5, 5, 1);
INSERT INTO "wettbewerb_rekord" VALUES (5, 3, 2);

COMMIT;