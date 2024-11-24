CREATE TABLE "kunden"
(
	"kunden_id"     INTEGER NOT NULL,
	"kundenangaben" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "personal"
(
	"mitarbeiter_id"   INTEGER NOT NULL,
	"personal_details" VARCHAR(255) NOT NULL,
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "stufen_der_schadenbearbeitung"
(
	"claim_stage_id"                  INTEGER NOT NULL,
	"nächste_fallstufe_id"            INTEGER,
	"bezeichnung_des_anspruchsstatus" VARCHAR(255) NOT NULL,
	"fallstatusbeschreibung"          VARCHAR(255) NOT NULL,
	PRIMARY KEY ("claim_stage_id")
);

CREATE TABLE "policies"
(
	"policen_id"       INTEGER NOT NULL,
	"kunden_id"        INTEGER NOT NULL,
	"policy_type_code" CHAR(15) NOT NULL,
	"start_date"       DATETIME,
	"end_date"         DATETIME,
	PRIMARY KEY ("policen_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunden" ("kunden_id")
);

CREATE TABLE "antragskopf"
(
	"forderungskopf_id"      INTEGER NOT NULL,
	"forderungsstatus_code"  CHAR(15) NOT NULL,
	"fallartcode"            CHAR(15) NOT NULL,
	"policen_id"             INTEGER NOT NULL,
	"datum_des_schadenfalls" DATETIME,
	"datum_der_regulierung"  DATETIME,
	"geforderter_betrag"     DECIMAL(20,4),
	"erstattungsbetrag"      DECIMAL(20,4),
	PRIMARY KEY ("forderungskopf_id"),
	FOREIGN KEY ("policen_id") REFERENCES "policies" ("policen_id")
);

CREATE TABLE "schadenunterlagen"
(
	"schaden_id"                  INTEGER NOT NULL,
	"dokumentenart_code"          CHAR(15) NOT NULL,
	"erstellt_von_mitarbeiter_id" INTEGER,
	"erstellungsdatum"            INTEGER,
	PRIMARY KEY ("schaden_id", "dokumentenart_code"),
	FOREIGN KEY ("schaden_id") REFERENCES "antragskopf" ("forderungskopf_id"),
	FOREIGN KEY ("erstellt_von_mitarbeiter_id") REFERENCES "personal" ("mitarbeiter_id")
);

CREATE TABLE "antragsbearbeitung"
(
	"fallbearbeitung_id" INTEGER NOT NULL,
	"schaden_id"         INTEGER NOT NULL,
	"claim_outcome_code" CHAR(15) NOT NULL,
	"claim_stage_id"     INTEGER NOT NULL,
	"mitarbeiter_id"     INTEGER,
	PRIMARY KEY ("fallbearbeitung_id"),
	FOREIGN KEY ("schaden_id") REFERENCES "antragskopf" ("forderungskopf_id"),
	FOREIGN KEY ("mitarbeiter_id") REFERENCES "personal" ("mitarbeiter_id")
);

BEGIN TRANSACTION;
INSERT INTO "kunden" VALUES (252, 'America Jaskolski');
INSERT INTO "kunden" VALUES (263, 'Ellsworth Paucek');
INSERT INTO "kunden" VALUES (334, 'Mrs. Hanna Willms');
INSERT INTO "kunden" VALUES (380, 'Dr. Diana Rath');
INSERT INTO "kunden" VALUES (430, 'Selena Gerhold');
INSERT INTO "kunden" VALUES (435, 'Lauriane Ferry PhD');
INSERT INTO "kunden" VALUES (520, 'Sydnie Friesen');
INSERT INTO "kunden" VALUES (588, 'Dayana Robel');
INSERT INTO "kunden" VALUES (593, 'Mr. Edwardo Blanda I');
INSERT INTO "kunden" VALUES (799, 'Augustine Kerluke');
INSERT INTO "kunden" VALUES (808, 'Buddy Marquardt');
INSERT INTO "kunden" VALUES (810, 'Mr. Randal Lynch III');
INSERT INTO "kunden" VALUES (857, 'Mrs. Liza Heller V');
INSERT INTO "kunden" VALUES (858, 'Mrs. Lilly Graham III');
INSERT INTO "kunden" VALUES (994, 'Miss Felicita Reichel');

INSERT INTO "personal" VALUES (406, 'Clifton');
INSERT INTO "personal" VALUES (427, 'Cathryn');
INSERT INTO "personal" VALUES (510, 'Kaci');
INSERT INTO "personal" VALUES (589, 'Margaretta');
INSERT INTO "personal" VALUES (634, 'Maryse');
INSERT INTO "personal" VALUES (673, 'Roman');
INSERT INTO "personal" VALUES (687, 'Eladio');
INSERT INTO "personal" VALUES (718, 'Vernie');
INSERT INTO "personal" VALUES (735, 'Evans');
INSERT INTO "personal" VALUES (771, 'Bo');
INSERT INTO "personal" VALUES (803, 'Zachery');
INSERT INTO "personal" VALUES (822, 'Julius');
INSERT INTO "personal" VALUES (833, 'Allen');
INSERT INTO "personal" VALUES (986, 'Alexander');
INSERT INTO "personal" VALUES (987, 'Gideon');

INSERT INTO "stufen_der_schadenbearbeitung" VALUES (1, 1, 'Open', 'Open a new claim');
INSERT INTO "stufen_der_schadenbearbeitung" VALUES (3, 1, 'Close', 'Close a claim');

INSERT INTO "policies" VALUES (125, 808, 'Deputy', '2018-02-10 08:56:30', '2018-03-18 09:17:26');
INSERT INTO "policies" VALUES (151, 380, 'Jurisdiction', '2017-12-20 06:02:31', '2017-09-16 22:04:13');
INSERT INTO "policies" VALUES (287, 334, 'Jurisdiction', '2017-03-16 18:16:52', '2017-11-24 06:36:51');
INSERT INTO "policies" VALUES (299, 857, 'Uniformed', '2018-03-13 12:30:19', '2018-01-22 05:24:10');
INSERT INTO "policies" VALUES (507, 858, 'Uniformed', '2017-03-19 03:11:19', '2017-11-01 00:41:27');
INSERT INTO "policies" VALUES (518, 808, 'Uniformed', '2016-05-11 14:56:17', '2018-03-15 05:02:00');
INSERT INTO "policies" VALUES (626, 435, 'Uniformed', '2016-05-14 19:09:36', '2018-01-18 06:17:36');
INSERT INTO "policies" VALUES (628, 430, 'Deputy', '2018-09-19 17:22:07', '2018-01-01 23:58:06');
INSERT INTO "policies" VALUES (703, 380, 'Deputy', '2016-06-04 00:10:01', '2018-01-19 22:45:33');
INSERT INTO "policies" VALUES (708, 252, 'Normal', '2018-07-21 10:36:53', '2018-03-07 13:52:47');
INSERT INTO "policies" VALUES (768, 588, 'Uniformed', '2017-01-01 01:48:08', '2017-09-30 03:16:49');
INSERT INTO "policies" VALUES (773, 334, 'Uniformed', '2017-02-11 01:53:11', '2018-01-15 03:23:05');
INSERT INTO "policies" VALUES (780, 435, 'Uniformed', '2016-08-02 01:46:25', '2018-03-03 18:36:22');
INSERT INTO "policies" VALUES (801, 380, 'Uniformed', '2018-09-05 22:15:23', '2018-03-17 10:16:59');
INSERT INTO "policies" VALUES (936, 994, 'Jurisdiction', '2016-07-23 04:08:35', '2017-10-07 08:29:25');

INSERT INTO "antragskopf" VALUES (15, 'Settled', 'Handphone Subsidy', 518, '2016-05-31 06:07:11', '2018-02-23 03:46:38', 349.15, 582.03);
INSERT INTO "antragskopf" VALUES (24, 'Disputed', 'Child Birth', 518, '2016-12-30 21:43:21', '2017-10-08 21:43:14', 318.16, 309.2);
INSERT INTO "antragskopf" VALUES (27, 'Disputed', 'Overtime Meal Subsidy', 518, '2017-05-01 13:34:43', '2017-11-16 04:06:05', 362.71, 132.97);
INSERT INTO "antragskopf" VALUES (28, 'Disputed', 'Child Birth', 287, '2016-10-01 00:40:00', '2017-10-20 02:24:21', 789.19, 113.86);
INSERT INTO "antragskopf" VALUES (34, 'Disputed', 'Handphone Subsidy', 518, '2016-04-10 01:36:18', '2017-10-17 07:02:17', 270.49, 643.82);
INSERT INTO "antragskopf" VALUES (39, 'In Progress', 'Handphone Subsidy', 518, '2016-09-17 05:05:07', '2018-01-07 05:28:53', 616.12, 773.5);
INSERT INTO "antragskopf" VALUES (45, 'In Progress', 'Handphone Subsidy', 507, '2016-06-12 23:04:58', '2018-01-16 06:35:15', 676.81, 289.09);
INSERT INTO "antragskopf" VALUES (56, 'In Progress', 'Handphone Subsidy', 626, '2016-04-09 03:04:29', '2017-11-21 09:06:04', 818.15, 826);
INSERT INTO "antragskopf" VALUES (62, 'Disputed', 'Child Birth', 626, '2017-07-05 02:54:30', '2018-03-08 13:00:23', 182.79, 558.7);
INSERT INTO "antragskopf" VALUES (69, 'In Progress', 'Overtime Meal Subsidy', 626, '2016-12-17 08:28:16', '2017-12-20 09:58:14', 867.57, 133.72);
INSERT INTO "antragskopf" VALUES (72, 'Disputed', 'Overtime Meal Subsidy', 626, '2017-07-09 17:06:09', '2017-12-06 15:01:14', 672.06, 227.84);
INSERT INTO "antragskopf" VALUES (73, 'Settled', 'Overtime Meal Subsidy', 626, '2016-11-15 13:12:02', '2018-01-21 05:51:01', 228.45, 794.63);
INSERT INTO "antragskopf" VALUES (81, 'In Progress', 'Overtime Meal Subsidy', 628, '2016-09-26 04:03:48', '2017-12-20 19:06:12', 783.42, 779.59);
INSERT INTO "antragskopf" VALUES (82, 'Settled', 'Overtime Meal Subsidy', 125, '2016-09-29 02:42:22', '2017-12-06 17:10:03', 756.27, 612.74);
INSERT INTO "antragskopf" VALUES (90, 'Settled', 'Child Birth', 125, '2016-09-28 18:53:22', '2017-10-17 22:03:17', 425.98, 536.99);

INSERT INTO "schadenunterlagen" VALUES (24, 'Document', 718, 8);
INSERT INTO "schadenunterlagen" VALUES (27, 'Document', 986, 6);
INSERT INTO "schadenunterlagen" VALUES (27, 'Medical', 427, 8);
INSERT INTO "schadenunterlagen" VALUES (39, 'Document', 803, 2);
INSERT INTO "schadenunterlagen" VALUES (45, 'Medical', 687, 9);
INSERT INTO "schadenunterlagen" VALUES (62, 'Document', 673, 3);
INSERT INTO "schadenunterlagen" VALUES (62, 'Medical', 771, 3);
INSERT INTO "schadenunterlagen" VALUES (62, 'Photo', 771, 6);
INSERT INTO "schadenunterlagen" VALUES (69, 'Document', 718, 1);
INSERT INTO "schadenunterlagen" VALUES (73, 'Document', 986, 2);
INSERT INTO "schadenunterlagen" VALUES (73, 'Medical', 771, 9);
INSERT INTO "schadenunterlagen" VALUES (81, 'Photo', 589, 7);
INSERT INTO "schadenunterlagen" VALUES (82, 'Medical', 803, 9);
INSERT INTO "schadenunterlagen" VALUES (90, 'Photo', 735, 1);

INSERT INTO "antragsbearbeitung" VALUES (118, 28, 'In progress', 1, 771);
INSERT INTO "antragsbearbeitung" VALUES (145, 62, 'In progress', 1, 589);
INSERT INTO "antragsbearbeitung" VALUES (213, 27, 'In progress', 1, 589);
INSERT INTO "antragsbearbeitung" VALUES (221, 45, 'Disputed', 1, 427);
INSERT INTO "antragsbearbeitung" VALUES (242, 15, 'In progress', 3, 673);
INSERT INTO "antragsbearbeitung" VALUES (243, 15, 'Settled', 1, 687);
INSERT INTO "antragsbearbeitung" VALUES (309, 34, 'Disputed', 3, 771);
INSERT INTO "antragsbearbeitung" VALUES (342, 15, 'In progress', 3, 673);
INSERT INTO "antragsbearbeitung" VALUES (480, 45, 'In progress', 1, 822);
INSERT INTO "antragsbearbeitung" VALUES (659, 62, 'Settled', 3, 510);
INSERT INTO "antragsbearbeitung" VALUES (686, 27, 'Settled', 1, 718);
INSERT INTO "antragsbearbeitung" VALUES (720, 24, 'In progress', 1, 822);
INSERT INTO "antragsbearbeitung" VALUES (818, 90, 'Disputed', 3, 986);
INSERT INTO "antragsbearbeitung" VALUES (833, 81, 'Disputed', 3, 822);
INSERT INTO "antragsbearbeitung" VALUES (898, 24, 'In progress', 1, 718);

COMMIT;