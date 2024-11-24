CREATE TABLE "dokumenttypen"
(
	"dokumentenart_code"     VARCHAR(10),
	"dokumentenbeschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokumentenart_code")
);

CREATE TABLE "organisationsarten"
(
	"organisationstyp"                  VARCHAR(10),
	"beschreibung_der_organisationsart" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("organisationstyp")
);

CREATE TABLE "forschungsergebnisse"
(
	"ergebnis_code"        VARCHAR(10),
	"ergebnisbeschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("ergebnis_code")
);

CREATE TABLE "personalrollen"
(
	"rollencode"         VARCHAR(10),
	"rollenbeschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("rollencode")
);

CREATE TABLE "organisationen"
(
	"organisation_id"      INTEGER,
	"organisationstyp"     VARCHAR(10) NOT NULL,
	"organisation_details" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("organisation_id"),
	FOREIGN KEY ("organisationstyp") REFERENCES "organisationsarten" ("organisationstyp")
);

CREATE TABLE "zuschüsse"
(
	"grant_id"               INTEGER,
	"organisation_id"        INTEGER NOT NULL,
	"grant_amount"           DECIMAL(19,4) NOT NULL DEFAULT 0,
	"grant_start_date"       DATETIME NOT NULL,
	"enddatum_der_förderung" DATETIME NOT NULL,
	"andere_angaben"         VARCHAR(255) NOT NULL,
	PRIMARY KEY ("grant_id"),
	FOREIGN KEY ("organisation_id") REFERENCES "organisationen" ("organisation_id")
);

CREATE TABLE "projekte"
(
	"projekt_id"      INTEGER,
	"organisation_id" INTEGER NOT NULL,
	"projektdetails"  VARCHAR(255) NOT NULL,
	PRIMARY KEY ("projekt_id"),
	FOREIGN KEY ("organisation_id") REFERENCES "organisationen" ("organisation_id")
);

CREATE TABLE "forschungspersonal"
(
	"mitarbeiter_id"              INTEGER,
	"arbeitgeber_organisation_id" INTEGER NOT NULL,
	"personal_details"            VARCHAR(255) NOT NULL,
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("arbeitgeber_organisation_id") REFERENCES "organisationen" ("organisation_id")
);

CREATE TABLE "dokumente"
(
	"dokument_id"                    INTEGER,
	"dokumentenart_code"             VARCHAR(10),
	"grant_id"                       INTEGER NOT NULL,
	"absendedatum"                   DATETIME NOT NULL,
	"datum_des_eingangs_der_antwort" DATETIME NOT NULL,
	"andere_angaben"                 VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("dokumentenart_code") REFERENCES "dokumenttypen" ("dokumentenart_code"),
	FOREIGN KEY ("grant_id") REFERENCES "zuschüsse" ("grant_id")
);

CREATE TABLE "projektergebnisse"
(
	"projekt_id"       INTEGER NOT NULL,
	"ergebnis_code"    VARCHAR(10) NOT NULL,
	"ergebnis_details" VARCHAR(255),
	FOREIGN KEY ("projekt_id") REFERENCES "projekte" ("projekt_id"),
	FOREIGN KEY ("ergebnis_code") REFERENCES "forschungsergebnisse" ("ergebnis_code")
);

CREATE TABLE "projektmitarbeiter"
(
	"mitarbeiter_id" DOUBLE,
	"projekt_id"     INTEGER NOT NULL,
	"rollencode"     VARCHAR(10) NOT NULL,
	"datum_von"      DATETIME,
	"datum_bis"      DATETIME,
	"andere_angaben" VARCHAR(255),
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("projekt_id") REFERENCES "projekte" ("projekt_id"),
	FOREIGN KEY ("rollencode") REFERENCES "personalrollen" ("rollencode")
);

CREATE TABLE "aufgaben"
(
	"aufgaben_id"          INTEGER,
	"projekt_id"           INTEGER NOT NULL,
	"aufgabendetails"      VARCHAR(255) NOT NULL,
	"zb_ziele_vereinbaren" VARCHAR(1),
	PRIMARY KEY ("aufgaben_id"),
	FOREIGN KEY ("projekt_id") REFERENCES "projekte" ("projekt_id")
);

BEGIN TRANSACTION;
INSERT INTO "dokumenttypen" VALUES ('APP', 'Initial Application');
INSERT INTO "dokumenttypen" VALUES ('REG', 'Regular');

