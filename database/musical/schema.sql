CREATE TABLE "musik"
(
	"musical_id"  INT,
	"name"        TEXT,
	"jahr"        INT,
	"preis"       TEXT,
	"kategorie"   TEXT,
	"nominierter" TEXT,
	"ergebnis"    TEXT,
	PRIMARY KEY ("musical_id")
);

CREATE TABLE "schauspieler"
(
	"schauspieler_id" INT,
	"name"            TEXT,
	"musical_id"      INT,
	"charakter"       TEXT,
	"dauer"           TEXT,
	"alter"           INT,
	PRIMARY KEY ("schauspieler_id"),
	FOREIGN KEY ("musical_id") REFERENCES "musik" ("musical_id")
);

BEGIN TRANSACTION;
INSERT INTO "musik" VALUES (1, 'The Phantom of the Opera', 1986, 'Tony Award', 'Best Book of a Musical', 'Bob Fosse', 'Nominated');
INSERT INTO "musik" VALUES (2, 'Les Misérables', 1986, 'Tony Award', 'Best Performance by a Leading Actor in a Musical', 'Cleavant Derricks', 'Nominated');
INSERT INTO "musik" VALUES (3, 'Wicked', 1986, 'Tony Award', 'Best Direction of a Musical', 'Bob Fosse', 'Nominated');
INSERT INTO "musik" VALUES (4, 'West Side Story', 1986, 'Tony Award', 'Best Choreography', 'Bob Fosse', 'Won');
INSERT INTO "musik" VALUES (5, 'Rent', 1986, 'Drama Desk Award', 'Outstanding Actor in a Musical', 'Cleavant Derricks', 'Nominated');
INSERT INTO "musik" VALUES (6, 'The Book of Mormon', 1986, 'Drama Desk Award', 'Outstanding Director of a Musical', 'Bob Fosse', 'Nominated');
INSERT INTO "musik" VALUES (7, 'Chicago', 1986, 'Drama Desk Award', 'Outstanding Choreography', 'Bob Fosse', 'Won');

INSERT INTO "schauspieler" VALUES (1, 'Ray Meagher', 1, 'Alf Stewart', '1988—', 26);
INSERT INTO "schauspieler" VALUES (2, 'Tom Oliver', 1, 'Lou Carpenter', '1988, 1992—', 22);
INSERT INTO "schauspieler" VALUES (3, 'Lynne McGranger', 2, 'Irene Roberts', '1993—', 21);
INSERT INTO "schauspieler" VALUES (4, 'Kate Ritchie', 2, 'Sally Fletcher', '1988–2008, 2013', 20);
INSERT INTO "schauspieler" VALUES (5, 'Alan Fletcher', 4, 'Karl Kennedy', '1994—', 20);
INSERT INTO "schauspieler" VALUES (6, 'Jackie Woodburne', 6, 'Susan Kennedy', '1994—', 20);
INSERT INTO "schauspieler" VALUES (7, 'Ryan Moloney', 6, 'Toadfish Rebecchi', '1995, 1996—', 18);
INSERT INTO "schauspieler" VALUES (8, 'Ian Smith', 6, 'Harold Bishop', '1987–1991, 1996–2009, 2011', 17);
INSERT INTO "schauspieler" VALUES (9, 'Stefan Dennis', 6, 'Paul Robinson', '1985–1992, 1993, 2004—', 17);

COMMIT;