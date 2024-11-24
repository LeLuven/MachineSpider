CREATE TABLE "schule"
(
	"schule_id"                           INT,
	"schule"                              TEXT,
	"standort"                            TEXT,
	"einschreibung"                       REAL,
	"gegründet"                           REAL,
	"konfession"                          TEXT,
	"jungen_oder_mädchen"                 TEXT,
	"tages__oder_internatsschule"         TEXT,
	"jahr_der_aufnahme_in_den_wettbewerb" REAL,
	"schulfarben"                         TEXT,
	PRIMARY KEY ("schule_id")
);

CREATE TABLE "schulangaben"
(
	"schule_id" INT,
	"nickname"  TEXT,
	"farben"    TEXT,
	"liga"      TEXT,
	"klasse"    TEXT,
	"division"  TEXT,
	PRIMARY KEY ("schule_id"),
	FOREIGN KEY ("schule_id") REFERENCES "schule" ("schule_id")
);

CREATE TABLE "schulleistung"
(
	"schule_id" INT,
	"schuljahr" TEXT,
	"klasse_a"  TEXT,
	"klasse_aa" TEXT,
	PRIMARY KEY ("schule_id", "schuljahr"),
	FOREIGN KEY ("schule_id") REFERENCES "schule" ("schule_id")
);

CREATE TABLE "spieler"
(
	"spieler_id" INT,
	"spieler"    TEXT,
	"mannschaft" TEXT,
	"alter"      INT,
	"position"   TEXT,
	"schule_id"  INT,
	PRIMARY KEY ("spieler_id"),
	FOREIGN KEY ("schule_id") REFERENCES "schule" ("schule_id")
);

BEGIN TRANSACTION;
INSERT INTO "schule" VALUES (1, 'St Aloysius'' College', 'Milsons Point', 1200.0, 1879.0, 'Catholic', 'Boys', 'Day', 1929.0, 'Royal Blue and Gold');
INSERT INTO "schule" VALUES (2, 'Barker College', 'Hornsby', 2300.0, 1890.0, 'Anglican', 'Boys only to Yr 9 Co-ed Year 10 to 12', 'Day & Boarding', 1929.0, 'Red & Blue');
INSERT INTO "schule" VALUES (3, 'Cranbrook School', 'Bellevue Hill', 1000.0, 1918.0, 'Anglican', 'Boys', 'Day & Boarding', 1929.0, 'Red, White & Blue');
INSERT INTO "schule" VALUES (4, 'Knox Grammar School', 'Wahroonga', 1850.0, 1924.0, 'Uniting Church', 'Boys', 'Day & Boarding', 1929.0, 'Black & Blue');
INSERT INTO "schule" VALUES (5, 'Trinity Grammar School', 'Summer Hill', 2200.0, 1913.0, 'Anglican', 'Boys', 'Day & Boarding', 1929.0, 'Green and White');
INSERT INTO "schule" VALUES (6, 'Waverley College', 'Waverley', 1430.0, 1903.0, 'Catholic', 'Boys', 'Day', 1944.0, 'Royal Blue and Gold');

INSERT INTO "schulangaben" VALUES (1, 'Tigers', 'Blue and Yellow', 'DSHA', 'Flight A', 'Division 1');
INSERT INTO "schulangaben" VALUES (2, 'Auks', 'Dark Green and White', 'DSHA', 'Flight B', 'Division 3');
INSERT INTO "schulangaben" VALUES (3, 'Buccaneers', 'Garnet and White', 'DSHA', 'Fight A', 'Division 1');
INSERT INTO "schulangaben" VALUES (4, 'Raiders', 'Maroon and White', 'DSHA', 'Flight B', 'Division 3');
INSERT INTO "schulangaben" VALUES (5, 'Seahawks', 'Blue and Gold', 'DSHA', 'Flight B', 'Division 2');
INSERT INTO "schulangaben" VALUES (6, 'Silver Eagles', 'Silver and Maroon', 'DSHA', 'Flight B', 'Division 3');

