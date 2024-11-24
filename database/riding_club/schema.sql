CREATE TABLE "spieler"
(
	"spieler_id"   INT,
	"sponsor_name" TEXT,
	"spielername"  TEXT,
	"geschlecht"   TEXT,
	"wohnort"      TEXT,
	"beruf"        TEXT,
	"stimmen"      INT,
	"rang"         TEXT,
	PRIMARY KEY ("spieler_id")
);

CREATE TABLE "verein"
(
	"club_id"     INT,
	"vereinsname" TEXT,
	"region"      TEXT,
	"startjahr"   INT,
	PRIMARY KEY ("club_id")
);

CREATE TABLE "trainer"
(
	"trainer_id"  INT,
	"spielername" TEXT,
	"geschlecht"  TEXT,
	"club_id"     INT,
	"rang"        INT,
	PRIMARY KEY ("trainer_id"),
	FOREIGN KEY ("club_id") REFERENCES "verein" ("club_id")
);

CREATE TABLE "spielergebnis"
(
	"rang"         INT,
	"club_id"      INT,
	"gold"         INT,
	"groß_silber"  INT,
	"klein_silber" INT,
	"bronze"       INT,
	"punkte"       INT,
	PRIMARY KEY ("rang", "club_id"),
	FOREIGN KEY ("club_id") REFERENCES "verein" ("club_id")
);

CREATE TABLE "spieler_trainer"
(
	"spieler_id"  INT,
	"trainer_id"  INT,
	"anfangsjahr" INT,
	PRIMARY KEY ("spieler_id", "trainer_id"),
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("trainer_id") REFERENCES "trainer" ("trainer_id")
);

BEGIN TRANSACTION;
INSERT INTO "spieler" VALUES (1, 'Brandon—Souris', 'Jean Luc Bouché', 'M', 'Brandon', 'Locomotive Engineer', 6055, '2nd');
INSERT INTO "spieler" VALUES (2, 'Charleswood—St. James—Assiniboia', 'Fiona Shiells', 'F', 'Winnipeg', 'Ministerial Assistant', 7190, '3rd');
INSERT INTO "spieler" VALUES (3, 'Churchill', 'Niki Ashton', 'F', 'Thompson', 'Researcher', 8734, '1st');
INSERT INTO "spieler" VALUES (4, 'Dauphin—Swan River—Marquette', 'Ron Strynadka', 'M', 'Birtle', 'Retired', 4914, '2nd');
INSERT INTO "spieler" VALUES (5, 'Elmwood—Transcona', 'Jim Maloway', 'M', 'Winnipeg', 'Small Businessman', 14355, '1st');
INSERT INTO "spieler" VALUES (6, 'Kildonan—St. Paul', 'Ross Eadie', 'M', 'Winnipeg', 'Self Employed / Consultant', 12093, '2nd');
INSERT INTO "spieler" VALUES (7, 'Portage—Lisgar', 'Mohamed Alli', 'M', 'Winnipeg', 'Distribution Centre Associate', 2353, '4th');
INSERT INTO "spieler" VALUES (8, 'Provencher', 'Ross C. Martin', 'M', 'Oakbank', 'Design Coordinator', 4947, '2nd');
INSERT INTO "spieler" VALUES (9, 'Saint Boniface', 'Matt Schaubroeck', 'M', 'Winnipeg', 'Student', 5502, '3rd');
INSERT INTO "spieler" VALUES (10, 'Selkirk—Interlake', 'Patricia Cordner', 'F', 'Selkirk', 'Retired', 9506, '2nd');
INSERT INTO "spieler" VALUES (11, 'Winnipeg Centre', 'Pat Martin', 'M', 'Winnipeg', 'Parliamentarian', 12285, '1st');
INSERT INTO "spieler" VALUES (12, 'Winnipeg North', 'Judy Wasylycia-Leis', 'F', 'Winnipeg', 'Parliamentarian', 14097, '1st');
INSERT INTO "spieler" VALUES (13, 'Winnipeg South', 'Sean Robert', 'M', 'Winnipeg', 'Product Consultant - MLCC', 4673, '3rd');
INSERT INTO "spieler" VALUES (14, 'Winnipeg South Centre', 'Rachel Heinrichs', 'F', 'Winnipeg', 'Student', 5490, '3rd');

INSERT INTO "verein" VALUES (1, 'AIK', 'USA', 2009);
INSERT INTO "verein" VALUES (2, 'BK Häcken', 'UK', 1998);
INSERT INTO "verein" VALUES (3, 'Djurgårdens IF', 'USA', 2005);
INSERT INTO "verein" VALUES (4, 'Gefle IF', 'Korea', 2001);
INSERT INTO "verein" VALUES (5, 'Halmstads BK', 'Russia', 2000);
INSERT INTO "verein" VALUES (6, 'Helsingborgs IF', 'France', 2011);

INSERT INTO "trainer" VALUES (1, 'Jameson Tomas', 'M', 1, 1);
INSERT INTO "trainer" VALUES (2, 'Joe Fabbri', 'F', 1, 2);
INSERT INTO "trainer" VALUES (3, 'Robert Chen', 'M', 3, 3);
INSERT INTO "trainer" VALUES (4, 'James Wong', 'M', 3, 4);
INSERT INTO "trainer" VALUES (5, 'Smith Brown', 'M', 1, 5);

INSERT INTO "spielergebnis" VALUES (1, 1, 20, 14, 9, 8, 168);
INSERT INTO "spielergebnis" VALUES (2, 2, 13, 11, 16, 9, 139);
INSERT INTO "spielergebnis" VALUES (3, 3, 12, 9, 4, 7, 102);
INSERT INTO "spielergebnis" VALUES (4, 4, 5, 12, 10, 8, 89);
INSERT INTO "spielergebnis" VALUES (5, 5, 7, 7, 9, 10, 84);
INSERT INTO "spielergebnis" VALUES (6, 6, 6, 6, 6, 6, 66);

INSERT INTO "spieler_trainer" VALUES (1, 1, 2010);
INSERT INTO "spieler_trainer" VALUES (2, 1, 2011);
INSERT INTO "spieler_trainer" VALUES (3, 1, 2012);
INSERT INTO "spieler_trainer" VALUES (4, 2, 2013);
INSERT INTO "spieler_trainer" VALUES (6, 3, 2012);
INSERT INTO "spieler_trainer" VALUES (10, 3, 2011);
INSERT INTO "spieler_trainer" VALUES (14, 5, 2010);

COMMIT;