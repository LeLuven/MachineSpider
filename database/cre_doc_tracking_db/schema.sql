CREATE TABLE "referenzbelegarten"
(
	"dokumentenart_code"           CHAR(15) NOT NULL,
	"dokumenttypname"              VARCHAR(255) NOT NULL,
	"beschreibung_der_dokumentart" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("dokumentenart_code")
);

CREATE TABLE "referenzkalender"
(
	"kalenderdatum" DATETIME NOT NULL,
	"tageszahl"     INTEGER,
	PRIMARY KEY ("kalenderdatum")
);

CREATE TABLE "referenzorte"
(
	"ort_code"         CHAR(15) NOT NULL,
	"ortsname"         VARCHAR(255) NOT NULL,
	"ortsbeschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("ort_code")
);

CREATE TABLE "rollen"
(
	"rollencode"         CHAR(15) NOT NULL,
	"rollenname"         VARCHAR(255),
	"rollenbeschreibung" VARCHAR(255),
	PRIMARY KEY ("rollencode")
);

CREATE TABLE "alle_dokumente"
(
	"dokument_id"          INTEGER NOT NULL,
	"datum_gespeichert"    DATETIME,
	"dokumentenart_code"   CHAR(15) NOT NULL,
	"dokumentenname"       CHAR(255),
	"dokumentbeschreibung" CHAR(255),
	"sonstige_angaben"     VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("datum_gespeichert") REFERENCES "referenzkalender" ("kalenderdatum"),
	FOREIGN KEY ("dokumentenart_code") REFERENCES "referenzbelegarten" ("dokumentenart_code")
);

CREATE TABLE "mitarbeiter"
(
	"mitarbeiter_id"   INTEGER NOT NULL,
	"rollencode"       CHAR(15) NOT NULL,
	"mitarbeitername"  VARCHAR(255),
	"geschlecht_mfu"   CHAR(1) NOT NULL,
	"geburtsdatum"     DATETIME NOT NULL,
	"sonstige_angaben" VARCHAR(255),
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("rollencode") REFERENCES "rollen" ("rollencode")
);

CREATE TABLE "belegstellen"
(
	"dokument_id"      INTEGER NOT NULL,
	"ort_code"         CHAR(15) NOT NULL,
	"datum_im_ort_von" DATETIME NOT NULL,
	"datum_im_ort_bis" DATETIME,
	PRIMARY KEY ("dokument_id", "ort_code", "datum_im_ort_von"),
	FOREIGN KEY ("dokument_id") REFERENCES "alle_dokumente" ("dokument_id"),
	FOREIGN KEY ("ort_code") REFERENCES "referenzorte" ("ort_code"),
	FOREIGN KEY ("datum_im_ort_von") REFERENCES "referenzkalender" ("kalenderdatum"),
	FOREIGN KEY ("datum_im_ort_bis") REFERENCES "referenzkalender" ("kalenderdatum")
);

CREATE TABLE "zu_vernichtende_dokumente"
(
	"dokument_id"                                INTEGER NOT NULL,
	"vernichtung_genehmigt_durch_mitarbeiter_id" INTEGER,
	"vernichtet_durch_mitarbeiter_id"            INTEGER,
	"geplantes_vernichtungsdatum"                DATETIME,
	"datum_der_tatsächlichen_vernichtung"        DATETIME,
	"sonstige_angaben"                           VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("dokument_id") REFERENCES "alle_dokumente" ("dokument_id"),
	FOREIGN KEY ("vernichtung_genehmigt_durch_mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id"),
	FOREIGN KEY ("vernichtet_durch_mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id"),
	FOREIGN KEY ("geplantes_vernichtungsdatum") REFERENCES "referenzkalender" ("kalenderdatum"),
	FOREIGN KEY ("datum_der_tatsächlichen_vernichtung") REFERENCES "referenzkalender" ("kalenderdatum")
);

BEGIN TRANSACTION;
INSERT INTO "referenzbelegarten" VALUES ('CV', 'CV', '');
INSERT INTO "referenzbelegarten" VALUES ('BK', 'Book', '');
INSERT INTO "referenzbelegarten" VALUES ('PR', 'Paper', '');
INSERT INTO "referenzbelegarten" VALUES ('RV', 'Review', '');

