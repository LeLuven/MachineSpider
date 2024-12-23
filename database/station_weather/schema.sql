CREATE TABLE "zug"
(
	"id"        INT,
	"zugnummer" INT,
	"name"      TEXT,
	"herkunft"  TEXT,
	"zielort"   TEXT,
	"zeit"      TEXT,
	"intervall" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "station"
(
	"id"       INT,
	"netzname" TEXT,
	"dienste"  TEXT,
	"gemeinde" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "route"
(
	"zugkennung" INT,
	"station_id" INT,
	PRIMARY KEY ("zugkennung", "station_id"),
	FOREIGN KEY ("zugkennung") REFERENCES "zug" ("id"),
	FOREIGN KEY ("station_id") REFERENCES "station" ("id")
);

CREATE TABLE "wochenwetter"
(
	"station_id"              INT,
	"wochentag"               TEXT,
	"hohe_temperatur"         INT,
	"niedrige_temperatur"     INT,
	"niederschlag"            REAL,
	"windgeschwindigkeit_mph" INT,
	PRIMARY KEY ("station_id", "wochentag"),
	FOREIGN KEY ("station_id") REFERENCES "station" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "zug" VALUES (1, 16724, 'Ananthapuri Express', 'Trivandrum', 'Chennai', '17:15', 'Daily');
INSERT INTO "zug" VALUES (2, 16127, 'Guruvayur Express', 'Chennai', 'Guruvayur', '22:10', 'Daily');
INSERT INTO "zug" VALUES (3, 16128, 'Guruvayur Express', 'Guruvayur', 'Chennai', '4:49', 'Daily');
INSERT INTO "zug" VALUES (4, 16723, 'Ananthapuri Express', 'Chennai', 'Trivandrum', '11:35', 'Daily');
INSERT INTO "zug" VALUES (5, 16382, 'Jayanthi Janatha Express', 'Kanniyakumari', 'Mumbai', '06:30', 'Daily');
INSERT INTO "zug" VALUES (6, 16525, 'Island Express', 'Kanniyakumari', 'Bangalore', '11:15', 'Daily');
INSERT INTO "zug" VALUES (7, 56701, 'Madurai Fast Passenger', 'Quilon', 'Madurai', '21:49', 'Daily');
INSERT INTO "zug" VALUES (8, 56700, 'Quilon Fast Passenger', 'Madurai', 'Quilon Junction', '04:55', 'Daily');
INSERT INTO "zug" VALUES (9, 16526, 'Island Express', 'Bangalore', 'Kanniyakumari', '16:59', 'Daily');
INSERT INTO "zug" VALUES (10, 16381, 'Jayanthi Janatha Express', 'Mumbai', 'Kanniyakumari', '10:38', 'Daily');
INSERT INTO "zug" VALUES (11, 16650, 'Parasuram Express', 'Nagercoil', 'Mangalore', '04:20', 'Daily');

INSERT INTO "station" VALUES (1, 'Amersham', 'Metropolitan line and Chiltern Railways', 'Chiltern');
INSERT INTO "station" VALUES (2, 'Bushey', 'London Overground and London Midland', 'Watford');
INSERT INTO "station" VALUES (3, 'Brentwood', 'Greater Anglia', 'Brentwood');
INSERT INTO "station" VALUES (4, 'Broxbourne', 'Greater Anglia', 'Broxbourne');
INSERT INTO "station" VALUES (5, 'Carpenders Park', 'London Overground', 'Three Rivers');
INSERT INTO "station" VALUES (6, 'Chafford Hundred', 'c2c', 'Thurrock');
INSERT INTO "station" VALUES (7, 'Chalfont & Latimer', 'Metropolitan line and Chiltern Railways', 'Chiltern');
INSERT INTO "station" VALUES (8, 'Chesham', 'Metropolitan line', 'Chiltern');
INSERT INTO "station" VALUES (9, 'Cheshunt', 'Greater Anglia', 'Broxbourne');
INSERT INTO "station" VALUES (10, 'Chorleywood', 'Metropolitan line and Chiltern Railways', 'Three Rivers');
INSERT INTO "station" VALUES (11, 'Croxley', 'Metropolitan line', 'Three Rivers');

INSERT INTO "route" VALUES (1, 1);
INSERT INTO "route" VALUES (1, 2);
INSERT INTO "route" VALUES (1, 3);
INSERT INTO "route" VALUES (2, 1);
INSERT INTO "route" VALUES (2, 3);
INSERT INTO "route" VALUES (2, 7);
INSERT INTO "route" VALUES (3, 4);
INSERT INTO "route" VALUES (4, 6);
INSERT INTO "route" VALUES (4, 2);
INSERT INTO "route" VALUES (5, 1);
INSERT INTO "route" VALUES (6, 5);
INSERT INTO "route" VALUES (7, 4);
INSERT INTO "route" VALUES (7, 5);
INSERT INTO "route" VALUES (7, 8);
INSERT INTO "route" VALUES (8, 8);
INSERT INTO "route" VALUES (9, 7);
INSERT INTO "route" VALUES (9, 8);
INSERT INTO "route" VALUES (10, 9);

INSERT INTO "wochenwetter" VALUES (1, 'Monday', 59, 54, 90.0, 13);
INSERT INTO "wochenwetter" VALUES (1, 'Tuesday', 66, 55, 20.0, 12);
INSERT INTO "wochenwetter" VALUES (1, 'Wednesday', 60, 52, 10.0, 14);
INSERT INTO "wochenwetter" VALUES (1, 'Thursday', 55, 50, 30.0, 13);
INSERT INTO "wochenwetter" VALUES (1, 'Friday', 55, 52, 50.0, 17);
INSERT INTO "wochenwetter" VALUES (1, 'Saturday', 55, 52, 50.0, 14);
INSERT INTO "wochenwetter" VALUES (1, 'Sunday', 54, 52, 50.0, 12);
INSERT INTO "wochenwetter" VALUES (2, 'Monday', 58, 54, 60.0, 20);
INSERT INTO "wochenwetter" VALUES (2, 'Tuesday', 57, 54, 80.0, 22);
INSERT INTO "wochenwetter" VALUES (2, 'Wednesday', 59, 55, 90.0, 23);
INSERT INTO "wochenwetter" VALUES (2, 'Thursday', 59, 56, 70.0, 24);
INSERT INTO "wochenwetter" VALUES (3, 'Monday', 49, 46, 30.0, 10);
INSERT INTO "wochenwetter" VALUES (3, 'Tuesday', 50, 49, 50.0, 9);
INSERT INTO "wochenwetter" VALUES (3, 'Wednesday', 55, 54, 60.0, 8);
INSERT INTO "wochenwetter" VALUES (4, 'Monday', 58, 54, 70.0, 7);
INSERT INTO "wochenwetter" VALUES (10, 'Tuesday', 59, 52, 90.0, 22);

COMMIT;