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

CREATE TABLE "fachbereich"
(
	"abteilungsnummer"  INTEGER,
	"abteilung"         VARCHAR(2),
	"abteilungsname"    VARCHAR(25),
	"zimmer"            VARCHAR(5),
	"gebäude"           VARCHAR(13),
	"abteilung_telefon" INTEGER,
	PRIMARY KEY ("abteilungsnummer")
);

CREATE TABLE "gehaltsumwandlung"
(
	"brief_grade" VARCHAR(2),
	"notenpunkt"  FLOAT,
	PRIMARY KEY ("brief_grade")
);

CREATE TABLE "mitglied_von"
(
	"fakultät_id"      INTEGER,
	"abteilungsnummer" INTEGER,
	"appt_type"        VARCHAR(15),
	FOREIGN KEY ("fakultät_id") REFERENCES "fakultät" ("fakultät_id"),
	FOREIGN KEY ("abteilungsnummer") REFERENCES "fachbereich" ("abteilungsnummer")
);

CREATE TABLE "kurs"
(
	"kurs_id"          VARCHAR(7),
	"kursname"         VARCHAR(40),
	"credits"          INTEGER,
	"lehrer"           INTEGER,
	"tage"             VARCHAR(5),
	"stunden"          VARCHAR(11),
	"abteilungsnummer" INTEGER,
	PRIMARY KEY ("kurs_id"),
	FOREIGN KEY ("lehrer") REFERENCES "fakultät" ("fakultät_id"),
	FOREIGN KEY ("abteilungsnummer") REFERENCES "fachbereich" ("abteilungsnummer")
);

CREATE TABLE "nebenfach_in"
(
	"student_id"       INTEGER,
	"abteilungsnummer" INTEGER,
	FOREIGN KEY ("student_id") REFERENCES "schüler" ("student_id"),
	FOREIGN KEY ("abteilungsnummer") REFERENCES "fachbereich" ("abteilungsnummer")
);

