CREATE TABLE "leute"
(
	"personen_id"  INT,
	"name"         TEXT,
	"größe"        REAL,
	"gewicht"      REAL,
	"geburtsdatum" TEXT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "unternehmer"
(
	"unternehmer_id" INT,
	"personen_id"    INT,
	"unternehmen"    TEXT,
	"geld_beantragt" REAL,
	"investor"       TEXT,
	PRIMARY KEY ("unternehmer_id"),
	FOREIGN KEY ("personen_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Francesco Postiglione', 1.9, 80.0, '1972-04-29');
INSERT INTO "leute" VALUES (2, 'Leonardo Binchi', 1.86, 57.0, '1975-08-27');
INSERT INTO "leute" VALUES (3, 'Fabrizio Buonocore', 1.83, 45.0, '1977-04-28');
INSERT INTO "leute" VALUES (4, 'Marco Gerini', 1.72, 75.0, '1971-08-05');
INSERT INTO "leute" VALUES (5, 'Roberto Calcaterra', 1.75, 67.0, '1972-02-06');
INSERT INTO "leute" VALUES (6, 'Goran Fiorentini', 1.78, 89.0, '1981-11-21');
INSERT INTO "leute" VALUES (7, 'Alberto Angelini', 1.82, 58.0, '1974-09-28');
INSERT INTO "leute" VALUES (8, 'Maurizio Felugo', 1.95, 76.0, '1981-03-04');

INSERT INTO "unternehmer" VALUES (1, 1, 'Umbrolly', 150000.0, 'Duncan Bannatyne');
INSERT INTO "unternehmer" VALUES (2, 2, 'Grails Ltd', 120000.0, 'Doug Richard');
INSERT INTO "unternehmer" VALUES (3, 3, 'Le Beanock', 54000.0, 'Rachel Elnaugh');
INSERT INTO "unternehmer" VALUES (4, 5, 'IV Cam', 50000.0, 'Peter Jones');
INSERT INTO "unternehmer" VALUES (5, 6, 'Mycorrhizal Systems', 75000.0, 'Simon Woodroffe');
INSERT INTO "unternehmer" VALUES (6, 8, 'Elizabeth Galton Ltd', 110000.0, 'Duncan Bannatyne');

COMMIT;