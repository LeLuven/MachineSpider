CREATE TABLE "landkreis"
(
	"bezirk_id"    INT,
	"bezirksname"  TEXT,
	"bevölkerung"  REAL,
	"postleitzahl" TEXT,
	PRIMARY KEY ("bezirk_id")
);

CREATE TABLE "partei"
(
	"partei_id"           INT,
	"jahr"                REAL,
	"partei"              TEXT,
	"gouverneur"          TEXT,
	"gouverneursleutnant" TEXT,
	"rechnungsprüfer"     TEXT,
	"generalstaatsanwalt" TEXT,
	"us_senat"            TEXT,
	PRIMARY KEY ("partei_id")
);

CREATE TABLE "wahl"
(
	"wahl_id"            INT,
	"vertretene_bezirke" TEXT,
	"bezirk"             INT,
	"delegierte"         TEXT,
	"partei"             INT,
	"zuerst_gewählt"     REAL,
	"ausschuss"          TEXT,
	PRIMARY KEY ("wahl_id"),
	FOREIGN KEY ("bezirk") REFERENCES "landkreis" ("bezirk_id"),
	FOREIGN KEY ("partei") REFERENCES "partei" ("partei_id")
);

BEGIN TRANSACTION;
INSERT INTO "landkreis" VALUES (1, 'Howard', 21000.0, 'D21');
INSERT INTO "landkreis" VALUES (2, 'Baltimore County', 90000.0, 'D08');
INSERT INTO "landkreis" VALUES (3, 'Colony', 79000.0, 'D02');
INSERT INTO "landkreis" VALUES (4, 'Mansfield', 87200.0, 'D09');
INSERT INTO "landkreis" VALUES (5, 'Manning', 13300.0, 'D11');

INSERT INTO "partei" VALUES (1, 1998.0, 'Democratic', 'Peter Vallone', 'Sandra Frankel', 'Carl McCall', 'Eliot Spitzer', 'Charles Schumer');
INSERT INTO "partei" VALUES (2, 1998.0, 'Liberal', 'Betsy McCaughey Ross', 'Jonathan Reiter', 'Carl McCall', 'Eliot Spitzer', 'Charles Schumer');
INSERT INTO "partei" VALUES (3, 2002.0, 'Democratic', 'Carl McCall', 'Dennis Mehiel', 'Alan Hevesi', 'Eliot Spitzer', '(no election)');
INSERT INTO "partei" VALUES (4, 2002.0, 'Independence', 'Tom Golisano', 'Mary Donohue', 'John Faso', 'Eliot Spitzer', '(no election)');
INSERT INTO "partei" VALUES (5, 2006.0, 'Democratic', 'Eliot Spitzer', 'David Paterson', 'Alan Hevesi', 'Andrew Cuomo', 'Hillary Rodham Clinton');
INSERT INTO "partei" VALUES (6, 2006.0, 'Independence', 'Eliot Spitzer', 'David Paterson', 'Alan Hevesi', 'Jeanine Pirro', 'Hillary Rodham Clinton');
INSERT INTO "partei" VALUES (7, 2006.0, 'Working Families', 'Eliot Spitzer', 'David Paterson', 'Alan Hevesi', 'Andrew Cuomo', 'Hillary Rodham Clinton');

INSERT INTO "wahl" VALUES (1, '09.1 9A', 1, 'Bates, Gail H. Gail H. Bates', 1, 2002.0, 'Appropriations');
INSERT INTO "wahl" VALUES (2, '09.1 9A', 1, 'Miller, Warren E. Warren E. Miller', 1, 2003.0, 'Economic Matters');
INSERT INTO "wahl" VALUES (3, '12.1 12A', 2, 'DeBoy, Steven J. Sr. Steven J. DeBoy, Sr.', 2, 2002.0, 'Appropriations');
INSERT INTO "wahl" VALUES (4, '12.1 12A', 3, 'Malone, James E. Jr. James E. Malone, Jr.', 2, 1994.0, 'Environmental Matters (Vice-Chair)');
INSERT INTO "wahl" VALUES (5, '12.2 12B', 2, 'Bobo, Elizabeth Elizabeth Bobo', 3, 1994.0, 'Environmental Matters');
INSERT INTO "wahl" VALUES (6, '13', 1, 'Pendergrass, Shane E. Shane Pendergrass', 4, 1994.0, 'Health and Government Operations');
INSERT INTO "wahl" VALUES (7, '13', 4, 'Guzzone, Guy Guy Guzzone', 1, 2006.0, 'Appropriations');
INSERT INTO "wahl" VALUES (8, '13', 3, 'Turner, Frank S. Frank S. Turner', 7, 1994.0, 'Ways and Means');

COMMIT;