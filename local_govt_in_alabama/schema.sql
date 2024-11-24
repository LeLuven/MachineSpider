CREATE TABLE "dienstleistungen"
(
	"service_id"              INTEGER NOT NULL,
	"dienstleistungsart_code" CHAR(15) NOT NULL,
	PRIMARY KEY ("service_id")
);

CREATE TABLE "teilnehmer"
(
	"teilnehmer_id"       INTEGER NOT NULL,
	"teilnehmer_typ_code" CHAR(15) NOT NULL,
	"teilnehmer_details"  VARCHAR(255),
	PRIMARY KEY ("teilnehmer_id")
);

CREATE TABLE "veranstaltungen"
(
	"event_id"      INTEGER NOT NULL,
	"service_id"    INTEGER NOT NULL,
	"event_details" VARCHAR(255),
	PRIMARY KEY ("event_id"),
	FOREIGN KEY ("service_id") REFERENCES "dienstleistungen" ("service_id")
);

CREATE TABLE "teilnehmer_an_veranstaltungen"
(
	"event_id"      INTEGER NOT NULL,
	"teilnehmer_id" INTEGER NOT NULL,
	PRIMARY KEY ("event_id", "teilnehmer_id"),
	FOREIGN KEY ("event_id") REFERENCES "veranstaltungen" ("event_id"),
	FOREIGN KEY ("teilnehmer_id") REFERENCES "teilnehmer" ("teilnehmer_id")
);

BEGIN TRANSACTION;
INSERT INTO "dienstleistungen" VALUES (2, 'Marriage');
INSERT INTO "dienstleistungen" VALUES (5, 'Death Proof');
INSERT INTO "dienstleistungen" VALUES (6, 'Birth Proof');
INSERT INTO "dienstleistungen" VALUES (8, 'Property Change');

INSERT INTO "teilnehmer" VALUES (9, 'Organizer', 'Karlee Batz');
INSERT INTO "teilnehmer" VALUES (26, 'Organizer', 'Vilma Schinner');
INSERT INTO "teilnehmer" VALUES (28, 'Organizer', 'Lupe Deckow');
INSERT INTO "teilnehmer" VALUES (36, 'Organizer', 'Kenyatta Kuhn');
INSERT INTO "teilnehmer" VALUES (37, 'Participant', 'Miss Kaci Lebsack');
INSERT INTO "teilnehmer" VALUES (38, 'Organizer', 'Macy Mayer DDS');
INSERT INTO "teilnehmer" VALUES (60, 'Participant', 'Dewitt Walter');
INSERT INTO "teilnehmer" VALUES (63, 'Participant', 'Prof. Michelle Maggio Jr.');
INSERT INTO "teilnehmer" VALUES (64, 'Participant', 'Dr. Jaydon Renner');
INSERT INTO "teilnehmer" VALUES (66, 'Participant', 'Justyn Lebsack');
INSERT INTO "teilnehmer" VALUES (75, 'Participant', 'Berniece Weimann');
INSERT INTO "teilnehmer" VALUES (86, 'Organizer', 'Neil Blick');
INSERT INTO "teilnehmer" VALUES (90, 'Participant', 'Dedrick Ebert');
INSERT INTO "teilnehmer" VALUES (96, 'Organizer', 'Miss Joyce Cremin');
INSERT INTO "teilnehmer" VALUES (98, 'Participant', 'Dr. Kris Deckow');

INSERT INTO "veranstaltungen" VALUES (3, 5, 'Success');
INSERT INTO "veranstaltungen" VALUES (8, 8, 'Success');
INSERT INTO "veranstaltungen" VALUES (13, 8, 'Fail');
INSERT INTO "veranstaltungen" VALUES (16, 2, 'Fail');
INSERT INTO "veranstaltungen" VALUES (17, 5, 'Fail');
INSERT INTO "veranstaltungen" VALUES (38, 6, 'Fail');
INSERT INTO "veranstaltungen" VALUES (40, 6, 'Fail');
INSERT INTO "veranstaltungen" VALUES (43, 8, 'Fail');
INSERT INTO "veranstaltungen" VALUES (48, 8, 'Fail');
INSERT INTO "veranstaltungen" VALUES (57, 5, 'Success');
INSERT INTO "veranstaltungen" VALUES (60, 2, 'Fail');
INSERT INTO "veranstaltungen" VALUES (74, 2, 'Success');
INSERT INTO "veranstaltungen" VALUES (80, 5, 'Success');
INSERT INTO "veranstaltungen" VALUES (95, 2, 'Fail');
INSERT INTO "veranstaltungen" VALUES (96, 2, 'Success');

INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (3, 26);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (3, 66);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (8, 86);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (13, 64);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (13, 90);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (16, 60);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (17, 37);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (17, 66);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (38, 66);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (40, 37);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (40, 86);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (57, 90);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (60, 26);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (80, 36);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (80, 66);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (80, 96);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (95, 63);
INSERT INTO "teilnehmer_an_veranstaltungen" VALUES (96, 90);

COMMIT;