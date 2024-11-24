CREATE TABLE "kurs"
(
	"kurs_id"    INT,
	"startdatum" TEXT,
	"kurs"       TEXT,
	PRIMARY KEY ("kurs_id")
);

CREATE TABLE "lehrer"
(
	"lehrer_id" INT,
	"name"      TEXT,
	"alter"     TEXT,
	"heimatort" TEXT,
	PRIMARY KEY ("lehrer_id")
);

CREATE TABLE "kurseinteilung"
(
	"kurs_id"   INT,
	"lehrer_id" INT,
	"note"      INT,
	PRIMARY KEY ("kurs_id", "lehrer_id", "note"),
	FOREIGN KEY ("kurs_id") REFERENCES "kurs" ("kurs_id"),
	FOREIGN KEY ("lehrer_id") REFERENCES "lehrer" ("lehrer_id")
);

BEGIN TRANSACTION;
INSERT INTO "kurs" VALUES (1, '5 May', 'Language Arts');
INSERT INTO "kurs" VALUES (2, '6 May', 'Math');
INSERT INTO "kurs" VALUES (3, '7 May', 'Science');
INSERT INTO "kurs" VALUES (4, '9 May', 'History');
INSERT INTO "kurs" VALUES (5, '10 May', 'Bible');
INSERT INTO "kurs" VALUES (6, '11 May', 'Geography');
INSERT INTO "kurs" VALUES (7, '13 May', 'Sports');
INSERT INTO "kurs" VALUES (8, '14 May', 'French');
INSERT INTO "kurs" VALUES (9, '15 May', 'Health');
INSERT INTO "kurs" VALUES (10, '17 May', 'Music');

INSERT INTO "lehrer" VALUES (1, 'Joseph Huts', '32', 'Blackrod Urban District');
INSERT INTO "lehrer" VALUES (2, 'Gustaaf Deloor', '29', 'Bolton County Borough');
INSERT INTO "lehrer" VALUES (3, 'Vicente Carretero', '26', 'Farnworth Municipal Borough');
INSERT INTO "lehrer" VALUES (4, 'John Deloor', '33', 'Horwich Urban District');
INSERT INTO "lehrer" VALUES (5, 'Kearsley Brown', '45', 'Kearsley Urban District');
INSERT INTO "lehrer" VALUES (6, 'Anne Walker', '41', 'Little Lever Urban District');
INSERT INTO "lehrer" VALUES (7, 'Lucy Wong', '39', 'Turton Urban District');

INSERT INTO "kurseinteilung" VALUES (2, 5, 1);
INSERT INTO "kurseinteilung" VALUES (2, 3, 3);
INSERT INTO "kurseinteilung" VALUES (3, 2, 5);
INSERT INTO "kurseinteilung" VALUES (4, 6, 7);
INSERT INTO "kurseinteilung" VALUES (5, 6, 1);
INSERT INTO "kurseinteilung" VALUES (10, 7, 4);

COMMIT;