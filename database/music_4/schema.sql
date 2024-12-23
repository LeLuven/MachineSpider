CREATE TABLE "künstler"
(
	"artist_id"                        INT,
	"künstler"                         TEXT,
	"alter"                            INT,
	"berühmter_titel"                  TEXT,
	"berühmtes_veröffentlichungsdatum" TEXT,
	PRIMARY KEY ("artist_id")
);

CREATE TABLE "lautstärke"
(
	"band_id"              INT,
	"bandausgabe"          TEXT,
	"ausgabe_datum"        TEXT,
	"wochen_an_der_spitze" REAL,
	"song"                 TEXT,
	"artist_id"            INT,
	PRIMARY KEY ("band_id"),
	FOREIGN KEY ("artist_id") REFERENCES "künstler" ("artist_id")
);

CREATE TABLE "musikfestival"
(
	"id"                      INT,
	"musikfestival"           TEXT,
	"datum_der_veranstaltung" TEXT,
	"kategorie"               TEXT,
	"lautstärke"              INT,
	"ergebnis"                TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("lautstärke") REFERENCES "lautstärke" ("band_id")
);

BEGIN TRANSACTION;
INSERT INTO "künstler" VALUES (1, 'Gorgoroth', 34, 'Bergen 1996', 'November 2007');
INSERT INTO "künstler" VALUES (2, 'Ophiolatry', 35, 'Transmutation', 'January 21, 2008');
INSERT INTO "künstler" VALUES (3, 'Ophiolatry', 22, 'Antievangelistical Process (re-release)', '2009');
INSERT INTO "künstler" VALUES (4, 'Black Flame', 18, 'Imperivm', 'June 23, 2008');
INSERT INTO "künstler" VALUES (5, 'Tangorodrim', 35, 'Unholy Metal Way (re-release)', '2009');
INSERT INTO "künstler" VALUES (6, 'Tangorodrim', 27, 'Those Who Unleashed (re-release)', '2009');
INSERT INTO "künstler" VALUES (7, 'Triumfall', 49, 'Antithesis of All Flesh', 'June 15, 2009');

INSERT INTO "lautstärke" VALUES (1, '45:14 §', '27 December 1986 - 10 January', 3.0, ' The Way', 1);
INSERT INTO "lautstärke" VALUES (2, '45:15', '17 January', 1.0, ' Everybody Have Fun Tonight ', 2);
INSERT INTO "lautstärke" VALUES (3, '45:16', '24 January', 1.0, ' Walk Like an Egyptian ', 1);
INSERT INTO "lautstärke" VALUES (4, '45:21-22', '28 February - 7 March', 2.0, ' Touch Me (I Want Your Body) ', 2);
INSERT INTO "lautstärke" VALUES (5, '46:5', '9 May', 1.0, ' With or Without You ', 1);
INSERT INTO "lautstärke" VALUES (6, '46:6-8', '16 May - 30 May', 3.0, ' (I Just) Died in Your Arms ', 1);
INSERT INTO "lautstärke" VALUES (7, '46:9', '6 June', 1.0, ' La Isla Bonita ', 4);
INSERT INTO "lautstärke" VALUES (8, '46:10', '13 June', 1.0, 'Looking for a New Love', 5);
INSERT INTO "lautstärke" VALUES (9, '46:14-15', '11 July - 18 July', 2.0, ' Always ', 6);
INSERT INTO "lautstärke" VALUES (10, '46:16', '25 July', 1.0, 'Head to Toe ', 5);

INSERT INTO "musikfestival" VALUES (1, '34th England Academy Prize', '18 February 2011', 'Best Song', 1, 'Nominated');
INSERT INTO "musikfestival" VALUES (2, '34th Japan Academy Prize', '18 February 2011', 'Best Lyrics', 2, 'Nominated');
INSERT INTO "musikfestival" VALUES (3, '34th European Academy Prize', '18 February 2011', 'Best Song', 3, 'Awarded');
INSERT INTO "musikfestival" VALUES (4, '36th Japan Academy Prize', '18 February 2011', 'Best Song', 4, 'Awarded');
INSERT INTO "musikfestival" VALUES (5, '34th USA Academy Prize', '18 February 2011', 'Best Song', 5, 'Nominated');
INSERT INTO "musikfestival" VALUES (6, '40th Japan Academy Prize', '18 February 2011', 'Best Song', 6, 'Nominated');
INSERT INTO "musikfestival" VALUES (7, '37th Sweden Academy Prize', '18 February 2011', 'Best Lyrics', 7, 'Nominated');
INSERT INTO "musikfestival" VALUES (8, '37th Canadian Academy Prize', '18 February 2011', 'Best Lyrics', 8, 'Nominated');
INSERT INTO "musikfestival" VALUES (9, '35th China Academy Prize', '18 February 2011', 'Best Sound Song', 9, 'Awarded');

COMMIT;