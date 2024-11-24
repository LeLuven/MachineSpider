CREATE TABLE "arzt"
(
	"mitarbeiter_id" INTEGER NOT NULL,
	"name"           VARCHAR(30) NOT NULL,
	"position"       VARCHAR(30) NOT NULL,
	"ssn"            INTEGER NOT NULL,
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "verfahren"
(
	"code"   INTEGER NOT NULL,
	"name"   VARCHAR(30) NOT NULL,
	"kosten" REAL NOT NULL,
	PRIMARY KEY ("code")
);

CREATE TABLE "krankenschwester"
(
	"mitarbeiter_id" INTEGER NOT NULL,
	"name"           VARCHAR(30) NOT NULL,
	"position"       VARCHAR(30) NOT NULL,
	"registriert"    BOOLEAN NOT NULL,
	"ssn"            INTEGER NOT NULL,
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "medikamente"
(
	"code"         INTEGER NOT NULL,
	"name"         VARCHAR(30) NOT NULL,
	"marke"        VARCHAR(30) NOT NULL,
	"beschreibung" VARCHAR(30) NOT NULL,
	PRIMARY KEY ("code")
);

CREATE TABLE "block"
(
	"block_floor" INTEGER NOT NULL,
	"block_code"  INTEGER NOT NULL,
	PRIMARY KEY ("block_floor", "block_code")
);

CREATE TABLE "abteilung"
(
	"abteilungsid" INTEGER NOT NULL,
	"name"         VARCHAR(30) NOT NULL,
	"head"         INTEGER NOT NULL,
	PRIMARY KEY ("abteilungsid"),
	FOREIGN KEY ("head") REFERENCES "arzt" ("mitarbeiter_id")
);

CREATE TABLE "patient"
(
	"ssn"                 INTEGER NOT NULL,
	"name"                VARCHAR(30) NOT NULL,
	"adresse"             VARCHAR(30) NOT NULL,
	"telefon"             VARCHAR(30) NOT NULL,
	"versicherungsnummer" INTEGER NOT NULL,
	"pcp"                 INTEGER NOT NULL,
	PRIMARY KEY ("ssn"),
	FOREIGN KEY ("pcp") REFERENCES "arzt" ("mitarbeiter_id")
);

CREATE TABLE "ausgebildet_in"
(
	"arzt"                   INTEGER NOT NULL,
	"behandlung"             INTEGER NOT NULL,
	"bescheinigungsdatum"    DATETIME NOT NULL,
	"bescheinigung_läuft_ab" DATETIME NOT NULL,
	PRIMARY KEY ("arzt", "behandlung"),
	FOREIGN KEY ("arzt") REFERENCES "arzt" ("mitarbeiter_id"),
	FOREIGN KEY ("behandlung") REFERENCES "verfahren" ("code")
);

CREATE TABLE "zimmer"
(
	"zimmernummer"    INTEGER NOT NULL,
	"zimmertyp"       VARCHAR(30) NOT NULL,
	"block_floor"     INTEGER NOT NULL,
	"block_code"      INTEGER NOT NULL,
	"nicht_verfügbar" BOOLEAN NOT NULL,
	PRIMARY KEY ("zimmernummer"),
	FOREIGN KEY ("block_floor", "block_code") REFERENCES "block" ("block_floor", "block_code")
);

CREATE TABLE "auf_abruf"
(
	"krankenschwester"                 INTEGER NOT NULL,
	"block_floor"                      INTEGER NOT NULL,
	"block_code"                       INTEGER NOT NULL,
	"beginn_des_bereitschaftsdienstes" DATETIME NOT NULL,
	"ende_des_bereitschaftsdienstes"   DATETIME NOT NULL,
	PRIMARY KEY ("krankenschwester", "block_floor", "block_code", "beginn_des_bereitschaftsdienstes", "ende_des_bereitschaftsdienstes"),
	FOREIGN KEY ("krankenschwester") REFERENCES "krankenschwester" ("mitarbeiter_id"),
	FOREIGN KEY ("block_floor", "block_code") REFERENCES "block" ("block_floor", "block_code")
);

CREATE TABLE "angegliedert_an"
(
	"arzt"                  INTEGER NOT NULL,
	"abteilung"             INTEGER NOT NULL,
	"primäre_zugehörigkeit" BOOLEAN NOT NULL,
	PRIMARY KEY ("arzt", "abteilung"),
	FOREIGN KEY ("arzt") REFERENCES "arzt" ("mitarbeiter_id"),
	FOREIGN KEY ("abteilung") REFERENCES "abteilung" ("abteilungsid")
);

CREATE TABLE "termin"
(
	"termin_id"                      INTEGER NOT NULL,
	"patient"                        INTEGER NOT NULL,
	"vorbereitende_krankenschwester" INTEGER,
	"arzt"                           INTEGER NOT NULL,
	"start"                          DATETIME NOT NULL,
	"ende"                           DATETIME NOT NULL,
	"untersuchungsraum"              TEXT NOT NULL,
	PRIMARY KEY ("termin_id"),
	FOREIGN KEY ("patient") REFERENCES "patient" ("ssn"),
	FOREIGN KEY ("vorbereitende_krankenschwester") REFERENCES "krankenschwester" ("mitarbeiter_id"),
	FOREIGN KEY ("arzt") REFERENCES "arzt" ("mitarbeiter_id")
);

CREATE TABLE "aufenthalt"
(
	"aufenthalt_id"     INTEGER NOT NULL,
	"patient"           INTEGER NOT NULL,
	"zimmer"            INTEGER NOT NULL,
	"aufenthaltsbeginn" DATETIME NOT NULL,
	"aufenthaltsende"   DATETIME NOT NULL,
	PRIMARY KEY ("aufenthalt_id"),
	FOREIGN KEY ("patient") REFERENCES "patient" ("ssn"),
	FOREIGN KEY ("zimmer") REFERENCES "zimmer" ("zimmernummer")
);

CREATE TABLE "verschreibungspflichtig"
(
	"arzt"        INTEGER NOT NULL,
	"patient"     INTEGER NOT NULL,
	"medikamente" INTEGER NOT NULL,
	"datum"       DATETIME NOT NULL,
	"termin"      INTEGER,
	"dosis"       VARCHAR(30) NOT NULL,
	PRIMARY KEY ("arzt", "patient", "medikamente", "datum"),
	FOREIGN KEY ("arzt") REFERENCES "arzt" ("mitarbeiter_id"),
	FOREIGN KEY ("patient") REFERENCES "patient" ("ssn"),
	FOREIGN KEY ("medikamente") REFERENCES "medikamente" ("code"),
	FOREIGN KEY ("termin") REFERENCES "termin" ("termin_id")
);

CREATE TABLE "untersuchungen"
(
	"patient"                        INTEGER NOT NULL,
	"verfahren"                      INTEGER NOT NULL,
	"aufenthalt"                     INTEGER NOT NULL,
	"datum_unterzieht_sich"          DATETIME NOT NULL,
	"arzt"                           INTEGER NOT NULL,
	"assistierende_krankenschwester" INTEGER,
	PRIMARY KEY ("patient", "verfahren", "aufenthalt", "datum_unterzieht_sich"),
	FOREIGN KEY ("patient") REFERENCES "patient" ("ssn"),
	FOREIGN KEY ("verfahren") REFERENCES "verfahren" ("code"),
	FOREIGN KEY ("aufenthalt") REFERENCES "aufenthalt" ("aufenthalt_id"),
	FOREIGN KEY ("arzt") REFERENCES "arzt" ("mitarbeiter_id"),
	FOREIGN KEY ("assistierende_krankenschwester") REFERENCES "krankenschwester" ("mitarbeiter_id")
);

BEGIN TRANSACTION;
INSERT INTO "arzt" VALUES (1, 'John Dorian', 'Staff Internist', 111111111);
INSERT INTO "arzt" VALUES (2, 'Elliot Reid', 'Attending Physician', 222222222);
INSERT INTO "arzt" VALUES (3, 'Christopher Turk', 'Surgical Attending Physician', 333333333);
INSERT INTO "arzt" VALUES (4, 'Percival Cox', 'Senior Attending Physician', 444444444);
INSERT INTO "arzt" VALUES (5, 'Bob Kelso', 'Head Chief of Medicine', 555555555);
INSERT INTO "arzt" VALUES (6, 'Todd Quinlan', 'Surgical Attending Physician', 666666666);
INSERT INTO "arzt" VALUES (7, 'John Wen', 'Surgical Attending Physician', 777777777);
INSERT INTO "arzt" VALUES (8, 'Keith Dudemeister', 'MD Resident', 888888888);
INSERT INTO "arzt" VALUES (9, 'Molly Clock', 'Attending Psychiatrist', 999999999);

INSERT INTO "verfahren" VALUES (1, 'Reverse Rhinopodoplasty', 1500.0);
INSERT INTO "verfahren" VALUES (2, 'Obtuse Pyloric Recombobulation', 3750.0);
INSERT INTO "verfahren" VALUES (3, 'Folded Demiophtalmectomy', 4500.0);
INSERT INTO "verfahren" VALUES (4, 'Complete Walletectomy', 10000.0);
INSERT INTO "verfahren" VALUES (5, 'Obfuscated Dermogastrotomy', 4899.0);
INSERT INTO "verfahren" VALUES (6, 'Reversible Pancreomyoplasty', 5600.0);
INSERT INTO "verfahren" VALUES (7, 'Follicular Demiectomy', 25.0);

INSERT INTO "krankenschwester" VALUES (101, 'Carla Espinosa', 'Head Nurse', 1, 111111110);
INSERT INTO "krankenschwester" VALUES (102, 'Laverne Roberts', 'Nurse', 1, 222222220);
INSERT INTO "krankenschwester" VALUES (103, 'Paul Flowers', 'Nurse', 0, 333333330);

INSERT INTO "medikamente" VALUES (1, 'Procrastin-X', 'X', 'N/A');
INSERT INTO "medikamente" VALUES (2, 'Thesisin', 'Foo Labs', 'N/A');
INSERT INTO "medikamente" VALUES (3, 'Awakin', 'Bar Laboratories', 'N/A');
INSERT INTO "medikamente" VALUES (4, 'Crescavitin', 'Baz Industries', 'N/A');
INSERT INTO "medikamente" VALUES (5, 'Melioraurin', 'Snafu Pharmaceuticals', 'N/A');

INSERT INTO "block" VALUES (1, 1);
INSERT INTO "block" VALUES (1, 2);
INSERT INTO "block" VALUES (1, 3);
INSERT INTO "block" VALUES (2, 1);
INSERT INTO "block" VALUES (2, 2);
INSERT INTO "block" VALUES (2, 3);
INSERT INTO "block" VALUES (3, 1);
INSERT INTO "block" VALUES (3, 2);
INSERT INTO "block" VALUES (3, 3);
INSERT INTO "block" VALUES (4, 1);
INSERT INTO "block" VALUES (4, 2);
INSERT INTO "block" VALUES (4, 3);

INSERT INTO "abteilung" VALUES (1, 'General Medicine', 4);
INSERT INTO "abteilung" VALUES (2, 'Surgery', 7);
INSERT INTO "abteilung" VALUES (3, 'Psychiatry', 9);

INSERT INTO "patient" VALUES (100000001, 'John Smith', '42 Foobar Lane', '555-0256', 68476213, 1);
INSERT INTO "patient" VALUES (100000002, 'Grace Ritchie', '37 Snafu Drive', '555-0512', 36546321, 2);
INSERT INTO "patient" VALUES (100000003, 'Random J. Patient', '101 Omgbbq Street', '555-1204', 65465421, 2);
INSERT INTO "patient" VALUES (100000004, 'Dennis Doe', '1100 Foobaz Avenue', '555-2048', 68421879, 3);

INSERT INTO "ausgebildet_in" VALUES (3, 1, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (3, 2, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (3, 5, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (3, 6, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (3, 7, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (6, 2, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (6, 5, '2007-01-01', '2007-12-31');
INSERT INTO "ausgebildet_in" VALUES (6, 6, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 1, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 2, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 3, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 4, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 5, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 6, '2008-01-01', '2008-12-31');
INSERT INTO "ausgebildet_in" VALUES (7, 7, '2008-01-01', '2008-12-31');

INSERT INTO "zimmer" VALUES (101, 'Single', 1, 1, 0);
INSERT INTO "zimmer" VALUES (102, 'Single', 1, 1, 0);
INSERT INTO "zimmer" VALUES (103, 'Single', 1, 1, 0);
INSERT INTO "zimmer" VALUES (111, 'Single', 1, 2, 0);
INSERT INTO "zimmer" VALUES (112, 'Single', 1, 2, 1);
INSERT INTO "zimmer" VALUES (113, 'Single', 1, 2, 0);
INSERT INTO "zimmer" VALUES (121, 'Single', 1, 3, 0);
INSERT INTO "zimmer" VALUES (122, 'Single', 1, 3, 0);
INSERT INTO "zimmer" VALUES (123, 'Single', 1, 3, 0);
INSERT INTO "zimmer" VALUES (201, 'Single', 2, 1, 1);
INSERT INTO "zimmer" VALUES (202, 'Single', 2, 1, 0);
INSERT INTO "zimmer" VALUES (203, 'Single', 2, 1, 0);
INSERT INTO "zimmer" VALUES (211, 'Single', 2, 2, 0);
INSERT INTO "zimmer" VALUES (212, 'Single', 2, 2, 0);
INSERT INTO "zimmer" VALUES (213, 'Single', 2, 2, 1);
INSERT INTO "zimmer" VALUES (221, 'Single', 2, 3, 0);
INSERT INTO "zimmer" VALUES (222, 'Single', 2, 3, 0);
INSERT INTO "zimmer" VALUES (223, 'Single', 2, 3, 0);
INSERT INTO "zimmer" VALUES (301, 'Single', 3, 1, 0);
INSERT INTO "zimmer" VALUES (302, 'Single', 3, 1, 1);
INSERT INTO "zimmer" VALUES (303, 'Single', 3, 1, 0);
INSERT INTO "zimmer" VALUES (311, 'Single', 3, 2, 0);
INSERT INTO "zimmer" VALUES (312, 'Single', 3, 2, 0);
INSERT INTO "zimmer" VALUES (313, 'Single', 3, 2, 0);
INSERT INTO "zimmer" VALUES (321, 'Single', 3, 3, 1);
INSERT INTO "zimmer" VALUES (322, 'Single', 3, 3, 0);
INSERT INTO "zimmer" VALUES (323, 'Single', 3, 3, 0);
INSERT INTO "zimmer" VALUES (401, 'Single', 4, 1, 0);
INSERT INTO "zimmer" VALUES (402, 'Single', 4, 1, 1);
INSERT INTO "zimmer" VALUES (403, 'Single', 4, 1, 0);
INSERT INTO "zimmer" VALUES (411, 'Single', 4, 2, 0);
INSERT INTO "zimmer" VALUES (412, 'Single', 4, 2, 0);
INSERT INTO "zimmer" VALUES (413, 'Single', 4, 2, 0);
INSERT INTO "zimmer" VALUES (421, 'Single', 4, 3, 1);
INSERT INTO "zimmer" VALUES (422, 'Single', 4, 3, 0);
INSERT INTO "zimmer" VALUES (423, 'Single', 4, 3, 0);

INSERT INTO "auf_abruf" VALUES (101, 1, 1, '2008-11-04 11:00', '2008-11-04 19:00');
INSERT INTO "auf_abruf" VALUES (101, 1, 2, '2008-11-04 11:00', '2008-11-04 19:00');
INSERT INTO "auf_abruf" VALUES (102, 1, 3, '2008-11-04 11:00', '2008-11-04 19:00');
INSERT INTO "auf_abruf" VALUES (103, 1, 1, '2008-11-04 19:00', '2008-11-05 03:00');
INSERT INTO "auf_abruf" VALUES (103, 1, 2, '2008-11-04 19:00', '2008-11-05 03:00');
INSERT INTO "auf_abruf" VALUES (103, 1, 3, '2008-11-04 19:00', '2008-11-05 03:00');

INSERT INTO "angegliedert_an" VALUES (1, 1, 1);
INSERT INTO "angegliedert_an" VALUES (2, 1, 1);
INSERT INTO "angegliedert_an" VALUES (3, 1, 0);
INSERT INTO "angegliedert_an" VALUES (3, 2, 1);
INSERT INTO "angegliedert_an" VALUES (4, 1, 1);
INSERT INTO "angegliedert_an" VALUES (5, 1, 1);
INSERT INTO "angegliedert_an" VALUES (6, 2, 1);
INSERT INTO "angegliedert_an" VALUES (7, 1, 0);
INSERT INTO "angegliedert_an" VALUES (7, 2, 1);
INSERT INTO "angegliedert_an" VALUES (8, 1, 1);
INSERT INTO "angegliedert_an" VALUES (9, 3, 1);

INSERT INTO "termin" VALUES (13216584, 100000001, 101, 1, '2008-04-24 10:00', '2008-04-24 11:00', 'A');
INSERT INTO "termin" VALUES (26548913, 100000002, 101, 2, '2008-04-24 10:00', '2008-04-24 11:00', 'B');
INSERT INTO "termin" VALUES (36549879, 100000001, 102, 1, '2008-04-25 10:00', '2008-04-25 11:00', 'A');
INSERT INTO "termin" VALUES (46846589, 100000004, 103, 4, '2008-04-25 10:00', '2008-04-25 11:00', 'B');
INSERT INTO "termin" VALUES (59871321, 100000004, NULL, 4, '2008-04-26 10:00', '2008-04-26 11:00', 'C');
INSERT INTO "termin" VALUES (69879231, 100000003, 103, 2, '2008-04-26 11:00', '2008-04-26 12:00', 'C');
INSERT INTO "termin" VALUES (76983231, 100000001, NULL, 3, '2008-04-26 12:00', '2008-04-26 13:00', 'C');
INSERT INTO "termin" VALUES (86213939, 100000004, 102, 9, '2008-04-27 10:00', '2008-04-21 11:00', 'A');
INSERT INTO "termin" VALUES (93216548, 100000002, 101, 2, '2008-04-27 10:00', '2008-04-27 11:00', 'B');

INSERT INTO "aufenthalt" VALUES (3215, 100000001, 111, '2008-05-01', '2008-05-04');
INSERT INTO "aufenthalt" VALUES (3216, 100000003, 123, '2008-05-03', '2008-05-14');
INSERT INTO "aufenthalt" VALUES (3217, 100000004, 112, '2008-05-02', '2008-05-03');

INSERT INTO "verschreibungspflichtig" VALUES (1, 100000001, 1, '2008-04-24 10:47', 13216584, '5');
INSERT INTO "verschreibungspflichtig" VALUES (9, 100000004, 2, '2008-04-27 10:53', 86213939, '10');
INSERT INTO "verschreibungspflichtig" VALUES (9, 100000004, 2, '2008-04-30 16:53', NULL, '5');

INSERT INTO "untersuchungen" VALUES (100000001, 6, 3215, '2008-05-02', 3, 101);
INSERT INTO "untersuchungen" VALUES (100000001, 2, 3215, '2008-05-03', 7, 101);
INSERT INTO "untersuchungen" VALUES (100000004, 1, 3217, '2008-05-07', 3, 102);
INSERT INTO "untersuchungen" VALUES (100000004, 5, 3217, '2008-05-09', 6, 105);
INSERT INTO "untersuchungen" VALUES (100000001, 7, 3217, '2008-05-10', 7, 101);
INSERT INTO "untersuchungen" VALUES (100000004, 4, 3217, '2008-05-13', 3, 103);

COMMIT;