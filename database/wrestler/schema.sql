CREATE TABLE "wrestler"
(
	"wrestler_id"    INT,
	"name"           TEXT,
	"herrschaft"     TEXT,
	"tage_im_besitz" TEXT,
	"ort"            TEXT,
	"ereignis"       TEXT,
	PRIMARY KEY ("wrestler_id")
);

CREATE TABLE "ausscheidung"
(
	"ausscheidung_id"       TEXT,
	"wrestler_id"           TEXT,
	"team"                  TEXT,
	"eliminiert_durch"      TEXT,
	"ausscheidungsbewegung" TEXT,
	"zeit"                  TEXT,
	PRIMARY KEY ("ausscheidung_id"),
	FOREIGN KEY ("wrestler_id") REFERENCES "wrestler" ("wrestler_id")
);

BEGIN TRANSACTION;
INSERT INTO "wrestler" VALUES (1, 'Rey Misterio Sr.', '1', '344', 'Tijuana , Mexico', 'Live event');
INSERT INTO "wrestler" VALUES (2, 'Fishman', '1', '113', 'Tijuana , Mexico', 'Live event');
INSERT INTO "wrestler" VALUES (3, 'Villaño IV', '1', '1285', 'Tijuana , Mexico', 'Live event');
INSERT INTO "wrestler" VALUES (4, 'Gran Hamada', '1', '960', 'Tokyo , Japan', 'Live event');
INSERT INTO "wrestler" VALUES (5, 'El Samurai', '1', '1', 'Tokyo , Japan', 'Live event');
INSERT INTO "wrestler" VALUES (6, 'The Great Sasuke §', '1', '99', 'Tokyo , Japan', 'Live event');
INSERT INTO "wrestler" VALUES (7, 'Último Dragón §', '1', '54', 'Osaka , Japan', 'Live event');
INSERT INTO "wrestler" VALUES (8, 'Jushin Liger §', '1', '183', 'Tokyo , Japan', 'Wrestling World 1997');
INSERT INTO "wrestler" VALUES (9, 'El Samurai §', '2', '35', 'Sapporo , Japan', 'Live event');
INSERT INTO "wrestler" VALUES (10, 'Shinjiro Otani §', '1', '56', 'Nagoya , Japan', 'Live event');

INSERT INTO "ausscheidung" VALUES ('1', '1', 'Team Orton', 'Punk', 'Go To Sleep', '00:11');
INSERT INTO "ausscheidung" VALUES ('2', '2', 'Team Batista', 'Benjamin', 'Paydirt', '07:38');
INSERT INTO "ausscheidung" VALUES ('3', '4', 'Team Batista', 'Orton', 'Rope hung DDT', '10:45');
INSERT INTO "ausscheidung" VALUES ('4', '5', 'Team Batista', 'Rhodes', 'Silver Spoon DDT', '13:06');
INSERT INTO "ausscheidung" VALUES ('5', '7', 'Team Batista', 'Henry', 'World''s Strongest Slam', '14:22');
INSERT INTO "ausscheidung" VALUES ('6', '9', 'Team Orton', 'Batista', 'Spear', '14:32');

COMMIT;