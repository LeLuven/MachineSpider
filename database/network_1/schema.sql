CREATE TABLE "oberschüler"
(
	"id"    INT,
	"name"  TEXT,
	"grade" INT,
	PRIMARY KEY ("id")
);

CREATE TABLE "freund"
(
	"schüler_id" INT,
	"freund_id"  INT,
	PRIMARY KEY ("schüler_id", "freund_id"),
	FOREIGN KEY ("schüler_id") REFERENCES "oberschüler" ("id"),
	FOREIGN KEY ("freund_id") REFERENCES "oberschüler" ("id")
);

CREATE TABLE "likes"
(
	"schüler_id" INT,
	"liked_id"   INT,
	PRIMARY KEY ("schüler_id", "liked_id"),
	FOREIGN KEY ("schüler_id") REFERENCES "oberschüler" ("id"),
	FOREIGN KEY ("liked_id") REFERENCES "oberschüler" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "oberschüler" VALUES (1510, 'Jordan', 9);
INSERT INTO "oberschüler" VALUES (1689, 'Gabriel', 9);
INSERT INTO "oberschüler" VALUES (1381, 'Tiffany', 9);
INSERT INTO "oberschüler" VALUES (1709, 'Cassandra', 9);
INSERT INTO "oberschüler" VALUES (1101, 'Haley', 10);
INSERT INTO "oberschüler" VALUES (1782, 'Andrew', 10);
INSERT INTO "oberschüler" VALUES (1468, 'Kris', 10);
INSERT INTO "oberschüler" VALUES (1641, 'Brittany', 10);
INSERT INTO "oberschüler" VALUES (1247, 'Alexis', 11);
INSERT INTO "oberschüler" VALUES (1316, 'Austin', 11);
INSERT INTO "oberschüler" VALUES (1911, 'Gabriel', 11);
INSERT INTO "oberschüler" VALUES (1501, 'Jessica', 11);
INSERT INTO "oberschüler" VALUES (1304, 'Jordan', 12);
INSERT INTO "oberschüler" VALUES (1025, 'John', 12);
INSERT INTO "oberschüler" VALUES (1934, 'Kyle', 12);
INSERT INTO "oberschüler" VALUES (1661, 'Logan', 12);

INSERT INTO "freund" VALUES (1510, 1381);
INSERT INTO "freund" VALUES (1510, 1689);
INSERT INTO "freund" VALUES (1689, 1709);
INSERT INTO "freund" VALUES (1381, 1247);
INSERT INTO "freund" VALUES (1709, 1247);
INSERT INTO "freund" VALUES (1689, 1782);
INSERT INTO "freund" VALUES (1782, 1468);
INSERT INTO "freund" VALUES (1782, 1316);
INSERT INTO "freund" VALUES (1782, 1304);
INSERT INTO "freund" VALUES (1468, 1101);
INSERT INTO "freund" VALUES (1468, 1641);
INSERT INTO "freund" VALUES (1101, 1641);
INSERT INTO "freund" VALUES (1247, 1911);
INSERT INTO "freund" VALUES (1247, 1501);
INSERT INTO "freund" VALUES (1911, 1501);
INSERT INTO "freund" VALUES (1501, 1934);
INSERT INTO "freund" VALUES (1316, 1934);
INSERT INTO "freund" VALUES (1934, 1304);
INSERT INTO "freund" VALUES (1304, 1661);
INSERT INTO "freund" VALUES (1661, 1025);

INSERT INTO "likes" VALUES (1689, 1709);
INSERT INTO "likes" VALUES (1709, 1689);
INSERT INTO "likes" VALUES (1782, 1709);
INSERT INTO "likes" VALUES (1911, 1247);
INSERT INTO "likes" VALUES (1247, 1468);
INSERT INTO "likes" VALUES (1641, 1468);
INSERT INTO "likes" VALUES (1316, 1304);
INSERT INTO "likes" VALUES (1501, 1934);
INSERT INTO "likes" VALUES (1934, 1501);
INSERT INTO "likes" VALUES (1025, 1101);

COMMIT;