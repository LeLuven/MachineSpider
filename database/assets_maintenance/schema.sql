CREATE TABLE "drittfirmen"
(
	"firma_id"                         INTEGER,
	"firmenart"                        VARCHAR(5) NOT NULL,
	"firmenname"                       VARCHAR(255),
	"firmenadresse"                    VARCHAR(255),
	"sonstige_angaben_zum_unternehmen" VARCHAR(255),
	PRIMARY KEY ("firma_id")
);

CREATE TABLE "teile"
(
	"teil_id"                   INTEGER,
	"teilname"                  VARCHAR(255),
	"fakturierbarer_yn"         VARCHAR(1),
	"anrechenbarer_betrag"      VARCHAR(20),
	"sonstige_angaben_zum_teil" VARCHAR(255),
	PRIMARY KEY ("teil_id")
);

CREATE TABLE "fähigkeiten"
(
	"fähigkeit_id"                INTEGER,
	"skill_code"                  VARCHAR(20),
	"beschreibung_der_fertigkeit" VARCHAR(255),
	PRIMARY KEY ("fähigkeit_id")
);

CREATE TABLE "personal"
(
	"personal_id"                   INTEGER,
	"name_des_mitarbeiters"         VARCHAR(255),
	"geschlecht"                    VARCHAR(1),
	"sonstige_angaben_zum_personal" VARCHAR(255),
	PRIMARY KEY ("personal_id")
);

CREATE TABLE "wartungsverträge"
(
	"wartungsvertrag_id"       INTEGER,
	"wartungsvertrag_firma_id" INTEGER NOT NULL,
	"vertragsstartdatum"       DATETIME,
	"vertragsenddatum"         DATETIME,
	"andere_vertragsdetails"   VARCHAR(255),
	PRIMARY KEY ("wartungsvertrag_id"),
	FOREIGN KEY ("wartungsvertrag_firma_id") REFERENCES "drittfirmen" ("firma_id")
);

CREATE TABLE "wartungstechniker"
(
	"ingenieur_id"     INTEGER,
	"firma_id"         INTEGER NOT NULL,
	"vorname"          VARCHAR(50),
	"nachname"         VARCHAR(50),
	"sonstige_angaben" VARCHAR(255),
	PRIMARY KEY ("ingenieur_id"),
	FOREIGN KEY ("firma_id") REFERENCES "drittfirmen" ("firma_id")
);

CREATE TABLE "bauteilfehler"
(
	"teil_fehler_id"       INTEGER,
	"teil_id"              INTEGER NOT NULL,
	"fehlerkurzname"       VARCHAR(20),
	"fehlerbeschreibung"   VARCHAR(255),
	"andere_fehlerdetails" VARCHAR(255),
	PRIMARY KEY ("teil_fehler_id"),
	FOREIGN KEY ("teil_id") REFERENCES "teile" ("teil_id")
);

CREATE TABLE "vermögenswerte"
(
	"asset_id"                            INTEGER,
	"wartungsvertrag_id"                  INTEGER NOT NULL,
	"lieferantenfirma_id"                 INTEGER NOT NULL,
	"anlage_details"                      VARCHAR(255),
	"anlagenmarke"                        VARCHAR(20),
	"anlagenmodell"                       VARCHAR(20),
	"datum_des_erwerbs_der_anlage"        DATETIME,
	"datum_des_anlagenabgangs"            DATETIME,
	"sonstige_angaben_zum_wirtschaftsgut" VARCHAR(255),
	PRIMARY KEY ("asset_id"),
	FOREIGN KEY ("wartungsvertrag_id") REFERENCES "wartungsverträge" ("wartungsvertrag_id"),
	FOREIGN KEY ("lieferantenfirma_id") REFERENCES "drittfirmen" ("firma_id")
);

CREATE TABLE "ingenieurkenntnisse"
(
	"ingenieur_id" INTEGER NOT NULL,
	"fähigkeit_id" INTEGER NOT NULL,
	FOREIGN KEY ("ingenieur_id") REFERENCES "wartungstechniker" ("ingenieur_id"),
	FOREIGN KEY ("fähigkeit_id") REFERENCES "fähigkeiten" ("fähigkeit_id")
);

CREATE TABLE "für_die_reparatur_erforderliche_fähigkeiten"
(
	"teil_fehler_id" INTEGER NOT NULL,
	"fähigkeit_id"   INTEGER NOT NULL,
	FOREIGN KEY ("teil_fehler_id") REFERENCES "bauteilfehler" ("teil_fehler_id"),
	FOREIGN KEY ("fähigkeit_id") REFERENCES "fähigkeiten" ("fähigkeit_id")
);

