CREATE TABLE "gebäude"
(
	"id"          INT,
	"name"        TEXT,
	"stadt"       TEXT,
	"höhe"        INT,
	"geschichten" INT,
	"status"      TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "unternehmen"
(
	"id"                   INT,
	"name"                 TEXT,
	"hauptsitz"            TEXT,
	"branche"              TEXT,
	"umsatz_milliarden"    REAL,
	"gewinn_milliarde"     REAL,
	"vermögen_milliarden"  REAL,
	"marktwert_milliarden" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "bürostandorte"
(
	"gebäude_id"  INT,
	"firmen_id"   INT,
	"einzugsjahr" INT,
	PRIMARY KEY ("gebäude_id", "firmen_id"),
	FOREIGN KEY ("gebäude_id") REFERENCES "gebäude" ("id"),
	FOREIGN KEY ("firmen_id") REFERENCES "unternehmen" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "gebäude" VALUES (1, 'Torre KOI', 'Monterrey', 220, 67, 'under construction');
INSERT INTO "gebäude" VALUES (2, 'Torre Mitikah', 'Mexico City', 210, 60, 'under construction');
INSERT INTO "gebäude" VALUES (3, 'Punto Chapultepec', 'Mexico City', 210, 59, 'proposed');
INSERT INTO "gebäude" VALUES (4, 'Torre Reforma', 'Mexico City', 330, 57, 'under construction');
INSERT INTO "gebäude" VALUES (5, 'Corporativo BBVA Bancomer', 'Mexico City', 220, 50, 'under construction');
INSERT INTO "gebäude" VALUES (6, 'Reforma 432', 'Mexico City', 300, 100, 'under construction');
INSERT INTO "gebäude" VALUES (7, 'Torre New York Life', 'Mexico City', 50, 6, 'under construction');
INSERT INTO "gebäude" VALUES (8, 'LIU East', 'Monterrey', 73, 20, 'under construction');
INSERT INTO "gebäude" VALUES (9, 'Residencial Vidalta Torre Altaire 2', 'Mexico City', 150, 44, 'on-hold');
INSERT INTO "gebäude" VALUES (10, 'Residencial Vidalta Torre Altaire 3', 'Mexico City', 200, 44, 'on-hold');
INSERT INTO "gebäude" VALUES (11, 'Reforma 90', 'Mexico City', 200, 42, 'on-hold');
INSERT INTO "gebäude" VALUES (12, 'Ritz-Carlton Mexico City', 'Mexico City', 100, 34, 'on-hold');

INSERT INTO "unternehmen" VALUES (1, 'JPMorgan Chase', 'USA', 'Banking', 115.5, 17.4, 2117.6, '182.2');
INSERT INTO "unternehmen" VALUES (2, 'HSBC', 'UK', 'Banking', 103.3, 13.3, 2467.9, '186.5');
INSERT INTO "unternehmen" VALUES (3, 'General Electric', 'USA', 'Conglomerate', 156.2, 11.6, 751.2, '216.2');
INSERT INTO "unternehmen" VALUES (4, 'ExxonMobil', 'USA', 'Oil and gas', 341.6, 30.5, 302.5, '407.2');
INSERT INTO "unternehmen" VALUES (5, 'Royal Dutch Shell', 'Netherlands', 'Oil and gas', 369.1, 20.1, 317.2, '212.9');
INSERT INTO "unternehmen" VALUES (6, 'PetroChina', 'China', 'Oil and gas', 222.3, 21.2, 251.3, '320.8');
INSERT INTO "unternehmen" VALUES (7, 'Industrial and Commercial Bank of China', 'China', 'Banking', 69.2, 18.8, 1723.5, '239.5');
INSERT INTO "unternehmen" VALUES (8, 'Berkshire Hathaway', 'USA', 'Conglomerate', 136.2, 13.0, 372.2, '211');
INSERT INTO "unternehmen" VALUES (9, 'Petrobras', 'Brazil', 'Oil and gas', 121.3, 21.2, 313.2, '238.8');
INSERT INTO "unternehmen" VALUES (10, 'Citigroup', 'USA', 'Banking', 111.5, 10.6, 1913.9, '132.8');
INSERT INTO "unternehmen" VALUES (11, 'BNP Paribas', 'France', 'Banking', 130.4, 10.5, 2680.7, '88');
INSERT INTO "unternehmen" VALUES (12, 'Wells Fargo', 'USA', 'Banking', 93.2, 12.4, 1258.1, '170.6');
INSERT INTO "unternehmen" VALUES (13, 'Santander Group', 'Spain', 'Banking', 109.7, 12.8, 1570.6, '94.7');
INSERT INTO "unternehmen" VALUES (14, 'AT&T Inc.', 'USA', 'Telecommunications', 124.3, 19.9, 268.5, '168.2');
INSERT INTO "unternehmen" VALUES (15, 'Gazprom', 'Russia', 'Oil and gas', 98.7, 25.7, 275.9, '172.9');
INSERT INTO "unternehmen" VALUES (16, 'Chevron', 'USA', 'Oil and gas', 189.6, 19.0, 184.8, '200.6');
INSERT INTO "unternehmen" VALUES (17, 'China Construction Bank', 'China', 'Banking', 58.2, 15.6, 1408.0, '224.8');
INSERT INTO "unternehmen" VALUES (18, 'Walmart', 'USA', 'Retailing', 421.8, 16.4, 180.7, '187.3');
INSERT INTO "unternehmen" VALUES (19, 'Total', 'France', 'Oil and gas', 188.1, 14.2, 192.8, '138');

INSERT INTO "bürostandorte" VALUES (1, 1, 2021);
INSERT INTO "bürostandorte" VALUES (2, 2, 2022);
INSERT INTO "bürostandorte" VALUES (3, 4, 2023);
INSERT INTO "bürostandorte" VALUES (4, 3, 2024);
INSERT INTO "bürostandorte" VALUES (5, 3, 2025);
INSERT INTO "bürostandorte" VALUES (5, 7, 2026);
INSERT INTO "bürostandorte" VALUES (11, 5, 2027);
INSERT INTO "bürostandorte" VALUES (7, 4, 2027);
INSERT INTO "bürostandorte" VALUES (3, 2, 2028);
INSERT INTO "bürostandorte" VALUES (3, 9, 2029);
INSERT INTO "bürostandorte" VALUES (10, 9, 2031);
INSERT INTO "bürostandorte" VALUES (6, 9, 2022);
INSERT INTO "bürostandorte" VALUES (8, 19, 2022);
INSERT INTO "bürostandorte" VALUES (9, 10, 2019);
INSERT INTO "bürostandorte" VALUES (3, 11, 2020);
INSERT INTO "bürostandorte" VALUES (2, 11, 2025);

COMMIT;