CREATE TABLE "eingeschrieben_in"
(
	"student_id" INTEGER,
	"kurs_id"    VARCHAR(7),
	"grade"      VARCHAR(2),
	FOREIGN KEY ("student_id") REFERENCES "schüler" ("student_id"),
	FOREIGN KEY ("kurs_id") REFERENCES "kurs" ("kurs_id"),
	FOREIGN KEY ("grade") REFERENCES "gehaltsumwandlung" ("brief_grade")
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

INSERT INTO "fachbereich" VALUES (10, 'AS', 'History of Art', '268', 'Mergenthaler', 7117);
INSERT INTO "fachbereich" VALUES (20, 'AS', 'Biology', '144', 'Mudd', 7330);
INSERT INTO "fachbereich" VALUES (30, 'AS', 'Chemistry', '113', 'Remsen', 7429);
INSERT INTO "fachbereich" VALUES (40, 'AS', 'Classics', '121', 'Gilman', 7556);
INSERT INTO "fachbereich" VALUES (50, 'AS', 'Cognitive Science', '381', 'Krieger', 7119);
INSERT INTO "fachbereich" VALUES (60, 'AS', 'English', '146', 'Gilman', 7544);
INSERT INTO "fachbereich" VALUES (70, 'AS', 'Anthropology', '404B', 'Macaulay', 7272);
INSERT INTO "fachbereich" VALUES (90, 'AS', 'German', '245', 'Gilman', 7508);
INSERT INTO "fachbereich" VALUES (100, 'AS', 'History', '312', 'Gilman', 7575);
INSERT INTO "fachbereich" VALUES (110, 'AS', 'Mathematics', '404', 'Krieger', 7399);
INSERT INTO "fachbereich" VALUES (130, 'AS', 'Near Eastern Studies', '128', 'Gilman', 7499);
INSERT INTO "fachbereich" VALUES (140, 'AS', 'History of Science', '234', 'Gilman', 7501);
INSERT INTO "fachbereich" VALUES (150, 'AS', 'Philosophy', '347', 'Gilman', 7524);
INSERT INTO "fachbereich" VALUES (170, 'AS', 'Physics and Astronomy', '366', 'Bloomberg', 7347);
INSERT INTO "fachbereich" VALUES (180, 'AS', 'Economics', '440', 'Mergenthaler', 7601);
INSERT INTO "fachbereich" VALUES (190, 'AS', 'Political Science', '338', 'Mergenthaler', 7540);
INSERT INTO "fachbereich" VALUES (200, 'AS', 'Psychology', '223', 'Ames', 7055);
INSERT INTO "fachbereich" VALUES (340, 'AS', 'French', '225', 'Gilman', 7227);
INSERT INTO "fachbereich" VALUES (350, 'AS', 'Hispanic/Italian Studies', '221', 'Gilman', 7226);
INSERT INTO "fachbereich" VALUES (520, 'EN', 'ECE', '105', 'Barton', 7033);
INSERT INTO "fachbereich" VALUES (530, 'EN', 'Mechanical Engineering', '122', 'Latrobe', 7132);
INSERT INTO "fachbereich" VALUES (540, 'EN', 'Chemical Engineering', '24', 'NEB', 7170);
INSERT INTO "fachbereich" VALUES (550, 'EN', 'Mathematical Sciences', '221', 'Maryland', 7195);
INSERT INTO "fachbereich" VALUES (560, 'EN', 'Civil Engineering', '206', 'Latrobe', 8680);
INSERT INTO "fachbereich" VALUES (580, 'EN', 'Biomedical Engineering', '144', 'NEB', 8482);
INSERT INTO "fachbereich" VALUES (600, 'EN', 'Computer Science', '224', 'NEB', 8577);

INSERT INTO "gehaltsumwandlung" VALUES ('A+', 4.0);
INSERT INTO "gehaltsumwandlung" VALUES ('A', 4.0);
INSERT INTO "gehaltsumwandlung" VALUES ('A-', 3.7);
INSERT INTO "gehaltsumwandlung" VALUES ('B+', 3.3);
INSERT INTO "gehaltsumwandlung" VALUES ('B', 3.0);
INSERT INTO "gehaltsumwandlung" VALUES ('B-', 2.7);
INSERT INTO "gehaltsumwandlung" VALUES ('C+', 2.3);
INSERT INTO "gehaltsumwandlung" VALUES ('C', 2.0);
INSERT INTO "gehaltsumwandlung" VALUES ('C-', 1.7);
INSERT INTO "gehaltsumwandlung" VALUES ('D+', 1.3);
INSERT INTO "gehaltsumwandlung" VALUES ('D', 1.0);
INSERT INTO "gehaltsumwandlung" VALUES ('D-', 0.7);
INSERT INTO "gehaltsumwandlung" VALUES ('F', 0.0);

INSERT INTO "mitglied_von" VALUES (7792, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (9210, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (9811, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (9643, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (9379, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (8918, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (7712, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (1121, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (9172, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (8423, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (1148, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (8741, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (3457, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (7723, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (8721, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (2192, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (8114, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (6112, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (9826, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (1193, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (1082, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (4230, 600, 'Primary');
INSERT INTO "mitglied_von" VALUES (8989, 600, 'Secondary');
INSERT INTO "mitglied_von" VALUES (7271, 600, 'Secondary');
INSERT INTO "mitglied_von" VALUES (8721, 520, 'Secondary');
INSERT INTO "mitglied_von" VALUES (8741, 50, 'Secondary');
INSERT INTO "mitglied_von" VALUES (7271, 50, 'Secondary');
INSERT INTO "mitglied_von" VALUES (6182, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (8772, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (2738, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (2881, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (9922, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (6541, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (8102, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (1177, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (9823, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (2311, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (2291, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (8122, 550, 'Primary');
INSERT INTO "mitglied_von" VALUES (8989, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (4432, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (5718, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (8791, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (9011, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (6910, 50, 'Primary');
INSERT INTO "mitglied_von" VALUES (8723, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (2028, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (8722, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (9191, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (1823, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (7134, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (9199, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (6925, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (7271, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (6191, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (2119, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (9514, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (7231, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (1172, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (8118, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (7506, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (6330, 520, 'Primary');
INSERT INTO "mitglied_von" VALUES (9824, 520, 'Primary');

INSERT INTO "kurs" VALUES ('600.101', 'COMPUTER LITERACY', 3, 6112, 'MTW', '3', 600);
INSERT INTO "kurs" VALUES ('600.103', 'INTRODUCTION TO COMPUTER SCIENCE', 1, 4230, 'Th', '4', 600);
INSERT INTO "kurs" VALUES ('600.107', 'INTRO TO PROGRAMMING IN JAVA', 3, 1193, 'MTW', '3', 600);
INSERT INTO "kurs" VALUES ('600.109', 'INTRO TO PROGRAMMING IN C/C++', 3, 4230, 'MTW', '12', 600);
INSERT INTO "kurs" VALUES ('600.113', 'EXPLORING THE INTERNET', 3, 6112, 'MTW', '4', 600);
INSERT INTO "kurs" VALUES ('600.121', 'JAVA PROGRAMMING', 3, 6112, 'ThF', '10:30-12', 600);
INSERT INTO "kurs" VALUES ('600.211', 'UNIX SYSTEMS PROGRAMMING', 3, 6112, 'ThF', '1-2:15', 600);
INSERT INTO "kurs" VALUES ('600.227', 'DATA STRUCTURES in JAVA', 3, 1121, 'MTW', '9', 600);
INSERT INTO "kurs" VALUES ('600.232', 'MULTIMEDIA COMPUTING', 3, 9826, 'MW', '1-2:30', 600);
INSERT INTO "kurs" VALUES ('600.271', 'COMPUTATIONAL MODELS', 3, 9172, 'MTW', '1', 600);
INSERT INTO "kurs" VALUES ('600.303', 'SUPERCOMPUTING', 1, 9826, 'W', '4-6:20', 600);
INSERT INTO "kurs" VALUES ('600.315', 'DATABASE SYSTEMS', 3, 2192, 'ThF', '2:30-4', 600);
INSERT INTO "kurs" VALUES ('600.333', 'COMPUTER SYSTEM FUNDAMENTALS', 3, 1148, 'MTW', '8', 600);
INSERT INTO "kurs" VALUES ('600.337', 'DISTRIBUTED SYSTEMS', 3, 8918, 'M', '3', 600);
INSERT INTO "kurs" VALUES ('600.363', 'INTRODUCTION TO ALGORITHMS', 3, 7712, 'MTW', '9', 600);
INSERT INTO "kurs" VALUES ('600.415', 'DATABASE SYSTEMS', 3, 2192, 'ThF', '2:30-4', 600);
INSERT INTO "kurs" VALUES ('600.433', 'COMPUTER SYSTEMS', 3, 1148, 'MTW', '8', 600);
INSERT INTO "kurs" VALUES ('600.437', 'DISTRIBUTED SYSTEMS', 3, 8918, 'M', '3', 600);
INSERT INTO "kurs" VALUES ('600.445', 'QUANTITATIVE MEDICAL COMPUTING', 3, 7723, 'ThF', '1-2:15', 600);
INSERT INTO "kurs" VALUES ('600.461', 'COMPUTER VISION', 3, 8114, 'MTW', '1', 600);
INSERT INTO "kurs" VALUES ('600.463', 'ALGORITHMS I', 3, 7712, 'MTW', '9', 600);
INSERT INTO "kurs" VALUES ('600.465', 'INTRO TO NATURAL LANGUAGE PROCESSING', 3, 7792, 'MTW', '2', 600);
INSERT INTO "kurs" VALUES ('600.509', 'COMPUTER SCIENCE INTERNSHIP', 3, 1121, 'M', '1', 600);
INSERT INTO "kurs" VALUES ('600.601', 'COMPUTER SCIENCE SEMINAR', 1, 6191, 'ThF', '10:30-12', 600);
INSERT INTO "kurs" VALUES ('600.657', 'HIGH PERFORMANCE GRAPHICS AND MODELING', 3, 8423, 'M', '4-5:30', 600);
INSERT INTO "kurs" VALUES ('600.787', 'SEMINAR ON COMPUTATIONAL GEOMETRY', 3, 1121, 'Th', '2', 600);
INSERT INTO "kurs" VALUES ('550.111', 'STATISTICAL ANALYSIS', 4, 2311, 'MTW', '12', 550);
INSERT INTO "kurs" VALUES ('550.171', 'DISCRETE MATHEMATICS', 4, 8772, 'MTW', '11', 550);
INSERT INTO "kurs" VALUES ('500.203', 'ACCOUNTING I', 3, 9823, 'T', '6:15-8:45', 550);
INSERT INTO "kurs" VALUES ('500.204', 'ACCOUNTING II', 3, 9823, 'Th', '6:15-8:45', 550);
INSERT INTO "kurs" VALUES ('500.205', 'BUSINESS LAW I', 3, 8791, 'W', '6:15-8:45', 550);
INSERT INTO "kurs" VALUES ('500.206', 'BUSINESS LAW II', 3, 8791, 'M', '6:15-8:45', 550);
INSERT INTO "kurs" VALUES ('550.291', 'LINEAR ALGEBRA AND DIFFERENTIAL EQNS', 4, 6541, 'MTW', '9', 550);
INSERT INTO "kurs" VALUES ('550.310', 'PROBABILITY AND STATISTICS', 4, 8102, 'MTW', '10', 550);
INSERT INTO "kurs" VALUES ('550.361', 'INTRODUCTION TO OPTIMIZATION', 4, 2881, 'MTW', '2', 550);
INSERT INTO "kurs" VALUES ('550.413', 'APPLIED STATISTICS AND DATA ANALYSIS', 4, 1177, 'MTW', '11', 550);
INSERT INTO "kurs" VALUES ('550.420', 'INTRODUCTION TO PROBABILITY', 4, 2738, 'MTW', '1', 550);
INSERT INTO "kurs" VALUES ('550.471', 'COMBINATORIAL ANALYSIS', 4, 8772, 'MTW', '12', 550);
INSERT INTO "kurs" VALUES ('550.620', 'PROBABILITY THEORY I', 3, 2738, 'MTW', '2', 550);
INSERT INTO "kurs" VALUES ('550.626', 'STOCHASTIC PROCESSES II', 3, 8102, 'MTW', '1', 550);
INSERT INTO "kurs" VALUES ('550.631', 'STATISTICAL INFERENCE', 3, 6182, 'MTW', '3', 550);
INSERT INTO "kurs" VALUES ('550.661', 'FOUNDATIONS OF OPTIMIZATION', 3, 9823, 'MTW', '10', 550);
INSERT INTO "kurs" VALUES ('550.671', 'COMBINATORIAL ANALYSIS', 3, 8772, 'MTW', '12', 550);
INSERT INTO "kurs" VALUES ('550.681', 'NUMERICAL ANALYSIS', 3, 6541, 'MTW', '11', 550);
INSERT INTO "kurs" VALUES ('550.721', 'PERCOLATION THEORY', 3, 8122, 'MTW', '9', 550);
INSERT INTO "kurs" VALUES ('550.750', 'TOPICS IN OPERATIONS RESEARCH', 3, 9922, 'MW', '3-4:30', 550);
INSERT INTO "kurs" VALUES ('550.790', 'TOPICS IN APPLIED MATH', 2, 2881, 'MT', '4:30-6', 550);
INSERT INTO "kurs" VALUES ('520.137', 'INTRODUCTION TO ECE', 3, 8723, 'MTW', '11', 520);
INSERT INTO "kurs" VALUES ('520.213', 'CIRCUITS', 4, 9210, 'MTW', '2', 520);
INSERT INTO "kurs" VALUES ('520.219', 'FIELDS, MATTER AND WAVES', 3, 9210, 'MTW', '3', 520);
INSERT INTO "kurs" VALUES ('520.325', 'INTEGRATED ELECTRONICS', 3, 6191, 'MTW', '3', 520);
INSERT INTO "kurs" VALUES ('520.345', 'ECE LABORATORY', 3, 1823, 'W', '2', 520);
INSERT INTO "kurs" VALUES ('520.349', 'MICROPROCESSOR LAB I', 3, 9824, 'Th', '8', 520);
INSERT INTO "kurs" VALUES ('520.353', 'CONTROL SYSTEMS', 3, 6925, 'MTW', '10', 520);
INSERT INTO "kurs" VALUES ('520.401', 'BASIC COMMUNICATIONS', 3, 6191, 'MTW', '1', 520);
INSERT INTO "kurs" VALUES ('520.410', 'FIBER OPTICS AND PHOTONICS', 3, 6191, 'MTW', '1', 520);
INSERT INTO "kurs" VALUES ('520.419', 'ITERATIVE ALGORITHMS', 3, 2119, 'MT', '4-5:15', 520);
INSERT INTO "kurs" VALUES ('520.421', 'INTRODUCTION TO NON-LINEAR SYSTEMS', 3, 7231, 'MTW', '9', 520);
INSERT INTO "kurs" VALUES ('520.432', 'TOPICS IN MEDICAL IMAGING SYSTEMS', 3, 9514, 'TTh', '8:30-10', 520);
INSERT INTO "kurs" VALUES ('520.435', 'DIGITAL SIGNAL PROCESSING', 4, 8118, 'MTW', '11', 520);
INSERT INTO "kurs" VALUES ('520.475', 'PROCESSING AND RECOGNITION OF SPEECH', 3, 6330, 'TW', '2-3:30', 520);
INSERT INTO "kurs" VALUES ('520.490', 'ANALOG AND DIGITAL VLSI SYSTEMS', 3, 8722, 'ThF', '10:30-12', 520);
INSERT INTO "kurs" VALUES ('520.603', 'ELECTROMAGNETIC WAVES', 4, 9210, 'Th', '1-4:30', 520);
INSERT INTO "kurs" VALUES ('520.605', 'SOLID STATE PHYSICS', 3, 9379, 'Tu', '1-4', 520);
INSERT INTO "kurs" VALUES ('520.609', 'NONLINEAR TECHNICAL IMAGE PROCESSING', 3, 7134, 'Th', '1-4', 520);
INSERT INTO "kurs" VALUES ('520.651', 'RANDOM SIGNAL ANALYSIS', 3, 9514, 'ThF', '10:30-12', 520);
INSERT INTO "kurs" VALUES ('050.102', 'LANGUAGE AND MIND', 3, 4432, 'MTW', '10', 50);
INSERT INTO "kurs" VALUES ('050.109', 'MIND, BRAIN, COMPUTERS', 3, 6910, 'MW', '2-3:15', 50);
INSERT INTO "kurs" VALUES ('050.203', 'COGNITIVE NEUROSCIENCE', 4, 9011, 'MT', '3:30-4:45', 50);
INSERT INTO "kurs" VALUES ('050.325', 'SOUND STRUCTURES IN NATURAL LANGUAGE', 3, 4432, 'T', '10-12', 50);
INSERT INTO "kurs" VALUES ('050.370', 'FORMAL METHODS IN COGNITIVE SCIENCE', 3, 6910, 'MW', '11:30', 50);
INSERT INTO "kurs" VALUES ('050.381', 'LANGUAGE DEVELOPMENT', 3, 8989, 'T', '1-3', 50);
INSERT INTO "kurs" VALUES ('050.427', 'THE HISTORY OF ROMANCE LANGUAGES', 3, 4432, 'W', '1-3', 50);
INSERT INTO "kurs" VALUES ('050.670', 'FORMAL METHODS IN COGNITIVE SCIENCE', 3, 4432, 'MW', '11:30-12:45', 50);
INSERT INTO "kurs" VALUES ('050.802', 'RESEARCH SEMINAR IN COGNITIVE PROCESSES', 1, 9011, 'W', '1-3', 50);
INSERT INTO "kurs" VALUES ('050.821', 'COMP. MODELS OF SENTENCE PROCESSING', 3, 5718, 'M', '1-4', 50);

INSERT INTO "nebenfach_in" VALUES (1004, 520);
INSERT INTO "nebenfach_in" VALUES (1005, 550);
INSERT INTO "nebenfach_in" VALUES (1006, 50);
INSERT INTO "nebenfach_in" VALUES (1007, 520);
INSERT INTO "nebenfach_in" VALUES (1008, 550);
INSERT INTO "nebenfach_in" VALUES (1014, 90);
INSERT INTO "nebenfach_in" VALUES (1015, 140);
INSERT INTO "nebenfach_in" VALUES (1016, 190);
INSERT INTO "nebenfach_in" VALUES (1027, 530);
INSERT INTO "nebenfach_in" VALUES (1031, 540);

INSERT INTO "eingeschrieben_in" VALUES (1001, '550.681', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1001, '600.303', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1001, '600.315', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1001, '600.337', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1001, '600.461', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1001, '600.465', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1002, '520.213', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1002, '600.211', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1002, '600.303', 'C+');
INSERT INTO "eingeschrieben_in" VALUES (1002, '600.337', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1002, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1002, '600.465', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1003, '600.333', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1003, '600.337', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1003, '600.415', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1003, '600.461', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1003, '600.465', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.303', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.415', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.437', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.445', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.461', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.463', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1004, '600.465', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1005, '600.103', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1005, '600.107', 'C+');
INSERT INTO "eingeschrieben_in" VALUES (1005, '600.113', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1005, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1005, '600.303', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1006, '550.420', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1006, '600.107', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1006, '600.227', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1006, '600.232', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1006, '600.303', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1006, '600.315', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1007, '550.420', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1007, '600.113', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1007, '600.227', 'C+');
INSERT INTO "eingeschrieben_in" VALUES (1007, '600.315', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1007, '600.333', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1007, '600.337', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1008, '600.415', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1008, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1008, '600.465', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1008, '600.657', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1008, '600.787', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.413', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.471', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.620', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.626', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.671', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.681', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.661', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1009, '550.631', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1010, '550.291', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1010, '550.310', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1010, '550.413', 'C+');
INSERT INTO "eingeschrieben_in" VALUES (1010, '550.420', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1010, '550.471', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1010, '600.107', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1011, '520.213', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1011, '520.345', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1011, '520.349', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1011, '520.353', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1011, '550.420', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1011, '600.415', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1012, '050.109', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1012, '050.203', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1012, '050.325', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1012, '600.107', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1012, '600.315', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.107', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.232', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.315', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.445', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.461', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1014, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1015, '550.420', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1015, '600.227', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1015, '600.303', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1015, '600.315', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1015, '600.333', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1016, '050.109', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1016, '050.203', 'D-');
INSERT INTO "eingeschrieben_in" VALUES (1016, '050.325', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1016, '050.821', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1016, '550.420', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1016, '600.107', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1016, '600.315', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1017, '050.427', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1017, '050.670', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1017, '050.802', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1017, '550.681', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1017, '600.109', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1017, '600.461', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1017, '600.465', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1018, '520.213', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1018, '600.211', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1018, '600.303', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1018, '600.337', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1018, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1018, '600.465', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1019, '600.103', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1019, '600.107', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1019, '600.113', 'D+');
INSERT INTO "eingeschrieben_in" VALUES (1019, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1019, '600.303', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1020, '600.333', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1020, '600.337', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1020, '600.415', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1020, '600.461', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1020, '600.465', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.303', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.303', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.415', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.437', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.437', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.445', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.445', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.463', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1021, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1022, '550.420', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1022, '550.420', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.107', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.232', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.303', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.315', 'D');
INSERT INTO "eingeschrieben_in" VALUES (1022, '600.461', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.113', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.315', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.333', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.337', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.463', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.465', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.657', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1023, '600.787', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.291', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.413', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.471', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.620', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.626', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.671', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1024, '550.681', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1024, '600.415', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1025, '520.213', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1025, '520.345', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1025, '550.310', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1025, '550.413', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1025, '550.420', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1025, '550.471', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1025, '600.107', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1026, '520.349', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1026, '520.353', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1026, '600.303', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1026, '600.437', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1026, '600.445', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1026, '600.463', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.107', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.227', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.232', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.303', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.315', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.461', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1027, '600.463', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1028, '550.420', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1028, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1028, '600.315', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1028, '600.333', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1028, '600.337', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1029, '550.413', 'C-');
INSERT INTO "eingeschrieben_in" VALUES (1029, '550.471', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1029, '550.620', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1029, '550.671', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1029, '600.113', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1029, '600.463', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1030, '520.345', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1030, '550.291', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1030, '550.310', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1030, '550.413', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1030, '550.420', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1030, '550.471', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1030, '600.107', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1031, '520.213', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1031, '520.349', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1031, '520.353', 'C');
INSERT INTO "eingeschrieben_in" VALUES (1031, '600.437', 'A+');
INSERT INTO "eingeschrieben_in" VALUES (1032, '550.420', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1032, '550.420', 'D-');
INSERT INTO "eingeschrieben_in" VALUES (1032, '600.232', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1032, '600.303', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1032, '600.315', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1033, '600.113', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1033, '600.227', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1033, '600.315', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1033, '600.333', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1033, '600.337', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1034, '050.109', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1034, '050.203', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1034, '050.325', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1034, '600.107', 'B+');
INSERT INTO "eingeschrieben_in" VALUES (1034, '600.315', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1035, '050.381', 'B-');
INSERT INTO "eingeschrieben_in" VALUES (1035, '050.427', 'A-');
INSERT INTO "eingeschrieben_in" VALUES (1035, '050.670', 'B');
INSERT INTO "eingeschrieben_in" VALUES (1035, '050.802', 'D');
INSERT INTO "eingeschrieben_in" VALUES (1035, '050.821', 'A');
INSERT INTO "eingeschrieben_in" VALUES (1035, '600.109', 'B-');

COMMIT;