CREATE TABLE "anlageteile"
(
	"asset_id" INTEGER NOT NULL,
	"teil_id"  INTEGER NOT NULL,
	FOREIGN KEY ("asset_id") REFERENCES "vermögenswerte" ("asset_id"),
	FOREIGN KEY ("teil_id") REFERENCES "teile" ("teil_id")
);

CREATE TABLE "fehlerprotokoll"
(
	"fehlerprotokolleintrag_id"           INTEGER,
	"asset_id"                            INTEGER NOT NULL,
	"aufgezeichnet_durch_personal_id"     INTEGER NOT NULL,
	"störungsprotokolleintrag_datumszeit" DATETIME,
	"fehlerbeschreibung"                  VARCHAR(255),
	"andere_fehlerdetails"                VARCHAR(255),
	PRIMARY KEY ("fehlerprotokolleintrag_id"),
	FOREIGN KEY ("asset_id") REFERENCES "vermögenswerte" ("asset_id"),
	FOREIGN KEY ("aufgezeichnet_durch_personal_id") REFERENCES "personal" ("personal_id")
);

CREATE TABLE "ingenieurbesuche"
(
	"ingenieur_besuch_id"       INTEGER,
	"kontaktperson_id"          INTEGER,
	"ingenieur_id"              INTEGER NOT NULL,
	"fehlerprotokolleintrag_id" INTEGER NOT NULL,
	"fehlerstatus"              VARCHAR(10) NOT NULL,
	"besuchsstartdatum"         DATETIME,
	"besuchsendezeitpunkt"      DATETIME,
	"andere_besuchsdetails"     VARCHAR(255),
	PRIMARY KEY ("ingenieur_besuch_id"),
	FOREIGN KEY ("kontaktperson_id") REFERENCES "personal" ("personal_id"),
	FOREIGN KEY ("ingenieur_id") REFERENCES "wartungstechniker" ("ingenieur_id"),
	FOREIGN KEY ("fehlerprotokolleintrag_id") REFERENCES "fehlerprotokoll" ("fehlerprotokolleintrag_id")
);

CREATE TABLE "fehlerprotokollteile"
(
	"fehlerprotokolleintrag_id" INTEGER NOT NULL,
	"teil_fehler_id"            INTEGER NOT NULL,
	"fehlerstatus"              VARCHAR(10) NOT NULL,
	FOREIGN KEY ("fehlerprotokolleintrag_id") REFERENCES "fehlerprotokoll" ("fehlerprotokolleintrag_id"),
	FOREIGN KEY ("teil_fehler_id") REFERENCES "bauteilfehler" ("teil_fehler_id")
);

BEGIN TRANSACTION;
INSERT INTO "drittfirmen" VALUES (1, 'Maintenance Contractor', 'Langworth-Funk', '615 Jacobs Mews', 'Uganda');
INSERT INTO "drittfirmen" VALUES (2, 'Maintenance Contractor', 'McDermott Group', '873 Conrad Creek Apt. 286', 'China');
INSERT INTO "drittfirmen" VALUES (3, 'Maintenance Contractor', 'Schuppe-Carroll', '066 Bechtelar Ridge', 'United Arab Emirates');
INSERT INTO "drittfirmen" VALUES (4, 'Maintenance Contractor', 'Dooley-Langosh', '9576 Jacynthe Point Suite 747', 'Albania');
INSERT INTO "drittfirmen" VALUES (5, 'Supplier', 'Dooley and Sons', '84631 Rosenbaum Well Suite 727', 'Palestinian Territory');
INSERT INTO "drittfirmen" VALUES (6, 'Supplier', 'Grimes, Mosciski and Renner', '9405 Leffler Hollow Apt. 753', 'Kiribati');
INSERT INTO "drittfirmen" VALUES (7, 'Maintenance Contractor', 'Weimann-Swift', '016 Kaitlyn Fall Suite 236', 'Egypt');
INSERT INTO "drittfirmen" VALUES (8, 'Maintenance Contractor', 'Glover-Vandervort', '51515 Conn Corner Suite 696', 'Ethiopia');
INSERT INTO "drittfirmen" VALUES (9, 'Maintenance Contractor', 'Wisoky, Toy and Bashirian', '605 D''Amore Oval', 'Iran');
INSERT INTO "drittfirmen" VALUES (10, 'Maintenance Contractor', 'White Ltd', '680 Hammes Ways', 'Niue');
INSERT INTO "drittfirmen" VALUES (11, 'Maintenance Contractor', 'Kuvalis, Boehm and Hettinger', '99335 Cummings Square Apt. 723', 'Somalia');
INSERT INTO "drittfirmen" VALUES (12, 'Maintenance Contractor', 'Dicki, Erdman and Kris', '60743 Dion Harbors Suite 825', 'Western Sahara');
INSERT INTO "drittfirmen" VALUES (13, 'Supplier', 'Greenholt-D''Amore', '1755 Schaefer Road', 'Slovenia');
INSERT INTO "drittfirmen" VALUES (14, 'Supplier', 'Purdy Inc', '846 Casper Route', 'Saint Helena');
INSERT INTO "drittfirmen" VALUES (15, 'Maintenance Contractor', 'Rau, Ullrich and King', '5147 Raul Burg Apt. 623', 'Armenia');