INSERT INTO "schulleistung" VALUES (1, '1987-88', 'Yantis', 'Blanco');
INSERT INTO "schulleistung" VALUES (1, '1988-89', 'Happy', 'Blanco');
INSERT INTO "schulleistung" VALUES (1, '1989-90', 'Skidmore-Tynan', 'Bishop');
INSERT INTO "schulleistung" VALUES (2, '1990-91', 'Louise', 'Lytle');
INSERT INTO "schulleistung" VALUES (2, '1991-92', 'Anton', 'Clarendon');
INSERT INTO "schulleistung" VALUES (3, '1992-93', 'Anton', 'Wheeler');
INSERT INTO "schulleistung" VALUES (4, '1993-94', 'Utopia', 'Lytle');
INSERT INTO "schulleistung" VALUES (3, '1994-95', 'Martin''s Mill', 'Wallis Brazos');
INSERT INTO "schulleistung" VALUES (5, '1995-96', 'Lindsay', 'Henrietta');
INSERT INTO "schulleistung" VALUES (6, '1996-97', 'Martin''s Mill', 'Canadian');
INSERT INTO "schulleistung" VALUES (1, '1997-98', 'Martin''s Mill', 'Buffalo');
INSERT INTO "schulleistung" VALUES (2, '1998-99', 'Wheeler', 'Van Alstyne');
INSERT INTO "schulleistung" VALUES (3, '1999-2000', 'Valley View', 'Lindsay');
INSERT INTO "schulleistung" VALUES (5, '2000-01', 'Menard', 'Weimar');
INSERT INTO "schulleistung" VALUES (6, '2001-02', 'Santa Anna', 'Hale Center');
INSERT INTO "schulleistung" VALUES (2, '2002-03', 'Martin''s Mill', 'Hale Center');
INSERT INTO "schulleistung" VALUES (1, '2003-04', 'Martin''s Mill', 'S&S Consolidated');
INSERT INTO "schulleistung" VALUES (2, '2004-05', 'Lindsay', 'Salado');
INSERT INTO "schulleistung" VALUES (3, '2005-06', 'Quanah', 'Salado');
INSERT INTO "schulleistung" VALUES (1, '2006-07', 'Martin''s Mill', 'Weimar');
INSERT INTO "schulleistung" VALUES (6, '2007-08', 'Frost', 'Weimar');
INSERT INTO "schulleistung" VALUES (4, '2008-09', 'Winters', 'Dimmitt');

INSERT INTO "spieler" VALUES (1, 'Timothy Beckham', 'Tampa Bay Devil Rays', 15, 'Shortstop', 1);
INSERT INTO "spieler" VALUES (2, 'Pedro Álvarez', 'Pittsburgh Pirates', 14, 'Third baseman', 2);
INSERT INTO "spieler" VALUES (3, 'Eric Hosmer', 'Kansas City Royals', 16, 'First Baseman', 1);
INSERT INTO "spieler" VALUES (4, 'Brian Matusz', 'Baltimore Orioles', 17, 'Left-handed pitcher', 1);
INSERT INTO "spieler" VALUES (5, 'Buster Posey', 'San Francisco Giants', 15, 'Catcher', 2);
INSERT INTO "spieler" VALUES (6, 'Kyle Skipworth', 'Florida Marlins', 14, 'Catcher', 2);
INSERT INTO "spieler" VALUES (7, 'Yonder Alonso', 'Cincinnati Reds', 15, 'First baseman', 1);
INSERT INTO "spieler" VALUES (8, 'Gordon Beckham', 'Chicago White Sox', 16, 'Shortstop', 1);
INSERT INTO "spieler" VALUES (9, 'Aaron Crow *', 'Washington Nationals', 16, 'Right-handed pitcher', 1);
INSERT INTO "spieler" VALUES (10, 'Jason Castro', 'Houston Astros', 15, 'Catcher', 1);
INSERT INTO "spieler" VALUES (11, 'Justin Smoak', 'Texas Rangers', 15, 'First baseman', 1);
INSERT INTO "spieler" VALUES (12, 'Jemile Weeks', 'Oakland Athletics', 15, 'Second baseman', 2);
INSERT INTO "spieler" VALUES (13, 'Brett Wallace', 'St. Louis Cardinals', 17, 'Third baseman', 5);
INSERT INTO "spieler" VALUES (14, 'Aaron Hicks', 'Minnesota Twins', 14, 'Outfielder', 6);
INSERT INTO "spieler" VALUES (15, 'Ethan Martin', 'Los Angeles Dodgers', 15, 'Right-handed pitcher', 1);
INSERT INTO "spieler" VALUES (16, 'Brett Lawrie', 'Milwaukee Brewers', 15, 'Catcher', 1);
INSERT INTO "spieler" VALUES (17, 'David Cooper', 'Toronto Blue Jays', 17, 'First baseman', 1);
INSERT INTO "spieler" VALUES (18, 'Ike Davis', 'New York Mets', 15, 'First baseman', 4);
INSERT INTO "spieler" VALUES (19, 'Andrew Cashner', 'Chicago Cubs', 16, 'Right-handed pitcher', 4);
INSERT INTO "spieler" VALUES (20, 'Josh Fields', 'Seattle Mariners', 15, 'Right-handed pitcher', 4);
INSERT INTO "spieler" VALUES (21, 'Ryan Perry', 'Detroit Tigers', 17, 'Right-handed pitcher', 3);
INSERT INTO "spieler" VALUES (22, 'Reese Havens', 'New York Mets', 18, 'Shortstop', 5);
INSERT INTO "spieler" VALUES (23, 'Allan Dykstra', 'San Diego Padres', 15, 'First baseman', 5);

COMMIT;