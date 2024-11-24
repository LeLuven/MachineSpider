CREATE TABLE "referenzbelegarten"
(
	"dokumentenart_code"         CHAR(15) NOT NULL,
	"dokumententyp_beschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokumentenart_code")
);

CREATE TABLE "roles"
(
	"rollencode"         CHAR(15) NOT NULL,
	"rollenbeschreibung" VARCHAR(255),
	PRIMARY KEY ("rollencode")
);

CREATE TABLE "adressen"
(
	"adresse_id"  INTEGER NOT NULL,
	"adressdaten" VARCHAR(255),
	PRIMARY KEY ("adresse_id")
);

CREATE TABLE "referenzbelegstatus"
(
	"dokumentenstatus_code"           CHAR(15) NOT NULL,
	"beschreibung_des_dokumentstatus" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokumentenstatus_code")
);

CREATE TABLE "referenz_versandbeauftragte"
(
	"spediteur_code"        CHAR(15) NOT NULL,
	"name_des_spediteurs"   VARCHAR(255) NOT NULL,
	"reederei_beschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("spediteur_code")
);

CREATE TABLE "mitarbeiter"
(
	"mitarbeiter_id"   INTEGER NOT NULL,
	"rollencode"       CHAR(15) NOT NULL,
	"mitarbeitername"  VARCHAR(255),
	"sonstige_angaben" VARCHAR(255),
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("rollencode") REFERENCES "roles" ("rollencode")
);

CREATE TABLE "dokumente"
(
	"dokument_id"           INTEGER NOT NULL,
	"dokumentenstatus_code" CHAR(15) NOT NULL,
	"dokumentenart_code"    CHAR(15) NOT NULL,
	"spediteur_code"        CHAR(15),
	"eingangsdatum"         DATETIME,
	"eingangsnummer"        VARCHAR(255),
	"sonstige_angaben"      VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("dokumentenstatus_code") REFERENCES "referenzbelegstatus" ("dokumentenstatus_code"),
	FOREIGN KEY ("dokumentenart_code") REFERENCES "referenzbelegarten" ("dokumentenart_code"),
	FOREIGN KEY ("spediteur_code") REFERENCES "referenz_versandbeauftragte" ("spediteur_code")
);

CREATE TABLE "belegentwürfe"
(
	"dokument_id"     INTEGER NOT NULL,
	"entwurfsnummer"  INTEGER NOT NULL,
	"entwurfsdetails" VARCHAR(255),
	PRIMARY KEY ("dokument_id", "entwurfsnummer"),
	FOREIGN KEY ("dokument_id") REFERENCES "dokumente" ("dokument_id")
);

CREATE TABLE "gedruckte_dokumente"
(
	"dokument_id"        INTEGER NOT NULL,
	"absenderadresse_id" INTEGER NOT NULL,
	"absendedatum"       DATETIME,
	PRIMARY KEY ("dokument_id", "absenderadresse_id"),
	FOREIGN KEY ("dokument_id") REFERENCES "dokumente" ("dokument_id"),
	FOREIGN KEY ("absenderadresse_id") REFERENCES "adressen" ("adresse_id")
);

CREATE TABLE "entwürfe_von_kopien"
(
	"dokument_id"    INTEGER NOT NULL,
	"entwurfsnummer" INTEGER NOT NULL,
	"exemplarnummer" INTEGER NOT NULL,
	PRIMARY KEY ("dokument_id", "entwurfsnummer", "exemplarnummer"),
	FOREIGN KEY ("dokument_id", "entwurfsnummer") REFERENCES "belegentwürfe" ("dokument_id", "entwurfsnummer")
);

CREATE TABLE "umlaufgeschichte"
(
	"dokument_id"    INTEGER NOT NULL,
	"entwurfsnummer" INTEGER NOT NULL,
	"exemplarnummer" INTEGER NOT NULL,
	"mitarbeiter_id" INTEGER NOT NULL,
	PRIMARY KEY ("dokument_id", "entwurfsnummer", "exemplarnummer", "mitarbeiter_id"),
	FOREIGN KEY ("dokument_id", "entwurfsnummer", "exemplarnummer") REFERENCES "entwürfe_von_kopien" ("dokument_id", "entwurfsnummer", "exemplarnummer"),
	FOREIGN KEY ("mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id")
);

