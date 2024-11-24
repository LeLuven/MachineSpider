CREATE TABLE "allergietyp"
(
	"allergie_name" VARCHAR(20),
	"allergietyp"   VARCHAR(20),
	PRIMARY KEY ("allergie_name")
);

CREATE TABLE "schüler"
(
	"stuid"      INTEGER,
	"nachname"   VARCHAR(12),
	"vorname"    VARCHAR(12),
	"alter"      INTEGER,
	"geschlecht" VARCHAR(1),
	"hauptfach"  INTEGER,
	"berater"    INTEGER,
	"stadtcode"  VARCHAR(3),
	PRIMARY KEY ("stuid")
);

CREATE TABLE "hat_allergie"
(
	"stuid"   INTEGER,
	"allergy" VARCHAR(20),
	FOREIGN KEY ("stuid") REFERENCES "schüler" ("stuid"),
	FOREIGN KEY ("allergy") REFERENCES "allergietyp" ("allergie_name")
);

BEGIN TRANSACTION;
INSERT INTO "allergietyp" VALUES ('Eggs', 'food');
INSERT INTO "allergietyp" VALUES ('Nuts', 'food');
INSERT INTO "allergietyp" VALUES ('Milk', 'food');
INSERT INTO "allergietyp" VALUES ('Shellfish', 'food');
INSERT INTO "allergietyp" VALUES ('Anchovies', 'food');
INSERT INTO "allergietyp" VALUES ('Wheat', 'food');
INSERT INTO "allergietyp" VALUES ('Soy', 'food');
INSERT INTO "allergietyp" VALUES ('Ragweed', 'environmental');
INSERT INTO "allergietyp" VALUES ('Tree Pollen', 'environmental');
INSERT INTO "allergietyp" VALUES ('Grass Pollen', 'environmental');
INSERT INTO "allergietyp" VALUES ('Cat', 'animal');
INSERT INTO "allergietyp" VALUES ('Dog', 'animal');
INSERT INTO "allergietyp" VALUES ('Rodent', 'animal');
INSERT INTO "allergietyp" VALUES ('Bee Stings', 'animal');

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

INSERT INTO "hat_allergie" VALUES (1001, 'Cat');
INSERT INTO "hat_allergie" VALUES (1002, 'Shellfish');
INSERT INTO "hat_allergie" VALUES (1002, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1003, 'Dog');
INSERT INTO "hat_allergie" VALUES (1004, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1005, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1005, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1006, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1007, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1007, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1007, 'Grass Pollen');
INSERT INTO "hat_allergie" VALUES (1007, 'Eggs');
INSERT INTO "hat_allergie" VALUES (1007, 'Milk');
INSERT INTO "hat_allergie" VALUES (1007, 'Shellfish');
INSERT INTO "hat_allergie" VALUES (1007, 'Anchovies');
INSERT INTO "hat_allergie" VALUES (1007, 'Cat');
INSERT INTO "hat_allergie" VALUES (1007, 'Dog');
INSERT INTO "hat_allergie" VALUES (1009, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1010, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1010, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1010, 'Grass Pollen');
INSERT INTO "hat_allergie" VALUES (1010, 'Eggs');
INSERT INTO "hat_allergie" VALUES (1010, 'Milk');
INSERT INTO "hat_allergie" VALUES (1010, 'Shellfish');
INSERT INTO "hat_allergie" VALUES (1010, 'Anchovies');
INSERT INTO "hat_allergie" VALUES (1010, 'Cat');
INSERT INTO "hat_allergie" VALUES (1010, 'Dog');
INSERT INTO "hat_allergie" VALUES (1011, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1012, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1013, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1014, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1015, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1015, 'Soy');
INSERT INTO "hat_allergie" VALUES (1016, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1016, 'Milk');
INSERT INTO "hat_allergie" VALUES (1017, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1018, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1018, 'Soy');
INSERT INTO "hat_allergie" VALUES (1019, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1020, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1021, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1022, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1022, 'Anchovies');
INSERT INTO "hat_allergie" VALUES (1023, 'Rodent');
INSERT INTO "hat_allergie" VALUES (1023, 'Cat');
INSERT INTO "hat_allergie" VALUES (1023, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1024, 'Ragweed');
INSERT INTO "hat_allergie" VALUES (1024, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1025, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1026, 'Grass Pollen');
INSERT INTO "hat_allergie" VALUES (1027, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1028, 'Tree Pollen');
INSERT INTO "hat_allergie" VALUES (1029, 'Soy');
INSERT INTO "hat_allergie" VALUES (1029, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1029, 'Eggs');
INSERT INTO "hat_allergie" VALUES (1030, 'Grass Pollen');
INSERT INTO "hat_allergie" VALUES (1031, 'Nuts');
INSERT INTO "hat_allergie" VALUES (1031, 'Shellfish');
INSERT INTO "hat_allergie" VALUES (1031, 'Soy');

COMMIT;