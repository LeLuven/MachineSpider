CREATE TABLE "vertreter"
(
	"vertreter_id" INT,
	"name"         TEXT,
	"bundesland"   TEXT,
	"partei"       TEXT,
	"lebensdauer"  TEXT,
	PRIMARY KEY ("vertreter_id")
);

CREATE TABLE "wahl"
(
	"wahl_id"       INT,
	"vertreter_id"  INT,
	"datum"         TEXT,
	"stimmen"       REAL,
	"stimmenanteil" REAL,
	"sitze"         REAL,
	"ort"           REAL,
	PRIMARY KEY ("wahl_id"),
	FOREIGN KEY ("vertreter_id") REFERENCES "vertreter" ("vertreter_id")
);

BEGIN TRANSACTION;
INSERT INTO "vertreter" VALUES (1, 'Dan Quayle', 'Indiana', 'Republican', '1947–');
INSERT INTO "vertreter" VALUES (2, 'John Quayle', 'New York', 'Democratic', '1868–1930');
INSERT INTO "vertreter" VALUES (3, 'Al Quie', 'Minnesota', 'Republican', '1923–');
INSERT INTO "vertreter" VALUES (4, 'James M. Quigley', 'Pennsylvania', 'Democratic', '1918–');
INSERT INTO "vertreter" VALUES (5, 'Jimmy Quillen', 'Tennessee', 'Republican', '1916–2003');
INSERT INTO "vertreter" VALUES (6, 'Jack Quinn', 'New York', 'Republican', '1951–');
INSERT INTO "vertreter" VALUES (7, 'James L. Quinn', 'Pennsylvania', 'Democratic', '1875–1960');

INSERT INTO "wahl" VALUES (1, 1, 'July 1942', 9423.0, 16.2, 6.0, 3.0);
INSERT INTO "wahl" VALUES (2, 2, 'October 1942', 11059.0, 18.5, 10.0, 1.0);
INSERT INTO "wahl" VALUES (3, 4, '1946', 13049.0, 19.5, 10.0, 2.0);
INSERT INTO "wahl" VALUES (4, 5, '1949', 14077.0, 19.5, 9.0, 2.0);
INSERT INTO "wahl" VALUES (5, 7, '1953', 12422.0, 16.0, 7.0, 3.0);

COMMIT;