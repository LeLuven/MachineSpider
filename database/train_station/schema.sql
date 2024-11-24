CREATE TABLE "station"
(
	"station_id"                  INT,
	"name"                        TEXT,
	"jährliche_einfahrt_ausfahrt" REAL,
	"jährlicher_umsteigeverkehr"  REAL,
	"fahrgäste_insgesamt"         REAL,
	"standort"                    TEXT,
	"hauptverkehrsdienste"        TEXT,
	"anzahl_der_bahnsteige"       INT,
	PRIMARY KEY ("station_id")
);

CREATE TABLE "zug"
(
	"zug_id"         INT,
	"name"           TEXT,
	"zeit"           TEXT,
	"dienstleistung" TEXT,
	PRIMARY KEY ("zug_id")
);

CREATE TABLE "bahnhof"
(
	"zug_id"     INT,
	"station_id" INT,
	PRIMARY KEY ("zug_id", "station_id"),
	FOREIGN KEY ("zug_id") REFERENCES "zug" ("zug_id"),
	FOREIGN KEY ("station_id") REFERENCES "station" ("station_id")
);

BEGIN TRANSACTION;
INSERT INTO "station" VALUES (1, 'London Waterloo', 94.046, 9.489, 103.534, 'London', 'South Western Main Line West of England Main Line', 19);
INSERT INTO "station" VALUES (2, 'London Victoria', 76.231, 9.157, 85.38, 'London', 'Brighton Main Line Chatham Main Line', 19);
INSERT INTO "station" VALUES (3, 'London Bridge', 52.634, 8.742, 61.376, 'London', 'South Eastern Main Line Thameslink', 12);
INSERT INTO "station" VALUES (4, 'London Liverpool Street', 57.107, 2.353, 59.46, 'London', 'Great Eastern Main Line West Anglia Main Line', 18);
INSERT INTO "station" VALUES (5, 'London Euston', 36.609, 3.832, 40.44, 'London', 'West Coast Main Line', 18);
INSERT INTO "station" VALUES (6, 'London Charing Cross', 38.005, 1.99, 39.995, 'London', 'South Eastern Main Line', 6);
INSERT INTO "station" VALUES (7, 'Birmingham New Street', 31.214, 5.118, 36.331, 'Birmingham', 'West Coast Main Line Cross Country Route', 13);
INSERT INTO "station" VALUES (8, 'London King''s Cross', 27.875, 3.022, 30.896, 'London', 'East Coast Main Line', 12);
INSERT INTO "station" VALUES (9, 'Glasgow Central', 26.639, 3.018, 29.658, 'Glasgow', 'West Coast Main Line', 17);
INSERT INTO "station" VALUES (10, 'East Croydon', 20.551, 6.341, 26.892, 'London', 'Brighton Main Line', 6);
INSERT INTO "station" VALUES (11, 'London St Pancras', 22.996, 3.676, 26.672, 'London', 'Midland Main Line Thameslink High-Speed 1 Eurostar', 15);
INSERT INTO "station" VALUES (12, 'Stratford', 21.797, 2.064, 23.862, 'London', 'Great Eastern Main Line Lea Valley Lines', 15);

INSERT INTO "zug" VALUES (1, 'Ananthapuri Express', '17:15', 'Daily');
INSERT INTO "zug" VALUES (2, 'Guruvayur Express', '22:10', 'Daily');
INSERT INTO "zug" VALUES (3, 'Guruvayur Express', '4:49', 'Daily');
INSERT INTO "zug" VALUES (4, 'Ananthapuri Express', '11:35', 'Daily');
INSERT INTO "zug" VALUES (5, 'Jayanthi Janatha Express', '06:30', 'Daily');
INSERT INTO "zug" VALUES (6, 'Island Express', '11:15', 'Daily');
INSERT INTO "zug" VALUES (7, 'Madurai Fast Passenger', '21:49', 'Daily');
INSERT INTO "zug" VALUES (8, 'Quilon Fast Passenger', '04:55', 'Daily');
INSERT INTO "zug" VALUES (9, 'Island Express', '16:59', 'Daily');
INSERT INTO "zug" VALUES (10, 'Jayanthi Janatha Express', '10:38', 'Daily');
INSERT INTO "zug" VALUES (11, 'Parasuram Express', '04:20', 'Daily');

INSERT INTO "bahnhof" VALUES (1, 1);
INSERT INTO "bahnhof" VALUES (2, 1);
INSERT INTO "bahnhof" VALUES (3, 1);
INSERT INTO "bahnhof" VALUES (4, 2);
INSERT INTO "bahnhof" VALUES (5, 3);
INSERT INTO "bahnhof" VALUES (6, 5);
INSERT INTO "bahnhof" VALUES (7, 8);
INSERT INTO "bahnhof" VALUES (8, 9);
INSERT INTO "bahnhof" VALUES (9, 9);
INSERT INTO "bahnhof" VALUES (10, 10);
INSERT INTO "bahnhof" VALUES (11, 10);

COMMIT;