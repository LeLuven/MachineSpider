CREATE TABLE "museum"
(
	"museum_id"              INT,
	"name"                   TEXT,
	"anzahl_der_mitarbeiter" INT,
	"eröffnungsjahr"         TEXT,
	PRIMARY KEY ("museum_id")
);

CREATE TABLE "kunde"
(
	"kunden_id"      INT,
	"name"           TEXT,
	"mitgliedsstufe" INT,
	"alter"          INT,
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "besuch"
(
	"museum_id"      INT,
	"kunden_id"      TEXT,
	"num_of_ticket"  INT,
	"gesamtausgaben" REAL,
	PRIMARY KEY ("museum_id", "kunden_id"),
	FOREIGN KEY ("museum_id") REFERENCES "museum" ("museum_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunde" ("kunden_id")
);

BEGIN TRANSACTION;
INSERT INTO "museum" VALUES (1, 'Plaza Museum', 62, '2000');
INSERT INTO "museum" VALUES (2, 'Capital Plaza Museum', 25, '2012');
INSERT INTO "museum" VALUES (3, 'Jefferson Development Museum', 18, '2010');
INSERT INTO "museum" VALUES (4, 'Willow Grande Museum', 17, '2011');
INSERT INTO "museum" VALUES (5, 'RiverPark Museum', 16, '2008');
INSERT INTO "museum" VALUES (6, 'Place Tower Museum', 16, '2008');
INSERT INTO "museum" VALUES (7, 'Central City District Residential Museum', 15, '2010');
INSERT INTO "museum" VALUES (8, 'ZirMed Gateway Museum', 12, '2009');

INSERT INTO "kunde" VALUES (1, 'Gonzalo Higuaín ', 8, 35);
INSERT INTO "kunde" VALUES (2, 'Guti Midfielder', 5, 28);
INSERT INTO "kunde" VALUES (3, 'Arjen Robben', 1, 27);
INSERT INTO "kunde" VALUES (4, 'Raúl Brown', 2, 56);
INSERT INTO "kunde" VALUES (5, 'Fernando Gago', 6, 36);
INSERT INTO "kunde" VALUES (6, 'Rafael van der Vaart', 1, 25);

INSERT INTO "besuch" VALUES (1, '5', 20, 320.14);
INSERT INTO "besuch" VALUES (2, '5', 4, 89.98);
INSERT INTO "besuch" VALUES (4, '3', 10, 320.44);
INSERT INTO "besuch" VALUES (2, '3', 24, 209.98);
INSERT INTO "besuch" VALUES (4, '6', 3, 20.44);
INSERT INTO "besuch" VALUES (8, '6', 2, 19.98);

COMMIT;