CREATE TABLE "produkt"
(
	"produkt_id"              INT,
	"produkt"                 TEXT,
	"abmessungen"             TEXT,
	"dpi"                     REAL,
	"seiten_pro_minute_farbe" REAL,
	"maximale_seitengröße"    TEXT,
	"schnittstelle"           TEXT,
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "store"
(
	"filiale_id"                   INT,
	"ladenname"                    TEXT,
	"typ"                          TEXT,
	"flächengröße"                 REAL,
	"anzahl_der_produktkategorien" REAL,
	"rangfolge"                    INT,
	PRIMARY KEY ("filiale_id")
);

CREATE TABLE "bezirk"
(
	"bezirk_id"               INT,
	"bezirksname"             TEXT,
	"stadt_mit_hauptsitz"     TEXT,
	"einwohnerzahl_der_stadt" REAL,
	"stadtgebiet"             REAL,
	PRIMARY KEY ("bezirk_id")
);

CREATE TABLE "geschäft_produkt"
(
	"filiale_id" INT,
	"produkt_id" INT,
	PRIMARY KEY ("filiale_id", "produkt_id"),
	FOREIGN KEY ("filiale_id") REFERENCES "store" ("filiale_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkt" ("produkt_id")
);

CREATE TABLE "filialbezirk"
(
	"filiale_id" INT,
	"bezirk_id"  INT,
	PRIMARY KEY ("filiale_id"),
	FOREIGN KEY ("filiale_id") REFERENCES "store" ("filiale_id"),
	FOREIGN KEY ("bezirk_id") REFERENCES "bezirk" ("bezirk_id")
);

BEGIN TRANSACTION;
INSERT INTO "produkt" VALUES (1, 'Fujitsu fi-6130 A4 Series Scanner', '301 x 160 x 158', 600.0, 30.0, 'A4', 'USB 2.0');
INSERT INTO "produkt" VALUES (2, 'Plustek MobileOffice D28 Corporate', '303 x 94 x 60', 600.0, 28.0, 'A4', 'USB 2.0');
INSERT INTO "produkt" VALUES (3, 'Xerox Travel Scanner 100', '289 x 51 x 38', 600.0, 4.0, 'A4', 'USB 2.0');
INSERT INTO "produkt" VALUES (4, 'ScanShell 3000DN', '300 x 50 x 45', 600.0, 3.0, 'A4', 'USB 2.0');
INSERT INTO "produkt" VALUES (5, 'Canon imageFORMULA P-150', '280 x 95 x 40', 600.0, 10.0, '216mm x 356mm', 'USB 2.0');
INSERT INTO "produkt" VALUES (6, 'Canon DR-2080C', '298 x 209 x 99', 600.0, 36.0, '216mm x 355mm', 'USB 2.0');

INSERT INTO "store" VALUES (1, 'Miramichi', 'City Mall', 179.84, 17811.0, 2);
INSERT INTO "store" VALUES (2, 'Neguac', 'Village Store', 26.69, 1678.0, 3);
INSERT INTO "store" VALUES (3, 'Rogersville', 'Village Store', 7.23, 1170.0, 1);
INSERT INTO "store" VALUES (4, 'Blackville', 'Village Store', 21.73, 990.0, 10);
INSERT INTO "store" VALUES (5, 'Doaktown', 'City Mall', 28.74, 793.0, 9);

INSERT INTO "bezirk" VALUES (1, 'Attock District', 'Attock City', 94620.0, 20.0);
INSERT INTO "bezirk" VALUES (2, 'Bahawalnagar District', 'Bahawalnagar City', 134936.0, 13.0);
INSERT INTO "bezirk" VALUES (3, 'Bahawalpur District', 'Bahawalpur City', 530438.0, 38.0);
INSERT INTO "bezirk" VALUES (4, 'Bhakkar District', 'Bhakkar City', 89380.0, 15.0);
INSERT INTO "bezirk" VALUES (5, 'Chakwal District', 'Chakwal City', 113524.0, 10.0);
INSERT INTO "bezirk" VALUES (6, 'Chiniot District', 'Chiniot City', 219254.0, 12.0);
INSERT INTO "bezirk" VALUES (7, 'Dera Ghazi Khan District', 'Dera Ghazi Khan City', 464742.0, 22.0);
INSERT INTO "bezirk" VALUES (8, 'Faisalabad District', 'Faisalabad City', 2793721.0, 147.0);
INSERT INTO "bezirk" VALUES (9, 'Gujranwala District', 'Gujranwala City', 1526168.0, 75.0);
INSERT INTO "bezirk" VALUES (10, 'Gujrat District', 'Gujrat City', 328512.0, 25.0);
INSERT INTO "bezirk" VALUES (11, 'Hafizabad District', 'Hafizabad City', 165936.0, 10.0);
INSERT INTO "bezirk" VALUES (12, 'Jhang District', 'Jhang City', 365198.0, 28.0);
INSERT INTO "bezirk" VALUES (13, 'Jhelum District', 'Jhelum City', 172073.0, 22.0);
INSERT INTO "bezirk" VALUES (14, 'Kasur District', 'Kasur City', 314617.0, 18.0);
INSERT INTO "bezirk" VALUES (15, 'Khanewal District', 'Khanewal City', 165038.0, 17.0);

INSERT INTO "geschäft_produkt" VALUES (1, 1);
INSERT INTO "geschäft_produkt" VALUES (1, 2);
INSERT INTO "geschäft_produkt" VALUES (1, 3);
INSERT INTO "geschäft_produkt" VALUES (1, 4);
INSERT INTO "geschäft_produkt" VALUES (1, 6);
INSERT INTO "geschäft_produkt" VALUES (2, 1);
INSERT INTO "geschäft_produkt" VALUES (3, 2);
INSERT INTO "geschäft_produkt" VALUES (2, 3);
INSERT INTO "geschäft_produkt" VALUES (3, 4);
INSERT INTO "geschäft_produkt" VALUES (2, 6);
INSERT INTO "geschäft_produkt" VALUES (5, 1);
INSERT INTO "geschäft_produkt" VALUES (5, 2);
INSERT INTO "geschäft_produkt" VALUES (5, 3);
INSERT INTO "geschäft_produkt" VALUES (5, 4);
INSERT INTO "geschäft_produkt" VALUES (5, 6);

INSERT INTO "filialbezirk" VALUES (1, 15);
INSERT INTO "filialbezirk" VALUES (2, 15);
INSERT INTO "filialbezirk" VALUES (3, 11);
INSERT INTO "filialbezirk" VALUES (4, 4);
INSERT INTO "filialbezirk" VALUES (5, 3);

COMMIT;