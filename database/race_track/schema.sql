CREATE TABLE "strecke"
(
	"spur_id"        INT,
	"name"           TEXT,
	"ort"            TEXT,
	"sitzplätze"     REAL,
	"eröffnungsjahr" REAL,
	PRIMARY KEY ("spur_id")
);

CREATE TABLE "rennen"
(
	"rennen_id" INT,
	"name"      TEXT,
	"klasse"    TEXT,
	"datum"     TEXT,
	"spur_id"   TEXT,
	PRIMARY KEY ("rennen_id"),
	FOREIGN KEY ("spur_id") REFERENCES "strecke" ("spur_id")
);

BEGIN TRANSACTION;
INSERT INTO "strecke" VALUES (1, 'Auto Club Speedway', 'Fontana, CA', 92000.0, 1997.0);
INSERT INTO "strecke" VALUES (2, 'Chicagoland Speedway', 'Joliet, IL', 75000.0, 2001.0);
INSERT INTO "strecke" VALUES (3, 'Darlington Raceway', 'Darlington, SC', 63000.0, 1950.0);
INSERT INTO "strecke" VALUES (4, 'Daytona International Speedway', 'Daytona Beach, FL', 168000.0, 1959.0);
INSERT INTO "strecke" VALUES (5, 'Homestead-Miami Speedway', 'Homestead, FL', 65000.0, 1995.0);
INSERT INTO "strecke" VALUES (6, 'Kansas Speedway', 'Kansas City, KS', 81687.0, 2001.0);
INSERT INTO "strecke" VALUES (7, 'Martinsville Speedway', 'Ridgeway, VA', 65000.0, 1947.0);
INSERT INTO "strecke" VALUES (8, 'Michigan International Speedway', 'Brooklyn, MI', 137243.0, 1968.0);
INSERT INTO "strecke" VALUES (9, 'Phoenix International Raceway', 'Avondale, AZ', 76812.0, 1964.0);

INSERT INTO "rennen" VALUES (1, 'Rolex 24 At Daytona', 'DP/GT', 'January 26 January 27', '1');
INSERT INTO "rennen" VALUES (2, 'Gainsco Grand Prix of Miami', 'DP/GT', 'March 29', '2');
INSERT INTO "rennen" VALUES (3, 'Mexico City 250', 'DP/GT', 'April 19', '2');
INSERT INTO "rennen" VALUES (4, 'Bosch Engineering 250 at VIR', 'GT', 'April 27', '4');
INSERT INTO "rennen" VALUES (5, 'RumBum.com 250', 'DP/GT', 'May 17', '5');
INSERT INTO "rennen" VALUES (6, 'Lime Rock GT Classic 250', 'GT', 'May 26', '6');
INSERT INTO "rennen" VALUES (7, 'Sahlen''s Six Hours of the Glen', 'DP/GT', 'June 7', '7');

COMMIT;