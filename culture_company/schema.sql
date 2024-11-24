CREATE TABLE "buchclub"
(
	"buchclub_id"            INT,
	"jahr"                   INT,
	"autor_oder_herausgeber" TEXT,
	"buchtitel"              TEXT,
	"verlag"                 TEXT,
	"kategorie"              TEXT,
	"ergebnis"               TEXT,
	PRIMARY KEY ("buchclub_id")
);

CREATE TABLE "film"
(
	"film_id"         INT,
	"titel"           TEXT,
	"jahr"            INT,
	"regisseur"       TEXT,
	"budget_million"  REAL,
	"brutto_weltweit" INT,
	PRIMARY KEY ("film_id")
);

CREATE TABLE "kultur_unternehmen"
(
	"firmenname"                    TEXT,
	"typ"                           TEXT,
	"gegründet_in"                  TEXT,
	"kapitalbeteiligung_der_gruppe" REAL,
	"buchclub_id"                   TEXT,
	"film_id"                       TEXT,
	PRIMARY KEY ("firmenname"),
	FOREIGN KEY ("buchclub_id") REFERENCES "buchclub" ("buchclub_id"),
	FOREIGN KEY ("film_id") REFERENCES "film" ("film_id")
);

BEGIN TRANSACTION;
INSERT INTO "buchclub" VALUES (1, 1989, 'Michael Nava', 'Goldenboy', 'Alyson', 'Gay M/SF', 'Won [A ]');
INSERT INTO "buchclub" VALUES (2, 1989, 'Donald Ward', 'Death Takes the Stage', 'St. Martin''s Press', 'Gay M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (3, 1989, 'Michael Bishop', 'Unicorn Mountain', 'William Morrow', 'Gay M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (4, 1989, 'Joseph Hansen', 'Obedience', 'Mysterious Press', 'Gay M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (5, 1989, 'George Baxt', 'Whoӳ Next', 'International Polygonics', 'Gay M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (6, 1989, 'Antoinette Azolakov', 'Skiptrace', 'Banned Books', 'Lesb. M/SF', 'Won');
INSERT INTO "buchclub" VALUES (7, 1989, 'Claire McNab', 'Lessons In Murder', 'Naiad Press', 'Lesb. M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (8, 1989, 'Judy Grahn', 'Mundaneӳ World', 'Crossing Press', 'Lesb. M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (9, 1989, 'Dolores Klaich', 'Heavy Gilt', 'Naiad Press', 'Lesb. M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (10, 1989, 'Sandy Bayer', 'The Crystal Curtain', 'Alyson', 'Lesb. M/SF', 'Nom');
INSERT INTO "buchclub" VALUES (11, 1990, 'Jeffrey N. McMahan', 'Somewhere in the Night', 'Alyson', 'Gay SF/F', 'Won [B ]');
INSERT INTO "buchclub" VALUES (12, 1990, 'Thom Nickels', 'Walking Water / After All This', 'Banned Books', 'Gay SF/F', 'Nom');

INSERT INTO "film" VALUES (1, 'The Boondock Saints', 1999, 'Troy Duffy', 6.0, 30471);
INSERT INTO "film" VALUES (2, 'The Big Kahuna', 1999, 'John Swanbeck', 7.0, 3728888);
INSERT INTO "film" VALUES (3, 'Storm Catcher', 1999, 'Anthony Hickox', 5.0, 40500);
INSERT INTO "film" VALUES (4, 'Jill Rips', 2000, 'Anthony Hickox', 4.0, 456774);
INSERT INTO "film" VALUES (5, 'The Whole Nine Yards', 2000, 'Jonathan Lynn', 41.3, 106371651);
INSERT INTO "film" VALUES (6, 'Battlefield Earth', 2000, 'Roger Christian', 44.0, 29725663);
INSERT INTO "film" VALUES (7, 'Get Carter', 2000, 'Stephen Kay', 63.6, 19412993);
INSERT INTO "film" VALUES (8, 'The Art of War', 2000, 'Christian Duguay', 60.0, 40400425);
INSERT INTO "film" VALUES (9, 'Agent Red', 2000, 'Damian Lee', 47.0, 543356);
INSERT INTO "film" VALUES (10, '3000 Miles to Graceland', 2001, 'Demian Lichtenstein', 62.0, 18720175);

INSERT INTO "kultur_unternehmen" VALUES ('Culture China', 'Corporate', 'China', 18.77, '1', '2');
INSERT INTO "kultur_unternehmen" VALUES ('Culture China Cargo', 'Joint Venture', 'China', 49.0, '2', '3');
INSERT INTO "kultur_unternehmen" VALUES ('Culture Hong Kong', 'Joint Venture', 'Hong Kong', 60.0, '3', '4');
INSERT INTO "kultur_unternehmen" VALUES ('Dragonair', 'Subsidiary', 'Hong Kong', 100.0, '5', '7');
INSERT INTO "kultur_unternehmen" VALUES ('Cathay Pacific Culture', 'Subsidiary', 'Hong Kong', 100.0, '5', '5');
INSERT INTO "kultur_unternehmen" VALUES ('Cathay Pacific Culture Services (HK) Limited', 'Subsidiary', 'Hong Kong', 100.0, '6', '6');

COMMIT;