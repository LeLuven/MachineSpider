CREATE TABLE "flugzeug"
(
	"airline_id" NUMBER(9,0),
	"name"       VARCHAR2(30),
	"entfernung" NUMBER(6,0),
	PRIMARY KEY ("airline_id")
);

CREATE TABLE "mitarbeiter"
(
	"mitarbeiter_id" NUMBER(9,0),
	"name"           VARCHAR2(30),
	"gehalt"         NUMBER(10,2),
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "flug"
(
	"flugnummer"    NUMBER(4,0),
	"herkunft"      VARCHAR2(20),
	"zielort"       VARCHAR2(20),
	"entfernung"    NUMBER(6,0),
	"abflugdatum"   DATE,
	"ankunftsdatum" DATE,
	"preis"         NUMBER(7,2),
	"airline_id"    NUMBER(9,0),
	PRIMARY KEY ("flugnummer"),
	FOREIGN KEY ("airline_id") REFERENCES "flugzeug" ("airline_id")
);

CREATE TABLE "bescheinigung"
(
	"mitarbeiter_id" NUMBER(9,0),
	"airline_id"     NUMBER(9,0),
	PRIMARY KEY ("mitarbeiter_id", "airline_id"),
	FOREIGN KEY ("mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id"),
	FOREIGN KEY ("airline_id") REFERENCES "flugzeug" ("airline_id")
);

BEGIN TRANSACTION;
INSERT INTO "flugzeug" VALUES (1, 'Boeing 747-400', 8430);
INSERT INTO "flugzeug" VALUES (2, 'Boeing 737-800', 3383);
INSERT INTO "flugzeug" VALUES (3, 'Airbus A340-300', 7120);
INSERT INTO "flugzeug" VALUES (4, 'British Aerospace Jetstream 41', 1502);
INSERT INTO "flugzeug" VALUES (5, 'Embraer ERJ-145', 1530);
INSERT INTO "flugzeug" VALUES (6, 'SAAB 340', 2128);
INSERT INTO "flugzeug" VALUES (7, 'Piper Archer III', 520);
INSERT INTO "flugzeug" VALUES (8, 'Tupolev 154', 4103);
INSERT INTO "flugzeug" VALUES (16, 'Schwitzer 2-33', 30);
INSERT INTO "flugzeug" VALUES (9, 'Lockheed L1011', 6900);
INSERT INTO "flugzeug" VALUES (10, 'Boeing 757-300', 4010);
INSERT INTO "flugzeug" VALUES (11, 'Boeing 777-300', 6441);
INSERT INTO "flugzeug" VALUES (12, 'Boeing 767-400ER', 6475);
INSERT INTO "flugzeug" VALUES (13, 'Airbus A320', 2605);
INSERT INTO "flugzeug" VALUES (14, 'Airbus A319', 1805);
INSERT INTO "flugzeug" VALUES (15, 'Boeing 727', 1504);

INSERT INTO "mitarbeiter" VALUES (242518965, 'James Smith', 120433);
INSERT INTO "mitarbeiter" VALUES (141582651, 'Mary Johnson', 178345);
INSERT INTO "mitarbeiter" VALUES (11564812, 'John Williams', 153972);
INSERT INTO "mitarbeiter" VALUES (567354612, 'Lisa Walker', 256481);
INSERT INTO "mitarbeiter" VALUES (552455318, 'Larry West', 101745);
INSERT INTO "mitarbeiter" VALUES (550156548, 'Karen Scott', 205187);
INSERT INTO "mitarbeiter" VALUES (390487451, 'Lawrence Sperry', 212156);
INSERT INTO "mitarbeiter" VALUES (274878974, 'Michael Miller', 99890);
INSERT INTO "mitarbeiter" VALUES (254099823, 'Patricia Jones', 24450);
INSERT INTO "mitarbeiter" VALUES (356187925, 'Robert Brown', 44740);
INSERT INTO "mitarbeiter" VALUES (355548984, 'Angela Martinez', 212156);
INSERT INTO "mitarbeiter" VALUES (310454876, 'Joseph Thompson', 212156);
INSERT INTO "mitarbeiter" VALUES (489456522, 'Linda Davis', 27984);
INSERT INTO "mitarbeiter" VALUES (489221823, 'Richard Jackson', 23980);
INSERT INTO "mitarbeiter" VALUES (548977562, 'William Ward', 84476);
INSERT INTO "mitarbeiter" VALUES (310454877, 'Chad Stewart', 33546);
INSERT INTO "mitarbeiter" VALUES (142519864, 'Betty Adams', 227489);
INSERT INTO "mitarbeiter" VALUES (269734834, 'George Wright', 289950);
INSERT INTO "mitarbeiter" VALUES (287321212, 'Michael Miller', 48090);
INSERT INTO "mitarbeiter" VALUES (552455348, 'Dorthy Lewis', 152013);
INSERT INTO "mitarbeiter" VALUES (248965255, 'Barbara Wilson', 43723);
INSERT INTO "mitarbeiter" VALUES (159542516, 'William Moore', 48250);
INSERT INTO "mitarbeiter" VALUES (348121549, 'Haywood Kelly', 32899);
INSERT INTO "mitarbeiter" VALUES (90873519, 'Elizabeth Taylor', 32021);
INSERT INTO "mitarbeiter" VALUES (486512566, 'David Anderson', 43001);
INSERT INTO "mitarbeiter" VALUES (619023588, 'Jennifer Thomas', 54921);
INSERT INTO "mitarbeiter" VALUES (15645489, 'Donald King', 18050);
INSERT INTO "mitarbeiter" VALUES (556784565, 'Mark Young', 205187);
INSERT INTO "mitarbeiter" VALUES (573284895, 'Eric Cooper', 114323);
INSERT INTO "mitarbeiter" VALUES (574489456, 'William Jones', 105743);
INSERT INTO "mitarbeiter" VALUES (574489457, 'Milo Brooks', 20);

INSERT INTO "flug" VALUES (99, 'Los Angeles', 'Washington D.C.', 2308, '04/12/2005 09:30', '04/12/2005 09:40', 235.98, 1);
INSERT INTO "flug" VALUES (13, 'Los Angeles', 'Chicago', 1749, '04/12/2005 08:45', '04/12/2005 08:45', 220.98, 3);
INSERT INTO "flug" VALUES (346, 'Los Angeles', 'Dallas', 1251, '04/12/2005 11:50', '04/12/2005 07:05', 182, 2);
INSERT INTO "flug" VALUES (387, 'Los Angeles', 'Boston', 2606, '04/12/2005 07:03', '04/12/2005 05:03', 261.56, 6);
INSERT INTO "flug" VALUES (7, 'Los Angeles', 'Sydney', 7487, '04/12/2005 05:30', '04/12/2005 11:10', 278.56, 3);
INSERT INTO "flug" VALUES (2, 'Los Angeles', 'Tokyo', 5478, '04/12/2005 06:30', '04/12/2005 03:55', 780.99, 9);
INSERT INTO "flug" VALUES (33, 'Los Angeles', 'Honolulu', 2551, '04/12/2005 09:15', '04/12/2005 11:15', 375.23, 7);
INSERT INTO "flug" VALUES (34, 'Los Angeles', 'Honolulu', 2551, '04/12/2005 12:45', '04/12/2005 03:18', 425.98, 5);
INSERT INTO "flug" VALUES (76, 'Chicago', 'Los Angeles', 1749, '04/12/2005 08:32', '04/12/2005 10:03', 220.98, 9);
INSERT INTO "flug" VALUES (68, 'Chicago', 'New York', 802, '04/12/2005 09:00', '04/12/2005 12:02', 202.45, 10);

INSERT INTO "bescheinigung" VALUES (11564812, 2);
INSERT INTO "bescheinigung" VALUES (11564812, 10);
INSERT INTO "bescheinigung" VALUES (90873519, 6);
INSERT INTO "bescheinigung" VALUES (141582651, 2);
INSERT INTO "bescheinigung" VALUES (141582651, 10);
INSERT INTO "bescheinigung" VALUES (141582651, 12);
INSERT INTO "bescheinigung" VALUES (142519864, 1);
INSERT INTO "bescheinigung" VALUES (142519864, 2);
INSERT INTO "bescheinigung" VALUES (142519864, 3);
INSERT INTO "bescheinigung" VALUES (142519864, 7);
INSERT INTO "bescheinigung" VALUES (142519864, 10);
INSERT INTO "bescheinigung" VALUES (142519864, 11);
INSERT INTO "bescheinigung" VALUES (142519864, 12);
INSERT INTO "bescheinigung" VALUES (142519864, 13);
INSERT INTO "bescheinigung" VALUES (159542516, 5);
INSERT INTO "bescheinigung" VALUES (159542516, 7);
INSERT INTO "bescheinigung" VALUES (242518965, 2);
INSERT INTO "bescheinigung" VALUES (242518965, 10);
INSERT INTO "bescheinigung" VALUES (269734834, 1);
INSERT INTO "bescheinigung" VALUES (269734834, 2);
INSERT INTO "bescheinigung" VALUES (269734834, 3);
INSERT INTO "bescheinigung" VALUES (269734834, 4);
INSERT INTO "bescheinigung" VALUES (269734834, 5);
INSERT INTO "bescheinigung" VALUES (269734834, 6);
INSERT INTO "bescheinigung" VALUES (269734834, 7);
INSERT INTO "bescheinigung" VALUES (269734834, 8);
INSERT INTO "bescheinigung" VALUES (269734834, 9);
INSERT INTO "bescheinigung" VALUES (269734834, 10);
INSERT INTO "bescheinigung" VALUES (269734834, 11);
INSERT INTO "bescheinigung" VALUES (269734834, 12);
INSERT INTO "bescheinigung" VALUES (269734834, 13);
INSERT INTO "bescheinigung" VALUES (269734834, 14);
INSERT INTO "bescheinigung" VALUES (269734834, 15);
INSERT INTO "bescheinigung" VALUES (274878974, 10);
INSERT INTO "bescheinigung" VALUES (274878974, 12);
INSERT INTO "bescheinigung" VALUES (310454876, 8);
INSERT INTO "bescheinigung" VALUES (310454876, 9);
INSERT INTO "bescheinigung" VALUES (355548984, 8);
INSERT INTO "bescheinigung" VALUES (355548984, 9);
INSERT INTO "bescheinigung" VALUES (356187925, 6);
INSERT INTO "bescheinigung" VALUES (390487451, 3);
INSERT INTO "bescheinigung" VALUES (390487451, 13);
INSERT INTO "bescheinigung" VALUES (390487451, 14);
INSERT INTO "bescheinigung" VALUES (548977562, 7);
INSERT INTO "bescheinigung" VALUES (550156548, 1);
INSERT INTO "bescheinigung" VALUES (550156548, 12);
INSERT INTO "bescheinigung" VALUES (552455318, 2);
INSERT INTO "bescheinigung" VALUES (552455318, 7);
INSERT INTO "bescheinigung" VALUES (552455318, 14);
INSERT INTO "bescheinigung" VALUES (556784565, 2);
INSERT INTO "bescheinigung" VALUES (556784565, 3);
INSERT INTO "bescheinigung" VALUES (556784565, 5);
INSERT INTO "bescheinigung" VALUES (567354612, 1);
INSERT INTO "bescheinigung" VALUES (567354612, 2);
INSERT INTO "bescheinigung" VALUES (567354612, 3);
INSERT INTO "bescheinigung" VALUES (567354612, 4);
INSERT INTO "bescheinigung" VALUES (567354612, 5);
INSERT INTO "bescheinigung" VALUES (567354612, 7);
INSERT INTO "bescheinigung" VALUES (567354612, 9);
INSERT INTO "bescheinigung" VALUES (567354612, 10);
INSERT INTO "bescheinigung" VALUES (567354612, 11);
INSERT INTO "bescheinigung" VALUES (567354612, 12);
INSERT INTO "bescheinigung" VALUES (567354612, 15);
INSERT INTO "bescheinigung" VALUES (573284895, 3);
INSERT INTO "bescheinigung" VALUES (573284895, 4);
INSERT INTO "bescheinigung" VALUES (573284895, 5);
INSERT INTO "bescheinigung" VALUES (574489456, 6);
INSERT INTO "bescheinigung" VALUES (574489456, 8);
INSERT INTO "bescheinigung" VALUES (574489457, 7);

COMMIT;