INSERT INTO "referenzkalender" VALUES ('1972-03-31 09:47:22', 5);
INSERT INTO "referenzkalender" VALUES ('1976-06-15 03:40:06', 7);
INSERT INTO "referenzkalender" VALUES ('1985-05-13 12:19:43', 7);
INSERT INTO "referenzkalender" VALUES ('1986-10-14 17:53:39', 1);
INSERT INTO "referenzkalender" VALUES ('1987-11-05 06:11:22', 3);
INSERT INTO "referenzkalender" VALUES ('1988-02-01 14:41:52', 8);
INSERT INTO "referenzkalender" VALUES ('1994-11-15 03:49:54', 9);
INSERT INTO "referenzkalender" VALUES ('1995-01-01 03:52:11', 1);
INSERT INTO "referenzkalender" VALUES ('1997-03-10 15:24:00', 7);
INSERT INTO "referenzkalender" VALUES ('2007-05-28 16:28:48', 2);
INSERT INTO "referenzkalender" VALUES ('2008-06-08 12:45:38', 3);
INSERT INTO "referenzkalender" VALUES ('2009-08-18 03:29:08', 8);
INSERT INTO "referenzkalender" VALUES ('2010-11-26 19:22:50', 7);
INSERT INTO "referenzkalender" VALUES ('2012-07-03 09:48:46', 7);
INSERT INTO "referenzkalender" VALUES ('2017-01-06 23:17:22', 8);

INSERT INTO "referenzorte" VALUES ('b', 'Brazil', '');
INSERT INTO "referenzorte" VALUES ('c', 'Canada', '');
INSERT INTO "referenzorte" VALUES ('e', 'Edinburgh', '');
INSERT INTO "referenzorte" VALUES ('n', 'Nanjing', '');
INSERT INTO "referenzorte" VALUES ('x', 'Xiamen', '');

INSERT INTO "rollen" VALUES ('MG', 'Manager', 'Vero harum corrupti odit ipsa vero et odio. Iste et recusandae temporibus maxime. Magni aspernatur fugit quis explicabo totam esse corrupti.');
INSERT INTO "rollen" VALUES ('ED', 'Editor', 'Itaque dolor ut nemo rerum vitae provident. Vel laborum ipsum velit sint. Et est omnis dignissimos.');
INSERT INTO "rollen" VALUES ('PT', 'Photo', 'Aut modi nihil molestias temporibus sit rerum. Sit neque eaque odio omnis incidunt.');
INSERT INTO "rollen" VALUES ('PR', 'Proof Reader', 'Ut sed quae eaque mollitia qui hic. Natus ea expedita et odio illum fugiat qui natus. Consequatur velit ut dolorem cum ullam esse deserunt dignissimos. Enim non non rem officiis quis.');
INSERT INTO "rollen" VALUES ('HR', 'Human Resource', 'Et totam est quibusdam aspernatur ut. Vitae perferendis eligendi voluptatem molestiae rem ut enim. Ipsum expedita quae earum unde est. Repellendus ut ipsam nihil accusantium sit. Magni accusantium numquam quod et.');

