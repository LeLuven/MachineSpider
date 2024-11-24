CREATE TABLE "ref_hotel_sternebewertungen"
(
	"sternebewertungscode"         CHAR(15) NOT NULL,
	"sternebewertungsbeschreibung" VARCHAR(80),
	PRIMARY KEY ("sternebewertungscode")
);

CREATE TABLE "orte"
(
	"ort_id"         INTEGER NOT NULL,
	"ortsname"       VARCHAR(255),
	"adresse"        VARCHAR(255),
	"andere_angaben" VARCHAR(255),
	PRIMARY KEY ("ort_id")
);

CREATE TABLE "ref_attraction_types"
(
	"attraction_type_code"        CHAR(15) NOT NULL,
	"attraction_type_description" VARCHAR(255),
	PRIMARY KEY ("attraction_type_code")
);

CREATE TABLE "besucher"
(
	"tourist_id"     INTEGER NOT NULL,
	"touristendaten" VARCHAR(255),
	PRIMARY KEY ("tourist_id"),
	UNIQUE ("tourist_id")
);

CREATE TABLE "merkmale"
(
	"merkmal_id"      INTEGER NOT NULL,
	"merkmal_details" VARCHAR(255),
	PRIMARY KEY ("merkmal_id")
);

CREATE TABLE "hotels"
(
	"hotel_id"             INTEGER NOT NULL,
	"sternebewertungscode" CHAR(15) NOT NULL,
	"haustiere_erlaubt_yn" CHAR(1),
	"preisspanne"          REAL,
	"andere_hoteldetails"  VARCHAR(255),
	PRIMARY KEY ("hotel_id"),
	FOREIGN KEY ("sternebewertungscode") REFERENCES "ref_hotel_sternebewertungen" ("sternebewertungscode")
);

CREATE TABLE "touristische_attraktionen"
(
	"touristenattraktion_id" INTEGER NOT NULL,
	"attraction_type_code"   CHAR(15) NOT NULL,
	"ort_id"                 INTEGER NOT NULL,
	"anfahrtsbeschreibung"   VARCHAR(255),
	"name"                   VARCHAR(255),
	"beschreibung"           VARCHAR(255),
	"öffnungszeiten"         VARCHAR(255),
	"andere_angaben"         VARCHAR(255),
	PRIMARY KEY ("touristenattraktion_id"),
	FOREIGN KEY ("attraction_type_code") REFERENCES "ref_attraction_types" ("attraction_type_code"),
	FOREIGN KEY ("ort_id") REFERENCES "orte" ("ort_id")
);

