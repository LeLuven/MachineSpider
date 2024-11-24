CREATE TABLE "referenzvorlagentypen"
(
	"vorlagentyp_code"           CHAR(15) NOT NULL,
	"schablonentyp_beschreibung" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("vorlagentyp_code")
);

CREATE TABLE "vorlagen"
(
	"vorlage_id"       INTEGER NOT NULL,
	"versionsnummer"   INTEGER NOT NULL,
	"vorlagentyp_code" CHAR(15) NOT NULL,
	"datum_gültig_von" DATETIME,
	"datum_gültig_bis" DATETIME,
	"vorlage_details"  VARCHAR(255) NOT NULL,
	PRIMARY KEY ("vorlage_id"),
	FOREIGN KEY ("vorlagentyp_code") REFERENCES "referenzvorlagentypen" ("vorlagentyp_code")
);

CREATE TABLE "dokumente"
(
	"dokument_id"            INTEGER NOT NULL,
	"vorlage_id"             INTEGER,
	"dokumentenname"         VARCHAR(255),
	"dokumentenbeschreibung" VARCHAR(255),
	"sonstige_angaben"       VARCHAR(255),
	PRIMARY KEY ("dokument_id"),
	FOREIGN KEY ("vorlage_id") REFERENCES "vorlagen" ("vorlage_id")
);

CREATE TABLE "absätze"
(
	"absatz_id"        INTEGER NOT NULL,
	"dokument_id"      INTEGER NOT NULL,
	"absatztext"       VARCHAR(255),
	"sonstige_angaben" VARCHAR(255),
	PRIMARY KEY ("absatz_id"),
	FOREIGN KEY ("dokument_id") REFERENCES "dokumente" ("dokument_id")
);

BEGIN TRANSACTION;
INSERT INTO "referenzvorlagentypen" VALUES ('PPT', 'Presentation');
INSERT INTO "referenzvorlagentypen" VALUES ('CV', 'CV');
INSERT INTO "referenzvorlagentypen" VALUES ('AD', 'Advertisement');
INSERT INTO "referenzvorlagentypen" VALUES ('PP', 'Paper');
INSERT INTO "referenzvorlagentypen" VALUES ('BK', 'Book');

INSERT INTO "vorlagen" VALUES (0, 5, 'PP', '2005-11-12 07:09:48', '2008-01-05 14:19:28', '');
INSERT INTO "vorlagen" VALUES (1, 9, 'PP', '2010-09-24 01:15:11', '1999-07-08 03:31:04', '');
INSERT INTO "vorlagen" VALUES (4, 4, 'BK', '2002-03-02 14:39:49', '2001-04-18 09:29:52', '');
INSERT INTO "vorlagen" VALUES (6, 2, 'PPT', '1975-05-20 22:51:19', '1992-05-02 20:06:11', '');
INSERT INTO "vorlagen" VALUES (7, 8, 'PPT', '1993-10-07 02:33:04', '1975-07-16 04:52:10', '');
INSERT INTO "vorlagen" VALUES (8, 3, 'BK', '1983-07-16 21:16:16', '1976-10-28 10:08:50', '');
INSERT INTO "vorlagen" VALUES (9, 2, 'BK', '1997-04-17 08:29:44', '1994-12-07 13:26:23', '');
INSERT INTO "vorlagen" VALUES (10, 1, 'PPT', '2003-06-05 04:03:45', '2007-06-06 06:18:53', '');
INSERT INTO "vorlagen" VALUES (11, 6, 'BK', '1996-02-04 11:27:24', '1995-09-19 22:27:48', '');
INSERT INTO "vorlagen" VALUES (14, 7, 'AD', '1975-10-20 02:28:58', '1979-11-04 08:58:39', '');
INSERT INTO "vorlagen" VALUES (15, 9, 'CV', '1986-12-09 14:51:36', '1993-03-24 14:30:23', '');
INSERT INTO "vorlagen" VALUES (16, 5, 'CV', '2012-04-05 07:11:42', '1980-05-07 12:15:47', '');
INSERT INTO "vorlagen" VALUES (18, 5, 'PP', '1984-08-07 13:36:26', '1998-05-12 12:51:29', '');
INSERT INTO "vorlagen" VALUES (19, 7, 'AD', '1999-06-21 11:10:30', '1974-09-14 06:34:39', '');
INSERT INTO "vorlagen" VALUES (20, 6, 'BK', '1986-11-14 12:20:18', '2008-08-08 18:36:43', '');
INSERT INTO "vorlagen" VALUES (21, 9, 'AD', '2002-08-25 13:26:23', '2015-09-06 01:08:44', '');
INSERT INTO "vorlagen" VALUES (22, 0, 'PP', '2005-02-20 00:31:34', '1989-11-24 19:06:06', '');
INSERT INTO "vorlagen" VALUES (23, 2, 'BK', '1979-12-24 10:28:16', '2000-10-22 11:57:12', '');
INSERT INTO "vorlagen" VALUES (24, 8, 'PP', '2008-08-01 13:57:26', '1973-01-12 14:13:34', '');
INSERT INTO "vorlagen" VALUES (25, 5, 'PP', '1979-10-20 21:23:20', '2006-02-06 23:52:04', '');

