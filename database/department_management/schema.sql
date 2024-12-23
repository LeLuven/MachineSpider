CREATE TABLE "abteilung"
(
	"abteilung_id"           INT,
	"name"                   TEXT,
	"erstellung"             TEXT,
	"rang"                   INT,
	"budget_in_milliarden"   REAL,
	"anzahl_der_mitarbeiter" REAL,
	PRIMARY KEY ("abteilung_id")
);

CREATE TABLE "kopf"
(
	"leiter_id"   INT,
	"name"        TEXT,
	"geburtsland" TEXT,
	"alter"       REAL,
	PRIMARY KEY ("leiter_id")
);

CREATE TABLE "verwaltung"
(
	"abteilung_id"      INT,
	"leiter_id"         INT,
	"aushilfstätigkeit" TEXT,
	PRIMARY KEY ("abteilung_id", "leiter_id"),
	FOREIGN KEY ("abteilung_id") REFERENCES "abteilung" ("abteilung_id"),
	FOREIGN KEY ("leiter_id") REFERENCES "kopf" ("leiter_id")
);

BEGIN TRANSACTION;
INSERT INTO "abteilung" VALUES (1, 'State', '1789', 1, 9.96, 30266.0);
INSERT INTO "abteilung" VALUES (2, 'Treasury', '1789', 2, 11.1, 115897.0);
INSERT INTO "abteilung" VALUES (3, 'Defense', '1947', 3, 439.3, 3000000.0);
INSERT INTO "abteilung" VALUES (4, 'Justice', '1870', 4, 23.4, 112557.0);
INSERT INTO "abteilung" VALUES (5, 'Interior', '1849', 5, 10.7, 71436.0);
INSERT INTO "abteilung" VALUES (6, 'Agriculture', '1889', 6, 77.6, 109832.0);
INSERT INTO "abteilung" VALUES (7, 'Commerce', '1903', 7, 6.2, 36000.0);
INSERT INTO "abteilung" VALUES (8, 'Labor', '1913', 8, 59.7, 17347.0);
INSERT INTO "abteilung" VALUES (9, 'Health and Human Services', '1953', 9, 543.2, 67000.0);
INSERT INTO "abteilung" VALUES (10, 'Housing and Urban Development', '1965', 10, 46.2, 10600.0);
INSERT INTO "abteilung" VALUES (11, 'Transportation', '1966', 11, 58.0, 58622.0);
INSERT INTO "abteilung" VALUES (12, 'Energy', '1977', 12, 21.5, 116100.0);
INSERT INTO "abteilung" VALUES (13, 'Education', '1979', 13, 62.8, 4487.0);
INSERT INTO "abteilung" VALUES (14, 'Veterans Affairs', '1989', 14, 73.2, 235000.0);
INSERT INTO "abteilung" VALUES (15, 'Homeland Security', '2002', 15, 44.6, 208000.0);

INSERT INTO "kopf" VALUES (1, 'Tiger Woods', 'Alabama', 67.0);
INSERT INTO "kopf" VALUES (2, 'Sergio García', 'California', 68.0);
INSERT INTO "kopf" VALUES (3, 'K. J. Choi', 'Alabama', 69.0);
INSERT INTO "kopf" VALUES (4, 'Dudley Hart', 'California', 52.0);
INSERT INTO "kopf" VALUES (5, 'Jeff Maggert', 'Delaware', 53.0);
INSERT INTO "kopf" VALUES (6, 'Billy Mayfair', 'California', 69.0);
INSERT INTO "kopf" VALUES (7, 'Stewart Cink', 'Florida', 50.0);
INSERT INTO "kopf" VALUES (8, 'Nick Faldo', 'California', 56.0);
INSERT INTO "kopf" VALUES (9, 'Pádraig Harrington', 'Connecticut', 43.0);
INSERT INTO "kopf" VALUES (10, 'Franklin Langham', 'Connecticut', 67.0);

INSERT INTO "verwaltung" VALUES (2, 5, 'Yes');
INSERT INTO "verwaltung" VALUES (15, 4, 'Yes');
INSERT INTO "verwaltung" VALUES (2, 6, 'Yes');
INSERT INTO "verwaltung" VALUES (7, 3, 'No');
INSERT INTO "verwaltung" VALUES (11, 10, 'No');

COMMIT;