CREATE TABLE "leute"
(
	"personen_id"  INT,
	"nationalität" TEXT,
	"name"         TEXT,
	"geburtsdatum" TEXT,
	"größe"        REAL,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "pokerspieler"
(
	"pokerspieler_id"    INT,
	"personen_id"        INT,
	"finaltisch_gemacht" REAL,
	"beste_platzierung"  REAL,
	"geldrang"           REAL,
	"gewinn"             REAL,
	PRIMARY KEY ("pokerspieler_id"),
	FOREIGN KEY ("personen_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Russia', 'Aleksey Ostapenko', 'May 26, 1986', 207.0);
INSERT INTO "leute" VALUES (2, 'Bulgaria', 'Teodor Salparov', 'August 16, 1982', 182.0);
INSERT INTO "leute" VALUES (3, 'Russia', 'Roman Bragin', 'April 17, 1987', 187.0);
INSERT INTO "leute" VALUES (4, 'Russia', 'Sergey Grankin', 'January 22, 1987', 193.0);
INSERT INTO "leute" VALUES (5, 'Russia', 'Yevgeni Sivozhelez', 'August 8, 1986', 196.0);
INSERT INTO "leute" VALUES (6, 'Russia', 'Maksim Botin', 'July 14, 1983', 194.0);
INSERT INTO "leute" VALUES (7, 'Russia', 'Semen Poltavskiy', 'February 8, 1981', 205.0);

INSERT INTO "pokerspieler" VALUES (1, 1, 42.0, 1.0, 68.0, 476090.0);
INSERT INTO "pokerspieler" VALUES (2, 2, 10.0, 2.0, 141.0, 189233.0);
INSERT INTO "pokerspieler" VALUES (3, 5, 21.0, 1.0, 166.0, 104871.0);
INSERT INTO "pokerspieler" VALUES (4, 6, 19.0, 2.0, 58.0, 596462.0);
INSERT INTO "pokerspieler" VALUES (5, 7, 26.0, 3.0, 154.0, 142800.0);

COMMIT;