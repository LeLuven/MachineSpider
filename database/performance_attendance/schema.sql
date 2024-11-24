CREATE TABLE "mitglied"
(
	"mitglied_id"  TEXT,
	"name"         TEXT,
	"nationalität" TEXT,
	"rolle"        TEXT,
	PRIMARY KEY ("mitglied_id")
);

CREATE TABLE "leistung"
(
	"leistung_id" REAL,
	"datum"       TEXT,
	"host"        TEXT,
	"ort"         TEXT,
	"anwesenheit" INT,
	PRIMARY KEY ("leistung_id")
);

CREATE TABLE "mitglied_anwesenheit"
(
	"mitglied_id"       INT,
	"leistung_id"       INT,
	"anzahl_der_stücke" INT,
	PRIMARY KEY ("mitglied_id", "leistung_id"),
	FOREIGN KEY ("mitglied_id") REFERENCES "mitglied" ("mitglied_id"),
	FOREIGN KEY ("leistung_id") REFERENCES "leistung" ("leistung_id")
);

BEGIN TRANSACTION;
INSERT INTO "mitglied" VALUES ('1', 'Wilfredo Ruiz', 'Uruguay', 'Prime Violin');
INSERT INTO "mitglied" VALUES ('2', 'Luis González', 'Argentina', 'Violin');
INSERT INTO "mitglied" VALUES ('3', 'Héctor Campana', 'Argentina', 'Violin');
INSERT INTO "mitglied" VALUES ('4', 'Héctor Campana', 'Argentina', 'Violin');
INSERT INTO "mitglied" VALUES ('5', 'Juan Espil', 'Argentina', 'Viola');
INSERT INTO "mitglied" VALUES ('6', 'Andrew Moten', 'United States', 'Viola');
INSERT INTO "mitglied" VALUES ('7', 'Charlie Burke', 'United States', 'Viola');
INSERT INTO "mitglied" VALUES ('8', 'Corey Allen', 'United States', 'Cello');
INSERT INTO "mitglied" VALUES ('9', 'John Eubanks', 'United States', 'Cello');
INSERT INTO "mitglied" VALUES ('10', 'Joshua Pittman', 'United States', 'Bass');
INSERT INTO "mitglied" VALUES ('11', 'Joseph Bunn', 'United States', 'Bass');

INSERT INTO "leistung" VALUES (1.0, 'February 2', 'Boston Bruins', 'TD Garden', 165);
INSERT INTO "leistung" VALUES (2.0, 'February 4', 'New York Rangers', 'Madison Square Garden', 1820);
INSERT INTO "leistung" VALUES (3.0, 'February 5', 'Atlanta Thrashers', 'Verizon Center', 1878);
INSERT INTO "leistung" VALUES (4.0, 'February 7', 'Pittsburgh Penguins', 'Verizon Center', 1877);
INSERT INTO "leistung" VALUES (5.0, 'February 10', 'Montreal Canadiens', 'Bell Centre', 2173);
INSERT INTO "leistung" VALUES (6.0, 'February 11', 'Ottawa Senators', 'Scotiabank Place', 1982);

INSERT INTO "mitglied_anwesenheit" VALUES (11, 3, 2);
INSERT INTO "mitglied_anwesenheit" VALUES (7, 2, 3);
INSERT INTO "mitglied_anwesenheit" VALUES (4, 6, 4);
INSERT INTO "mitglied_anwesenheit" VALUES (2, 1, 1);
INSERT INTO "mitglied_anwesenheit" VALUES (3, 1, 1);
INSERT INTO "mitglied_anwesenheit" VALUES (4, 3, 2);
INSERT INTO "mitglied_anwesenheit" VALUES (5, 1, 2);
INSERT INTO "mitglied_anwesenheit" VALUES (1, 4, 4);

COMMIT;