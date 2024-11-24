CREATE TABLE "festival_detail"
(
	"festival_id"          INT,
	"festival_name"        TEXT,
	"stuhlname"            TEXT,
	"ort"                  TEXT,
	"jahr"                 INT,
	"anzahl_der_zuschauer" INT,
	PRIMARY KEY ("festival_id")
);

CREATE TABLE "kunstwerk"
(
	"kunstwerk_id" INT,
	"typ"          TEXT,
	"name"         TEXT,
	PRIMARY KEY ("kunstwerk_id")
);

CREATE TABLE "nominierung"
(
	"kunstwerk_id" INT,
	"festival_id"  INT,
	"ergebnis"     TEXT,
	PRIMARY KEY ("kunstwerk_id", "festival_id"),
	FOREIGN KEY ("kunstwerk_id") REFERENCES "kunstwerk" ("kunstwerk_id"),
	FOREIGN KEY ("festival_id") REFERENCES "festival_detail" ("festival_id")
);

BEGIN TRANSACTION;
INSERT INTO "festival_detail" VALUES (1, 'Panasonic Awards', 'Raymond Floyd', 'United States', 2006, 152);
INSERT INTO "festival_detail" VALUES (2, 'Flower Awards', 'Charles Coody', 'United States', 2007, 155);
INSERT INTO "festival_detail" VALUES (3, 'Cherry Awards', 'Doug Ford', 'United States', 2007, 160);
INSERT INTO "festival_detail" VALUES (4, 'Gobel Awards', 'Arnold Palmer', 'United States', 2008, 160);
INSERT INTO "festival_detail" VALUES (5, 'LA Awards', 'Lucy Lu', 'United States', 2010, 161);

INSERT INTO "kunstwerk" VALUES (1, 'Program Music/Variety Show', 'Indonesian Idol');
INSERT INTO "kunstwerk" VALUES (2, 'Program Music/Variety Show', 'I Know');
INSERT INTO "kunstwerk" VALUES (3, 'Presenter Music/Variety Show', 'Loving you');
INSERT INTO "kunstwerk" VALUES (4, 'Program Music/Variety Show', 'Why');
INSERT INTO "kunstwerk" VALUES (5, 'Presenter Music/Variety Show', 'Boys');
INSERT INTO "kunstwerk" VALUES (6, 'Program Talent Show', 'Cats');
INSERT INTO "kunstwerk" VALUES (7, 'Presenter Talent Show', 'Daniel Mananta');
INSERT INTO "kunstwerk" VALUES (8, 'Program Talent Show', 'Martin');
INSERT INTO "kunstwerk" VALUES (9, 'Presenter Talent Show', 'Back Home');

INSERT INTO "nominierung" VALUES (1, 2, 'Nominated');
INSERT INTO "nominierung" VALUES (2, 2, 'Won');
INSERT INTO "nominierung" VALUES (3, 1, 'Nominated');
INSERT INTO "nominierung" VALUES (4, 1, 'Won');
INSERT INTO "nominierung" VALUES (8, 5, 'Nominated');
INSERT INTO "nominierung" VALUES (9, 5, 'Nominated');

COMMIT;