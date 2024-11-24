CREATE TABLE "schüler"
(
	"student_id" INTEGER,
	"nachname"   VARCHAR(12),
	"vorname"    VARCHAR(12),
	"alter"      INTEGER,
	"sex"        VARCHAR(1),
	"hauptfach"  INTEGER,
	"berater"    INTEGER,
	"stadtcode"  VARCHAR(3),
	PRIMARY KEY ("student_id")
);

CREATE TABLE "wohnheim"
(
	"wohnheim_id"  INTEGER,
	"wohnheimname" VARCHAR(20),
	"schülerzahl"  INTEGER,
	"geschlecht"   VARCHAR(1)
);

CREATE TABLE "wohnheimausstattungen"
(
	"amenity_id"         INTEGER,
	"name_des_wohnheims" VARCHAR(25)
);

CREATE TABLE "wohnt_in"
(
	"student_id"   INTEGER,
	"wohnheim_id"  INTEGER,
	"zimmernummer" INTEGER,
	FOREIGN KEY ("student_id") REFERENCES "schüler" ("student_id"),
	FOREIGN KEY ("wohnheim_id") REFERENCES "wohnheim" ("wohnheim_id")
);

CREATE TABLE "hat_annehmlichkeit"
(
	"wohnheim_id" INTEGER,
	"amenity_id"  INTEGER,
	FOREIGN KEY ("wohnheim_id") REFERENCES "wohnheim" ("wohnheim_id"),
	FOREIGN KEY ("amenity_id") REFERENCES "wohnheimausstattungen" ("amenity_id")
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

INSERT INTO "wohnheim" VALUES (100, 'Smith Hall', 85, 'X');
INSERT INTO "wohnheim" VALUES (110, 'Bud Jones Hall', 116, 'M');
INSERT INTO "wohnheim" VALUES (140, 'Fawlty Towers', 355, 'X');
INSERT INTO "wohnheim" VALUES (160, 'Dorm-plex 2000', 400, 'X');
INSERT INTO "wohnheim" VALUES (109, 'Anonymous Donor Hall', 128, 'F');
INSERT INTO "wohnheim" VALUES (117, 'University Hovels', 40, 'X');
INSERT INTO "wohnheim" VALUES (104, 'Grad Student Asylum', 256, 'X');

INSERT INTO "wohnheimausstattungen" VALUES (900, 'TV Lounge');
INSERT INTO "wohnheimausstattungen" VALUES (901, 'Study Room');
INSERT INTO "wohnheimausstattungen" VALUES (902, 'Pub in Basement');
INSERT INTO "wohnheimausstattungen" VALUES (903, 'Carpeted Rooms');
INSERT INTO "wohnheimausstattungen" VALUES (904, '4 Walls');
INSERT INTO "wohnheimausstattungen" VALUES (930, 'Roof');
INSERT INTO "wohnheimausstattungen" VALUES (931, 'Ethernet Ports');
INSERT INTO "wohnheimausstattungen" VALUES (932, 'Air Conditioning');
INSERT INTO "wohnheimausstattungen" VALUES (922, 'Heat');
INSERT INTO "wohnheimausstattungen" VALUES (950, 'Working Fireplaces');
INSERT INTO "wohnheimausstattungen" VALUES (955, 'Kitchen in Every Room');
INSERT INTO "wohnheimausstattungen" VALUES (909, 'Allows Pets');

INSERT INTO "wohnt_in" VALUES (1001, 109, 105);
INSERT INTO "wohnt_in" VALUES (1002, 100, 112);
INSERT INTO "wohnt_in" VALUES (1003, 100, 124);
INSERT INTO "wohnt_in" VALUES (1004, 140, 215);
INSERT INTO "wohnt_in" VALUES (1005, 160, 333);
INSERT INTO "wohnt_in" VALUES (1007, 140, 113);
INSERT INTO "wohnt_in" VALUES (1008, 160, 334);
INSERT INTO "wohnt_in" VALUES (1009, 140, 332);
INSERT INTO "wohnt_in" VALUES (1010, 160, 443);
INSERT INTO "wohnt_in" VALUES (1011, 140, 102);
INSERT INTO "wohnt_in" VALUES (1012, 160, 333);
INSERT INTO "wohnt_in" VALUES (1014, 104, 211);
INSERT INTO "wohnt_in" VALUES (1015, 160, 443);
INSERT INTO "wohnt_in" VALUES (1016, 140, 301);
INSERT INTO "wohnt_in" VALUES (1017, 140, 319);
INSERT INTO "wohnt_in" VALUES (1018, 140, 225);
INSERT INTO "wohnt_in" VALUES (1020, 160, 405);
INSERT INTO "wohnt_in" VALUES (1021, 160, 405);
INSERT INTO "wohnt_in" VALUES (1022, 100, 153);
INSERT INTO "wohnt_in" VALUES (1023, 160, 317);
INSERT INTO "wohnt_in" VALUES (1024, 100, 151);
INSERT INTO "wohnt_in" VALUES (1025, 160, 317);
INSERT INTO "wohnt_in" VALUES (1027, 140, 208);
INSERT INTO "wohnt_in" VALUES (1028, 110, 48);
INSERT INTO "wohnt_in" VALUES (1029, 140, 418);
INSERT INTO "wohnt_in" VALUES (1030, 109, 211);
INSERT INTO "wohnt_in" VALUES (1031, 100, 112);
INSERT INTO "wohnt_in" VALUES (1032, 109, 105);
INSERT INTO "wohnt_in" VALUES (1033, 117, 3);
INSERT INTO "wohnt_in" VALUES (1034, 160, 105);
INSERT INTO "wohnt_in" VALUES (1035, 100, 124);

INSERT INTO "hat_annehmlichkeit" VALUES (109, 900);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 901);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 903);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 931);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 932);
INSERT INTO "hat_annehmlichkeit" VALUES (109, 922);
INSERT INTO "hat_annehmlichkeit" VALUES (104, 901);
INSERT INTO "hat_annehmlichkeit" VALUES (104, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (104, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 900);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 901);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 902);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 903);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 931);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 922);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 932);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 950);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 955);
INSERT INTO "hat_annehmlichkeit" VALUES (160, 909);
INSERT INTO "hat_annehmlichkeit" VALUES (100, 901);
INSERT INTO "hat_annehmlichkeit" VALUES (100, 903);
INSERT INTO "hat_annehmlichkeit" VALUES (100, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (100, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (100, 922);
INSERT INTO "hat_annehmlichkeit" VALUES (117, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (110, 901);
INSERT INTO "hat_annehmlichkeit" VALUES (110, 903);
INSERT INTO "hat_annehmlichkeit" VALUES (110, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (110, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (110, 922);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 909);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 900);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 902);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 904);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 930);
INSERT INTO "hat_annehmlichkeit" VALUES (140, 932);

COMMIT;