INSERT INTO "organisationsarten" VALUES ('RES', 'Research');
INSERT INTO "organisationsarten" VALUES ('SPON', 'Sponsor');

INSERT INTO "forschungsergebnisse" VALUES ('Paper', 'Published Research Paper');
INSERT INTO "forschungsergebnisse" VALUES ('Patent', 'Research Patent');

INSERT INTO "personalrollen" VALUES ('leader', 'Project Leader');
INSERT INTO "personalrollen" VALUES ('researcher', 'Project Researcher');

INSERT INTO "organisationen" VALUES (1, 'RES', 'et');
INSERT INTO "organisationen" VALUES (2, 'RES', 'eius');
INSERT INTO "organisationen" VALUES (3, 'RES', 'impedit');
INSERT INTO "organisationen" VALUES (4, 'SPON', 'eos');
INSERT INTO "organisationen" VALUES (5, 'SPON', 'tenetur');
INSERT INTO "organisationen" VALUES (6, 'RES', 'dolorem');
INSERT INTO "organisationen" VALUES (7, 'RES', 'itaque');
INSERT INTO "organisationen" VALUES (8, 'SPON', 'aperiam');
INSERT INTO "organisationen" VALUES (9, 'RES', 'a');
INSERT INTO "organisationen" VALUES (10, 'SPON', 'officiis');
INSERT INTO "organisationen" VALUES (11, 'SPON', 'eveniet');
INSERT INTO "organisationen" VALUES (12, 'RES', 'itaque');
INSERT INTO "organisationen" VALUES (13, 'SPON', 'voluptas');
INSERT INTO "organisationen" VALUES (14, 'RES', 'quo');
INSERT INTO "organisationen" VALUES (15, 'SPON', 'consequuntur');

INSERT INTO "zuschüsse" VALUES (1, 10, 4094.542, '2016-11-20 00:18:51', '2004-10-24 09:09:39', 'et');
INSERT INTO "zuschüsse" VALUES (2, 3, 281.2446, '1985-10-09 20:08:49', '1985-06-08 00:22:07', 'occaecati');
INSERT INTO "zuschüsse" VALUES (3, 14, 4515947.7015, '1970-09-19 22:53:49', '1989-03-16 18:27:16', 'et');
INSERT INTO "zuschüsse" VALUES (4, 11, 330.6339, '1990-08-13 20:27:28', '2014-08-13 22:58:50', 'et');
INSERT INTO "zuschüsse" VALUES (5, 2, 608413.3291, '1979-10-29 07:44:22', '1996-08-16 20:45:05', 'corrupti');
INSERT INTO "zuschüsse" VALUES (6, 8, 42.8061, '2011-05-10 22:44:08', '1977-12-27 01:51:18', 'dolor');
INSERT INTO "zuschüsse" VALUES (7, 7, 76977808.306, '2015-12-14 13:02:11', '1981-03-09 17:12:27', 'explicabo');
INSERT INTO "zuschüsse" VALUES (8, 10, 38675408.6017, '2016-02-25 04:28:44', '1983-06-22 15:12:32', 'aliquam');
INSERT INTO "zuschüsse" VALUES (9, 8, 0, '2009-07-14 18:26:05', '1982-03-11 15:27:55', 'sapiente');
INSERT INTO "zuschüsse" VALUES (10, 14, 66.4203, '1986-08-26 20:49:27', '2007-09-26 19:19:26', 'veniam');
INSERT INTO "zuschüsse" VALUES (11, 5, 610.7004, '1986-10-31 17:11:29', '2001-05-22 21:02:43', 'voluptatum');
INSERT INTO "zuschüsse" VALUES (12, 12, 2001349.459, '2001-06-22 16:01:05', '2007-04-24 03:04:13', 'aut');
INSERT INTO "zuschüsse" VALUES (13, 7, 1.9848, '2004-11-10 02:26:01', '2011-05-29 11:21:59', 'qui');
INSERT INTO "zuschüsse" VALUES (14, 2, 24.7, '2004-12-05 19:43:13', '1983-12-17 12:29:58', 'aliquam');
INSERT INTO "zuschüsse" VALUES (15, 9, 25313.51, '1982-04-07 00:07:43', '1991-06-06 07:26:25', 'ea');