INSERT INTO "teile" VALUES (1, 'top', '0', '4', NULL);
INSERT INTO "teile" VALUES (2, 'middle', '1', '9', NULL);
INSERT INTO "teile" VALUES (3, 'package', '1', '9', NULL);

INSERT INTO "fähigkeiten" VALUES (1, 'ELEC', 'Electrical');
INSERT INTO "fähigkeiten" VALUES (2, 'MECH', 'Mechanical');
INSERT INTO "fähigkeiten" VALUES (3, 'TV', 'TV, Video');

INSERT INTO "personal" VALUES (1, 'Audreanne', '1', 'Manager');
INSERT INTO "personal" VALUES (2, 'Berneice', '1', 'Manager');
INSERT INTO "personal" VALUES (3, 'Helena', '1', NULL);
INSERT INTO "personal" VALUES (4, 'Edmond', '0', NULL);
INSERT INTO "personal" VALUES (5, 'Leola', '1', 'Manager');
INSERT INTO "personal" VALUES (6, 'Rodger', '1', NULL);
INSERT INTO "personal" VALUES (7, 'Kadin', '1', NULL);
INSERT INTO "personal" VALUES (8, 'Christophe', '0', 'Woker');
INSERT INTO "personal" VALUES (9, 'Bernice', '0', NULL);
INSERT INTO "personal" VALUES (10, 'Jayda', '1', NULL);
INSERT INTO "personal" VALUES (11, 'Estel', '0', NULL);
INSERT INTO "personal" VALUES (12, 'Oren', '1', NULL);
INSERT INTO "personal" VALUES (13, 'Howell', '0', NULL);
INSERT INTO "personal" VALUES (14, 'Cyrus', '0', NULL);
INSERT INTO "personal" VALUES (15, 'Jeffry', '0', NULL);

INSERT INTO "wartungsverträge" VALUES (1, 15, '2017-09-13 11:51:29', '2018-03-16 21:21:50', NULL);
INSERT INTO "wartungsverträge" VALUES (2, 9, '2017-12-18 11:43:16', '2018-03-22 06:00:37', NULL);
INSERT INTO "wartungsverträge" VALUES (3, 11, '2017-05-06 02:32:19', '2018-03-20 14:02:54', NULL);
INSERT INTO "wartungsverträge" VALUES (4, 13, '2018-01-24 00:06:30', '2018-03-02 16:12:23', NULL);
INSERT INTO "wartungsverträge" VALUES (5, 4, '2017-10-28 05:13:21', '2018-02-27 17:36:59', NULL);
INSERT INTO "wartungsverträge" VALUES (6, 7, '2018-03-07 10:59:11', '2018-03-14 10:17:43', NULL);
INSERT INTO "wartungsverträge" VALUES (7, 13, '2017-09-01 05:34:02', '2018-02-27 05:03:22', NULL);
INSERT INTO "wartungsverträge" VALUES (8, 8, '2017-11-23 11:26:12', '2018-03-02 22:26:54', NULL);
INSERT INTO "wartungsverträge" VALUES (9, 6, '2017-04-21 00:03:07', '2018-03-07 19:30:50', NULL);
INSERT INTO "wartungsverträge" VALUES (10, 6, '2017-06-14 01:46:59', '2018-03-09 10:40:10', NULL);
INSERT INTO "wartungsverträge" VALUES (11, 15, '2017-05-04 13:39:18', '2018-03-14 20:21:10', NULL);
INSERT INTO "wartungsverträge" VALUES (12, 6, '2017-12-06 20:09:39', '2018-03-06 13:47:14', NULL);
INSERT INTO "wartungsverträge" VALUES (13, 14, '2017-07-23 05:07:37', '2018-03-05 21:24:36', NULL);
INSERT INTO "wartungsverträge" VALUES (14, 10, '2017-09-19 17:57:17', '2018-03-15 06:45:00', NULL);
INSERT INTO "wartungsverträge" VALUES (15, 6, '2017-05-14 11:57:50', '2018-03-23 17:29:21', NULL);

