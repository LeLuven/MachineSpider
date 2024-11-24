CREATE TABLE "pilot"
(
	"pilot_id" INT(11) NOT NULL,
	"name"     VARCHAR(50) NOT NULL,
	"alter"    INT(11) NOT NULL,
	PRIMARY KEY ("pilot_id")
);

CREATE TABLE "flugzeug"
(
	"flugzeug_id"                 INT(11) NOT NULL,
	"flugzeug"                    VARCHAR(50) NOT NULL,
	"beschreibung"                VARCHAR(50) NOT NULL,
	"maximales_bruttogewicht"     VARCHAR(50) NOT NULL,
	"gesamtfläche_der_festplatte" VARCHAR(50) NOT NULL,
	"maximale_plattenbelastung"   VARCHAR(50) NOT NULL,
	PRIMARY KEY ("flugzeug_id")
);

CREATE TABLE "flughafen"
(
	"flughafen_id"                INT,
	"flughafen_name"              TEXT,
	"passagiere_insgesamt"        REAL,
	"%_veränderung_2007"          TEXT,
	"internationale_passagiere"   REAL,
	"inländische_passagiere"      REAL,
	"transitpassagiere"           REAL,
	"flugbewegungen"              REAL,
	"fracht_in_metrischen_tonnen" REAL,
	PRIMARY KEY ("flughafen_id")
);

CREATE TABLE "übereinstimmung"
(
	"runde"                  REAL,
	"ort"                    TEXT,
	"land"                   TEXT,
	"datum"                  TEXT,
	"schnellstes_qualifying" TEXT,
	"siegreicher_pilot"      TEXT,
	"siegerflugzeug"         TEXT,
	PRIMARY KEY ("runde"),
	FOREIGN KEY ("siegreicher_pilot") REFERENCES "pilot" ("pilot_id"),
	FOREIGN KEY ("siegerflugzeug") REFERENCES "flugzeug" ("flugzeug_id")
);

CREATE TABLE "flughafen_flugzeug"
(
	"id"           INT,
	"flughafen_id" INT,
	"flugzeug_id"  INT,
	PRIMARY KEY ("flughafen_id", "flugzeug_id"),
	FOREIGN KEY ("flughafen_id") REFERENCES "flughafen" ("flughafen_id"),
	FOREIGN KEY ("flugzeug_id") REFERENCES "flugzeug" ("flugzeug_id")
);

BEGIN TRANSACTION;
INSERT INTO "pilot" VALUES (1, 'Prof. Zackery Collins', 23);
INSERT INTO "pilot" VALUES (2, 'Katheryn Gorczany IV', 20);
INSERT INTO "pilot" VALUES (3, 'Mr. Cristian Halvorson II', 23);
INSERT INTO "pilot" VALUES (4, 'Ayana Spencer', 25);
INSERT INTO "pilot" VALUES (5, 'Ellen Ledner III', 31);
INSERT INTO "pilot" VALUES (6, 'Elisha Hickle V', 37);
INSERT INTO "pilot" VALUES (7, 'Dr. Jade Bradtke V', 26);
INSERT INTO "pilot" VALUES (8, 'Winnifred Boyle', 30);
INSERT INTO "pilot" VALUES (9, 'Della Lindgren', 29);
INSERT INTO "pilot" VALUES (10, 'Maxwell Graham', 26);
INSERT INTO "pilot" VALUES (11, 'Blaise Muller', 33);
INSERT INTO "pilot" VALUES (12, 'Baylee Steuber', 30);

