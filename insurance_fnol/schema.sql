CREATE TABLE "kunden"
(
	"kunden_id"  INTEGER NOT NULL,
	"kundenname" VARCHAR(40),
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "dienstleistungen"
(
	"service_id" INTEGER NOT NULL,
	"dienstname" VARCHAR(40),
	PRIMARY KEY ("service_id")
);

CREATE TABLE "verfügbare_richtlinien"
(
	"policy_id"        INTEGER NOT NULL,
	"policy_type_code" CHAR(15),
	"kundentelefon"    VARCHAR(255),
	PRIMARY KEY ("policy_id"),
	UNIQUE ("policy_id")
);

CREATE TABLE "kundenpolicen"
(
	"kunden_id"         INTEGER NOT NULL,
	"policy_id"         INTEGER NOT NULL,
	"datum_eröffnet"    DATE,
	"datum_geschlossen" DATE,
	PRIMARY KEY ("kunden_id", "policy_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id"),
	FOREIGN KEY ("policy_id") REFERENCES "verfügbare_richtlinien" ("policy_id")
);

CREATE TABLE "erstmeldung_eines_schadens"
(
	"fnol_id"    INTEGER NOT NULL,
	"kunden_id"  INTEGER NOT NULL,
	"policy_id"  INTEGER NOT NULL,
	"service_id" INTEGER NOT NULL,
	PRIMARY KEY ("fnol_id"),
	FOREIGN KEY ("kunden_id", "policy_id") REFERENCES "kundenpolicen" ("kunden_id", "policy_id"),
	FOREIGN KEY ("service_id") REFERENCES "dienstleistungen" ("service_id"),
	UNIQUE ("fnol_id")
);

CREATE TABLE "ansprüche"
(
	"claim_id"       INTEGER NOT NULL,
	"fnol_id"        INTEGER NOT NULL,
	"effective_date" DATE,
	PRIMARY KEY ("claim_id"),
	FOREIGN KEY ("fnol_id") REFERENCES "erstmeldung_eines_schadens" ("fnol_id"),
	UNIQUE ("claim_id")
);

CREATE TABLE "abrechnungen"
(
	"abrechnung_id"     INTEGER NOT NULL,
	"claim_id"          INTEGER,
	"effective_date"    DATE,
	"abrechnungsbetrag" REAL,
	PRIMARY KEY ("abrechnung_id"),
	FOREIGN KEY ("claim_id") REFERENCES "ansprüche" ("claim_id"),
	UNIQUE ("abrechnung_id")
);

BEGIN TRANSACTION;
INSERT INTO "kunden" VALUES (194, 'America Jaskolski');
INSERT INTO "kunden" VALUES (214, 'Ellsworth Paucek');
INSERT INTO "kunden" VALUES (256, 'Mrs. Hanna Willms');
INSERT INTO "kunden" VALUES (562, 'Dr. Diana Rath');
INSERT INTO "kunden" VALUES (582, 'Selena Gerhold');
INSERT INTO "kunden" VALUES (641, 'Dayana Robel');
INSERT INTO "kunden" VALUES (682, 'Mr. Edwardo Blanda I');
INSERT INTO "kunden" VALUES (756, 'Mr. Randal Lynch III');
INSERT INTO "kunden" VALUES (805, 'Mrs. Liza Heller V');
INSERT INTO "kunden" VALUES (826, 'Mrs. Lilly Graham III');
INSERT INTO "kunden" VALUES (882, 'Miss Felicita Reichel');
INSERT INTO "kunden" VALUES (892, 'Sydnie Friesen');
INSERT INTO "kunden" VALUES (923, 'David Ross');
INSERT INTO "kunden" VALUES (956, 'Cai Zhang');
INSERT INTO "kunden" VALUES (996, 'Jay Chou');

INSERT INTO "dienstleistungen" VALUES (1, 'New policy application');
INSERT INTO "dienstleistungen" VALUES (4, 'Close a policy');
INSERT INTO "dienstleistungen" VALUES (6, 'Change a policy');
INSERT INTO "dienstleistungen" VALUES (9, 'Upgrade a policy');

INSERT INTO "verfügbare_richtlinien" VALUES (246, 'Life Insurance', '+16(2)5838999222');
INSERT INTO "verfügbare_richtlinien" VALUES (257, 'Property Insurance', '242.763.9214');
INSERT INTO "verfügbare_richtlinien" VALUES (300, 'Property Insurance', '1-416-503-7735x94204');
INSERT INTO "verfügbare_richtlinien" VALUES (301, 'Property Insurance', '(777)537-7792');
INSERT INTO "verfügbare_richtlinien" VALUES (346, 'Mortgage Insurance', '1-446-940-9907x257');
INSERT INTO "verfügbare_richtlinien" VALUES (366, 'Mortgage Insurance', '(379)862-8274x12620');
INSERT INTO "verfügbare_richtlinien" VALUES (472, 'Mortgage Insurance', '+85(6)1302858396');
INSERT INTO "verfügbare_richtlinien" VALUES (583, 'Travel Insurance', '1-797-927-3585x9321');
INSERT INTO "verfügbare_richtlinien" VALUES (586, 'Life Insurance', '991.642.6485x822');
INSERT INTO "verfügbare_richtlinien" VALUES (630, 'Property Insurance', '813.178.8211x557');
INSERT INTO "verfügbare_richtlinien" VALUES (636, 'Life Insurance', '889-572-0609x552');
INSERT INTO "verfügbare_richtlinien" VALUES (751, 'Life Insurance', '1-138-841-3073');
INSERT INTO "verfügbare_richtlinien" VALUES (879, 'Mortgage Insurance', '1-381-132-0127x3801');
INSERT INTO "verfügbare_richtlinien" VALUES (927, 'Mortgage Insurance', '00481937923');
INSERT INTO "verfügbare_richtlinien" VALUES (993, 'Property Insurance', '405.090.8654x021');

INSERT INTO "kundenpolicen" VALUES (214, 257, '2016-11-19', '2018-03-04');
INSERT INTO "kundenpolicen" VALUES (214, 301, '2016-04-12', '2018-02-07');
INSERT INTO "kundenpolicen" VALUES (256, 583, '2016-07-22', '2018-02-20');
INSERT INTO "kundenpolicen" VALUES (562, 346, '2017-01-09', '2018-03-08');
INSERT INTO "kundenpolicen" VALUES (562, 583, '2016-06-24', '2018-02-22');
INSERT INTO "kundenpolicen" VALUES (582, 586, '2016-04-11', '2018-03-17');
INSERT INTO "kundenpolicen" VALUES (641, 366, '2016-07-10', '2018-02-24');
INSERT INTO "kundenpolicen" VALUES (641, 472, '2016-07-07', '2018-03-10');
INSERT INTO "kundenpolicen" VALUES (682, 583, '2016-11-01', '2018-03-03');
INSERT INTO "kundenpolicen" VALUES (826, 630, '2016-11-18', '2018-02-13');
INSERT INTO "kundenpolicen" VALUES (892, 927, '2017-01-08', '2018-02-25');
INSERT INTO "kundenpolicen" VALUES (996, 366, '2016-10-31', '2018-03-19');
INSERT INTO "kundenpolicen" VALUES (996, 879, '2017-01-05', '2018-02-20');
INSERT INTO "kundenpolicen" VALUES (996, 993, '2016-07-03', '2018-03-20');

INSERT INTO "erstmeldung_eines_schadens" VALUES (532, 214, 257, 6);
INSERT INTO "erstmeldung_eines_schadens" VALUES (1611, 996, 993, 9);
INSERT INTO "erstmeldung_eines_schadens" VALUES (1722, 996, 879, 6);
INSERT INTO "erstmeldung_eines_schadens" VALUES (2543, 996, 366, 1);
INSERT INTO "erstmeldung_eines_schadens" VALUES (4226, 892, 927, 1);
INSERT INTO "erstmeldung_eines_schadens" VALUES (4323, 826, 630, 4);
INSERT INTO "erstmeldung_eines_schadens" VALUES (4525, 582, 586, 1);

INSERT INTO "ansprüche" VALUES (134, 1722, '1973-08-18');
INSERT INTO "ansprüche" VALUES (145, 1611, '2014-10-19');
INSERT INTO "ansprüche" VALUES (228, 532, '1975-05-07');
INSERT INTO "ansprüche" VALUES (309, 2543, '1982-05-03');
INSERT INTO "ansprüche" VALUES (311, 4226, '1992-02-09');
INSERT INTO "ansprüche" VALUES (360, 4226, '2006-06-10');
INSERT INTO "ansprüche" VALUES (428, 4226, '1992-01-05');
INSERT INTO "ansprüche" VALUES (604, 4323, '2009-02-11');
INSERT INTO "ansprüche" VALUES (641, 4525, '1985-03-24');
INSERT INTO "ansprüche" VALUES (717, 4525, '1996-11-29');

INSERT INTO "abrechnungen" VALUES (161, 717, '2009-11-20', 6451.65);
INSERT INTO "abrechnungen" VALUES (176, 641, '1971-06-29', 1588.45);
INSERT INTO "abrechnungen" VALUES (205, 604, '1978-09-09', 9814.39);
INSERT INTO "abrechnungen" VALUES (208, 428, '2003-12-28', 8827.06);
INSERT INTO "abrechnungen" VALUES (393, 360, '2006-04-19', 8013.95);
INSERT INTO "abrechnungen" VALUES (543, 309, '1972-03-02', 2722.67);
INSERT INTO "abrechnungen" VALUES (544, 311, '1973-10-27', 9164.1);
INSERT INTO "abrechnungen" VALUES (604, 228, '2014-12-09', 2138.96);
INSERT INTO "abrechnungen" VALUES (616, 145, '1995-04-02', 3101.3);
INSERT INTO "abrechnungen" VALUES (628, 134, '2001-07-02', 1721.17);

COMMIT;