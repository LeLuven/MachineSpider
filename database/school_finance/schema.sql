CREATE TABLE "schule"
(
	"schul_id"            TEXT,
	"schulname"           TEXT,
	"standort"            TEXT,
	"maskottchen"         TEXT,
	"einschreibezahlen"   INT,
	"ihsaa_klasse"        TEXT,
	"ihsaa_fußballklasse" TEXT,
	"landkreis"           TEXT,
	PRIMARY KEY ("schul_id")
);

CREATE TABLE "haushalt"
(
	"schul_id"                           INT,
	"jahr"                               INT,
	"budgetiert"                         INT,
	"gesamtbudget_in_prozent_budgetiert" REAL,
	"investiert"                         INT,
	"gesamtbudget_in_prozent_investiert" REAL,
	"investiertes_budget_in_prozent"     TEXT,
	PRIMARY KEY ("schul_id", "jahr"),
	FOREIGN KEY ("schul_id") REFERENCES "schule" ("schul_id")
);

CREATE TABLE "stiftungsfonds"
(
	"stiftung_id" INT,
	"schul_id"    INT,
	"spendername" TEXT,
	"betrag"      REAL,
	PRIMARY KEY ("stiftung_id"),
	FOREIGN KEY ("schul_id") REFERENCES "schule" ("schul_id")
);

BEGIN TRANSACTION;
INSERT INTO "schule" VALUES ('1', 'Bremen', 'Bremen', 'Lions', 495, 'AA', 'AA', '50 Marshall');
INSERT INTO "schule" VALUES ('2', 'Culver Community', 'Culver', 'Cavaliers', 287, 'A', 'A', '50 Marshall');
INSERT INTO "schule" VALUES ('3', 'Glenn', 'Walkerton', 'Falcons', 605, 'AAA', 'AAA', '71 St. Joseph');
INSERT INTO "schule" VALUES ('4', 'Jimtown', 'Elkhart', 'Jimmies', 601, 'AAA', 'AAA', '20 Elkhart');
INSERT INTO "schule" VALUES ('5', 'Knox Community', 'Knox', 'Redskins', 620, 'AAA', 'AAA', '75 Starke');
INSERT INTO "schule" VALUES ('6', 'LaVille', 'Lakeville', 'Lancers', 379, 'AA', 'A', '71 St. Joseph');
INSERT INTO "schule" VALUES ('7', 'New Prairie 1', 'New Carlisle', 'Cougars', 852, 'AAA', 'AAAA', '46 LaPorte 71 St. Joseph');
INSERT INTO "schule" VALUES ('8', 'Triton', 'Bourbon', 'Trojans', 316, 'A', 'A', '50 Marshall');

INSERT INTO "haushalt" VALUES (2, 1999, 4979, 2.0, 2134, 2.0, '42.9');
INSERT INTO "haushalt" VALUES (2, 2000, 3666, 2.0, 5840, 2.0, '159.3');
INSERT INTO "haushalt" VALUES (2, 2001, 6803, 2.0, 8335, 2.0, '122.5');
INSERT INTO "haushalt" VALUES (3, 2002, 6803, 2.0, 8335, 2.0, '146.9');
INSERT INTO "haushalt" VALUES (1, 2003, 119527, 2.4, 85249, 2.2, '71.3');
INSERT INTO "haushalt" VALUES (4, 2004, 74849, 2.0, 95542, 2.2, '127.6');
INSERT INTO "haushalt" VALUES (5, 2005, 61283, 1.3, 140102, 2.7, '228.8');
INSERT INTO "haushalt" VALUES (5, 2006, 113531, 2.0, 146102, 2.7, '228.6');

INSERT INTO "stiftungsfonds" VALUES (1, 1, 'Monte Plata', 9.51);
INSERT INTO "stiftungsfonds" VALUES (2, 2, 'San José de Ocoa', 9.83);
INSERT INTO "stiftungsfonds" VALUES (3, 3, 'Distrito Nacional', 9.55);
INSERT INTO "stiftungsfonds" VALUES (4, 3, 'Valverde', 9.73);
INSERT INTO "stiftungsfonds" VALUES (5, 3, 'San Cristóbal', 9.05);
INSERT INTO "stiftungsfonds" VALUES (6, 4, 'Santo Domingo Este', 8.99);
INSERT INTO "stiftungsfonds" VALUES (7, 4, 'Santiago', 8.85);
INSERT INTO "stiftungsfonds" VALUES (8, 5, 'Duarte', 8.53);
INSERT INTO "stiftungsfonds" VALUES (9, 6, 'Com. Dom. En Estados Unidos', 8.43);
INSERT INTO "stiftungsfonds" VALUES (10, 7, 'La Vega', 8.82);
INSERT INTO "stiftungsfonds" VALUES (11, 8, 'Peravia', 8.33);

COMMIT;