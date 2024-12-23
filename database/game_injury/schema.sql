CREATE TABLE "stadion"
(
	"id"                             INT,
	"name"                           TEXT,
	"heimspiele"                     INT,
	"durchschnittliche_besucherzahl" REAL,
	"gesamtzuschauerzahl"            REAL,
	"auslastung_in_prozent"          REAL,
	PRIMARY KEY ("id")
);

CREATE TABLE "spiel"
(
	"stadion_id"         INT,
	"id"                 INT,
	"saison"             INT,
	"datum"              TEXT,
	"heimmannschaft"     TEXT,
	"auswärtsmannschaft" TEXT,
	"ergebnis"           TEXT,
	"wettbewerb"         TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("stadion_id") REFERENCES "stadion" ("id")
);

CREATE TABLE "verletzung_unfall"
(
	"spiel_id"          INT,
	"id"                INT,
	"spieler"           TEXT,
	"verletzung"        TEXT,
	"anzahl_der_spiele" TEXT,
	"quelle"            TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("spiel_id") REFERENCES "spiel" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "stadion" VALUES (1, 'Cowboys Stadium', 8, 87047.0, 696377.0, 108.8);
INSERT INTO "stadion" VALUES (2, 'FedExField', 8, 83172.0, 665380.0, 90.7);
INSERT INTO "stadion" VALUES (3, 'New Meadowlands Stadium', 8, 79019.0, 632156.0, 95.8);
INSERT INTO "stadion" VALUES (4, 'New Meadowlands Stadium', 8, 78596.0, 628768.0, 95.3);
INSERT INTO "stadion" VALUES (5, 'Invesco Field at Mile High', 8, 74908.0, 599264.0, 98.4);
INSERT INTO "stadion" VALUES (6, 'Bank of America Stadium', 8, 72620.0, 580965.0, 98.4);
INSERT INTO "stadion" VALUES (7, 'M&T Bank Stadium', 8, 71227.0, 569817.0, 100.3);
INSERT INTO "stadion" VALUES (8, 'Reliant Stadium', 8, 71080.0, 568643.0, 100.0);
INSERT INTO "stadion" VALUES (9, 'Lambeau Field', 8, 70795.0, 566362.0, 97.1);
INSERT INTO "stadion" VALUES (10, 'Louisiana Superdome', 8, 70038.0, 560304.0, 96.0);
INSERT INTO "stadion" VALUES (11, 'Lincoln Financial Field', 8, 69144.0, 553152.0, 102.3);
INSERT INTO "stadion" VALUES (12, 'LP Field', 8, 69143.0, 553144.0, 100.0);
INSERT INTO "stadion" VALUES (13, 'Gillette Stadium', 8, 68756.0, 550048.0, 100.0);

INSERT INTO "spiel" VALUES (1, 1, 2007, '18 May 2007', 'Quruvchi', 'Pakhtakor', '1–1', 'League');
INSERT INTO "spiel" VALUES (2, 2, 2007, '22 September 2007', 'Pakhtakor', 'Quruvchi', '0–0', 'League');
INSERT INTO "spiel" VALUES (3, 3, 2007, '9 December 2007', 'Pakhtakor', 'Quruvchi', '0–0 (7:6)', 'Cup');
INSERT INTO "spiel" VALUES (4, 4, 2008, '10 July 2008', 'Pakhtakor', 'Quruvchi', '1–1', 'League');
INSERT INTO "spiel" VALUES (5, 5, 2008, '16 August 2008', 'Bunyodkor', 'Pakhtakor', '1–1', 'League');
INSERT INTO "spiel" VALUES (6, 6, 2008, '31 October 2008', 'Bunyodkor', 'Pakhtakor', '3–1', 'Cup');
INSERT INTO "spiel" VALUES (7, 7, 2009, '12 July 2009', 'Bunyodkor', 'Pakhtakor', '2–1', 'League');
INSERT INTO "spiel" VALUES (8, 8, 2009, '14 October 2009', 'Pakhtakor', 'Bunyodkor', '0–0', 'League');
INSERT INTO "spiel" VALUES (9, 9, 2009, '8 August 2009', 'Pakhtakor', 'Bunyodkor', '1–0', 'Cup');
INSERT INTO "spiel" VALUES (10, 10, 2010, '14 March 2010', 'Bunyodkor', 'Pakhtakor', '2–1', 'League');
INSERT INTO "spiel" VALUES (10, 11, 2010, '31 October 2010', 'Pakhtakor', 'Bunyodkor', '0–0', 'League');
INSERT INTO "spiel" VALUES (10, 12, 2011, '7 July 2011', 'Pakhtakor', 'Bunyodkor', '0–0', 'League');
INSERT INTO "spiel" VALUES (1, 13, 2011, '21 August 2011', 'Bunyodkor', 'Pakhtakor', '2–1', 'League');
INSERT INTO "spiel" VALUES (2, 14, 2012, '11 March 2012', 'Bunyodkor', 'Pakhtakor', '–', 'Supercup');
INSERT INTO "spiel" VALUES (3, 15, 2012, '26 June 2012', 'Bunyodkor', 'Pakhtakor', '2–0', 'League');
INSERT INTO "spiel" VALUES (4, 16, 2012, '9 August 2012', 'Pakhtakor', 'Bunyodkor', '1–1', 'League');
INSERT INTO "spiel" VALUES (5, 17, 2012, '22 August 2012', 'Bunyodkor', 'Pakhtakor', '1–1', 'Cup');
INSERT INTO "spiel" VALUES (11, 18, 2012, '25 November 2012', 'Pakhtakor', 'Bunyodkor', '1–3', 'Cup');
INSERT INTO "spiel" VALUES (12, 19, 2013, '30 June 2013', 'Pakhtakor', 'Bunyodkor', '0–2', 'League');
INSERT INTO "spiel" VALUES (7, 20, 2013, '8 August 2013', 'Bunyodkor', 'Pakhtakor', '1–2', 'League');

INSERT INTO "verletzung_unfall" VALUES (1, 1, 'Davide Santon', 'Clean-up surgery on his right knee', '12', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (2, 2, 'Maicon', 'Knee problem', '2', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (3, 3, 'Dejan Stanković', 'Hamstring muscle strain in his left thigh', '2', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (4, 4, 'Wesley Sneijder', 'Foot injury', '1', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (5, 5, 'Diego Milito', 'Slight thigh strain in right leg', '1', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (5, 6, 'Javier Zanetti', 'Post-traumatic pneumothrorax', '4', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (6, 7, 'Walter Samuel', 'Right thigh muscle strain', '3', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (6, 8, 'Thiago Motta', 'Surgery on his right knee', '10', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (6, 9, 'Goran Pandev', 'Ankle problem', '3', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (8, 10, 'Iván Córdoba', 'Sustained a biceps femoris strain in his left leg', '1', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (9, 11, 'Esteban Cambiasso', 'First-degree strain left hamstring muscles', '2', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (10, 12, 'Dejan Stanković (2)', 'Right calf strain', '4 (6)', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (10, 13, 'Wesley Sneijder (2)', 'Fainted during half time', '1 (2)', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (11, 14, 'Esteban Cambiasso (2)', 'Sustained posterior thigh strains in his left leg', '4 (6)', 'inter.it');
INSERT INTO "verletzung_unfall" VALUES (12, 15, 'Thiago Motta (2)', 'Knee problem', '7 (17)', 'inter.it');

COMMIT;