INSERT INTO "dokumente" VALUES (0, 7, 'Introduction of OS', 'n', NULL);
INSERT INTO "dokumente" VALUES (1, 25, 'Understanding DB', 'y', NULL);
INSERT INTO "dokumente" VALUES (3, 6, 'Summer Show', 'u', NULL);
INSERT INTO "dokumente" VALUES (76, 20, 'Robbin CV', 'y', NULL);
INSERT INTO "dokumente" VALUES (80, 14, 'Welcome to NY', 'h', NULL);
INSERT INTO "dokumente" VALUES (82, 11, 'Data base', 'w', NULL);
INSERT INTO "dokumente" VALUES (2394, 10, 'Customer reviews', 'y', NULL);
INSERT INTO "dokumente" VALUES (3830, 14, 'Do not panic', 'k', NULL);
INSERT INTO "dokumente" VALUES (33930, 1, 'How Google people work', 'z', NULL);
INSERT INTO "dokumente" VALUES (50123, 22, 'Learning French', 'r', NULL);
INSERT INTO "dokumente" VALUES (651512, 21, 'How to write a CV', 'f', NULL);
INSERT INTO "dokumente" VALUES (801801, 4, 'How to read a book', 'w', NULL);
INSERT INTO "dokumente" VALUES (3540024, 8, 'Palm reading', 'y', NULL);
INSERT INTO "dokumente" VALUES (16514113, 25, 'A history of Arts', 'h', NULL);
INSERT INTO "dokumente" VALUES (385906526, 11, 'About Korea', 'b', NULL);

INSERT INTO "absätze" VALUES (7, 2394, 'Korea', NULL);
INSERT INTO "absätze" VALUES (9, 3, 'Somalia', NULL);
INSERT INTO "absätze" VALUES (65, 50123, 'Palestinian Territory', NULL);
INSERT INTO "absätze" VALUES (241, 651512, 'Jersey', NULL);
INSERT INTO "absätze" VALUES (3708, 33930, 'UK', NULL);
INSERT INTO "absätze" VALUES (9946, 385906526, 'Fiji', NULL);
INSERT INTO "absätze" VALUES (16615, 80, 'Japan', NULL);
INSERT INTO "absätze" VALUES (1104059, 3830, 'Senegal', NULL);
INSERT INTO "absätze" VALUES (243399026, 651512, 'Indonesia', NULL);
INSERT INTO "absätze" VALUES (280120913, 2394, 'Ukraine', NULL);
INSERT INTO "absätze" VALUES (510442723, 2394, 'Korea', NULL);
INSERT INTO "absätze" VALUES (571212310, 16514113, 'Brazil', NULL);
INSERT INTO "absätze" VALUES (608931827, 80, 'Micronesia', NULL);
INSERT INTO "absätze" VALUES (765713812, 16514113, 'Ireland', NULL);
INSERT INTO "absätze" VALUES (946335436, 3540024, 'Papua New Guinea', NULL);

COMMIT;