CREATE TABLE "straßenmärkte"
(
	"markt_id"      INTEGER NOT NULL,
	"markt_details" VARCHAR(255),
	PRIMARY KEY ("markt_id"),
	FOREIGN KEY ("markt_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "geschäfte"
(
	"shop_id"      INTEGER NOT NULL,
	"shop_details" VARCHAR(255),
	PRIMARY KEY ("shop_id"),
	FOREIGN KEY ("shop_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "museen"
(
	"museum_id"      INTEGER NOT NULL,
	"museum_details" VARCHAR(255),
	PRIMARY KEY ("museum_id"),
	FOREIGN KEY ("museum_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "königliche_familie"
(
	"königliche_familie_id"      INTEGER NOT NULL,
	"königliche_familie_details" VARCHAR(255),
	PRIMARY KEY ("königliche_familie_id"),
	FOREIGN KEY ("königliche_familie_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "freizeitparks"
(
	"themenpark_id"      INTEGER NOT NULL,
	"themenpark_details" VARCHAR(255),
	PRIMARY KEY ("themenpark_id"),
	FOREIGN KEY ("themenpark_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "besuche"
(
	"besuch_id"              INTEGER NOT NULL,
	"touristenattraktion_id" INTEGER NOT NULL,
	"tourist_id"             INTEGER NOT NULL,
	"besuch_datum"           DATETIME NOT NULL,
	"besuch_details"         VARCHAR(40) NOT NULL,
	PRIMARY KEY ("besuch_id"),
	FOREIGN KEY ("touristenattraktion_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id"),
	FOREIGN KEY ("tourist_id") REFERENCES "besucher" ("tourist_id")
);

CREATE TABLE "fotos"
(
	"foto_id"                INTEGER NOT NULL,
	"touristenattraktion_id" INTEGER NOT NULL,
	"name"                   VARCHAR(255),
	"beschreibung"           VARCHAR(255),
	"dateiname"              VARCHAR(255),
	"andere_angaben"         VARCHAR(255),
	PRIMARY KEY ("foto_id"),
	FOREIGN KEY ("touristenattraktion_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "personal"
(
	"personal_id"            INTEGER NOT NULL,
	"touristenattraktion_id" INTEGER NOT NULL,
	"name"                   VARCHAR(40),
	"andere_angaben"         VARCHAR(255),
	PRIMARY KEY ("personal_id"),
	FOREIGN KEY ("touristenattraktion_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id")
);

CREATE TABLE "merkmale_der_touristenattraktionen"
(
	"touristenattraktion_id" INTEGER NOT NULL,
	"merkmal_id"             INTEGER NOT NULL,
	PRIMARY KEY ("touristenattraktion_id", "merkmal_id"),
	FOREIGN KEY ("touristenattraktion_id") REFERENCES "touristische_attraktionen" ("touristenattraktion_id"),
	FOREIGN KEY ("merkmal_id") REFERENCES "merkmale" ("merkmal_id")
);

BEGIN TRANSACTION;
INSERT INTO "ref_hotel_sternebewertungen" VALUES ('1', 'star');
INSERT INTO "ref_hotel_sternebewertungen" VALUES ('2', 'star');
INSERT INTO "ref_hotel_sternebewertungen" VALUES ('3', 'star');
INSERT INTO "ref_hotel_sternebewertungen" VALUES ('4', 'star');
INSERT INTO "ref_hotel_sternebewertungen" VALUES ('5', 'star');

INSERT INTO "orte" VALUES (333, 'Astro Orbiter', '660 Shea Crescent', NULL);
INSERT INTO "orte" VALUES (368, 'African Animals', '254 Ottilie Junction', NULL);
INSERT INTO "orte" VALUES (417, 'American Adventure', '53815 Sawayn Tunnel Apt. 297', NULL);
INSERT INTO "orte" VALUES (579, 'The Barnstormer', '3374 Sarina Manor', NULL);
INSERT INTO "orte" VALUES (603, 'African Adventure', '88271 Barrows Union Suite 203', NULL);
INSERT INTO "orte" VALUES (650, 'UK Gallery', '4411 Sabrina Radial Suite 582', NULL);
INSERT INTO "orte" VALUES (655, 'The Boneyard', '0692 Georgiana Pass', NULL);
INSERT INTO "orte" VALUES (661, 'Shark World', '2485 Mueller Squares Suite 537', NULL);
INSERT INTO "orte" VALUES (740, 'Space Spin', '5536 Betsy Street Apt. 646', NULL);
INSERT INTO "orte" VALUES (759, 'Butterflies', '959 Feest Glen Suite 523', NULL);
INSERT INTO "orte" VALUES (858, 'Soak Station', '4908 Reinger Vista', NULL);
INSERT INTO "orte" VALUES (861, 'Castle', '14034 Kohler Drive', NULL);
INSERT INTO "orte" VALUES (867, 'Coral Reefs', '4510 Schuster Stream Apt. 613', NULL);
INSERT INTO "orte" VALUES (868, 'Film Festival', '770 Edd Lane Apt. 098', NULL);
INSERT INTO "orte" VALUES (885, 'Fossil Fun Games', '101 Paucek Crescent', NULL);

INSERT INTO "ref_attraction_types" VALUES ('2', 'park');
INSERT INTO "ref_attraction_types" VALUES ('3', 'garden');
INSERT INTO "ref_attraction_types" VALUES ('5', 'gallery');
INSERT INTO "ref_attraction_types" VALUES ('6', 'adventure');
INSERT INTO "ref_attraction_types" VALUES ('9', 'museum');

INSERT INTO "besucher" VALUES (164, 'Toney');
INSERT INTO "besucher" VALUES (189, 'Graciela');
INSERT INTO "besucher" VALUES (204, 'Vincent');
INSERT INTO "besucher" VALUES (211, 'Vivian');
INSERT INTO "besucher" VALUES (241, 'Nettie');
INSERT INTO "besucher" VALUES (295, 'Laurence');
INSERT INTO "besucher" VALUES (359, 'Newell');
INSERT INTO "besucher" VALUES (377, 'Marisol');
INSERT INTO "besucher" VALUES (399, 'Jarrell');
INSERT INTO "besucher" VALUES (439, 'Edna');
INSERT INTO "besucher" VALUES (500, 'Maud');
INSERT INTO "besucher" VALUES (513, 'Alison');
INSERT INTO "besucher" VALUES (541, 'Rosalind');
INSERT INTO "besucher" VALUES (545, 'Tevin');
INSERT INTO "besucher" VALUES (578, 'Aleen');
INSERT INTO "besucher" VALUES (610, 'Marcelle');
INSERT INTO "besucher" VALUES (652, 'Lizzie');
INSERT INTO "besucher" VALUES (779, 'Wayne');
INSERT INTO "besucher" VALUES (841, 'Teresa');
INSERT INTO "besucher" VALUES (888, 'Elnora');

INSERT INTO "merkmale" VALUES (523, 'cafe');
INSERT INTO "merkmale" VALUES (528, 'park');
INSERT INTO "merkmale" VALUES (543, 'garden');
INSERT INTO "merkmale" VALUES (681, 'shopping');
INSERT INTO "merkmale" VALUES (955, 'parking');

INSERT INTO "hotels" VALUES (123, '5', '1', 2914989.571, NULL);
INSERT INTO "hotels" VALUES (144, '4', '', '', NULL);
INSERT INTO "hotels" VALUES (172, '5', '', 17012.682586009, NULL);
INSERT INTO "hotels" VALUES (222, '5', '1', '', NULL);
INSERT INTO "hotels" VALUES (239, '3', '1', '', NULL);
INSERT INTO "hotels" VALUES (264, '1', '1', 48525.4530675, NULL);
INSERT INTO "hotels" VALUES (314, '5', '1', 766712918.96763, NULL);
INSERT INTO "hotels" VALUES (331, '1', '1', '', NULL);
INSERT INTO "hotels" VALUES (350, '1', '', '', NULL);
INSERT INTO "hotels" VALUES (373, '5', '1', 250548014.90329, NULL);
INSERT INTO "hotels" VALUES (376, '2', '', '', NULL);
INSERT INTO "hotels" VALUES (379, '4', '1', 38014975.47848, NULL);
INSERT INTO "hotels" VALUES (420, '5', '1', 9393.86291219, NULL);
INSERT INTO "hotels" VALUES (421, '3', '', 5526556.6412, NULL);
INSERT INTO "hotels" VALUES (426, '5', '', 245.067720121, NULL);
INSERT INTO "hotels" VALUES (431, '2', '1', 43.729525, NULL);
INSERT INTO "hotels" VALUES (442, '2', '1', 289775.7331715, NULL);
INSERT INTO "hotels" VALUES (473, '1', '1', 2374.7971074, NULL);
INSERT INTO "hotels" VALUES (514, '5', '', 1381255.81865, NULL);
INSERT INTO "hotels" VALUES (555, '5', '1', 5390.432113, NULL);

INSERT INTO "touristische_attraktionen" VALUES (2113, '2', 579, 'bus', 'art museum', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (2701, '6', 417, 'walk', 'UK gallery', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (5076, '2', 868, 'shuttle', 'flying elephant', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (5265, '5', 603, 'bus', 'film festival', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (6476, '3', 417, 'shuttle', 'US museum', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (6523, '9', 858, 'walk', 'fun games', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (6653, '9', 655, 'walk', 'history gallery', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (6852, '5', 858, 'walk', 'exploration trial', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (7067, '5', 417, 'bus', 'haunted mansion', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (8429, '9', 867, 'walk', 'presidents hall', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (8449, '2', 579, 'bus', 'impressions de France', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (8698, '5', 661, 'bus', 'jungle cruise', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (9360, '5', 868, 'shuttle', 'fun shops', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (9561, '2', 759, 'bus', 'cafe', NULL, NULL, NULL);
INSERT INTO "touristische_attraktionen" VALUES (9919, '6', 579, 'shuttle', 'parking', NULL, NULL, NULL);

INSERT INTO "straßenmärkte" VALUES (6852, 'Broadway');
INSERT INTO "straßenmärkte" VALUES (7067, 'Fish Farm Market');

INSERT INTO "geschäfte" VALUES (8429, 'soup');
INSERT INTO "geschäfte" VALUES (8449, 'coffee');
INSERT INTO "geschäfte" VALUES (8698, 'Flower');
INSERT INTO "geschäfte" VALUES (9360, 'see food');

INSERT INTO "museen" VALUES (2113, 'Yale Center for British Art');
INSERT INTO "museen" VALUES (2701, 'The Metropolitan Museum of Art');
INSERT INTO "museen" VALUES (5076, 'MoMA');

INSERT INTO "königliche_familie" VALUES (9561, NULL);
INSERT INTO "königliche_familie" VALUES (9919, NULL);

INSERT INTO "freizeitparks" VALUES (5265, 'Disney');
INSERT INTO "freizeitparks" VALUES (6476, 'Sea World');
INSERT INTO "freizeitparks" VALUES (6523, 'Universal Studios');

INSERT INTO "besuche" VALUES (183, 6653, 377, '2004-08-21 03:06:14', '');
INSERT INTO "besuche" VALUES (268, 5076, 204, '2013-08-06 05:35:51', '');
INSERT INTO "besuche" VALUES (273, 9360, 211, '2013-10-27 09:56:08', '');
INSERT INTO "besuche" VALUES (302, 6476, 377, '1990-08-15 14:24:10', '');
INSERT INTO "besuche" VALUES (356, 6476, 439, '1980-11-26 02:08:00', '');
INSERT INTO "besuche" VALUES (381, 6523, 211, '2017-03-19 08:48:19', '');
INSERT INTO "besuche" VALUES (416, 6476, 841, '2008-11-09 01:28:01', '');
INSERT INTO "besuche" VALUES (479, 6852, 439, '1989-08-24 20:26:37', '');
INSERT INTO "besuche" VALUES (563, 6852, 610, '1993-02-01 15:27:20', '');
INSERT INTO "besuche" VALUES (612, 9919, 204, '2007-09-17 10:12:45', '');
INSERT INTO "besuche" VALUES (729, 6476, 513, '1998-05-12 00:50:20', '');
INSERT INTO "besuche" VALUES (776, 8698, 513, '2010-10-04 01:34:12', '');
INSERT INTO "besuche" VALUES (781, 6852, 779, '2018-01-09 20:39:52', '');
INSERT INTO "besuche" VALUES (866, 8429, 545, '1971-12-16 06:41:26', '');
INSERT INTO "besuche" VALUES (909, 8698, 779, '1998-12-10 02:46:43', '');
INSERT INTO "besuche" VALUES (937, 6523, 541, '1996-01-08 13:23:41', '');
INSERT INTO "besuche" VALUES (962, 9919, 610, '2007-09-03 04:30:01', '');
INSERT INTO "besuche" VALUES (968, 6852, 377, '1974-12-31 23:18:24', '');
INSERT INTO "besuche" VALUES (977, 8698, 500, '2001-11-13 10:08:28', '');
INSERT INTO "besuche" VALUES (999, 2701, 610, '1990-11-12 00:54:50', '');

INSERT INTO "fotos" VALUES (211, 8449, 'game1', NULL, '702', NULL);
INSERT INTO "fotos" VALUES (280, 7067, 'game2', NULL, '762', NULL);
INSERT INTO "fotos" VALUES (303, 5076, 'game3', NULL, '392', NULL);
INSERT INTO "fotos" VALUES (327, 9919, 'fun1', NULL, '820', NULL);
INSERT INTO "fotos" VALUES (332, 5076, 'fun2', NULL, '060', NULL);
INSERT INTO "fotos" VALUES (428, 6523, 'fun3', NULL, '148', NULL);
INSERT INTO "fotos" VALUES (435, 8429, 'fun4', NULL, '453', NULL);
INSERT INTO "fotos" VALUES (437, 2701, 'fun5', NULL, '128', NULL);
INSERT INTO "fotos" VALUES (525, 5265, 'park1', NULL, '538', NULL);
INSERT INTO "fotos" VALUES (534, 6852, 'park2', NULL, '325', NULL);
INSERT INTO "fotos" VALUES (537, 6653, 'park3', NULL, '695', NULL);
INSERT INTO "fotos" VALUES (550, 5076, 'din1', NULL, '259', NULL);
INSERT INTO "fotos" VALUES (558, 8698, 'din2', NULL, '863', NULL);
INSERT INTO "fotos" VALUES (571, 6653, 'din3', NULL, '864', NULL);
INSERT INTO "fotos" VALUES (596, 9561, 'din4', NULL, '141', NULL);

INSERT INTO "personal" VALUES (170, 6476, 'Whitney', NULL);
INSERT INTO "personal" VALUES (219, 6476, 'Kaela', NULL);
INSERT INTO "personal" VALUES (237, 7067, 'Eunice', NULL);
INSERT INTO "personal" VALUES (249, 5265, 'Kiarra', NULL);
INSERT INTO "personal" VALUES (310, 9561, 'Phoebe', NULL);
INSERT INTO "personal" VALUES (433, 9360, 'Vickie', NULL);
INSERT INTO "personal" VALUES (463, 6653, 'Jannie', NULL);
INSERT INTO "personal" VALUES (470, 6523, 'Lenore', NULL);
INSERT INTO "personal" VALUES (487, 6852, 'Asia', NULL);
INSERT INTO "personal" VALUES (491, 6852, 'Janet', NULL);
INSERT INTO "personal" VALUES (532, 6852, 'Elouise', NULL);
INSERT INTO "personal" VALUES (591, 9360, 'Gina', NULL);
INSERT INTO "personal" VALUES (595, 8698, 'Beth', NULL);
INSERT INTO "personal" VALUES (596, 2701, 'Ruthie', NULL);
INSERT INTO "personal" VALUES (604, 6852, 'Aurore', NULL);
INSERT INTO "personal" VALUES (619, 2113, 'Cortney', NULL);
INSERT INTO "personal" VALUES (643, 6523, 'Astrid', NULL);
INSERT INTO "personal" VALUES (667, 9561, 'Shemar', NULL);
INSERT INTO "personal" VALUES (860, 6476, 'Trinity', NULL);
INSERT INTO "personal" VALUES (952, 5265, 'Carmella', NULL);

INSERT INTO "merkmale_der_touristenattraktionen" VALUES (5076, 528);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (5076, 681);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (5265, 523);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (5265, 955);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6476, 543);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6476, 681);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6476, 955);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6523, 528);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6852, 528);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (6852, 955);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (7067, 543);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (8429, 681);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (8449, 528);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (8698, 528);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (8698, 543);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (8698, 681);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (9561, 681);
INSERT INTO "merkmale_der_touristenattraktionen" VALUES (9919, 681);

COMMIT;