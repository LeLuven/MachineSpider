CREATE TABLE "journal"
(
	"journal_id" INT,
	"datum"      TEXT,
	"thema"      TEXT,
	"umsatz"     INT,
	PRIMARY KEY ("journal_id")
);

CREATE TABLE "redakteur"
(
	"redakteur_id" INT,
	"name"         TEXT,
	"alter"        REAL,
	PRIMARY KEY ("redakteur_id")
);

CREATE TABLE "zeitschriftenausschuss"
(
	"redakteur_id" INT,
	"journal_id"   INT,
	"arbeitstyp"   TEXT,
	PRIMARY KEY ("redakteur_id", "journal_id"),
	FOREIGN KEY ("redakteur_id") REFERENCES "redakteur" ("redakteur_id"),
	FOREIGN KEY ("journal_id") REFERENCES "journal" ("journal_id")
);

BEGIN TRANSACTION;
INSERT INTO "journal" VALUES (1, 'September 9, 2001', 'Miami Dolphins', 798);
INSERT INTO "journal" VALUES (2, 'September 23, 2001', 'at Jacksonville Jaguars', 994);
INSERT INTO "journal" VALUES (4, 'October 7, 2001', 'at Baltimore Ravens', 7494);
INSERT INTO "journal" VALUES (5, 'October 14, 2001', 'Tampa Bay Buccaneers', 4798);
INSERT INTO "journal" VALUES (6, 'October 21, 2001', 'at Detroit Lions', 2940);
INSERT INTO "journal" VALUES (7, 'October 29, 2001', 'at Pittsburgh Steelers', 1763);
INSERT INTO "journal" VALUES (8, 'November 4, 2001', 'Jacksonville Jaguars', 1232);
INSERT INTO "journal" VALUES (9, 'November 12, 2001', 'Baltimore Ravens', 6532);
INSERT INTO "journal" VALUES (10, 'November 18, 2001', 'at Cincinnati Bengals', 3421);
INSERT INTO "journal" VALUES (11, 'November 25, 2001', 'Pittsburgh Steelers', 3342);
INSERT INTO "journal" VALUES (12, 'December 2, 2001', 'at Cleveland Browns', 3534);
INSERT INTO "journal" VALUES (13, 'December 9, 2001', 'at Minnesota Vikings', 4271);
INSERT INTO "journal" VALUES (14, 'December 16, 2001', 'Green Bay Packers', 2804);
INSERT INTO "journal" VALUES (15, 'December 22, 2001', 'at Oakland Raiders', 1934);
INSERT INTO "journal" VALUES (16, 'December 30, 2001', 'Cleveland Browns', 3798);
INSERT INTO "journal" VALUES (17, 'January 6, 2002', 'Cincinnati Bengals', 5342);

INSERT INTO "redakteur" VALUES (1, 'Kamila Porczyk', 34.0);
INSERT INTO "redakteur" VALUES (2, 'Anna Powierza', 35.0);
INSERT INTO "redakteur" VALUES (3, 'Marek Siudym', 21.0);
INSERT INTO "redakteur" VALUES (4, 'Piotr Pręgowski', 43.0);
INSERT INTO "redakteur" VALUES (5, 'Szymon Wydra', 20.0);
INSERT INTO "redakteur" VALUES (6, 'Władysław Grzywna', 24.0);
INSERT INTO "redakteur" VALUES (7, 'Mariusz Zalejski', 25.0);
INSERT INTO "redakteur" VALUES (8, 'Grażyna Wolszczak', 54.0);
INSERT INTO "redakteur" VALUES (9, 'Maria Góralczyk', 38.0);

INSERT INTO "zeitschriftenausschuss" VALUES (1, 13, 'Photo');
INSERT INTO "zeitschriftenausschuss" VALUES (8, 17, 'Article');
INSERT INTO "zeitschriftenausschuss" VALUES (6, 11, 'Photo');
INSERT INTO "zeitschriftenausschuss" VALUES (4, 2, 'Article');
INSERT INTO "zeitschriftenausschuss" VALUES (3, 6, 'Title');
INSERT INTO "zeitschriftenausschuss" VALUES (9, 12, 'Photo');
INSERT INTO "zeitschriftenausschuss" VALUES (8, 4, 'Photo');

COMMIT;