CREATE TABLE "adressen"
(
	"adresse_id"  INTEGER NOT NULL,
	"adressdaten" VARCHAR(255),
	PRIMARY KEY ("adresse_id"),
	UNIQUE ("adresse_id")
);

CREATE TABLE "orte"
(
	"location_id"    INTEGER NOT NULL,
	"andere_details" VARCHAR(255),
	PRIMARY KEY ("location_id")
);

CREATE TABLE "produkte"
(
	"produkt_id"      INTEGER NOT NULL,
	"produkttyp_code" CHAR(15),
	"produktname"     VARCHAR(255),
	"produktpreis"    DECIMAL(20,4),
	PRIMARY KEY ("produkt_id"),
	UNIQUE ("produkt_id")
);

CREATE TABLE "parteien"
(
	"party_id"      INTEGER NOT NULL,
	"parteidetails" VARCHAR(255),
	PRIMARY KEY ("party_id")
);

CREATE TABLE "vermögenswerte"
(
	"asset_id"       INTEGER NOT NULL,
	"andere_details" VARCHAR(255),
	PRIMARY KEY ("asset_id")
);

CREATE TABLE "kanäle"
(
	"channel_id"     INTEGER NOT NULL,
	"andere_details" VARCHAR(255),
	PRIMARY KEY ("channel_id")
);

CREATE TABLE "finances"
(
	"finance_id"     INTEGER NOT NULL,
	"andere_details" VARCHAR(255),
	PRIMARY KEY ("finance_id")
);

CREATE TABLE "ereignisse"
(
	"event_id"        INTEGER NOT NULL,
	"adresse_id"      INTEGER,
	"channel_id"      INTEGER NOT NULL,
	"event_type_code" CHAR(15),
	"finance_id"      INTEGER NOT NULL,
	"location_id"     INTEGER NOT NULL,
	PRIMARY KEY ("event_id"),
	FOREIGN KEY ("adresse_id") REFERENCES "adressen" ("adresse_id"),
	FOREIGN KEY ("finance_id") REFERENCES "finances" ("finance_id"),
	FOREIGN KEY ("location_id") REFERENCES "orte" ("location_id"),
	UNIQUE ("event_id")
);