BEGIN TRANSACTION;
INSERT INTO "referenzbelegarten" VALUES ('CD', 'b');
INSERT INTO "referenzbelegarten" VALUES ('Paper', 'u');
INSERT INTO "referenzbelegarten" VALUES ('Hard Drive', 'f');

INSERT INTO "roles" VALUES ('ED', 'Editor');
INSERT INTO "roles" VALUES ('PT', 'Photo');
INSERT INTO "roles" VALUES ('MG', 'Manager');
INSERT INTO "roles" VALUES ('PR', 'Proof Manager');

INSERT INTO "adressen" VALUES (0, 'IT');
INSERT INTO "adressen" VALUES (1, 'MX');
INSERT INTO "adressen" VALUES (2, 'DE');
INSERT INTO "adressen" VALUES (3, 'ES');
INSERT INTO "adressen" VALUES (4, 'ES');
INSERT INTO "adressen" VALUES (5, 'IE');
INSERT INTO "adressen" VALUES (6, 'US');
INSERT INTO "adressen" VALUES (7, 'PT');
INSERT INTO "adressen" VALUES (8, 'IE');
INSERT INTO "adressen" VALUES (9, 'MX');

INSERT INTO "referenzbelegstatus" VALUES ('working', 'currently working on');
INSERT INTO "referenzbelegstatus" VALUES ('done', 'mailed');
INSERT INTO "referenzbelegstatus" VALUES ('overdue', 'mailed late');

INSERT INTO "referenz_versandbeauftragte" VALUES ('UP', 'UPS', 'g');
INSERT INTO "referenz_versandbeauftragte" VALUES ('US', 'USPS', 'q');
INSERT INTO "referenz_versandbeauftragte" VALUES ('AL', 'Airline', 'w');
INSERT INTO "referenz_versandbeauftragte" VALUES ('FE', 'Fedex', 'k');
INSERT INTO "referenz_versandbeauftragte" VALUES ('SH', 'Ship', 't');

INSERT INTO "mitarbeiter" VALUES (1, 'ED', 'Koby', 'h');
INSERT INTO "mitarbeiter" VALUES (2, 'ED', 'Kenyon', 'f');
INSERT INTO "mitarbeiter" VALUES (3, 'PR', 'Haley', 'b');
INSERT INTO "mitarbeiter" VALUES (5, 'PT', 'Clemens', 'b');
INSERT INTO "mitarbeiter" VALUES (7, 'PT', 'Jordyn', 'v');
INSERT INTO "mitarbeiter" VALUES (8, 'MG', 'Erling', 'u');

INSERT INTO "dokumente" VALUES (1, 'working', 'CD', 'UP', '2008-04-21 20:42:25', '19', 'z');
INSERT INTO "dokumente" VALUES (2, 'done', 'Paper', 'US', '1974-05-08 00:00:46', '34', 'h');
INSERT INTO "dokumente" VALUES (3, 'done', 'Paper', 'UP', '2014-12-25 17:22:44', '93', 'h');
INSERT INTO "dokumente" VALUES (4, 'done', 'Paper', 'US', '1973-11-05 21:48:53', '80', 'q');
INSERT INTO "dokumente" VALUES (7, 'working', 'CD', 'SH', '1982-09-27 14:52:15', '61', 'w');
INSERT INTO "dokumente" VALUES (10, 'overdue', 'Paper', 'UP', '1976-09-15 19:24:17', '8', 'm');
INSERT INTO "dokumente" VALUES (12, 'overdue', 'Hard Drive', 'US', '1996-05-31 06:51:58', '69', 'n');
INSERT INTO "dokumente" VALUES (13, 'working', 'CD', 'UP', '2015-04-03 09:36:19', '79', 'y');
INSERT INTO "dokumente" VALUES (14, 'working', 'CD', 'FE', '2017-07-02 17:39:09', '117', 'u');
INSERT INTO "dokumente" VALUES (15, 'overdue', 'CD', 'UP', '1986-12-14 14:18:59', '37', 'r');
INSERT INTO "dokumente" VALUES (17, 'done', 'Paper', 'FE', '1983-09-26 09:32:56', '55', 'p');
INSERT INTO "dokumente" VALUES (20, 'working', 'Paper', 'UP', '1996-07-27 03:30:40', '189', 'x');
INSERT INTO "dokumente" VALUES (23, 'working', 'Hard Drive', 'FE', '1999-04-17 14:19:32', '124', 'b');
INSERT INTO "dokumente" VALUES (24, 'working', 'Hard Drive', 'FE', '2005-09-30 00:10:02', '114', 'j');
INSERT INTO "dokumente" VALUES (25, 'overdue', 'Hard Drive', 'AL', '1985-11-05 17:59:34', '83', 'u');

