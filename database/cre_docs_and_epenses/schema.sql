CREATE TABLE "referenzbelegarten"
(
	"dokumententyp_code"           CHAR(15) NOT NULL,
	"dokumenttypname"              VARCHAR(255) NOT NULL,
	"beschreibung_der_dokumentart" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokumententyp_code")
);

CREATE TABLE "referenzhaushaltscodes"
(
	"haushaltstyp_code"             CHAR(15) NOT NULL,
	"beschreibung_der_haushaltsart" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("haushaltstyp_code")
);

CREATE TABLE "projekte"
(
	"projekt_id"     INTEGER NOT NULL,
	"projektdetails" VARCHAR(255),
	PRIMARY KEY ("projekt_id")
);

CREATE TABLE "dokumente"
(
	"dokument_id"          INTEGER NOT NULL,
	"dokumententyp_code"   CHAR(15) NOT NULL,
	"projekt_id"           INTEGER NOT NULL,
	"dokument_datum"       DATETIME,
	"dokumentname"         VARCHAR(255),
	"dokumentbeschreibung" VARCHAR(255),
	"sonstige_angaben"     VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("dokumententyp_code") REFERENCES "referenzbelegarten" ("dokumententyp_code"),
	FOREIGN KEY ("projekt_id") REFERENCES "projekte" ("projekt_id")
);

CREATE TABLE "statements"
(
	"anweisung_id"      INTEGER NOT NULL,
	"anweisungsdetails" VARCHAR(255),
	PRIMARY KEY ("anweisung_id"),
	FOREIGN KEY ("anweisung_id") REFERENCES "dokumente" ("dokument_id")
);

CREATE TABLE "belege_mit_ausgaben"
(
	"dokument_id"       INTEGER NOT NULL,
	"haushaltstyp_code" CHAR(15) NOT NULL,
	"belegdetails"      VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("dokument_id") REFERENCES "dokumente" ("dokument_id"),
	FOREIGN KEY ("haushaltstyp_code") REFERENCES "referenzhaushaltscodes" ("haushaltstyp_code")
);

CREATE TABLE "konten"
(
	"konto_id"     INTEGER NOT NULL,
	"anweisung_id" INTEGER NOT NULL,
	"kontodaten"   VARCHAR(255),
	PRIMARY KEY ("konto_id"),
	FOREIGN KEY ("anweisung_id") REFERENCES "statements" ("anweisung_id")
);

BEGIN TRANSACTION;
INSERT INTO "referenzbelegarten" VALUES ('BK', 'Book', 'excellent');
INSERT INTO "referenzbelegarten" VALUES ('CV', 'CV', 'excellent');
INSERT INTO "referenzbelegarten" VALUES ('PT', 'Presentation', 'very good');
INSERT INTO "referenzbelegarten" VALUES ('PP', 'Paper', 'good');
INSERT INTO "referenzbelegarten" VALUES ('FM', 'Film', 'fun');

INSERT INTO "referenzhaushaltscodes" VALUES ('GV', 'Government');
INSERT INTO "referenzhaushaltscodes" VALUES ('ORG', 'Organisation');
INSERT INTO "referenzhaushaltscodes" VALUES ('SF', 'Self founded');

INSERT INTO "projekte" VALUES (30, 'Society Research project');
INSERT INTO "projekte" VALUES (35, 'Internet of Things project');
INSERT INTO "projekte" VALUES (105, 'Graph Database project');
INSERT INTO "projekte" VALUES (134, 'Human Resource project');
INSERT INTO "projekte" VALUES (195, 'Population Research project');

INSERT INTO "dokumente" VALUES (29, 'CV', 30, '2004-08-28 06:59:19', 'Review on UK files', NULL, NULL);
INSERT INTO "dokumente" VALUES (42, 'BK', 105, '2012-12-27 19:09:18', 'Review on Canadian files', NULL, NULL);
INSERT INTO "dokumente" VALUES (57, 'CV', 195, '1980-10-22 14:17:11', 'Review on French files', NULL, NULL);
INSERT INTO "dokumente" VALUES (121, 'BK', 105, '1981-11-29 10:23:01', 'Review on USA files', NULL, NULL);
INSERT INTO "dokumente" VALUES (181, 'PP', 105, '1970-06-17 14:03:21', 'Chapter on private files', NULL, NULL);
INSERT INTO "dokumente" VALUES (192, 'PP', 134, '2013-01-26 15:15:25', 'Book on USA files', NULL, NULL);
INSERT INTO "dokumente" VALUES (226, 'BK', 30, '1991-07-08 08:49:59', 'Review on UK files', NULL, NULL);
INSERT INTO "dokumente" VALUES (227, 'BK', 30, '1970-03-06 07:34:49', 'Deontae files', NULL, NULL);
INSERT INTO "dokumente" VALUES (240, 'BK', 105, '1971-06-09 19:03:41', 'Winona Book', NULL, NULL);
INSERT INTO "dokumente" VALUES (300, 'FM', 35, '2007-09-26 02:39:11', 'Trenton Presentation', NULL, NULL);
INSERT INTO "dokumente" VALUES (309, 'BK', 35, '1978-10-15 10:33:17', 'Noel CV', NULL, NULL);
INSERT INTO "dokumente" VALUES (318, 'PP', 134, '1970-01-30 10:53:35', 'King Book', NULL, NULL);
INSERT INTO "dokumente" VALUES (367, 'CV', 134, '1983-08-24 17:10:26', 'Jevon Paper', NULL, NULL);
INSERT INTO "dokumente" VALUES (371, 'PP', 105, '1976-05-06 12:56:12', 'Katheryn statement', NULL, NULL);
INSERT INTO "dokumente" VALUES (383, 'PP', 35, '2005-10-28 03:17:16', 'Review on UK files', NULL, NULL);

INSERT INTO "statements" VALUES (57, 'Open Project');
INSERT INTO "statements" VALUES (192, 'Private Project');

INSERT INTO "belege_mit_ausgaben" VALUES (57, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (192, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (226, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (227, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (240, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (300, 'GV', 'government');
INSERT INTO "belege_mit_ausgaben" VALUES (309, 'SF', 'safety');
INSERT INTO "belege_mit_ausgaben" VALUES (367, 'SF', 'safety');
INSERT INTO "belege_mit_ausgaben" VALUES (371, 'ORG', 'organization');
INSERT INTO "belege_mit_ausgaben" VALUES (383, 'ORG', 'organization');

INSERT INTO "konten" VALUES (7, 57, '495.063');
INSERT INTO "konten" VALUES (61, 57, '930.14');
INSERT INTO "konten" VALUES (98, 57, '6035.84');
INSERT INTO "konten" VALUES (136, 57, '199.52');
INSERT INTO "konten" VALUES (164, 192, '12223.93');
INSERT INTO "konten" VALUES (209, 57, '11130.23');
INSERT INTO "konten" VALUES (211, 192, '1230.454');
INSERT INTO "konten" VALUES (240, 192, '6352.31');
INSERT INTO "konten" VALUES (262, 57, '147.96');
INSERT INTO "konten" VALUES (280, 57, '187.14');
INSERT INTO "konten" VALUES (321, 192, '745.817');
INSERT INTO "konten" VALUES (346, 192, '127.9');
INSERT INTO "konten" VALUES (414, 57, '25.41');
INSERT INTO "konten" VALUES (427, 57, '1168.32');
INSERT INTO "konten" VALUES (451, 192, '658.26');

COMMIT;