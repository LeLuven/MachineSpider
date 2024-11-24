CREATE TABLE "mitglied"
(
	"mitglied_id"  INT,
	"kartennummer" TEXT,
	"name"         TEXT,
	"heimatstadt"  TEXT,
	"stufe"        INT,
	PRIMARY KEY ("mitglied_id")
);

CREATE TABLE "zweigstelle"
(
	"branch_id"        INT,
	"name"             TEXT,
	"eröffnungsjahr"   TEXT,
	"adresse_straße"   TEXT,
	"stadt"            TEXT,
	"mitgliedsbeitrag" TEXT,
	PRIMARY KEY ("branch_id")
);

CREATE TABLE "mitgliederverzeichnis_zweigstelle"
(
	"mitglied_id"   INT,
	"branch_id"     TEXT,
	"register_jahr" TEXT,
	PRIMARY KEY ("mitglied_id"),
	FOREIGN KEY ("mitglied_id") REFERENCES "mitglied" ("mitglied_id"),
	FOREIGN KEY ("branch_id") REFERENCES "zweigstelle" ("branch_id")
);

CREATE TABLE "einkauf"
(
	"mitglied_id"  INT,
	"branch_id"    TEXT,
	"jahr"         TEXT,
	"gesamt_pfund" REAL,
	PRIMARY KEY ("mitglied_id", "branch_id", "jahr"),
	FOREIGN KEY ("mitglied_id") REFERENCES "mitglied" ("mitglied_id"),
	FOREIGN KEY ("branch_id") REFERENCES "zweigstelle" ("branch_id")
);

BEGIN TRANSACTION;
INSERT INTO "mitglied" VALUES (1, 'LE99', 'Jeremy Jarmon', 'Collierville, Tennessee', 6);
INSERT INTO "mitglied" VALUES (2, 'LT98', 'Myron Pryor', 'Louisville, Kentucky', 6);
INSERT INTO "mitglied" VALUES (3, 'RT91', 'Corey Peters', 'Louisville, Kentucky', 6);
INSERT INTO "mitglied" VALUES (4, 'RE95', 'Ventrell Jenkins', 'Columbia, South Carolina', 6);
INSERT INTO "mitglied" VALUES (5, 'OLB56', 'Braxton Kelley', 'LaGrange, Georgia', 6);
INSERT INTO "mitglied" VALUES (6, 'MLB4', 'Micah Johnson', 'Fort Campbell, Kentucky', 4);
INSERT INTO "mitglied" VALUES (7, 'SLB51', 'Johnny Williams', 'Jacksonville, Florida', 6);
INSERT INTO "mitglied" VALUES (8, 'RCB32', 'Trevard Lindley', 'Hiram, Georgia', 6);
INSERT INTO "mitglied" VALUES (9, 'LCB7', 'David Jones', 'Red Jacket, West Virginia', 6);
INSERT INTO "mitglied" VALUES (10, 'FS10', 'Matt Lentz', 'Simpsonville, South Carolina', 2);

INSERT INTO "zweigstelle" VALUES (1, 'Alexandre', '2001', 'Valleys Place', 'London', '112');
INSERT INTO "zweigstelle" VALUES (2, 'Popert', '2009', 'Oaks Crescent', 'London', '11');
INSERT INTO "zweigstelle" VALUES (3, 'Stanley', '2013', 'Abbott Street', 'London', '6');
INSERT INTO "zweigstelle" VALUES (4, 'Zytogorski', '2009', 'Abbey Rise', 'Oxford', '7');
INSERT INTO "zweigstelle" VALUES (5, 'Cochrane', '2012', 'Brampton Road', 'London', '1418');
INSERT INTO "zweigstelle" VALUES (6, 'Taverner', '2014', 'Cecilia Avenue', 'Oxford', '56');
INSERT INTO "zweigstelle" VALUES (7, 'Saint Amant', '2015', 'Concord Road', 'London', '91');
INSERT INTO "zweigstelle" VALUES (8, 'Brooke Greville', '2009', 'Glebe Street', 'Oxford', '31');

INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (1, '1', '2016');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (2, '4', '2016');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (3, '1', '2017');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (4, '1', '2016');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (5, '5', '2016');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (6, '6', '2017');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (7, '2', '2016');
INSERT INTO "mitgliederverzeichnis_zweigstelle" VALUES (8, '8', '2016');

INSERT INTO "einkauf" VALUES (1, '3', '2018', 2013.32);
INSERT INTO "einkauf" VALUES (2, '5', '2018', 321.13);
INSERT INTO "einkauf" VALUES (3, '1', '2017', 988.09);
INSERT INTO "einkauf" VALUES (4, '1', '2018', 20.99);
INSERT INTO "einkauf" VALUES (3, '5', '2018', 343.76);
INSERT INTO "einkauf" VALUES (6, '6', '2018', 232.09);
INSERT INTO "einkauf" VALUES (2, '2', '2018', 402.1);
INSERT INTO "einkauf" VALUES (2, '3', '2018', 430.29);

COMMIT;