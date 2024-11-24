CREATE TABLE "film"
(
	"film_id" INT,
	"titel"   TEXT,
	"jahr"    INT,
	"regie"   TEXT,
	PRIMARY KEY ("film_id")
);

CREATE TABLE "rezensent"
(
	"rezensent_id" INT,
	"name"         TEXT,
	PRIMARY KEY ("rezensent_id")
);

CREATE TABLE "bewertung"
(
	"rezensent_id"     INT,
	"film_id"          INT,
	"bewertung_sterne" INT,
	"bewertungsdatum"  DATE,
	FOREIGN KEY ("rezensent_id") REFERENCES "rezensent" ("rezensent_id"),
	FOREIGN KEY ("film_id") REFERENCES "film" ("film_id")
);

BEGIN TRANSACTION;
INSERT INTO "film" VALUES (101, 'Gone with the Wind', 1939, 'Victor Fleming');
INSERT INTO "film" VALUES (102, 'Star Wars', 1977, 'George Lucas');
INSERT INTO "film" VALUES (103, 'The Sound of Music', 1965, 'Robert Wise');
INSERT INTO "film" VALUES (104, 'E.T.', 1982, 'Steven Spielberg');
INSERT INTO "film" VALUES (105, 'Titanic', 1997, 'James Cameron');
INSERT INTO "film" VALUES (106, 'Snow White', 1937, NULL);
INSERT INTO "film" VALUES (107, 'Avatar', 2009, 'James Cameron');
INSERT INTO "film" VALUES (108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

INSERT INTO "rezensent" VALUES (201, 'Sarah Martinez');
INSERT INTO "rezensent" VALUES (202, 'Daniel Lewis');
INSERT INTO "rezensent" VALUES (203, 'Brittany Harris');
INSERT INTO "rezensent" VALUES (204, 'Mike Anderson');
INSERT INTO "rezensent" VALUES (205, 'Chris Jackson');
INSERT INTO "rezensent" VALUES (206, 'Elizabeth Thomas');
INSERT INTO "rezensent" VALUES (207, 'James Cameron');
INSERT INTO "rezensent" VALUES (208, 'Ashley White');

INSERT INTO "bewertung" VALUES (201, 101, 2, '2011-01-22');
INSERT INTO "bewertung" VALUES (201, 101, 4, '2011-01-27');
INSERT INTO "bewertung" VALUES (202, 106, 4, NULL);
INSERT INTO "bewertung" VALUES (203, 103, 2, '2011-01-20');
INSERT INTO "bewertung" VALUES (203, 108, 4, '2011-01-12');
INSERT INTO "bewertung" VALUES (203, 108, 2, '2011-01-30');
INSERT INTO "bewertung" VALUES (204, 101, 3, '2011-01-09');
INSERT INTO "bewertung" VALUES (205, 103, 3, '2011-01-27');
INSERT INTO "bewertung" VALUES (205, 104, 2, '2011-01-22');
INSERT INTO "bewertung" VALUES (205, 108, 4, NULL);
INSERT INTO "bewertung" VALUES (206, 107, 3, '2011-01-15');
INSERT INTO "bewertung" VALUES (206, 106, 5, '2011-01-19');
INSERT INTO "bewertung" VALUES (207, 107, 5, '2011-01-20');
INSERT INTO "bewertung" VALUES (208, 104, 3, '2011-01-02');

COMMIT;