INSERT INTO "wartungstechniker" VALUES (1, 14, 'Etha', 'Reinger', 'Skilled');
INSERT INTO "wartungstechniker" VALUES (2, 2, 'Clemens', 'Orn', NULL);
INSERT INTO "wartungstechniker" VALUES (3, 6, 'Samanta', 'Hauck', NULL);
INSERT INTO "wartungstechniker" VALUES (4, 3, 'Lorine', 'Morar', NULL);
INSERT INTO "wartungstechniker" VALUES (5, 15, 'Manley', 'Grady', NULL);
INSERT INTO "wartungstechniker" VALUES (6, 1, 'Courtney', 'Adams', NULL);
INSERT INTO "wartungstechniker" VALUES (7, 11, 'Josie', 'Harvey', 'Skilled');
INSERT INTO "wartungstechniker" VALUES (8, 9, 'Nellie', 'Hirthe', NULL);
INSERT INTO "wartungstechniker" VALUES (9, 4, 'Brian', 'Stamm', NULL);
INSERT INTO "wartungstechniker" VALUES (10, 4, 'Naomi', 'Price', NULL);
INSERT INTO "wartungstechniker" VALUES (11, 7, 'Cullen', 'Kunde', NULL);
INSERT INTO "wartungstechniker" VALUES (12, 10, 'Alexys', 'Simonis', NULL);
INSERT INTO "wartungstechniker" VALUES (13, 2, 'Weston', 'Hahn', NULL);
INSERT INTO "wartungstechniker" VALUES (14, 11, 'Jules', 'Goldner', NULL);
INSERT INTO "wartungstechniker" VALUES (15, 3, 'Archibald', 'Streich', NULL);

