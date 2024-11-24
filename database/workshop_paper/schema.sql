CREATE TABLE "werkstatt"
(
	"werkstatt_id"      INT,
	"datum"             TEXT,
	"veranstaltungsort" TEXT,
	"name"              TEXT,
	PRIMARY KEY ("werkstatt_id")
);

CREATE TABLE "anmeldung"
(
	"einreichung_id" INT,
	"bewertungen"    REAL,
	"autor"          TEXT,
	"hochschule"     TEXT,
	PRIMARY KEY ("einreichung_id")
);

CREATE TABLE "annahme"
(
	"einreichung_id" INT,
	"werkstatt_id"   INT,
	"ergebnis"       TEXT,
	PRIMARY KEY ("einreichung_id", "werkstatt_id"),
	FOREIGN KEY ("einreichung_id") REFERENCES "anmeldung" ("einreichung_id"),
	FOREIGN KEY ("werkstatt_id") REFERENCES "werkstatt" ("werkstatt_id")
);

BEGIN TRANSACTION;
INSERT INTO "werkstatt" VALUES (1, 'August 18, 2007', 'London UK', 'ABC 2007');
INSERT INTO "werkstatt" VALUES (2, 'August 21, 2007', 'London UK', 'Conference 2007');
INSERT INTO "werkstatt" VALUES (3, 'August 25, 2007', 'New Jersey USA', 'Workshop 2007');
INSERT INTO "werkstatt" VALUES (4, 'October 8, 2007', 'New York USA', '2007 qualification');
INSERT INTO "werkstatt" VALUES (5, 'January 14, 2008', 'New York USA', '2008 qualification');
INSERT INTO "werkstatt" VALUES (6, 'July 5, 2011', 'Istanbul Turkey', 'Anual Workshop 2011');

INSERT INTO "anmeldung" VALUES (1, 72.0, 'Steve Niehaus', 'Notre Dame');
INSERT INTO "anmeldung" VALUES (2, 79.0, 'Sammy Green', 'Florida');
INSERT INTO "anmeldung" VALUES (3, 78.0, 'Sherman Smith', 'Miami (OH)');
INSERT INTO "anmeldung" VALUES (4, 79.0, 'Steve Raible', 'Georgia Tech');
INSERT INTO "anmeldung" VALUES (5, 82.0, 'Jeff Lloyd', 'West Texas State');
INSERT INTO "anmeldung" VALUES (6, 89.0, 'Rick Engles', 'Tulsa');
INSERT INTO "anmeldung" VALUES (7, 92.0, 'Don Bitterlich', 'Temple');
INSERT INTO "anmeldung" VALUES (8, 93.0, 'Steve Myer', 'New Mexico');
INSERT INTO "anmeldung" VALUES (9, 82.0, 'Randy Johnson', 'Georgia');
INSERT INTO "anmeldung" VALUES (10, 83.0, 'Andy Bolton', 'Fisk');

INSERT INTO "annahme" VALUES (2, 5, 'Accepted');
INSERT INTO "annahme" VALUES (2, 3, 'Rejected');
INSERT INTO "annahme" VALUES (3, 2, 'Rejected');
INSERT INTO "annahme" VALUES (4, 6, 'Rejected');
INSERT INTO "annahme" VALUES (5, 6, 'Rejected');
INSERT INTO "annahme" VALUES (1, 1, 'Accepted');

COMMIT;