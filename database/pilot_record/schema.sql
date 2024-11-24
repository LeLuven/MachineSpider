CREATE TABLE "flugzeug"
(
	"flugzeug_id"       INT,
	"auftragsjahr"      INT,
	"hersteller"        TEXT,
	"modell"            TEXT,
	"flottenreihe"      TEXT,
	"antriebsstrang"    TEXT,
	"kraftstoffantrieb" TEXT,
	PRIMARY KEY ("flugzeug_id")
);

CREATE TABLE "pilot"
(
	"pilot_id"      INT,
	"pilot_name"    TEXT,
	"rang"          INT,
	"alter"         INT,
	"nationalität"  TEXT,
	"stellung"      TEXT,
	"beitrittsjahr" INT,
	"mannschaft"    TEXT,
	PRIMARY KEY ("pilot_id")
);

CREATE TABLE "pilot_record"
(
	"datensatz_id" INT,
	"pilot_id"     INT,
	"flugzeug_id"  INT,
	"datum"        TEXT,
	PRIMARY KEY ("pilot_id", "flugzeug_id", "datum"),
	FOREIGN KEY ("pilot_id") REFERENCES "pilot" ("pilot_id"),
	FOREIGN KEY ("flugzeug_id") REFERENCES "flugzeug" ("flugzeug_id")
);

BEGIN TRANSACTION;
INSERT INTO "flugzeug" VALUES (1, 1992, 'Gillig', 'Phantom (High Floor)', '444-464 (21)', 'DD S50EGR Allison WB-400R', 'Diesel');
INSERT INTO "flugzeug" VALUES (2, 1996, 'Gillig', 'Phantom (High Floor)', '465-467 (3)', 'DD S50 Allison WB-400R', 'Diesel');
INSERT INTO "flugzeug" VALUES (3, 1998, 'Gillig', 'Phantom (High Floor)', '468-473 (6)', 'DD S50 Allison WB-400R', 'Diesel');
INSERT INTO "flugzeug" VALUES (4, 2000, 'Gillig', 'Advantage (Low Floor)', '474-481 (8)', 'Cummins ISC Allison WB-400R', 'Diesel');
INSERT INTO "flugzeug" VALUES (5, 2002, 'Gillig', 'Advantage (Low Floor)', '482-492 (11)', 'Cummins ISL Allison WB-400R', 'Diesel');
INSERT INTO "flugzeug" VALUES (6, 2010, 'NFI', 'GE40LFR', '300-309 (10)', 'Ford Triton V10 ISE-Thundervolt TB40-HG', 'Hybrid');
INSERT INTO "flugzeug" VALUES (7, 2011, 'NFI', 'C40LFR', '310-329 (20)', 'Cummins Westport ISL-G Allison WB-400R', 'CNG');

INSERT INTO "pilot" VALUES (1, 'Patrick O''Bryant', 13, 33, 'United States', 'Center Team', 2009, 'Bradley');
INSERT INTO "pilot" VALUES (2, 'Jermaine O''Neal', 6, 40, 'United States', 'Forward-Center Team', 2008, 'Eau Claire High School');
INSERT INTO "pilot" VALUES (3, 'Dan O''Sullivan', 45, 37, 'United States', 'Center Team', 1999, 'Fordham');
INSERT INTO "pilot" VALUES (4, 'Charles Oakley', 34, 22, 'United Kindom', 'Forward Team', 2001, 'Virginia Union');
INSERT INTO "pilot" VALUES (5, 'Hakeem Olajuwon', 34, 32, 'Nigeria', 'Center Team', 2010, 'Houston');

INSERT INTO "pilot_record" VALUES (1, 1, 1, '2003/01/04');
INSERT INTO "pilot_record" VALUES (2, 2, 1, '2004/01/04');
INSERT INTO "pilot_record" VALUES (3, 1, 4, '2005/01/04');
INSERT INTO "pilot_record" VALUES (4, 3, 6, '2006/01/04');
INSERT INTO "pilot_record" VALUES (5, 4, 2, '2007/01/04');
INSERT INTO "pilot_record" VALUES (6, 1, 5, '2008/01/04');

COMMIT;