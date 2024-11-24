CREATE TABLE "aktivität"
(
	"tätigkeit_id"   INTEGER,
	"tätigkeitsname" VARCHAR(25),
	PRIMARY KEY ("tätigkeit_id")
);

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

CREATE TABLE "fakultät"
(
	"fakultät_id" INTEGER,
	"nachname"    VARCHAR(15),
	"vorname"     VARCHAR(15),
	"rang"        VARCHAR(15),
	"geschlecht"  VARCHAR(1),
	"telefon"     INTEGER,
	"zimmer"      VARCHAR(5),
	"gebäude"     VARCHAR(13),
	PRIMARY KEY ("fakultät_id")
);

CREATE TABLE "beteiligt_sich_an"
(
	"student_id"   INTEGER,
	"tätigkeit_id" INTEGER,
	FOREIGN KEY ("student_id") REFERENCES "schüler" ("student_id"),
	FOREIGN KEY ("tätigkeit_id") REFERENCES "aktivität" ("tätigkeit_id")
);

CREATE TABLE "lehrkörper_nimmt_teil_an"
(
	"fakultät_id"  INTEGER,
	"tätigkeit_id" INTEGER,
	FOREIGN KEY ("fakultät_id") REFERENCES "fakultät" ("fakultät_id"),
	FOREIGN KEY ("tätigkeit_id") REFERENCES "aktivität" ("tätigkeit_id")
);

BEGIN TRANSACTION;
INSERT INTO "aktivität" VALUES (770, 'Mountain Climbing');
INSERT INTO "aktivität" VALUES (771, 'Canoeing');
INSERT INTO "aktivität" VALUES (772, 'Kayaking');
INSERT INTO "aktivität" VALUES (773, 'Spelunking');
INSERT INTO "aktivität" VALUES (776, 'Extreme Canasta');
INSERT INTO "aktivität" VALUES (777, 'Soccer');
INSERT INTO "aktivität" VALUES (778, 'Baseball');
INSERT INTO "aktivität" VALUES (779, 'Accordion Ensemble');
INSERT INTO "aktivität" VALUES (780, 'Football');
INSERT INTO "aktivität" VALUES (782, 'Volleyball');
INSERT INTO "aktivität" VALUES (784, 'Canasta');
INSERT INTO "aktivität" VALUES (785, 'Chess');
INSERT INTO "aktivität" VALUES (790, 'Crossword Puzzles');
INSERT INTO "aktivität" VALUES (791, 'Proselytizing');
INSERT INTO "aktivität" VALUES (796, 'Square Dancing');
INSERT INTO "aktivität" VALUES (799, 'Bungee Jumping');

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

