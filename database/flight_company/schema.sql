CREATE TABLE "flughafen"
(
	"id"    INT,
	"stadt" TEXT,
	"land"  TEXT,
	"iata"  TEXT,
	"icao"  TEXT,
	"name"  TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "unternehmen_betreiben"
(
	"id"                            INT,
	"name"                          TEXT,
	"typ"                           TEXT,
	"haupttätigkeiten"              TEXT,
	"gegründet_in"                  TEXT,
	"kapitalbeteiligung_der_gruppe" REAL,
	PRIMARY KEY ("id")
);

CREATE TABLE "flug"
(
	"id"                 INT,
	"fahrzeugflugnummer" TEXT,
	"datum"              TEXT,
	"pilot"              TEXT,
	"geschwindigkeit"    REAL,
	"höhe"               REAL,
	"flughafenkennung"   INT,
	"firma_id"           INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("flughafenkennung") REFERENCES "flughafen" ("id"),
	FOREIGN KEY ("firma_id") REFERENCES "unternehmen_betreiben" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "flughafen" VALUES (1, 'Akureyri', 'Iceland', 'AEY', 'BIAR', 'Akureyri Airport');
INSERT INTO "flughafen" VALUES (2, 'Amsterdam', 'Netherlands', 'AMS', 'EHAM', 'Schiphol Airport');
INSERT INTO "flughafen" VALUES (3, 'Anchorage', 'United States', 'ANC', 'PANC', 'Ted Stevens Airport');
INSERT INTO "flughafen" VALUES (4, 'Baltimore', 'United States', 'BWI', 'KBWI', 'Baltimore-Washington Airport');
INSERT INTO "flughafen" VALUES (5, 'Barcelona', 'Spain', 'BCN', 'LEBL', 'El Prat Airport');
INSERT INTO "flughafen" VALUES (6, 'Bergen', 'Norway', 'BGO', 'ENBR', 'Bergen Airport');
INSERT INTO "flughafen" VALUES (7, 'Billund', 'Denmark', 'BLL', 'EKBI', 'Billund Airport');
INSERT INTO "flughafen" VALUES (8, 'Boston', 'United States', 'BOS', 'KBOS', 'Logan International Airport');
INSERT INTO "flughafen" VALUES (9, 'Brussels', 'Belgium', 'BRU', 'EBBR', 'National Airport');

INSERT INTO "unternehmen_betreiben" VALUES (1, 'Air China', 'Corporate', 'Airline', 'China', 18.77);
INSERT INTO "unternehmen_betreiben" VALUES (2, 'Air China Cargo', 'Joint Venture', 'Cargo airline', 'China', 49.0);
INSERT INTO "unternehmen_betreiben" VALUES (3, 'Air Hong Kong', 'Joint Venture', 'Cargo airline', 'Hong Kong', 60.0);
INSERT INTO "unternehmen_betreiben" VALUES (4, 'Dragonair', 'Subsidiary', 'Airline', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (5, 'Cathay Pacific Cargo', 'Subsidiary', 'Cargo airline', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (6, 'Cathay Pacific Catering Services (HK) Limited', 'Subsidiary', 'Catering services', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (7, 'Cathay Pacific Services Limited', 'Subsidiary', 'Cargo', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (8, 'Cathay Pacific Holidays', 'Subsidiary', 'Travel agency', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (9, 'Dragonair Holidays', 'Subsidiary', 'Travel agency', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (10, 'Hong Kong Airport Services', 'Subsidiary', 'Ground handling', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (11, 'Vogue Laundry Service Limited', 'Subsidiary', 'Laundry', 'Hong Kong', 100.0);
INSERT INTO "unternehmen_betreiben" VALUES (12, 'China Pacific Laundry Services', 'Joint Venture', 'Laundry', 'Taiwan', 45.0);
INSERT INTO "unternehmen_betreiben" VALUES (13, 'VN/CX Catering Services Limited', 'Joint Venture', 'Catering services', 'Vietnam', 40.0);
INSERT INTO "unternehmen_betreiben" VALUES (14, 'CLS Catering Services Limited', 'Joint Venture', 'Catering services', 'Canada', 30.0);

INSERT INTO "flug" VALUES (1, 'M2-F1 #0', 'March 1, 1963', 'Thompson', 135.0, 0.0, 1, 2);
INSERT INTO "flug" VALUES (2, 'M2-F1 #1', 'August 16, 1963', 'Thompson', 240.0, 3650.0, 2, 3);
INSERT INTO "flug" VALUES (3, 'M2-F1 #6', 'September 3, 1963', 'Thompson', 240.0, 3650.0, 2, 4);
INSERT INTO "flug" VALUES (4, 'M2-F1 #13', 'October 25, 1963', 'Thompson', 240.0, 3650.0, 3, 4);
INSERT INTO "flug" VALUES (5, 'M2-F1 #14', 'November 8, 1963', 'Thompson', 240.0, 3650.0, 4, 5);
INSERT INTO "flug" VALUES (6, 'M2-F1 #21', 'January 29, 1964', 'Thompson', 240.0, 3650.0, 4, 6);
INSERT INTO "flug" VALUES (7, 'M2-F1 #33', 'March 30, 1964', 'Peterson', 240.0, 3650.0, 5, 11);
INSERT INTO "flug" VALUES (8, 'M2-F1 #39', 'May 19, 1964', 'Peterson', 240.0, 3650.0, 2, 13);
INSERT INTO "flug" VALUES (9, 'M2-F1 #61', 'July 16, 1965', 'Thompson', 240.0, 3650.0, 6, 11);
INSERT INTO "flug" VALUES (10, 'M2-F1 #64', 'August 30, 1965', 'Thompson', 240.0, 3650.0, 9, 1);
INSERT INTO "flug" VALUES (11, 'M2-F1 #70', 'October 8, 1965', 'Thompson', 240.0, 3650.0, 4, 5);
INSERT INTO "flug" VALUES (12, 'M2-F1 #71', 'March 28, 1966', 'Thompson', 240.0, 3650.0, 6, 7);
INSERT INTO "flug" VALUES (13, 'M2-F1 #73', 'August 4, 1966', 'Peterson', 240.0, 3650.0, 8, 9);

COMMIT;