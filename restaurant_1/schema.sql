CREATE TABLE "schüler"
(
	"student_id" INTEGER,
	"nachname"   VARCHAR(12),
	"vorname"    VARCHAR(12),
	"alter"      INTEGER,
	"geschlecht" VARCHAR(1),
	"hauptfach"  INTEGER,
	"berater"    INTEGER,
	"stadtcode"  VARCHAR(3),
	PRIMARY KEY ("student_id")
);

CREATE TABLE "restaurant"
(
	"restaurant_id"   INTEGER,
	"restaurant_name" VARCHAR(100),
	"adresse"         VARCHAR(100),
	"bewertung"       INTEGER,
	PRIMARY KEY ("restaurant_id")
);

CREATE TABLE "restaurant_typ"
(
	"restaurant_typ_id"           INTEGER,
	"restaurant_typ_name"         VARCHAR(40),
	"restaurant_typ_beschreibung" VARCHAR(100),
	PRIMARY KEY ("restaurant_typ_id")
);

CREATE TABLE "besuche_restaurant"
(
	"student_id"    INTEGER,
	"restaurant_id" INTEGER,
	"zeit"          TIMESTAMP,
	"ausgegeben"    FLOAT,
	FOREIGN KEY ("student_id") REFERENCES "schüler" ("student_id"),
	FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("restaurant_id")
);

CREATE TABLE "art_des_restaurants"
(
	"restaurant_id"     INTEGER,
	"restaurant_typ_id" INTEGER,
	FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("restaurant_id"),
	FOREIGN KEY ("restaurant_typ_id") REFERENCES "restaurant_typ" ("restaurant_typ_id")
);

BEGIN TRANSACTION;
INSERT INTO "schüler" VALUES (1001, 'Smith', 'Linda', 18, 'F', 600, 1121, 'BAL');
INSERT INTO "schüler" VALUES (1002, 'Kim', 'Tracy', 19, 'F', 600, 7712, 'HKG');
INSERT INTO "schüler" VALUES (1003, 'Jones', 'Shiela', 21, 'F', 600, 7792, 'WAS');
INSERT INTO "schüler" VALUES (1004, 'Kumar', 'Dinesh', 20, 'M', 600, 8423, 'CHI');
INSERT INTO "schüler" VALUES (1005, 'Gompers', 'Paul', 26, 'M', 600, 1121, 'YYZ');
INSERT INTO "schüler" VALUES (1006, 'Schultz', 'Andy', 18, 'M', 600, 1148, 'BAL');
INSERT INTO "schüler" VALUES (1007, 'Apap', 'Lisa', 18, 'F', 600, 8918, 'PIT');
INSERT INTO "schüler" VALUES (1008, 'Nelson', 'Jandy', 20, 'F', 600, 9172, 'BAL');
INSERT INTO "schüler" VALUES (1009, 'Tai', 'Eric', 19, 'M', 600, 2192, 'YYZ');
INSERT INTO "schüler" VALUES (1010, 'Lee', 'Derek', 17, 'M', 600, 2192, 'HOU');
INSERT INTO "schüler" VALUES (1011, 'Adams', 'David', 22, 'M', 600, 1148, 'PHL');
INSERT INTO "schüler" VALUES (1012, 'Davis', 'Steven', 20, 'M', 600, 7723, 'PIT');
INSERT INTO "schüler" VALUES (1014, 'Norris', 'Charles', 18, 'M', 600, 8741, 'DAL');
INSERT INTO "schüler" VALUES (1015, 'Lee', 'Susan', 16, 'F', 600, 8721, 'HKG');
INSERT INTO "schüler" VALUES (1016, 'Schwartz', 'Mark', 17, 'M', 600, 2192, 'DET');
INSERT INTO "schüler" VALUES (1017, 'Wilson', 'Bruce', 27, 'M', 600, 1148, 'LON');
INSERT INTO "schüler" VALUES (1018, 'Leighton', 'Michael', 20, 'M', 600, 1121, 'PIT');
INSERT INTO "schüler" VALUES (1019, 'Pang', 'Arthur', 18, 'M', 600, 2192, 'WAS');
INSERT INTO "schüler" VALUES (1020, 'Thornton', 'Ian', 22, 'M', 520, 7271, 'NYC');
INSERT INTO "schüler" VALUES (1021, 'Andreou', 'George', 19, 'M', 520, 8722, 'NYC');
INSERT INTO "schüler" VALUES (1022, 'Woods', 'Michael', 17, 'M', 540, 8722, 'PHL');
INSERT INTO "schüler" VALUES (1023, 'Shieber', 'David', 20, 'M', 520, 8722, 'NYC');
INSERT INTO "schüler" VALUES (1024, 'Prater', 'Stacy', 18, 'F', 540, 7271, 'BAL');
INSERT INTO "schüler" VALUES (1025, 'Goldman', 'Mark', 18, 'M', 520, 7134, 'PIT');
INSERT INTO "schüler" VALUES (1026, 'Pang', 'Eric', 19, 'M', 520, 7134, 'HKG');
INSERT INTO "schüler" VALUES (1027, 'Brody', 'Paul', 18, 'M', 520, 8723, 'LOS');
INSERT INTO "schüler" VALUES (1028, 'Rugh', 'Eric', 20, 'M', 550, 2311, 'ROC');
INSERT INTO "schüler" VALUES (1029, 'Han', 'Jun', 17, 'M', 100, 2311, 'PEK');
INSERT INTO "schüler" VALUES (1030, 'Cheng', 'Lisa', 21, 'F', 550, 2311, 'SFO');
INSERT INTO "schüler" VALUES (1031, 'Smith', 'Sarah', 20, 'F', 550, 8772, 'PHL');
INSERT INTO "schüler" VALUES (1032, 'Brown', 'Eric', 20, 'M', 550, 8772, 'ATL');
INSERT INTO "schüler" VALUES (1033, 'Simms', 'William', 18, 'M', 550, 8772, 'NAR');
INSERT INTO "schüler" VALUES (1034, 'Epp', 'Eric', 18, 'M', 50, 5718, 'BOS');
INSERT INTO "schüler" VALUES (1035, 'Schmidt', 'Sarah', 26, 'F', 50, 5718, 'WAS');

INSERT INTO "restaurant" VALUES (1, 'Subway', '3233 St Paul St, Baltimore, MD 21218', 3);
INSERT INTO "restaurant" VALUES (2, 'Honeygrow', '3212 St Paul St, Baltimore, MD 21218', 4);

INSERT INTO "restaurant_typ" VALUES (1, 'Sandwich', 'Simplest there is.');
INSERT INTO "restaurant_typ" VALUES (2, 'Stir-fry', 'Classic Chinese cooking.');

INSERT INTO "besuche_restaurant" VALUES (1001, 1, '2017-10-09 18:15:00', 6.53);
INSERT INTO "besuche_restaurant" VALUES (1032, 2, '2017-10-08 13:00:30', 13.2);

INSERT INTO "art_des_restaurants" VALUES (1, 1);
INSERT INTO "art_des_restaurants" VALUES (2, 2);

COMMIT;