INSERT INTO "projekte" VALUES (1, 15, 'porro');
INSERT INTO "projekte" VALUES (2, 11, 'et');
INSERT INTO "projekte" VALUES (3, 7, 'sint');
INSERT INTO "projekte" VALUES (4, 4, 'doloremque');
INSERT INTO "projekte" VALUES (5, 11, 'vel');
INSERT INTO "projekte" VALUES (6, 10, 'deserunt');
INSERT INTO "projekte" VALUES (7, 3, 'deleniti');
INSERT INTO "projekte" VALUES (8, 1, 'ad');
INSERT INTO "projekte" VALUES (9, 4, 'sed');
INSERT INTO "projekte" VALUES (10, 4, 'consectetur');
INSERT INTO "projekte" VALUES (11, 13, 'impedit');
INSERT INTO "projekte" VALUES (12, 12, 'omnis');
INSERT INTO "projekte" VALUES (13, 3, 'non');
INSERT INTO "projekte" VALUES (14, 1, 'beatae');
INSERT INTO "projekte" VALUES (15, 5, 'dolorem');

INSERT INTO "forschungspersonal" VALUES (1, 1, 'quo');
INSERT INTO "forschungspersonal" VALUES (2, 4, 'est');
INSERT INTO "forschungspersonal" VALUES (3, 5, 'aspernatur');
INSERT INTO "forschungspersonal" VALUES (4, 3, 'dolor');
INSERT INTO "forschungspersonal" VALUES (5, 2, 'doloribus');
INSERT INTO "forschungspersonal" VALUES (6, 5, 'consequatur');
INSERT INTO "forschungspersonal" VALUES (7, 3, 'animi');
INSERT INTO "forschungspersonal" VALUES (8, 5, 'consequatur');
INSERT INTO "forschungspersonal" VALUES (9, 6, 'sint');
INSERT INTO "forschungspersonal" VALUES (10, 8, 'iure');
INSERT INTO "forschungspersonal" VALUES (11, 9, 'voluptatibus');
INSERT INTO "forschungspersonal" VALUES (12, 10, 'nulla');
INSERT INTO "forschungspersonal" VALUES (13, 2, 'ab');
INSERT INTO "forschungspersonal" VALUES (14, 3, 'accusamus');
INSERT INTO "forschungspersonal" VALUES (15, 2, 'dicta');

INSERT INTO "dokumente" VALUES (1, 'APP', 5, '1986-11-30 07:56:35', '1977-12-01 02:18:53', '');
INSERT INTO "dokumente" VALUES (2, 'APP', 13, '2004-01-23 11:57:08', '1979-12-08 10:38:07', '');
INSERT INTO "dokumente" VALUES (3, 'REG', 10, '1999-03-03 12:25:58', '1995-09-12 13:13:48', '');
INSERT INTO "dokumente" VALUES (4, 'APP', 13, '1999-05-29 00:02:46', '1991-09-25 10:38:24', '');
INSERT INTO "dokumente" VALUES (5, 'APP', 11, '2003-08-29 03:32:52', '1986-05-23 07:17:59', '');
INSERT INTO "dokumente" VALUES (6, 'REG', 5, '1979-07-04 08:54:23', '1976-10-04 22:13:27', '');
INSERT INTO "dokumente" VALUES (7, 'APP', 13, '1978-09-13 16:23:29', '1979-01-06 05:05:30', '');
INSERT INTO "dokumente" VALUES (8, 'APP', 15, '2001-06-18 06:35:49', '1986-05-18 01:54:56', '');
INSERT INTO "dokumente" VALUES (9, 'APP', 6, '2014-01-28 05:11:34', '1980-02-24 15:23:44', '');
INSERT INTO "dokumente" VALUES (10, 'REG', 7, '2002-07-26 15:50:28', '1987-10-29 15:35:50', '');
INSERT INTO "dokumente" VALUES (11, 'REG', 15, '1993-02-19 16:31:12', '1994-03-13 01:52:45', '');
INSERT INTO "dokumente" VALUES (12, 'REG', 13, '1997-03-09 03:42:19', '1977-01-27 07:14:11', '');
INSERT INTO "dokumente" VALUES (13, 'APP', 13, '1979-08-23 08:22:34', '1990-01-19 19:57:14', '');
INSERT INTO "dokumente" VALUES (14, 'APP', 15, '2000-06-06 01:03:46', '1971-08-28 11:20:56', '');
INSERT INTO "dokumente" VALUES (15, 'APP', 8, '1981-08-06 14:56:55', '1999-06-01 18:41:00', '');

