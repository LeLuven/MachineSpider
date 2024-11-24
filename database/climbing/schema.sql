CREATE TABLE "berg"
(
	"berg_id"   INT,
	"name"      TEXT,
	"höhe"      REAL,
	"vorsprung" REAL,
	"bereich"   TEXT,
	"land"      TEXT,
	PRIMARY KEY ("berg_id")
);

CREATE TABLE "bergsteiger"
(
	"bergsteiger_id" INT,
	"name"           TEXT,
	"land"           TEXT,
	"zeit"           TEXT,
	"punkte"         REAL,
	"berg_id"        INT,
	PRIMARY KEY ("bergsteiger_id"),
	FOREIGN KEY ("berg_id") REFERENCES "berg" ("berg_id")
);

BEGIN TRANSACTION;
INSERT INTO "berg" VALUES (1, 'Kibo (Uhuru Pk)', 5895.0, 5885.0, 'Kilimanjaro', 'Tanzania');
INSERT INTO "berg" VALUES (2, 'Mount Kenya (Batian)', 5199.0, 3825.0, 'Mount Kenya', 'Kenya');
INSERT INTO "berg" VALUES (3, 'Mawenzi (Hans Meyer Pk)', 5148.0, 850.0, 'Kilimanjaro', 'Tanzania');
INSERT INTO "berg" VALUES (4, 'Ngaliema / Mt Stanley (Margherita Pk)', 5109.0, 3951.0, 'Rwenzori', 'DR Congo Uganda');
INSERT INTO "berg" VALUES (5, 'Mount Kenya (Lenana)', 4985.0, 130.0, 'Mount Kenya', 'Kenya');
INSERT INTO "berg" VALUES (6, 'Ngaliema / Mt Stanley (Savoia Pk)', 4977.0, 110.0, 'Rwenzori', 'Uganda');
INSERT INTO "berg" VALUES (7, 'Duwoni / Mt Speke (Vittorio Emanuele Pk)', 4890.0, 720.0, 'Rwenzori', 'Uganda');

INSERT INTO "bergsteiger" VALUES (1, 'Klaus Enders', 'West Germany', '1:13.05.6', 15.0, 1);
INSERT INTO "bergsteiger" VALUES (2, 'Siegfried Schauzu', 'West Germany', '1:14.56.4', 12.0, 1);
INSERT INTO "bergsteiger" VALUES (3, 'Hans Luthringhauser', 'West Germany', '1:16.58.0', 10.0, 2);
INSERT INTO "bergsteiger" VALUES (4, 'Jean Claude Castella', 'Switzerland', '1:17.16.0', 8.0, 2);
INSERT INTO "bergsteiger" VALUES (5, 'Horst Owesle', 'West Germany', '1:17.22.0', 6.0, 2);
INSERT INTO "bergsteiger" VALUES (6, 'Georg Auerbacher', 'West Germany', '1:18.14.6', 5.0, 3);
INSERT INTO "bergsteiger" VALUES (7, 'Arseneus Butscher', 'West Germany', '1:21.35.6', 4.0, 5);
INSERT INTO "bergsteiger" VALUES (8, 'Charlie Freedman', 'United Kingdom', '1:25.02.8', 3.0, 5);
INSERT INTO "bergsteiger" VALUES (9, 'L Currie', 'United Kingdom', '1:25.40.6', 2.0, 7);
INSERT INTO "bergsteiger" VALUES (10, 'Mick Horsepole', 'United Kingdom', '1:27.28.8', 1.0, 7);

COMMIT;