INSERT INTO "bauteilfehler" VALUES (1, 1, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (2, 1, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (3, 3, 'TW', 'Top Parts Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (4, 1, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (5, 1, 'MW', 'Medium Scale Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (6, 2, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (7, 1, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (8, 3, 'TW', 'Top Parts Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (9, 3, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (10, 1, 'PW', 'Package Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (11, 3, 'MW', 'Medium Scale Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (12, 2, 'MW', 'Medium Scale Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (13, 3, 'TW', 'Top Parts Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (14, 1, 'TW', 'Top Parts Wrong', NULL);
INSERT INTO "bauteilfehler" VALUES (15, 3, 'MW', 'Medium Scale Wrong', NULL);

INSERT INTO "vermögenswerte" VALUES (1, 2, 2, 'dell laptop1', 'PT', '58 ub', '2017-12-25 00:31:27', '2018-03-14 10:50:00', NULL);
INSERT INTO "vermögenswerte" VALUES (2, 14, 1, 'dell laptop2', 'IN', '35 xt', '2018-01-27 00:59:46', '2018-03-20 04:24:09', NULL);
INSERT INTO "vermögenswerte" VALUES (3, 7, 2, 'dell laptop3', 'IT', '63 ok', '2017-09-07 08:13:15', '2018-03-08 20:50:40', 'Bad condition');
INSERT INTO "vermögenswerte" VALUES (4, 11, 5, 'dell laptop4', 'RU', '69 uv', '2017-06-12 17:37:19', '2018-03-16 05:46:55', NULL);
INSERT INTO "vermögenswerte" VALUES (5, 8, 5, 'dell laptop5', 'DE', '90 oq', '2017-07-21 16:03:19', '2018-02-27 18:59:07', NULL);
INSERT INTO "vermögenswerte" VALUES (6, 8, 6, 'monitor1', 'CN', '91 ub', '2017-04-22 12:33:39', '2018-03-10 11:11:43', NULL);
INSERT INTO "vermögenswerte" VALUES (7, 6, 6, 'monitor2', 'CN', '27 du', '2017-07-18 01:22:58', '2018-03-20 22:45:00', NULL);
INSERT INTO "vermögenswerte" VALUES (8, 15, 7, 'monitor3', 'GB', '94 kg', '2017-10-24 04:29:17', '2018-02-28 18:14:13', 'Bad condition');
INSERT INTO "vermögenswerte" VALUES (9, 12, 13, 'machine1', 'RU', '07 yt', '2017-04-16 12:19:25', '2018-03-08 18:42:41', NULL);
INSERT INTO "vermögenswerte" VALUES (10, 2, 2, 'machine2', 'FR', '20 tl', '2017-09-19 16:15:45', '2018-03-06 20:36:14', NULL);
INSERT INTO "vermögenswerte" VALUES (11, 7, 12, 'machine3', 'FR', '11 wi', '2017-11-25 05:04:20', '2018-03-17 00:51:14', NULL);
INSERT INTO "vermögenswerte" VALUES (12, 13, 14, 'machine4', 'RU', '95 vn', '2017-09-26 14:05:46', '2018-02-27 23:12:03', 'Bad condition');
INSERT INTO "vermögenswerte" VALUES (13, 11, 8, 'system1', 'DE', '08 yy', '2017-12-20 14:05:17', '2018-03-07 20:35:19', 'Bad condition');
INSERT INTO "vermögenswerte" VALUES (14, 10, 6, 'system2', 'IN', '66 xm', '2017-10-19 02:54:52', '2018-03-22 23:48:15', NULL);
INSERT INTO "vermögenswerte" VALUES (15, 6, 11, 'system3', 'IE', '24 ak', '2017-12-18 19:21:11', '2018-02-27 02:37:16', NULL);

INSERT INTO "ingenieurkenntnisse" VALUES (10, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (10, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (15, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (6, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (13, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (6, 3);
INSERT INTO "ingenieurkenntnisse" VALUES (13, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (7, 3);
INSERT INTO "ingenieurkenntnisse" VALUES (5, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (8, 3);
INSERT INTO "ingenieurkenntnisse" VALUES (15, 3);
INSERT INTO "ingenieurkenntnisse" VALUES (5, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (9, 3);
INSERT INTO "ingenieurkenntnisse" VALUES (3, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (11, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (12, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (2, 2);
INSERT INTO "ingenieurkenntnisse" VALUES (10, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (8, 1);
INSERT INTO "ingenieurkenntnisse" VALUES (4, 1);

INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (3, 2);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (12, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (6, 1);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (15, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (1, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (1, 1);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (5, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (13, 2);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (14, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (10, 2);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (2, 1);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (7, 2);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (1, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (15, 3);
INSERT INTO "für_die_reparatur_erforderliche_fähigkeiten" VALUES (15, 2);

INSERT INTO "anlageteile" VALUES (5, 3);
INSERT INTO "anlageteile" VALUES (3, 3);
INSERT INTO "anlageteile" VALUES (10, 1);
INSERT INTO "anlageteile" VALUES (1, 2);
INSERT INTO "anlageteile" VALUES (3, 1);
INSERT INTO "anlageteile" VALUES (1, 3);
INSERT INTO "anlageteile" VALUES (6, 2);
INSERT INTO "anlageteile" VALUES (2, 3);
INSERT INTO "anlageteile" VALUES (3, 2);
INSERT INTO "anlageteile" VALUES (2, 2);
INSERT INTO "anlageteile" VALUES (3, 3);
INSERT INTO "anlageteile" VALUES (15, 3);
INSERT INTO "anlageteile" VALUES (4, 1);
INSERT INTO "anlageteile" VALUES (14, 1);
INSERT INTO "anlageteile" VALUES (15, 2);

INSERT INTO "fehlerprotokoll" VALUES (1, 3, 14, '2018-03-21 04:25:00', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (2, 7, 4, '2018-03-13 09:43:05', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (3, 6, 9, '2018-02-24 09:28:20', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (4, 5, 13, '2018-02-28 02:07:36', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (5, 9, 11, '2018-03-02 03:14:46', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (6, 8, 8, '2018-02-28 20:15:25', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (7, 5, 14, '2018-03-05 09:44:08', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (8, 12, 10, '2018-03-19 04:24:18', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (9, 3, 5, '2018-03-06 15:52:54', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (10, 2, 9, '2018-03-03 10:41:52', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (11, 15, 12, '2018-03-21 15:02:17', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (12, 8, 8, '2018-03-10 07:08:34', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (13, 3, 13, '2018-03-11 14:00:39', 'system error', NULL);
INSERT INTO "fehlerprotokoll" VALUES (14, 3, 11, '2018-02-27 11:34:20', 'failed parts', NULL);
INSERT INTO "fehlerprotokoll" VALUES (15, 12, 13, '2018-03-01 08:52:58', 'system error', NULL);

INSERT INTO "ingenieurbesuche" VALUES (1, 8, 8, 13, 'Waiting', '1978-10-12 23:14:40', '1988-01-07 06:41:51', NULL);
INSERT INTO "ingenieurbesuche" VALUES (2, 7, 15, 13, 'Return', '1980-05-02 23:31:18', '1990-08-30 22:44:16', NULL);
INSERT INTO "ingenieurbesuche" VALUES (3, 7, 15, 4, 'Waiting', '2010-02-23 18:16:23', '1982-05-13 02:08:41', NULL);
INSERT INTO "ingenieurbesuche" VALUES (4, 12, 12, 13, 'Fixed', '1996-11-07 05:31:35', '1973-09-12 07:06:54', NULL);
INSERT INTO "ingenieurbesuche" VALUES (5, 2, 4, 12, 'Fixed', '1994-07-27 22:35:48', '2008-03-24 22:18:47', NULL);
INSERT INTO "ingenieurbesuche" VALUES (6, 4, 15, 11, 'Fixed', '1984-07-14 22:47:51', '2010-07-05 18:36:22', NULL);
INSERT INTO "ingenieurbesuche" VALUES (7, 7, 15, 14, 'Reported', '1996-07-06 23:59:49', '2012-11-27 06:26:01', NULL);
INSERT INTO "ingenieurbesuche" VALUES (8, 6, 15, 2, 'Waiting', '1985-08-26 01:02:49', '1971-03-29 23:46:30', NULL);
INSERT INTO "ingenieurbesuche" VALUES (9, 7, 15, 12, 'Waiting', '1991-05-02 01:39:59', '1970-08-01 15:35:51', NULL);
INSERT INTO "ingenieurbesuche" VALUES (10, 14, 10, 2, 'Fixed', '1996-07-12 22:38:46', '1970-03-25 14:44:29', NULL);
INSERT INTO "ingenieurbesuche" VALUES (11, 9, 6, 3, 'Fixed', '1975-04-06 11:09:23', '2000-01-27 09:33:10', NULL);
INSERT INTO "ingenieurbesuche" VALUES (12, 2, 1, 13, 'Return', '2006-03-31 20:03:10', '2013-09-29 20:50:24', NULL);
INSERT INTO "ingenieurbesuche" VALUES (13, 4, 10, 8, 'Fixed', '2015-07-05 21:37:55', '1988-10-20 12:02:00', NULL);
INSERT INTO "ingenieurbesuche" VALUES (14, 9, 4, 13, 'Return', '1997-06-23 17:45:21', '1980-12-19 08:30:46', NULL);
INSERT INTO "ingenieurbesuche" VALUES (15, 4, 11, 10, 'Reported', '1970-07-19 19:21:32', '2007-11-12 04:24:01', NULL);

INSERT INTO "fehlerprotokollteile" VALUES (12, 3, 'Reported');
INSERT INTO "fehlerprotokollteile" VALUES (7, 4, 'Reported');
INSERT INTO "fehlerprotokollteile" VALUES (1, 9, 'Return');
INSERT INTO "fehlerprotokollteile" VALUES (1, 14, 'Fixed');
INSERT INTO "fehlerprotokollteile" VALUES (6, 4, 'Waiting');
INSERT INTO "fehlerprotokollteile" VALUES (14, 8, 'Waiting');
INSERT INTO "fehlerprotokollteile" VALUES (1, 10, 'Fixed');
INSERT INTO "fehlerprotokollteile" VALUES (3, 8, 'Return');
INSERT INTO "fehlerprotokollteile" VALUES (11, 2, 'Reported');
INSERT INTO "fehlerprotokollteile" VALUES (3, 11, 'Fixed');
INSERT INTO "fehlerprotokollteile" VALUES (11, 8, 'Reported');
INSERT INTO "fehlerprotokollteile" VALUES (4, 14, 'Waiting');
INSERT INTO "fehlerprotokollteile" VALUES (13, 15, 'Fixed');
INSERT INTO "fehlerprotokollteile" VALUES (13, 1, 'Fixed');
INSERT INTO "fehlerprotokollteile" VALUES (4, 6, 'Reported');

COMMIT;