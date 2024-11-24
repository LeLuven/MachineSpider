CREATE TABLE "sturm"
(
	"sturm_id"                 INT,
	"name"                     TEXT,
	"datum_aktiv"              TEXT,
	"maximale_geschwindigkeit" INT,
	"schaden_millionen_usd"    REAL,
	"anzahl_todesfälle"        INT,
	PRIMARY KEY ("sturm_id")
);

CREATE TABLE "region"
(
	"region_id"   INT,
	"region_code" TEXT,
	"region_name" TEXT,
	PRIMARY KEY ("region_id")
);

CREATE TABLE "betroffene_region"
(
	"region_id"                     INT,
	"sturm_id"                      INT,
	"anzahl_der_betroffenen_städte" REAL,
	PRIMARY KEY ("region_id", "sturm_id"),
	FOREIGN KEY ("region_id") REFERENCES "region" ("region_id"),
	FOREIGN KEY ("sturm_id") REFERENCES "sturm" ("sturm_id")
);

BEGIN TRANSACTION;
INSERT INTO "sturm" VALUES (1, 'One', 'May19–May25', 995, 13.0, 0);
INSERT INTO "sturm" VALUES (2, 'Two', 'August3–August10', 972, 10.75, 7);
INSERT INTO "sturm" VALUES (3, 'Three', 'August5–August14', 972, 13.0, 52);
INSERT INTO "sturm" VALUES (4, 'Four', 'August26–September2', 961, 4.05, 7);
INSERT INTO "sturm" VALUES (5, 'Five', 'September7–September17', 988, 1.49, 3);
INSERT INTO "sturm" VALUES (6, 'Six', 'September18–September25', 1002, 0.039, 2);
INSERT INTO "sturm" VALUES (7, 'Seven', 'September22–September28', 977, 13.0, 0);
INSERT INTO "sturm" VALUES (8, 'Eight', 'October20–October24', 983, 13.0, 0);
INSERT INTO "sturm" VALUES (9, 'Nine', 'October24–October26', 1007, 13.0, 0);
INSERT INTO "sturm" VALUES (10, '9 cyclones', 'May19 –October26', 961, 29.3, 71);

INSERT INTO "region" VALUES (1, 'AF', 'Afghanistan');
INSERT INTO "region" VALUES (2, 'AL', 'Albania');
INSERT INTO "region" VALUES (3, 'DZ', 'Algeria');
INSERT INTO "region" VALUES (4, 'DS', 'American Samoa');
INSERT INTO "region" VALUES (5, 'AD', 'Andorra');
INSERT INTO "region" VALUES (6, 'AO', 'Angola');
INSERT INTO "region" VALUES (7, 'AI', 'Anguilla');
INSERT INTO "region" VALUES (8, 'AQ', 'Antarctica');
INSERT INTO "region" VALUES (9, 'AG', 'Antigua and Barbuda');
INSERT INTO "region" VALUES (10, 'CY', 'Cyprus');
INSERT INTO "region" VALUES (11, 'CZ', 'Czech Republic');
INSERT INTO "region" VALUES (12, 'DK', 'Denmark');
INSERT INTO "region" VALUES (13, 'DJ', 'Djibouti');

INSERT INTO "betroffene_region" VALUES (1, 1, 10.0);
INSERT INTO "betroffene_region" VALUES (2, 1, 15.0);
INSERT INTO "betroffene_region" VALUES (3, 3, 30.0);
INSERT INTO "betroffene_region" VALUES (1, 4, 22.0);
INSERT INTO "betroffene_region" VALUES (12, 5, 37.0);
INSERT INTO "betroffene_region" VALUES (2, 5, 12.0);

COMMIT;