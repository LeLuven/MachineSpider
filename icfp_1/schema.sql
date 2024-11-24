CREATE TABLE "institut"
(
	"institution_id" INTEGER,
	"name"           TEXT,
	"land"           TEXT,
	PRIMARY KEY ("institution_id")
);

CREATE TABLE "autoren"
(
	"autoren_id" INTEGER,
	"nachname"   TEXT,
	"vorname"    TEXT,
	PRIMARY KEY ("autoren_id")
);

CREATE TABLE "beiträge"
(
	"aufsatz_id" INTEGER,
	"titel"      TEXT,
	PRIMARY KEY ("aufsatz_id")
);

CREATE TABLE "anzahl_der_autorenschaft"
(
	"autoren_id"     INTEGER,
	"institution_id" INTEGER,
	"aufsatz_id"     INTEGER,
	"autorenzahl"    INTEGER,
	PRIMARY KEY ("autoren_id", "institution_id", "aufsatz_id"),
	FOREIGN KEY ("autoren_id") REFERENCES "autoren" ("autoren_id"),
	FOREIGN KEY ("institution_id") REFERENCES "institut" ("institution_id"),
	FOREIGN KEY ("aufsatz_id") REFERENCES "beiträge" ("aufsatz_id")
);

BEGIN TRANSACTION;
INSERT INTO "institut" VALUES (1000, 'University of Oxford', 'UK');
INSERT INTO "institut" VALUES (1010, 'Northeastern University', 'USA');
INSERT INTO "institut" VALUES (1020, 'Indiana University', 'USA');
INSERT INTO "institut" VALUES (1030, 'Google', 'USA');
INSERT INTO "institut" VALUES (1040, 'Tohoku University', 'Japan');
INSERT INTO "institut" VALUES (1050, 'University of Pennsylvania', 'USA');
INSERT INTO "institut" VALUES (1060, 'Portland State University', 'Japan');
INSERT INTO "institut" VALUES (1070, 'INRIA', 'France');

INSERT INTO "autoren" VALUES (50, 'Gibbons', 'Jeremy');
INSERT INTO "autoren" VALUES (51, 'Hinze', 'Ralf');
INSERT INTO "autoren" VALUES (52, 'James', 'Daniel W. H.');
INSERT INTO "autoren" VALUES (53, 'Shivers', 'Olin');
INSERT INTO "autoren" VALUES (54, 'Turon', 'Aaron');
INSERT INTO "autoren" VALUES (55, 'Ahmed', 'Amal');
INSERT INTO "autoren" VALUES (56, 'Blume', 'Matthias');
INSERT INTO "autoren" VALUES (57, 'Ohori', 'Atsushi');
INSERT INTO "autoren" VALUES (58, 'Ueno', 'Katsuhiro');
INSERT INTO "autoren" VALUES (59, 'Pouillard', 'Nicolas');
INSERT INTO "autoren" VALUES (60, 'Weirich', 'Stephanie');
INSERT INTO "autoren" VALUES (61, 'Yorgey', 'Brent');
INSERT INTO "autoren" VALUES (62, 'Sheard', 'Tim');

INSERT INTO "beiträge" VALUES (200, 'Just do it: Simple Monadic Equational Reasoning');
INSERT INTO "beiträge" VALUES (201, 'Proving the Unique Fixed-Point Principle Correct: An Adventure with Category Theory');
INSERT INTO "beiträge" VALUES (202, 'Functional Pearl: Modular Rollback through Control Logging');
INSERT INTO "beiträge" VALUES (203, 'An Equivalence-Preserving CPS Translation via Multi-Language Semantics');
INSERT INTO "beiträge" VALUES (204, 'Making Standard ML a Practical Database Programming Language');
INSERT INTO "beiträge" VALUES (205, 'Nameless, Painless');
INSERT INTO "beiträge" VALUES (206, 'Binders Unbound');

INSERT INTO "anzahl_der_autorenschaft" VALUES (50, 1000, 200, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (51, 1000, 200, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (51, 1000, 201, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (52, 1000, 201, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (53, 1010, 202, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (54, 1010, 202, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (55, 1020, 203, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (56, 1030, 203, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (57, 1040, 204, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (58, 1040, 204, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (59, 1070, 205, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (60, 1050, 206, 1);
INSERT INTO "anzahl_der_autorenschaft" VALUES (61, 1050, 206, 2);
INSERT INTO "anzahl_der_autorenschaft" VALUES (62, 1060, 206, 3);

COMMIT;