INSERT INTO "flugzeug" VALUES (1, 'Robinson R-22', 'Light utility helicopter', '1,370 lb (635 kg)', '497 ft² (46.2 m²)', '2.6 lb/ft² (14 kg/m²)');
INSERT INTO "flugzeug" VALUES (2, 'Bell 206B3 JetRanger', 'Turboshaft utility helicopter', '3,200 lb (1,451 kg)', '872 ft² (81.1 m²)', '3.7 lb/ft² (18 kg/m²)');
INSERT INTO "flugzeug" VALUES (3, 'CH-47D Chinook', 'Tandem rotor helicopter', '50,000 lb (22,680 kg)', '5,655 ft² (526 m²)', '8.8 lb/ft² (43 kg/m²)');
INSERT INTO "flugzeug" VALUES (4, 'Mil Mi-26', 'Heavy-lift helicopter', '123,500 lb (56,000 kg)', '8,495 ft² (789 m²)', '14.5 lb/ft² (71 kg/m²)');
INSERT INTO "flugzeug" VALUES (5, 'CH-53E Super Stallion', 'Heavy-lift helicopter', '73,500 lb (33,300 kg)', '4,900 ft² (460 m²)', '15 lb/ft² (72 kg/m²)');

INSERT INTO "flughafen" VALUES (1, 'London Heathrow', 67054745.0, '1.5%', 61344438.0, 5562516.0, 147791.0, 478693.0, 1397054.0);
INSERT INTO "flughafen" VALUES (2, 'London Gatwick', 34205887.0, '2.9%', 30431051.0, 3730963.0, 43873.0, 263653.0, 107702.0);
INSERT INTO "flughafen" VALUES (3, 'London Stansted', 22360364.0, '6.0%', 19996947.0, 2343428.0, 19989.0, 193282.0, 197738.0);
INSERT INTO "flughafen" VALUES (4, 'Manchester', 21219195.0, '4.0%', 18119230.0, 2943719.0, 156246.0, 204610.0, 141781.0);
INSERT INTO "flughafen" VALUES (5, 'London Luton', 10180734.0, '2.6%', 8853224.0, 1320678.0, 6832.0, 117859.0, 40518.0);
INSERT INTO "flughafen" VALUES (6, 'Birmingham Airport', 9627589.0, '4.3%', 8105162.0, 1471538.0, 50889.0, 112227.0, 12192.0);
INSERT INTO "flughafen" VALUES (7, 'Edinburgh', 9006702.0, '0.5%', 3711140.0, 5281038.0, 14524.0, 125550.0, 12418.0);
INSERT INTO "flughafen" VALUES (8, 'Glasgow International', 8178891.0, '7.0%', 3943139.0, 4192121.0, 43631.0, 100087.0, 3546.0);
INSERT INTO "flughafen" VALUES (9, 'Bristol', 6267114.0, '5.7%', 5057051.0, 1171605.0, 38458.0, 76517.0, 3.0);
INSERT INTO "flughafen" VALUES (10, 'East Midlands', 5620673.0, '3.8%', 4870184.0, 746094.0, 4395.0, 93038.0, 261507.0);

INSERT INTO "übereinstimmung" VALUES (1.0, 'Mina'' Zayid , Abu Dhabi', 'United Arab Emirates', 'March 26–27', 'Hannes Arch', '1', '1');
INSERT INTO "übereinstimmung" VALUES (2.0, 'Swan River , Perth', 'Australia', 'April 17–18', 'Paul Bonhomme', '4', '1');
INSERT INTO "übereinstimmung" VALUES (3.0, 'Flamengo Beach , Rio de Janeiro', 'Brazil', 'May 8–9', 'Hannes Arch', '6', '2');
INSERT INTO "übereinstimmung" VALUES (4.0, 'Windsor , Ontario', 'Canada', 'June 5–6', 'Nigel Lamb', '4', '4');
INSERT INTO "übereinstimmung" VALUES (5.0, 'New York City', 'United States', 'June 19–20', 'Hannes Arch', '9', '3');
INSERT INTO "übereinstimmung" VALUES (6.0, 'EuroSpeedway Lausitz', 'Germany', 'August 7–8', 'Paul Bonhomme', '2', '4');
INSERT INTO "übereinstimmung" VALUES (7.0, 'River Danube , Budapest', 'Hungary', 'Cancelled', 'Cancelled', '6', '5');

INSERT INTO "flughafen_flugzeug" VALUES (1, 6, 5);
INSERT INTO "flughafen_flugzeug" VALUES (2, 2, 1);
INSERT INTO "flughafen_flugzeug" VALUES (3, 1, 2);
INSERT INTO "flughafen_flugzeug" VALUES (4, 9, 3);

COMMIT;