INSERT INTO "fakultät" VALUES (1082, 'Giuliano', 'Mark', 'Instructor', 'M', 2424, '224', 'NEB');
INSERT INTO "fakultät" VALUES (1121, 'Goodrich', 'Michael', 'Professor', 'M', 3593, '219', 'NEB');
INSERT INTO "fakultät" VALUES (1148, 'Masson', 'Gerald', 'Professor', 'M', 3402, '224B', 'NEB');
INSERT INTO "fakultät" VALUES (1172, 'Runolfsson', 'Thordur', 'AssocProf', 'M', 3121, '119', 'Barton');
INSERT INTO "fakultät" VALUES (1177, 'Naiman', 'Daniel', 'Professor', 'M', 3571, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (1193, 'Jones', 'Stacey', 'Instructor', 'F', 3550, '224', 'NEB');
INSERT INTO "fakultät" VALUES (1823, 'Davidson', 'Frederic', 'Professor', 'M', 5629, '119', 'Barton');
INSERT INTO "fakultät" VALUES (2028, 'Brody', 'William', 'Professor', 'M', 6073, '119', 'Barton');
INSERT INTO "fakultät" VALUES (2119, 'Meyer', 'Gerard', 'Professor', 'M', 6350, '119', 'Barton');
INSERT INTO "fakultät" VALUES (2192, 'Yarowsky', 'David', 'AsstProf', 'M', 6587, '324', 'NEB');
INSERT INTO "fakultät" VALUES (2291, 'Scheinerman', 'Edward', 'Professor', 'M', 6654, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (2311, 'Priebe', 'Carey', 'AsstProf', 'M', 6953, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (2738, 'Fill', 'James', 'Professor', 'M', 8209, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (2881, 'Goldman', 'Alan', 'Professor', 'M', 8335, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (3457, 'Smith', 'Scott', 'AssocProf', 'M', 1035, '318', 'NEB');
INSERT INTO "fakultät" VALUES (4230, 'Houlahan', 'Joanne', 'Instructor', 'F', 1260, '328', 'NEB');
INSERT INTO "fakultät" VALUES (4432, 'Burzio', 'Luigi', 'Professor', 'M', 1813, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (5718, 'Frank', 'Robert', 'AsstProf', 'M', 1751, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (6112, 'Beach', 'Louis', 'Instructor', 'M', 1838, '207', 'NEB');
INSERT INTO "fakultät" VALUES (6182, 'Cheng', 'Cheng', 'AsstProf', 'M', 1856, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (6191, 'Kaplan', 'Alexander', 'Professor', 'M', 1825, '119', 'Barton');
INSERT INTO "fakultät" VALUES (6330, 'Byrne', 'William', 'Instructor', 'M', 1691, '119', 'Barton');
INSERT INTO "fakultät" VALUES (6541, 'Han', 'Shih-Ping', 'Professor', 'M', 1914, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (6910, 'Smolensky', 'Paul', 'Professor', 'M', 2072, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (6925, 'Iglesias', 'Pablo', 'AsstProf', 'M', 2021, '119', 'Barton');
INSERT INTO "fakultät" VALUES (7134, 'Goutsias', 'John', 'Professor', 'M', 2184, '119', 'Barton');
INSERT INTO "fakultät" VALUES (7231, 'Rugh', 'Wilson', 'Professor', 'M', 2191, '119', 'Barton');
INSERT INTO "fakultät" VALUES (7271, 'Jelinek', 'Frederick', 'Professor', 'M', 2890, '119', 'Barton');
INSERT INTO "fakultät" VALUES (7506, 'Westgate', 'Charles', 'Professor', 'M', 2932, '119', 'Barton');
INSERT INTO "fakultät" VALUES (7712, 'Awerbuch', 'Baruch', 'Professor', 'M', 2105, '220', 'NEB');
INSERT INTO "fakultät" VALUES (7723, 'Taylor', 'Russell', 'Professor', 'M', 2435, '317', 'NEB');
INSERT INTO "fakultät" VALUES (7792, 'Brill', 'Eric', 'AsstProf', 'M', 2303, '324B', 'NEB');
INSERT INTO "fakultät" VALUES (8102, 'James', 'Lancelot', 'AsstProf', 'M', 2792, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (8114, 'Angelopoulou', 'Ellie', 'Instructor', 'F', 2152, '316', 'NEB');
INSERT INTO "fakultät" VALUES (8118, 'Weinert', 'Howard', 'Professor', 'M', 3272, '119', 'Barton');
INSERT INTO "fakultät" VALUES (8122, 'Wierman', 'John', 'Professor', 'M', 3392, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (8423, 'Kumar', 'Subodh', 'AsstProf', 'M', 2522, '218', 'NEB');
INSERT INTO "fakultät" VALUES (8721, 'Wolff', 'Lawrence', 'AssocProf', 'M', 2342, '316', 'NEB');
INSERT INTO "fakultät" VALUES (8722, 'Cauwenberghs', 'Gert', 'AsstProf', 'M', 1372, '119', 'Barton');
INSERT INTO "fakultät" VALUES (8723, 'Andreou', 'Andreas', 'Professor', 'M', 1402, '119', 'Barton');
INSERT INTO "fakultät" VALUES (8741, 'Salzberg', 'Steven', 'AssocProf', 'M', 2641, '324A', 'NEB');
INSERT INTO "fakultät" VALUES (8772, 'Cowen', 'Lenore', 'AsstProf', 'F', 2870, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (8791, 'McCloskey', 'Michael', 'Professor', 'M', 3440, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (8918, 'Amir', 'Yair', 'AsstProf', 'M', 2672, '308', 'NEB');
INSERT INTO "fakultät" VALUES (8989, 'Brent', 'Michael', 'AsstProf', 'M', 9373, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (9011, 'Rapp', 'Brenda', 'AsstProf', 'F', 2032, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (9172, 'Kosaraju', 'Rao', 'Professor', 'M', 2757, '319', 'NEB');
INSERT INTO "fakultät" VALUES (9191, 'Collins', 'Oliver', 'AssocProf', 'M', 5427, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9199, 'Hughes', 'Brian', 'AssocProf', 'M', 5666, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9210, 'Joseph', 'Richard', 'Professor', 'M', 5996, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9379, 'Khurgin', 'Jacob', 'Professor', 'M', 1060, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9514, 'Prince', 'Jerry', 'AssocProf', 'M', 5106, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9643, 'Legendre', 'Geraldine', 'AssocProf', 'F', 8972, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (9811, 'Wu', 'Colin', 'AsstProf', 'M', 2906, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (9823, 'Pang', 'Jong-Shi', 'Professor', 'M', 4366, '288', 'Krieger');
INSERT INTO "fakultät" VALUES (9824, 'Glaser', 'Robert', 'Instructor', 'M', 4396, '119', 'Barton');
INSERT INTO "fakultät" VALUES (9826, 'Delcher', 'Arthur', 'Instructor', 'M', 2956, '329', 'NEB');
INSERT INTO "fakultät" VALUES (9922, 'Hall', 'Leslie', 'AsstProf', 'F', 7332, '288', 'Krieger');

INSERT INTO "beteiligt_sich_an" VALUES (1001, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1001, 771);
INSERT INTO "beteiligt_sich_an" VALUES (1001, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1002, 772);
INSERT INTO "beteiligt_sich_an" VALUES (1002, 771);
INSERT INTO "beteiligt_sich_an" VALUES (1003, 778);
INSERT INTO "beteiligt_sich_an" VALUES (1004, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1004, 782);
INSERT INTO "beteiligt_sich_an" VALUES (1004, 778);
INSERT INTO "beteiligt_sich_an" VALUES (1004, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1005, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1006, 773);
INSERT INTO "beteiligt_sich_an" VALUES (1007, 773);
INSERT INTO "beteiligt_sich_an" VALUES (1007, 784);
INSERT INTO "beteiligt_sich_an" VALUES (1008, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1008, 773);
INSERT INTO "beteiligt_sich_an" VALUES (1008, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1008, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1009, 778);
INSERT INTO "beteiligt_sich_an" VALUES (1009, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1009, 782);
INSERT INTO "beteiligt_sich_an" VALUES (1010, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1011, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1012, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 778);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 782);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1014, 772);
INSERT INTO "beteiligt_sich_an" VALUES (1015, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1016, 791);
INSERT INTO "beteiligt_sich_an" VALUES (1016, 772);
INSERT INTO "beteiligt_sich_an" VALUES (1017, 791);
INSERT INTO "beteiligt_sich_an" VALUES (1017, 771);
INSERT INTO "beteiligt_sich_an" VALUES (1017, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 784);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 772);
INSERT INTO "beteiligt_sich_an" VALUES (1018, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1019, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1019, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1020, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1021, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1021, 776);
INSERT INTO "beteiligt_sich_an" VALUES (1022, 782);
INSERT INTO "beteiligt_sich_an" VALUES (1022, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1023, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1023, 776);
INSERT INTO "beteiligt_sich_an" VALUES (1024, 778);
INSERT INTO "beteiligt_sich_an" VALUES (1024, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1024, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1025, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1025, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1025, 770);
INSERT INTO "beteiligt_sich_an" VALUES (1028, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1029, 785);
INSERT INTO "beteiligt_sich_an" VALUES (1029, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1030, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1030, 790);
INSERT INTO "beteiligt_sich_an" VALUES (1033, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1034, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1034, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1034, 772);
INSERT INTO "beteiligt_sich_an" VALUES (1034, 771);
INSERT INTO "beteiligt_sich_an" VALUES (1035, 777);
INSERT INTO "beteiligt_sich_an" VALUES (1035, 780);
INSERT INTO "beteiligt_sich_an" VALUES (1035, 784);

INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1082, 784);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1082, 785);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1082, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1121, 771);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1121, 777);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1121, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1193, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1193, 796);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1193, 773);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (2192, 773);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (2192, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (2192, 778);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (3457, 782);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (3457, 771);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (3457, 784);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (4230, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (4230, 785);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (6112, 785);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (6112, 772);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (7723, 785);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (7723, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8114, 776);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8721, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8721, 780);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8741, 780);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8741, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8918, 780);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8918, 782);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (8918, 771);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (2881, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (2881, 784);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (4432, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (4432, 771);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (5718, 776);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (6182, 776);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (6182, 785);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1177, 790);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1177, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (1177, 770);
INSERT INTO "lehrkörper_nimmt_teil_an" VALUES (9922, 796);

COMMIT;