INSERT INTO "alle_dokumente" VALUES (7, '1976-06-15 03:40:06', 'CV', 'Robin CV', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (11, '1986-10-14 17:53:39', 'CV', 'Marry CV', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (25, '2008-06-08 12:45:38', 'BK', 'One hundred years of solitude', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (39, '2012-07-03 09:48:46', 'BK', 'How to read a book', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (72, '2012-07-03 09:48:46', 'CV', 'Alan CV', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (81, '1995-01-01 03:52:11', 'BK', 'Hua Mulan', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (99, '2008-06-08 12:45:38', 'CV', 'Leon CV', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (111, '1987-11-05 06:11:22', 'PR', 'Learning features of CNN', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (119, '2008-06-08 12:45:38', 'RV', 'Marriage and population', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (120, '1997-03-10 15:24:00', 'RV', 'Society and tax', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (166, '1997-03-10 15:24:00', 'PR', 'Are you talking to a machine', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (170, '2009-08-18 03:29:08', 'RV', 'Population', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (230, '1976-06-15 03:40:06', 'CV', 'Martin CV', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (252, '1976-06-15 03:40:06', 'BK', 'Summer', NULL, NULL);
INSERT INTO "alle_dokumente" VALUES (260, '1997-03-10 15:24:00', 'BK', 'Cats and me', NULL, NULL);

INSERT INTO "mitarbeiter" VALUES (25, 'HR', 'Leo', '', '1973-02-15 17:16:00', NULL);
INSERT INTO "mitarbeiter" VALUES (30, 'MG', 'Ebba', '', '1979-09-20 12:50:15', NULL);
INSERT INTO "mitarbeiter" VALUES (38, 'ED', 'Stephanie', '1', '2012-03-30 23:02:28', NULL);
INSERT INTO "mitarbeiter" VALUES (55, 'ED', 'Harley', '', '1972-02-18 11:53:30', NULL);
INSERT INTO "mitarbeiter" VALUES (57, 'ED', 'Armani', '', '1988-12-08 06:13:33', NULL);
INSERT INTO "mitarbeiter" VALUES (71, 'ED', 'Gussie', '', '1973-04-04 21:41:22', NULL);
INSERT INTO "mitarbeiter" VALUES (99, 'ED', 'Izabella', '1', '1977-07-04 16:25:21', NULL);
INSERT INTO "mitarbeiter" VALUES (123, 'PT', 'Hugh', '', '2010-03-15 00:17:13', NULL);
INSERT INTO "mitarbeiter" VALUES (136, 'ED', 'Mallie', '', '1980-12-11 20:28:20', NULL);
INSERT INTO "mitarbeiter" VALUES (138, 'ED', 'Beatrice', '1', '2013-04-02 23:55:48', NULL);
INSERT INTO "mitarbeiter" VALUES (156, 'PR', 'Diego', '', '1998-05-30 12:54:10', NULL);
INSERT INTO "mitarbeiter" VALUES (159, 'PR', 'Arno', '', '2010-06-10 20:36:34', NULL);
INSERT INTO "mitarbeiter" VALUES (173, 'PR', 'Alene', '1', '1980-10-14 12:23:10', NULL);
INSERT INTO "mitarbeiter" VALUES (181, 'PR', 'Ettie', '1', '1988-08-03 00:11:14', NULL);
INSERT INTO "mitarbeiter" VALUES (183, 'PR', 'Jeramie', '', '1993-08-21 05:22:10', NULL);

INSERT INTO "belegstellen" VALUES (7, 'e', '2017-01-06 23:17:22', '2008-06-08 12:45:38');
INSERT INTO "belegstellen" VALUES (11, 'x', '2017-01-06 23:17:22', '2012-07-03 09:48:46');
INSERT INTO "belegstellen" VALUES (81, 'c', '1972-03-31 09:47:22', '1987-11-05 06:11:22');
INSERT INTO "belegstellen" VALUES (81, 'c', '2017-01-06 23:17:22', '2010-11-26 19:22:50');
INSERT INTO "belegstellen" VALUES (81, 'x', '2008-06-08 12:45:38', '1976-06-15 03:40:06');
INSERT INTO "belegstellen" VALUES (111, 'x', '1986-10-14 17:53:39', '2010-11-26 19:22:50');
INSERT INTO "belegstellen" VALUES (119, 'b', '2017-01-06 23:17:22', '1995-01-01 03:52:11');
INSERT INTO "belegstellen" VALUES (166, 'b', '1985-05-13 12:19:43', '1986-10-14 17:53:39');
INSERT INTO "belegstellen" VALUES (166, 'b', '1986-10-14 17:53:39', '2010-11-26 19:22:50');
INSERT INTO "belegstellen" VALUES (170, 'x', '1997-03-10 15:24:00', '1976-06-15 03:40:06');
INSERT INTO "belegstellen" VALUES (230, 'e', '1972-03-31 09:47:22', '1987-11-05 06:11:22');
INSERT INTO "belegstellen" VALUES (230, 'e', '2010-11-26 19:22:50', '2017-01-06 23:17:22');
INSERT INTO "belegstellen" VALUES (252, 'n', '2017-01-06 23:17:22', '1997-03-10 15:24:00');
INSERT INTO "belegstellen" VALUES (252, 'x', '1972-03-31 09:47:22', '2009-08-18 03:29:08');
INSERT INTO "belegstellen" VALUES (260, 'e', '2009-08-18 03:29:08', '1986-10-14 17:53:39');

INSERT INTO "zu_vernichtende_dokumente" VALUES (7, 156, 138, '1988-02-01 14:41:52', '2017-01-06 23:17:22', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (11, 55, 173, '2010-11-26 19:22:50', '1986-10-14 17:53:39', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (25, 183, 156, '2009-08-18 03:29:08', '1995-01-01 03:52:11', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (39, 183, 136, '1976-06-15 03:40:06', '2009-08-18 03:29:08', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (99, 55, 99, '2017-01-06 23:17:22', '1986-10-14 17:53:39', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (111, 38, 173, '1972-03-31 09:47:22', '2009-08-18 03:29:08', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (120, 183, 173, '1972-03-31 09:47:22', '1995-01-01 03:52:11', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (166, 156, 38, '1987-11-05 06:11:22', '2012-07-03 09:48:46', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (170, 123, 136, '2017-01-06 23:17:22', '1988-02-01 14:41:52', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (252, 30, 55, '1972-03-31 09:47:22', '1985-05-13 12:19:43', NULL);
INSERT INTO "zu_vernichtende_dokumente" VALUES (260, 55, 99, '2017-01-06 23:17:22', '2017-01-06 23:17:22', NULL);

COMMIT;