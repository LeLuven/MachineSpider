CREATE TABLE "shop"
(
	"shop_id"                INT,
	"adresse"                TEXT,
	"anzahl_der_mitarbeiter" TEXT,
	"punkte"                 REAL,
	"jahr_der_eröffnung"     TEXT,
	PRIMARY KEY ("shop_id")
);

CREATE TABLE "mitglied"
(
	"mitglied_id"           INT,
	"name"                  TEXT,
	"mitgliedsausweis"      TEXT,
	"alter"                 INT,
	"zeitpunkt_des_erwerbs" INT,
	"mitgliedschaftsstufe"  INT,
	"adresse"               TEXT,
	PRIMARY KEY ("mitglied_id")
);

CREATE TABLE "glückliche_stunde"
(
	"hh_id"                  INT,
	"shop_id"                INT,
	"monat"                  TEXT,
	"num_of_shaff_in_charge" INT,
	PRIMARY KEY ("hh_id", "shop_id", "monat"),
	FOREIGN KEY ("shop_id") REFERENCES "shop" ("shop_id")
);

CREATE TABLE "happy_hour_mitglied"
(
	"hh_id"        INT,
	"mitglied_id"  INT,
	"gesamtbetrag" REAL,
	PRIMARY KEY ("hh_id", "mitglied_id"),
	FOREIGN KEY ("mitglied_id") REFERENCES "mitglied" ("mitglied_id")
);

BEGIN TRANSACTION;
INSERT INTO "shop" VALUES (1, '1200 Main Street', '13', 42.0, '2010');
INSERT INTO "shop" VALUES (2, '1111 Main Street', '19', 38.0, '2008');
INSERT INTO "shop" VALUES (3, '1330 Baltimore Street', '42', 36.0, '2010');
INSERT INTO "shop" VALUES (4, '909 Walnut Street', '27', 32.0, '2010');
INSERT INTO "shop" VALUES (5, '414 E. 12th Street', '24', 30.0, '2011');
INSERT INTO "shop" VALUES (6, '1201 Walnut Street', '34', 30.0, '2010');
INSERT INTO "shop" VALUES (7, '2345 McGee Street', '425', 40.0, '2008');
INSERT INTO "shop" VALUES (8, '909 Main Street', '28', 30.0, '2011');
INSERT INTO "shop" VALUES (9, '1100 Main Street', '23', 30.0, '2006');
INSERT INTO "shop" VALUES (10, '324 E. 11th Street', '16', 28.0, '2008');

INSERT INTO "mitglied" VALUES (1, 'Ashby, Lazale', 'Black', 29, 18, 5, 'Hartford');
INSERT INTO "mitglied" VALUES (2, 'Breton, Robert', 'White', 67, 41, 4, 'Waterbury');
INSERT INTO "mitglied" VALUES (3, 'Campbell, Jessie', 'Black', 34, 20, 6, 'Hartford');
INSERT INTO "mitglied" VALUES (4, 'Cobb, Sedrick', 'Black', 51, 27, 2, 'Waterbury');
INSERT INTO "mitglied" VALUES (5, 'Hayes, Steven', 'White', 50, 44, 3, 'Cheshire');
INSERT INTO "mitglied" VALUES (6, 'Komisarjevsky, Joshua', 'White', 33, 26, 2, 'Cheshire');
INSERT INTO "mitglied" VALUES (7, 'Peeler, Russell', 'Black', 42, 26, 6, 'Bridgeport');
INSERT INTO "mitglied" VALUES (8, 'Reynolds, Richard', 'Black', 45, 24, 1, 'Waterbury');
INSERT INTO "mitglied" VALUES (9, 'Rizzo, Todd', 'White', 35, 18, 4, 'Waterbury');
INSERT INTO "mitglied" VALUES (10, 'Webb, Daniel', 'Black', 51, 27, 22, 'Hartford');

INSERT INTO "glückliche_stunde" VALUES (1, 1, 'May', 10);
INSERT INTO "glückliche_stunde" VALUES (2, 1, 'April', 12);
INSERT INTO "glückliche_stunde" VALUES (3, 10, 'June', 15);
INSERT INTO "glückliche_stunde" VALUES (4, 5, 'July', 5);
INSERT INTO "glückliche_stunde" VALUES (5, 1, 'May', 10);
INSERT INTO "glückliche_stunde" VALUES (6, 1, 'April', 12);
INSERT INTO "glückliche_stunde" VALUES (7, 2, 'June', 5);
INSERT INTO "glückliche_stunde" VALUES (8, 3, 'July', 15);
INSERT INTO "glückliche_stunde" VALUES (9, 3, 'May', 3);
INSERT INTO "glückliche_stunde" VALUES (10, 3, 'April', 4);

INSERT INTO "happy_hour_mitglied" VALUES (1, 3, 20.9);
INSERT INTO "happy_hour_mitglied" VALUES (4, 3, 20.92);
INSERT INTO "happy_hour_mitglied" VALUES (7, 9, 4.9);
INSERT INTO "happy_hour_mitglied" VALUES (2, 5, 16.9);
INSERT INTO "happy_hour_mitglied" VALUES (5, 5, 16.92);
INSERT INTO "happy_hour_mitglied" VALUES (8, 9, 4.2);

COMMIT;