INSERT INTO "belegentwürfe" VALUES (1, 0, 'e');
INSERT INTO "belegentwürfe" VALUES (1, 2, 'k');
INSERT INTO "belegentwürfe" VALUES (2, 1, 'v');
INSERT INTO "belegentwürfe" VALUES (2, 8, 'v');
INSERT INTO "belegentwürfe" VALUES (4, 9, 'r');
INSERT INTO "belegentwürfe" VALUES (7, 10, 'm');
INSERT INTO "belegentwürfe" VALUES (10, 20, 'k');
INSERT INTO "belegentwürfe" VALUES (12, 11, 'b');
INSERT INTO "belegentwürfe" VALUES (12, 12, 'r');
INSERT INTO "belegentwürfe" VALUES (13, 4, 'w');
INSERT INTO "belegentwürfe" VALUES (13, 16, 'p');
INSERT INTO "belegentwürfe" VALUES (14, 14, 'x');
INSERT INTO "belegentwürfe" VALUES (17, 19, 'a');
INSERT INTO "belegentwürfe" VALUES (20, 17, 'l');
INSERT INTO "belegentwürfe" VALUES (23, 9, 'r');

INSERT INTO "gedruckte_dokumente" VALUES (2, 8, '1977-04-01 17:03:50');
INSERT INTO "gedruckte_dokumente" VALUES (4, 3, '1992-11-07 15:03:41');
INSERT INTO "gedruckte_dokumente" VALUES (4, 9, '1973-02-21 10:17:01');
INSERT INTO "gedruckte_dokumente" VALUES (7, 5, '1979-09-21 10:30:52');
INSERT INTO "gedruckte_dokumente" VALUES (10, 3, '1993-05-24 22:13:48');
INSERT INTO "gedruckte_dokumente" VALUES (12, 0, '1999-05-22 23:21:07');
INSERT INTO "gedruckte_dokumente" VALUES (12, 7, '2007-01-01 22:32:11');
INSERT INTO "gedruckte_dokumente" VALUES (12, 8, '2007-03-20 05:22:01');
INSERT INTO "gedruckte_dokumente" VALUES (13, 4, '1991-05-27 14:17:37');
INSERT INTO "gedruckte_dokumente" VALUES (14, 5, '1986-05-16 06:25:33');
INSERT INTO "gedruckte_dokumente" VALUES (20, 2, '2010-11-04 04:00:16');
INSERT INTO "gedruckte_dokumente" VALUES (20, 7, '1982-01-14 05:50:54');
INSERT INTO "gedruckte_dokumente" VALUES (23, 8, '1971-11-03 12:32:14');
INSERT INTO "gedruckte_dokumente" VALUES (24, 0, '2013-01-27 03:29:31');

INSERT INTO "entwürfe_von_kopien" VALUES (2, 8, 5);
INSERT INTO "entwürfe_von_kopien" VALUES (4, 9, 6);
INSERT INTO "entwürfe_von_kopien" VALUES (23, 9, 15);
INSERT INTO "entwürfe_von_kopien" VALUES (10, 20, 10);
INSERT INTO "entwürfe_von_kopien" VALUES (2, 1, 4);
INSERT INTO "entwürfe_von_kopien" VALUES (1, 2, 5);
INSERT INTO "entwürfe_von_kopien" VALUES (20, 17, 15);
INSERT INTO "entwürfe_von_kopien" VALUES (12, 12, 10);

INSERT INTO "umlaufgeschichte" VALUES (20, 17, 15, 8);
INSERT INTO "umlaufgeschichte" VALUES (1, 2, 5, 1);
INSERT INTO "umlaufgeschichte" VALUES (2, 1, 4, 2);
INSERT INTO "umlaufgeschichte" VALUES (10, 20, 10, 2);

COMMIT;