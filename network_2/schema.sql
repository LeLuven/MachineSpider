CREATE TABLE "person"
(
	"name"       VARCHAR(20),
	"alter"      INTEGER,
	"stadt"      TEXT,
	"geschlecht" TEXT,
	"beruf"      TEXT,
	PRIMARY KEY ("name")
);

CREATE TABLE "person_freund"
(
	"name"   VARCHAR(20),
	"freund" VARCHAR(20),
	"jahr"   INTEGER,
	FOREIGN KEY ("name") REFERENCES "person" ("name"),
	FOREIGN KEY ("freund") REFERENCES "person" ("name")
);

BEGIN TRANSACTION;
INSERT INTO "person" VALUES ('Alice', 25, 'new york city', 'female', 'student');
INSERT INTO "person" VALUES ('Bob', 35, 'salt lake city', 'male', 'engineer');
INSERT INTO "person" VALUES ('Zach', 45, 'austin', 'male', 'doctor');
INSERT INTO "person" VALUES ('Dan', 26, 'chicago', 'female', 'student');

INSERT INTO "person_freund" VALUES ('Alice', 'Bob', 10);
INSERT INTO "person_freund" VALUES ('Zach', 'Dan', 12);
INSERT INTO "person_freund" VALUES ('Bob', 'Zach', 5);
INSERT INTO "person_freund" VALUES ('Zach', 'Alice', 6);

COMMIT;