CREATE TABLE "produkte_in_veranstaltungen"
(
	"produkt_in_ereignis_id" INTEGER NOT NULL,
	"event_id"               INTEGER NOT NULL,
	"produkt_id"             INTEGER NOT NULL,
	PRIMARY KEY ("produkt_in_ereignis_id"),
	FOREIGN KEY ("event_id") REFERENCES "ereignisse" ("event_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkte" ("produkt_id")
);

CREATE TABLE "parteien_in_veranstaltungen"
(
	"party_id"  INTEGER NOT NULL,
	"event_id"  INTEGER NOT NULL,
	"role_code" CHAR(15),
	PRIMARY KEY ("party_id", "event_id"),
	FOREIGN KEY ("party_id") REFERENCES "parteien" ("party_id"),
	FOREIGN KEY ("event_id") REFERENCES "ereignisse" ("event_id")
);

CREATE TABLE "vereinbarungen"
(
	"dokument_id" INTEGER NOT NULL,
	"event_id"    INTEGER NOT NULL,
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("event_id") REFERENCES "ereignisse" ("event_id")
);

CREATE TABLE "vermögenswerte_in_"
(
	"asset_id" INTEGER NOT NULL,
	"event_id" INTEGER NOT NULL,
	PRIMARY KEY ("asset_id", "event_id"),
	FOREIGN KEY ("event_id") REFERENCES "ereignisse" ("event_id")
);

BEGIN TRANSACTION;
INSERT INTO "adressen" VALUES (1, '465 Emely Bypass
West Mafalda, CO 23309');
INSERT INTO "adressen" VALUES (2, '669 Carter Trafficway
Port Delbert, OK 66249');
INSERT INTO "adressen" VALUES (3, '38247 Ernser Gateway Suite 442
Bogisichland, VT 71460');
INSERT INTO "adressen" VALUES (4, '732 Greenholt Valleys
East Marionfort, VT 89477-0433');
INSERT INTO "adressen" VALUES (5, '382 Demond Alley
Luellamouth, MT 67912');
INSERT INTO "adressen" VALUES (6, '3851 Quigley Flats
O''Reillychester, CA 92522-9526');
INSERT INTO "adressen" VALUES (7, '78950 Kamryn Centers
Chelsealand, NE 22947-6129');
INSERT INTO "adressen" VALUES (8, '682 Kautzer Forest Apt. 509
Jaydenfurt, NE 85011-5059');
INSERT INTO "adressen" VALUES (9, '11093 Balistreri Forge
Gaylordtown, VT 05705');
INSERT INTO "adressen" VALUES (10, '9113 Wisoky Glen Apt. 601
Lake Immanuel, UT 01388');
INSERT INTO "adressen" VALUES (11, '73409 Linnea Loop Apt. 778
Haagberg, AK 41204-1496');
INSERT INTO "adressen" VALUES (12, '8220 Concepcion Neck Suite 394
East Beauview, LA 19968-4755');
INSERT INTO "adressen" VALUES (13, '513 Lindgren River
North Scottymouth, IN 85224-1392');
INSERT INTO "adressen" VALUES (14, '9694 Wava Roads
Ricechester, DC 70816-9058');
INSERT INTO "adressen" VALUES (15, '068 O''Connell Tunnel
West Colemanburgh, MO 87777');

INSERT INTO "orte" VALUES (1, 'Rowe PLC');
INSERT INTO "orte" VALUES (2, 'Ebert, Green and Bogisich');
INSERT INTO "orte" VALUES (3, 'Prohaska LLC');
INSERT INTO "orte" VALUES (4, 'White, Kassulke and Barrows');
INSERT INTO "orte" VALUES (5, 'Wintheiser-Sauer');
INSERT INTO "orte" VALUES (6, 'Morar-Denesik');
INSERT INTO "orte" VALUES (7, 'Rowe-Stoltenberg');
INSERT INTO "orte" VALUES (8, 'Price-Lynch');
INSERT INTO "orte" VALUES (9, 'Ryan-Wyman');
INSERT INTO "orte" VALUES (10, 'Hilll Ltd');
INSERT INTO "orte" VALUES (11, 'Fritsch LLC');
INSERT INTO "orte" VALUES (12, 'Kuvalis-Goodwin');
INSERT INTO "orte" VALUES (13, 'Sanford Inc');
INSERT INTO "orte" VALUES (14, 'Waelchi-Wehner');
INSERT INTO "orte" VALUES (15, 'Daugherty, Nader and Balistreri');

INSERT INTO "produkte" VALUES (1, 'Books', 'Business Policy', 1336.26);
INSERT INTO "produkte" VALUES (3, 'Food', 'Special Dinning', 2894.94);
INSERT INTO "produkte" VALUES (5, 'Clothes', 'Men suits', 3298.84);
INSERT INTO "produkte" VALUES (6, 'Electronics', 'TV Equipments', 932.25);
INSERT INTO "produkte" VALUES (7, 'Books', 'Business Policy B', 3215.66);
INSERT INTO "produkte" VALUES (10, 'Electronics', 'TV Equipments', 4427.49);
INSERT INTO "produkte" VALUES (11, 'Electronics', 'Conference Equipments', 3289.47);
INSERT INTO "produkte" VALUES (18, 'Books', 'Trading Policy', 3228.49);
INSERT INTO "produkte" VALUES (20, 'Books', 'Trading Policy B', 4343.83);
INSERT INTO "produkte" VALUES (22, 'Food', 'Dinning', 3574.56);
INSERT INTO "produkte" VALUES (24, 'Food', 'Dinning', 4895.86);
INSERT INTO "produkte" VALUES (26, 'Food', 'Dinning', 2339.97);
INSERT INTO "produkte" VALUES (29, 'Food', 'Special Dinning', 502.15);
INSERT INTO "produkte" VALUES (34, 'Electronics', 'TV Equipments', 970.77);
INSERT INTO "produkte" VALUES (45, 'Clothes', 'Men suits', 3541.17);

INSERT INTO "parteien" VALUES (3, 'European People''s Party');
INSERT INTO "parteien" VALUES (4, 'European Free Alliance');
INSERT INTO "parteien" VALUES (5, 'European Alliance for Freedom');
INSERT INTO "parteien" VALUES (6, 'European Christian Political Movement');
INSERT INTO "parteien" VALUES (7, 'Movement for a Europe of Nations and Freedom');
INSERT INTO "parteien" VALUES (8, 'Alliance of Liberals and Democrats for Europe');
INSERT INTO "parteien" VALUES (9, 'EUDemocrats');

INSERT INTO "vermögenswerte" VALUES (1, 'Transportation Cars');
INSERT INTO "vermögenswerte" VALUES (2, 'Meeting Rooms');
INSERT INTO "vermögenswerte" VALUES (3, 'Dinning Tables');

INSERT INTO "kanäle" VALUES (1, '145');
INSERT INTO "kanäle" VALUES (2, '348');
INSERT INTO "kanäle" VALUES (3, '933');
INSERT INTO "kanäle" VALUES (4, '631');
INSERT INTO "kanäle" VALUES (5, '681');
INSERT INTO "kanäle" VALUES (6, '993');
INSERT INTO "kanäle" VALUES (7, '249');
INSERT INTO "kanäle" VALUES (8, '644');
INSERT INTO "kanäle" VALUES (9, '668');
INSERT INTO "kanäle" VALUES (10, '058');
INSERT INTO "kanäle" VALUES (11, '163');
INSERT INTO "kanäle" VALUES (12, '285');
INSERT INTO "kanäle" VALUES (13, '943');
INSERT INTO "kanäle" VALUES (14, '292');
INSERT INTO "kanäle" VALUES (15, '177');

INSERT INTO "finances" VALUES (1, 'Mutual');
INSERT INTO "finances" VALUES (2, 'Good');
INSERT INTO "finances" VALUES (3, 'Bad');
INSERT INTO "finances" VALUES (4, 'Mutual');
INSERT INTO "finances" VALUES (5, 'Bad');
INSERT INTO "finances" VALUES (6, 'Good');
INSERT INTO "finances" VALUES (7, 'Good');
INSERT INTO "finances" VALUES (8, 'Mutual');
INSERT INTO "finances" VALUES (9, 'Bad');
INSERT INTO "finances" VALUES (10, 'Bad');
INSERT INTO "finances" VALUES (11, 'Mutual');
INSERT INTO "finances" VALUES (12, 'Mutual');
INSERT INTO "finances" VALUES (13, 'Good');
INSERT INTO "finances" VALUES (14, 'Good');
INSERT INTO "finances" VALUES (15, 'Mutual');

INSERT INTO "ereignisse" VALUES (1, 3, 12, 'Trade Show', 2, 13);
INSERT INTO "ereignisse" VALUES (2, 15, 13, 'Press Conferenc', 8, 11);
INSERT INTO "ereignisse" VALUES (3, 12, 1, 'Press Conferenc', 12, 6);
INSERT INTO "ereignisse" VALUES (4, 13, 10, 'Ceremonies', 7, 6);
INSERT INTO "ereignisse" VALUES (5, 9, 4, 'Trade Show', 15, 6);
INSERT INTO "ereignisse" VALUES (6, 15, 12, 'Seminar', 15, 9);
INSERT INTO "ereignisse" VALUES (7, 15, 6, 'Trade Show', 13, 15);
INSERT INTO "ereignisse" VALUES (8, 3, 15, 'Trade Show', 1, 6);
INSERT INTO "ereignisse" VALUES (9, 12, 3, 'Press Conferenc', 3, 11);
INSERT INTO "ereignisse" VALUES (10, 15, 10, 'Conference', 7, 12);
INSERT INTO "ereignisse" VALUES (11, 10, 4, 'Trade Show', 2, 8);
INSERT INTO "ereignisse" VALUES (12, 14, 9, 'Trade Show', 14, 7);
INSERT INTO "ereignisse" VALUES (13, 12, 13, 'Trade Show', 12, 12);
INSERT INTO "ereignisse" VALUES (14, 10, 11, 'Seminar', 5, 10);
INSERT INTO "ereignisse" VALUES (15, 2, 2, 'Conference', 10, 5);

INSERT INTO "produkte_in_veranstaltungen" VALUES (13, 4, 29);
INSERT INTO "produkte_in_veranstaltungen" VALUES (23, 8, 3);
INSERT INTO "produkte_in_veranstaltungen" VALUES (32, 14, 10);
INSERT INTO "produkte_in_veranstaltungen" VALUES (33, 5, 18);
INSERT INTO "produkte_in_veranstaltungen" VALUES (43, 4, 45);
INSERT INTO "produkte_in_veranstaltungen" VALUES (46, 7, 3);
INSERT INTO "produkte_in_veranstaltungen" VALUES (50, 14, 6);
INSERT INTO "produkte_in_veranstaltungen" VALUES (61, 7, 3);
INSERT INTO "produkte_in_veranstaltungen" VALUES (63, 6, 34);
INSERT INTO "produkte_in_veranstaltungen" VALUES (64, 15, 6);
INSERT INTO "produkte_in_veranstaltungen" VALUES (69, 8, 20);
INSERT INTO "produkte_in_veranstaltungen" VALUES (74, 1, 6);
INSERT INTO "produkte_in_veranstaltungen" VALUES (79, 4, 45);
INSERT INTO "produkte_in_veranstaltungen" VALUES (90, 14, 26);
INSERT INTO "produkte_in_veranstaltungen" VALUES (99, 10, 11);

INSERT INTO "parteien_in_veranstaltungen" VALUES (3, 7, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (3, 8, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (4, 1, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (4, 3, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (4, 8, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (5, 9, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (5, 10, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (5, 15, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (6, 6, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (6, 12, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (6, 13, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (9, 3, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (9, 4, 'Participant');
INSERT INTO "parteien_in_veranstaltungen" VALUES (9, 10, 'Organizer');
INSERT INTO "parteien_in_veranstaltungen" VALUES (9, 12, 'Organizer');

INSERT INTO "vereinbarungen" VALUES (1, 13);
INSERT INTO "vereinbarungen" VALUES (2, 13);
INSERT INTO "vereinbarungen" VALUES (3, 15);
INSERT INTO "vereinbarungen" VALUES (4, 9);
INSERT INTO "vereinbarungen" VALUES (5, 11);
INSERT INTO "vereinbarungen" VALUES (6, 8);
INSERT INTO "vereinbarungen" VALUES (7, 10);
INSERT INTO "vereinbarungen" VALUES (8, 15);
INSERT INTO "vereinbarungen" VALUES (9, 6);
INSERT INTO "vereinbarungen" VALUES (10, 11);
INSERT INTO "vereinbarungen" VALUES (11, 8);
INSERT INTO "vereinbarungen" VALUES (12, 9);
INSERT INTO "vereinbarungen" VALUES (13, 5);
INSERT INTO "vereinbarungen" VALUES (14, 12);
INSERT INTO "vereinbarungen" VALUES (15, 15);

INSERT INTO "vermögenswerte_in_" VALUES (1, 4);
INSERT INTO "vermögenswerte_in_" VALUES (1, 5);
INSERT INTO "vermögenswerte_in_" VALUES (1, 9);
INSERT INTO "vermögenswerte_in_" VALUES (1, 10);
INSERT INTO "vermögenswerte_in_" VALUES (2, 8);
INSERT INTO "vermögenswerte_in_" VALUES (2, 14);
INSERT INTO "vermögenswerte_in_" VALUES (3, 2);
INSERT INTO "vermögenswerte_in_" VALUES (3, 5);
INSERT INTO "vermögenswerte_in_" VALUES (3, 8);
INSERT INTO "vermögenswerte_in_" VALUES (3, 9);
INSERT INTO "vermögenswerte_in_" VALUES (3, 10);
INSERT INTO "vermögenswerte_in_" VALUES (3, 12);

COMMIT;