CREATE TABLE "leute"
(
	"personen_id"        INT,
	"alter"              INT,
	"name"               TEXT,
	"nationalität"       TEXT,
	"hochschulabschluss" TEXT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "unternehmen"
(
	"firma_id"         REAL,
	"name"             TEXT,
	"hauptsitz"        TEXT,
	"branche"          TEXT,
	"umsatz_in_mrd"    REAL,
	"gewinn_in_mrd"    REAL,
	"vermögen_in_mrd"  REAL,
	"marktwert_in_mrd" REAL,
	PRIMARY KEY ("firma_id")
);

CREATE TABLE "beschäftigung"
(
	"firma_id"    INT,
	"personen_id" INT,
	"arbeitsjahr" INT,
	PRIMARY KEY ("firma_id", "personen_id"),
	FOREIGN KEY ("firma_id") REFERENCES "unternehmen" ("firma_id"),
	FOREIGN KEY ("personen_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 27, 'Reggie Lewis', 'United States', 'Northeastern');
INSERT INTO "leute" VALUES (2, 25, 'Brad Lohaus', 'United States', 'Iowa');
INSERT INTO "leute" VALUES (3, 37, 'Tom Sheehey', 'United Kindom', 'Virginia');
INSERT INTO "leute" VALUES (4, 31, 'Darryl Kennedy', 'United States', 'Oklahoma');
INSERT INTO "leute" VALUES (5, 34, 'David Butler', 'United Kindom', 'California');
INSERT INTO "leute" VALUES (6, 37, 'Tim Naegeli', 'United States', 'Wisconsin–Stevens Point');
INSERT INTO "leute" VALUES (7, 30, 'Jerry Corcoran', 'United States', 'Northeastern');

INSERT INTO "unternehmen" VALUES (1.0, 'ExxonMobil', 'USA', 'Oil and gas', 433.5, 41.1, 331.1, 407.4);
INSERT INTO "unternehmen" VALUES (2.0, 'JPMorgan Chase', 'USA', 'Banking', 110.8, 19.0, 2265.8, 170.1);
INSERT INTO "unternehmen" VALUES (3.0, 'General Electric', 'USA', 'Conglomerate', 147.3, 14.2, 717.2, 213.7);
INSERT INTO "unternehmen" VALUES (4.0, 'Royal Dutch Shell', 'Netherlands', 'Oil and gas', 470.2, 30.9, 340.5, 227.6);
INSERT INTO "unternehmen" VALUES (5.0, 'Industrial and Commercial Bank of China', 'China', 'Banking', 82.6, 25.1, 2039.1, 237.4);
INSERT INTO "unternehmen" VALUES (6.0, 'HSBC', 'UK', 'Banking', 102.0, 16.2, 2550.0, 164.3);
INSERT INTO "unternehmen" VALUES (7.0, 'PetroChina', 'China', 'Oil and gas', 310.1, 20.6, 304.7, 294.7);
INSERT INTO "unternehmen" VALUES (8.0, 'Berkshire Hathaway', 'USA', 'Conglomerate', 143.7, 10.3, 392.6, 202.2);
INSERT INTO "unternehmen" VALUES (9.0, 'Wells Fargo', 'USA', 'Banking', 87.6, 15.9, 1313.9, 178.7);
INSERT INTO "unternehmen" VALUES (10.0, 'Petrobras', 'Brazil', 'Oil and gas', 145.9, 20.1, 319.4, 180.0);
INSERT INTO "unternehmen" VALUES (11.0, 'BP', 'UK', 'Oil and gas', 375.5, 25.7, 292.5, 147.4);
INSERT INTO "unternehmen" VALUES (12.0, 'Chevron', 'USA', 'Oil and gas', 236.3, 26.9, 209.5, 218.0);
INSERT INTO "unternehmen" VALUES (13.0, 'China Construction Bank', 'China', 'Banking', 68.7, 20.5, 1637.8, 201.9);
INSERT INTO "unternehmen" VALUES (14.0, 'Citigroup', 'USA', 'Banking', 102.6, 11.1, 1873.9, 107.5);
INSERT INTO "unternehmen" VALUES (15.0, 'Gazprom', 'Russia', 'Oil and gas', 117.6, 31.7, 302.6, 159.8);
INSERT INTO "unternehmen" VALUES (16.0, 'Walmart', 'USA', 'Retailing', 447.0, 15.7, 193.4, 208.4);
INSERT INTO "unternehmen" VALUES (17.0, 'Volkswagen Group', 'Germany', 'Automotive', 221.9, 21.5, 328.7, 79.5);
INSERT INTO "unternehmen" VALUES (18.0, 'Total', 'France', 'Oil and gas', 216.2, 15.9, 213.0, 132.4);
INSERT INTO "unternehmen" VALUES (19.0, 'Agricultural Bank of China', 'China', 'Banking', 62.4, 14.4, 1563.9, 154.8);

INSERT INTO "beschäftigung" VALUES (11, 3, 2);
INSERT INTO "beschäftigung" VALUES (13, 2, 3);
INSERT INTO "beschäftigung" VALUES (17, 7, 4);
INSERT INTO "beschäftigung" VALUES (15, 1, 1);
INSERT INTO "beschäftigung" VALUES (7, 4, 1);

COMMIT;