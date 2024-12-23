CREATE TABLE "programm"
(
	"programm_id" INT,
	"name"        TEXT,
	"herkunft"    TEXT,
	"start"       REAL,
	"besitzer"    TEXT,
	PRIMARY KEY ("programm_id")
);

CREATE TABLE "kanal"
(
	"kanal_id"             INT,
	"name"                 TEXT,
	"besitzer"             TEXT,
	"anteil_in_prozent"    REAL,
	"bewertung_in_prozent" REAL,
	PRIMARY KEY ("kanal_id")
);

CREATE TABLE "broadcast"
(
	"kanal_id"    INT,
	"programm_id" INT,
	"tageszeit"   TEXT,
	PRIMARY KEY ("kanal_id", "programm_id"),
	FOREIGN KEY ("kanal_id") REFERENCES "kanal" ("kanal_id"),
	FOREIGN KEY ("programm_id") REFERENCES "programm" ("programm_id")
);

CREATE TABLE "broadcast_share"
(
	"kanal_id"          INT,
	"programm_id"       INT,
	"datum"             TEXT,
	"anteil_in_prozent" REAL,
	PRIMARY KEY ("kanal_id", "programm_id"),
	FOREIGN KEY ("kanal_id") REFERENCES "kanal" ("kanal_id"),
	FOREIGN KEY ("programm_id") REFERENCES "programm" ("programm_id")
);

BEGIN TRANSACTION;
INSERT INTO "programm" VALUES (1, 'Aniworld', 'Hunan', 2005.0, 'Hunan Broadcasting System (HBS)');
INSERT INTO "programm" VALUES (2, 'Kaku', 'Beijing', 2004.0, 'Beijing Television (BTV)');
INSERT INTO "programm" VALUES (3, 'Toonmax', 'Shanghai', 2005.0, 'Shanghai Media Group (SMG)');
INSERT INTO "programm" VALUES (4, 'Jiajia', 'Guangdong', 2007.0, 'Southern Media Corporation (SMC)');
INSERT INTO "programm" VALUES (5, 'Youman', 'Jiangsu', 2010.0, 'Jiangsu Broadcasting Corporation (JSBC)');

INSERT INTO "kanal" VALUES (1, 'CCTV-1', 'CCTV', 4.9, 0.54);
INSERT INTO "kanal" VALUES (2, 'Hunan Satellite TV', 'HBS', 4.81, 0.53);
INSERT INTO "kanal" VALUES (3, 'CCTV-8', 'CCTV', 3.76, 0.41);
INSERT INTO "kanal" VALUES (4, 'CCTV-13', 'CCTV', 2.91, 0.32);
INSERT INTO "kanal" VALUES (5, 'CCTV-3', 'CCTV', 2.86, 0.31);
INSERT INTO "kanal" VALUES (6, 'CCTV-6', 'CCTV', 2.73, 0.3);
INSERT INTO "kanal" VALUES (7, 'CCTV-14', 'CCTV', 2.6, 0.29);
INSERT INTO "kanal" VALUES (8, 'CCTV-4', 'CCTV', 2.33, 0.26);
INSERT INTO "kanal" VALUES (9, 'Anhui Satellite TV', 'Anhui Television', 1.78, 0.2);
INSERT INTO "kanal" VALUES (10, 'Shandong Satellite TV', 'Shandong Television', 1.74, 0.19);

INSERT INTO "broadcast" VALUES (1, 1, 'Morning');
INSERT INTO "broadcast" VALUES (2, 1, 'Night');
INSERT INTO "broadcast" VALUES (3, 2, 'Morning');
INSERT INTO "broadcast" VALUES (4, 1, 'Night');
INSERT INTO "broadcast" VALUES (5, 4, 'Morning');
INSERT INTO "broadcast" VALUES (6, 3, 'Morning');
INSERT INTO "broadcast" VALUES (7, 3, 'Noon');
INSERT INTO "broadcast" VALUES (8, 2, 'Night');
INSERT INTO "broadcast" VALUES (9, 3, 'Noon');
INSERT INTO "broadcast" VALUES (10, 4, 'Night');
INSERT INTO "broadcast" VALUES (1, 2, 'Night');

INSERT INTO "broadcast_share" VALUES (1, 1, '01,May', 3.1);
INSERT INTO "broadcast_share" VALUES (2, 1, '02,May', 1.8);
INSERT INTO "broadcast_share" VALUES (3, 2, '03,May', 2.8);
INSERT INTO "broadcast_share" VALUES (4, 1, '04,April', 3.2);
INSERT INTO "broadcast_share" VALUES (5, 4, '01,May', 1.1);
INSERT INTO "broadcast_share" VALUES (6, 3, '03,May', 2.1);
INSERT INTO "broadcast_share" VALUES (7, 3, '10,Jun', 1.9);
INSERT INTO "broadcast_share" VALUES (8, 2, '11,May', 4.2);
INSERT INTO "broadcast_share" VALUES (9, 3, '13,May', 3.0);

COMMIT;