CREATE TABLE "problemkategorie_codes"
(
	"problemkategorie_code"        VARCHAR(20),
	"problem_category_description" VARCHAR(80),
	PRIMARY KEY ("problemkategorie_code")
);

CREATE TABLE "problem_status_codes"
(
	"problem_status_code"        VARCHAR(20),
	"problem_status_description" VARCHAR(80),
	PRIMARY KEY ("problem_status_code")
);

CREATE TABLE "produkt"
(
	"produkt_id"      INTEGER,
	"produktname"     VARCHAR(80),
	"produkt_details" VARCHAR(255),
	PRIMARY KEY ("produkt_id")
);

CREATE TABLE "personal"
(
	"mitarbeiter_id"                INTEGER,
	"vorname_der_mitarbeiter"       VARCHAR(80),
	"nachname_des_personals"        VARCHAR(80),
	"sonstige_angaben_zum_personal" VARCHAR(255),
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "probleme"
(
	"problem_id"                                  INTEGER,
	"produkt_id"                                  INTEGER NOT NULL,
	"schließung_genehmigt_durch_mitarbeiter_id"   INTEGER NOT NULL,
	"gemeldet_von_mitarbeiter_id"                 INTEGER NOT NULL,
	"datum_des_gemeldeten_problems"               DATETIME NOT NULL,
	"datum_an_dem_das_problem_geschlossen_wurde" DATETIME,
	"problembeschreibung"                         VARCHAR(255),
	"andere_problemdetails"                       VARCHAR(255),
	PRIMARY KEY ("problem_id"),
	FOREIGN KEY ("produkt_id") REFERENCES "produkt" ("produkt_id"),
	FOREIGN KEY ("schließung_genehmigt_durch_mitarbeiter_id") REFERENCES "personal" ("mitarbeiter_id"),
	FOREIGN KEY ("gemeldet_von_mitarbeiter_id") REFERENCES "personal" ("mitarbeiter_id")
);

CREATE TABLE "problemprotokoll"
(
	"problem_log_id"                INTEGER,
	"dem_personal_zugewiesene_id"   INTEGER NOT NULL,
	"problem_id"                    INTEGER NOT NULL,
	"problemkategorie_code"         VARCHAR(20) NOT NULL,
	"problem_status_code"           VARCHAR(20) NOT NULL,
	"datum_des_protokolleintrags"   DATETIME,
	"protokolleintrag_beschreibung" VARCHAR(255),
	"protokolleintrag_fix"          VARCHAR(255),
	"andere_logdetails"             VARCHAR(255),
	PRIMARY KEY ("problem_log_id"),
	FOREIGN KEY ("dem_personal_zugewiesene_id") REFERENCES "personal" ("mitarbeiter_id"),
	FOREIGN KEY ("problem_id") REFERENCES "probleme" ("problem_id"),
	FOREIGN KEY ("problemkategorie_code") REFERENCES "problemkategorie_codes" ("problemkategorie_code"),
	FOREIGN KEY ("problem_status_code") REFERENCES "problem_status_codes" ("problem_status_code")
);

BEGIN TRANSACTION;
INSERT INTO "problemkategorie_codes" VALUES ('Datatabase', 'Database design or contents.');
INSERT INTO "problemkategorie_codes" VALUES ('GUI', 'User Interface.');
INSERT INTO "problemkategorie_codes" VALUES ('Middleware', 'Infrastructrure and Architecture');

INSERT INTO "problem_status_codes" VALUES ('Reported', 'Reported');
INSERT INTO "problem_status_codes" VALUES ('Solved', 'Solved');

INSERT INTO "produkt" VALUES (1, 'rose', 'k');
INSERT INTO "produkt" VALUES (2, 'yellow', 'q');
INSERT INTO "produkt" VALUES (3, 'chat', 'e');
INSERT INTO "produkt" VALUES (4, 'wechat', 'r');
INSERT INTO "produkt" VALUES (5, 'life', 'q');
INSERT INTO "produkt" VALUES (6, 'keep', 'd');
INSERT INTO "produkt" VALUES (7, 'messager', 'm');
INSERT INTO "produkt" VALUES (8, 'hangout', 'u');
INSERT INTO "produkt" VALUES (9, 'twitter', 'z');
INSERT INTO "produkt" VALUES (10, 'blog', 'd');
INSERT INTO "produkt" VALUES (11, 'snapchat', 'e');
INSERT INTO "produkt" VALUES (12, 'doulingo', 'q');
INSERT INTO "produkt" VALUES (13, 'learn', 'h');
INSERT INTO "produkt" VALUES (14, 'teach', 'n');
INSERT INTO "produkt" VALUES (15, 'game', 'j');

INSERT INTO "personal" VALUES (1, 'Lacey', 'Bosco', 'm');
INSERT INTO "personal" VALUES (2, 'Dameon', 'Frami', 'x');
INSERT INTO "personal" VALUES (3, 'Ashley', 'Medhurst', 'w');
INSERT INTO "personal" VALUES (4, 'Kayla', 'Klein', 'p');
INSERT INTO "personal" VALUES (5, 'Jolie', 'Weber', 'q');
INSERT INTO "personal" VALUES (6, 'Kristian', 'Lynch', 'b');
INSERT INTO "personal" VALUES (7, 'Kenton', 'Champlin', 'p');
INSERT INTO "personal" VALUES (8, 'Magali', 'Schumm', 'd');
INSERT INTO "personal" VALUES (9, 'Junius', 'Treutel', 'j');
INSERT INTO "personal" VALUES (10, 'Christop', 'Berge', 'x');
INSERT INTO "personal" VALUES (11, 'Rylan', 'Homenick', 'x');
INSERT INTO "personal" VALUES (12, 'Stevie', 'Mante', 'j');
INSERT INTO "personal" VALUES (13, 'Lysanne', 'Turcotte', 'i');
INSERT INTO "personal" VALUES (14, 'Kenyatta', 'Klocko', 'e');
INSERT INTO "personal" VALUES (15, 'Israel', 'Dickens', 'w');

INSERT INTO "probleme" VALUES (1, 4, 4, 2, '1978-06-26 19:10:17', '2012-07-22 19:24:26', 'x', 'p');
INSERT INTO "probleme" VALUES (2, 8, 3, 10, '1988-11-07 16:09:31', '1973-06-07 04:13:51', 'w', 'p');
INSERT INTO "probleme" VALUES (3, 1, 4, 1, '1995-05-14 08:32:56', '1997-02-26 05:06:15', 'r', 'i');
INSERT INTO "probleme" VALUES (4, 13, 8, 7, '1973-10-12 10:51:23', '1993-06-19 10:02:59', 'y', 'c');
INSERT INTO "probleme" VALUES (5, 4, 12, 11, '1986-11-13 07:30:55', '2013-05-24 20:33:11', 'a', 'k');
INSERT INTO "probleme" VALUES (6, 1, 5, 4, '2010-10-05 02:25:37', '1998-07-03 14:53:59', 'p', 'l');
INSERT INTO "probleme" VALUES (7, 2, 2, 7, '1996-04-19 15:54:13', '1974-09-20 13:42:19', 'a', 'l');
INSERT INTO "probleme" VALUES (8, 2, 4, 1, '1976-12-18 23:54:41', '1982-08-26 10:58:01', 'w', 'f');
INSERT INTO "probleme" VALUES (9, 15, 14, 13, '2010-10-11 13:36:00', '1995-06-10 18:41:08', 'i', 'v');
INSERT INTO "probleme" VALUES (10, 4, 13, 10, '1993-12-29 23:22:21', '1990-04-13 21:15:50', 'd', 's');
INSERT INTO "probleme" VALUES (11, 5, 1, 14, '1970-02-23 17:46:12', '1971-02-06 15:23:23', 'd', 'v');
INSERT INTO "probleme" VALUES (12, 6, 9, 2, '1970-05-20 15:38:46', '1997-10-18 20:09:57', 'j', 'c');
INSERT INTO "probleme" VALUES (13, 1, 9, 5, '1971-06-15 02:50:52', '2004-06-20 01:08:25', 'c', 'f');
INSERT INTO "probleme" VALUES (14, 1, 6, 13, '1977-10-22 15:48:13', '1970-09-05 08:04:43', 's', 's');
INSERT INTO "probleme" VALUES (15, 7, 9, 10, '1970-10-27 16:35:34', '1999-09-28 21:29:12', 'r', 'm');

INSERT INTO "problemprotokoll" VALUES (1, 11, 11, 'Middleware', 'Solved', '2011-03-13 13:11:57', 't', 'k', 'p');
INSERT INTO "problemprotokoll" VALUES (2, 11, 8, 'GUI', 'Solved', '1976-03-31 14:03:02', 'a', 'k', 's');
INSERT INTO "problemprotokoll" VALUES (3, 12, 1, 'GUI', 'Solved', '1974-12-11 01:06:22', 'b', 'j', 'e');
INSERT INTO "problemprotokoll" VALUES (4, 12, 12, 'GUI', 'Reported', '1993-04-02 11:07:29', 'a', 't', 'b');
INSERT INTO "problemprotokoll" VALUES (5, 6, 12, 'Middleware', 'Reported', '1976-09-17 09:01:12', 'c', 'n', 'u');
INSERT INTO "problemprotokoll" VALUES (6, 2, 13, 'GUI', 'Solved', '1983-07-01 02:12:36', 'h', 'g', 'n');
INSERT INTO "problemprotokoll" VALUES (7, 13, 1, 'Datatabase', 'Solved', '1974-09-13 00:37:26', 's', 'c', 'v');
INSERT INTO "problemprotokoll" VALUES (8, 4, 15, 'Datatabase', 'Solved', '1999-08-17 00:00:18', 'j', 'h', 'j');
INSERT INTO "problemprotokoll" VALUES (9, 10, 13, 'GUI', 'Reported', '1993-06-21 22:33:35', 'p', 'i', 'f');
INSERT INTO "problemprotokoll" VALUES (10, 6, 1, 'Middleware', 'Reported', '2001-05-14 10:03:53', 'd', 'x', 'd');
INSERT INTO "problemprotokoll" VALUES (11, 1, 8, 'Datatabase', 'Solved', '1973-03-12 16:30:50', 'w', 'k', 'a');
INSERT INTO "problemprotokoll" VALUES (12, 4, 10, 'Middleware', 'Solved', '1997-08-31 08:19:12', 'c', 'y', 'c');
INSERT INTO "problemprotokoll" VALUES (13, 6, 10, 'Middleware', 'Reported', '2009-04-10 19:09:30', 'q', 't', 'o');
INSERT INTO "problemprotokoll" VALUES (14, 8, 4, 'Datatabase', 'Reported', '2011-11-12 23:30:53', 'a', 's', 'c');
INSERT INTO "problemprotokoll" VALUES (15, 5, 7, 'GUI', 'Reported', '1982-11-17 06:05:52', 'v', 'o', 'd');

COMMIT;