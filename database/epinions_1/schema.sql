CREATE TABLE "artikel"
(
	"item_id" INTEGER NOT NULL,
	"titel"   VARCHAR(20) DEFAULT NULL,
	PRIMARY KEY ("item_id")
);

CREATE TABLE "useracct"
(
	"user_id" INTEGER NOT NULL,
	"name"    VARCHAR(128) DEFAULT NULL,
	PRIMARY KEY ("user_id")
);

CREATE TABLE "review"
(
	"a_id"      INTEGER NOT NULL,
	"user_id"   INTEGER NOT NULL,
	"item_id"   INTEGER NOT NULL,
	"bewertung" INTEGER DEFAULT NULL,
	"rang"      INTEGER DEFAULT NULL,
	PRIMARY KEY ("a_id"),
	FOREIGN KEY ("user_id") REFERENCES "useracct" ("user_id"),
	FOREIGN KEY ("item_id") REFERENCES "artikel" ("item_id")
);

CREATE TABLE "vertrauen"
(
	"quelle_benutzerkennung" INTEGER NOT NULL,
	"ziel_benutzerkennung"   INTEGER NOT NULL,
	"vertrauen"              INTEGER NOT NULL,
	FOREIGN KEY ("quelle_benutzerkennung") REFERENCES "useracct" ("user_id"),
	FOREIGN KEY ("ziel_benutzerkennung") REFERENCES "useracct" ("user_id")
);

BEGIN TRANSACTION;
INSERT INTO "artikel" VALUES (0, 'pear');
INSERT INTO "artikel" VALUES (1, 'orange');
INSERT INTO "artikel" VALUES (2, 'apple');
INSERT INTO "artikel" VALUES (3, 'shampoo');
INSERT INTO "artikel" VALUES (4, 'avocado');
INSERT INTO "artikel" VALUES (5, 'comb');
INSERT INTO "artikel" VALUES (6, 'blue hoodie');
INSERT INTO "artikel" VALUES (7, 'cup');

INSERT INTO "useracct" VALUES (1, 'Helen');
INSERT INTO "useracct" VALUES (2, 'Mark');
INSERT INTO "useracct" VALUES (3, 'Terry');
INSERT INTO "useracct" VALUES (4, 'Nancy');
INSERT INTO "useracct" VALUES (5, 'Rosie');
INSERT INTO "useracct" VALUES (6, 'Roxi');
INSERT INTO "useracct" VALUES (7, 'Emily');

INSERT INTO "review" VALUES (1, 1, 1, 10, 1);
INSERT INTO "review" VALUES (2, 2, 1, 5, 2);
INSERT INTO "review" VALUES (3, 1, 4, 7, 3);
INSERT INTO "review" VALUES (4, 2, 7, 10, 7);
INSERT INTO "review" VALUES (5, 2, 5, 7, 4);
INSERT INTO "review" VALUES (6, 1, 3, 5, 5);
INSERT INTO "review" VALUES (7, 2, 7, 6, 6);

INSERT INTO "vertrauen" VALUES (1, 2, 10);
INSERT INTO "vertrauen" VALUES (1, 3, 6);
INSERT INTO "vertrauen" VALUES (2, 4, 8);
INSERT INTO "vertrauen" VALUES (3, 6, 10);
INSERT INTO "vertrauen" VALUES (7, 2, 3);
INSERT INTO "vertrauen" VALUES (7, 5, 2);
INSERT INTO "vertrauen" VALUES (7, 3, 4);
INSERT INTO "vertrauen" VALUES (6, 2, 1);
INSERT INTO "vertrauen" VALUES (1, 5, 7);

COMMIT;