INSERT INTO "projektergebnisse" VALUES (4, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (3, 'Patent', NULL);
INSERT INTO "projektergebnisse" VALUES (9, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (6, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (9, 'Patent', NULL);
INSERT INTO "projektergebnisse" VALUES (11, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (14, 'Patent', NULL);
INSERT INTO "projektergebnisse" VALUES (14, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (13, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (12, 'Patent', NULL);
INSERT INTO "projektergebnisse" VALUES (7, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (5, 'Patent', NULL);
INSERT INTO "projektergebnisse" VALUES (7, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (13, 'Paper', NULL);
INSERT INTO "projektergebnisse" VALUES (7, 'Paper', NULL);

INSERT INTO "projektmitarbeiter" VALUES (0.0, 2, 'leader', '1981-10-04 22:44:50', '1985-05-30 22:26:30', NULL);
INSERT INTO "projektmitarbeiter" VALUES (674810.0, 5, 'leader', '2003-04-19 15:06:20', '2010-12-08 11:55:36', NULL);
INSERT INTO "projektmitarbeiter" VALUES (779.0, 2, 'researcher', '1981-10-09 21:32:53', '2004-12-16 13:03:36', NULL);
INSERT INTO "projektmitarbeiter" VALUES (6572.0, 4, 'researcher', '1983-02-07 17:55:59', '2004-07-28 03:11:47', NULL);
INSERT INTO "projektmitarbeiter" VALUES (5353407.0, 15, 'leader', '2004-11-01 23:52:38', '1988-03-04 19:30:05', NULL);
INSERT INTO "projektmitarbeiter" VALUES (5137097.0, 7, 'researcher', '1991-01-11 16:57:50', '1993-06-09 12:44:28', NULL);
INSERT INTO "projektmitarbeiter" VALUES (29.0, 9, 'researcher', '2005-01-13 11:49:48', '1973-07-19 04:51:26', NULL);
INSERT INTO "projektmitarbeiter" VALUES (3.0, 8, 'researcher', '1970-03-25 06:18:11', '1985-12-05 12:00:58', NULL);
INSERT INTO "projektmitarbeiter" VALUES (3100031.0, 11, 'researcher', '1972-01-17 19:42:16', '2016-03-15 00:33:18', NULL);
INSERT INTO "projektmitarbeiter" VALUES (49698449.0, 1, 'leader', '1970-04-06 15:50:21', '1983-03-19 16:06:31', NULL);
INSERT INTO "projektmitarbeiter" VALUES (45.0, 11, 'researcher', '2000-08-28 11:49:17', '2007-02-02 17:26:02', NULL);
INSERT INTO "projektmitarbeiter" VALUES (37.0, 5, 'researcher', '1989-04-24 23:51:54', '2002-03-19 18:00:36', NULL);
INSERT INTO "projektmitarbeiter" VALUES (6065505.0, 3, 'leader', '1999-10-21 22:07:15', '2008-09-25 20:06:28', NULL);
INSERT INTO "projektmitarbeiter" VALUES (56.0, 1, 'leader', '1970-01-02 15:35:05', '1985-09-22 09:06:08', NULL);
INSERT INTO "projektmitarbeiter" VALUES (13739108.0, 2, 'researcher', '1973-12-12 11:46:28', '1971-07-19 22:49:05', NULL);

INSERT INTO "aufgaben" VALUES (1, 1, 'a', NULL);
INSERT INTO "aufgaben" VALUES (2, 2, 'b', NULL);
INSERT INTO "aufgaben" VALUES (3, 3, 'c', NULL);
INSERT INTO "aufgaben" VALUES (4, 4, 'q', NULL);
INSERT INTO "aufgaben" VALUES (5, 5, 'w', NULL);
INSERT INTO "aufgaben" VALUES (6, 6, 'e', NULL);
INSERT INTO "aufgaben" VALUES (7, 7, 'r', NULL);
INSERT INTO "aufgaben" VALUES (8, 8, 't', NULL);
INSERT INTO "aufgaben" VALUES (9, 9, 'y', NULL);
INSERT INTO "aufgaben" VALUES (10, 10, 'u', NULL);
INSERT INTO "aufgaben" VALUES (11, 11, 'i', NULL);
INSERT INTO "aufgaben" VALUES (12, 12, 'm', NULL);
INSERT INTO "aufgaben" VALUES (13, 13, 'n', NULL);
INSERT INTO "aufgaben" VALUES (14, 14, 'o', NULL);
INSERT INTO "aufgaben" VALUES (15, 15, 'p', NULL);

COMMIT;