CREATE TABLE "verein"
(
	"verein_id" INT,
	"name"      TEXT,
	"region"    TEXT,
	"startjahr" TEXT,
	PRIMARY KEY ("verein_id")
);

CREATE TABLE "wettbewerb"
(
	"wettbewerb_id"  INT,
	"jahr"           REAL,
	"wettbewerbstyp" TEXT,
	"land"           TEXT,
	PRIMARY KEY ("wettbewerb_id")
);

CREATE TABLE "vereinsrang"
(
	"rang"      REAL,
	"verein_id" INT,
	"gold"      REAL,
	"silber"    REAL,
	"bronze"    REAL,
	"gesamt"    REAL,
	PRIMARY KEY ("rang", "verein_id"),
	FOREIGN KEY ("verein_id") REFERENCES "verein" ("verein_id")
);

CREATE TABLE "spieler"
(
	"spieler_id"  INT,
	"name"        TEXT,
	"position"    TEXT,
	"verein_id"   INT,
	"anwendungen" REAL,
	"versuche"    REAL,
	"tore"        TEXT,
	"punkte"      REAL,
	PRIMARY KEY ("spieler_id"),
	FOREIGN KEY ("verein_id") REFERENCES "verein" ("verein_id")
);

CREATE TABLE "wettkampfergebnis"
(
	"wettbewerb_id"    INT,
	"vereinskennung_1" INT,
	"vereinskennung_2" INT,
	"score"            TEXT,
	PRIMARY KEY ("wettbewerb_id", "vereinskennung_1", "vereinskennung_2"),
	FOREIGN KEY ("wettbewerb_id") REFERENCES "wettbewerb" ("wettbewerb_id"),
	FOREIGN KEY ("vereinskennung_1") REFERENCES "verein" ("verein_id"),
	FOREIGN KEY ("vereinskennung_2") REFERENCES "verein" ("verein_id")
);

BEGIN TRANSACTION;
INSERT INTO "verein" VALUES (1, 'AIB', 'USA', '2009');
INSERT INTO "verein" VALUES (2, 'BK Slide', 'UK', '1998');
INSERT INTO "verein" VALUES (3, 'IFG', 'China', '2005');
INSERT INTO "verein" VALUES (4, 'ASC', 'Japan', '2001');
INSERT INTO "verein" VALUES (5, 'HGS2', 'England', '2000');
INSERT INTO "verein" VALUES (6, 'HSBIF', 'Brazil', '2011');

INSERT INTO "wettbewerb" VALUES (1, 2006.0, 'Friendly', 'Italy');
INSERT INTO "wettbewerb" VALUES (2, 2006.0, 'Friendly', 'Spain');
INSERT INTO "wettbewerb" VALUES (3, 2006.0, 'Friendly', 'Australia');
INSERT INTO "wettbewerb" VALUES (4, 2006.0, 'Friendly', 'Russia');
INSERT INTO "wettbewerb" VALUES (5, 2007.0, 'Friendly', 'Russia');
INSERT INTO "wettbewerb" VALUES (6, 2007.0, 'Friendly', 'Australia');
INSERT INTO "wettbewerb" VALUES (7, 2007.0, 'Tournament', 'Russia');
INSERT INTO "wettbewerb" VALUES (8, 2007.0, 'Tournament', 'Slovenia');
INSERT INTO "wettbewerb" VALUES (9, 2007.0, 'Tournament', 'Slovenia');
INSERT INTO "wettbewerb" VALUES (10, 2007.0, 'Friendly', 'Italy');
INSERT INTO "wettbewerb" VALUES (11, 2007.0, 'Friendly', 'Ireland');

INSERT INTO "vereinsrang" VALUES (1.0, 2, 11.0, 11.0, 9.0, 31.0);
INSERT INTO "vereinsrang" VALUES (2.0, 3, 8.0, 7.0, 6.0, 21.0);
INSERT INTO "vereinsrang" VALUES (3.0, 1, 7.0, 4.0, 2.0, 13.0);
INSERT INTO "vereinsrang" VALUES (4.0, 4, 4.0, 2.0, 6.0, 12.0);
INSERT INTO "vereinsrang" VALUES (5.0, 5, 3.0, 3.0, 0.0, 6.0);
INSERT INTO "vereinsrang" VALUES (6.0, 6, 2.0, 1.0, 0.0, 3.0);

INSERT INTO "spieler" VALUES (1, 'Michael Platt', 'Full Back', 1, 20.0, 5.0, '0', 20.0);
INSERT INTO "spieler" VALUES (2, 'Dave Halley', 'Right Wing', 2, 23.0, 9.0, '0', 36.0);
INSERT INTO "spieler" VALUES (3, 'James Evans', 'Right Centre', 1, 30.0, 9.0, '0', 36.0);
INSERT INTO "spieler" VALUES (4, 'Tame Tupou', 'Left Wing', 2, 10.0, 3.0, '0', 12.0);
INSERT INTO "spieler" VALUES (5, 'Iestyn Harris', 'Stand Off', 4, 27.0, 3.0, '50/60', 110.0);
INSERT INTO "spieler" VALUES (6, 'Paul Deacon (c)', 'Scrum Half', 4, 20.0, 3.0, '90/106', 188.0);
INSERT INTO "spieler" VALUES (7, 'Joe Vagana', 'Prop', 5, 19.0, 1.0, '0/1', 4.0);
INSERT INTO "spieler" VALUES (8, 'Terry Newton', 'Hooker', 5, 26.0, 9.0, '0', 36.0);
INSERT INTO "spieler" VALUES (9, 'Andy Lynch', 'Prop', 2, 29.0, 5.0, '0', 20.0);
INSERT INTO "spieler" VALUES (10, 'David Solomona', 'Second Row', 2, 24.0, 5.0, '0', 20.0);
INSERT INTO "spieler" VALUES (11, 'Glenn Morrison (vc)', 'Second Row', 2, 14.0, 6.0, '0', 24.0);
INSERT INTO "spieler" VALUES (12, 'Jamie Langley (vc)', 'Loose Forward', 2, 28.0, 2.0, '0', 8.0);
INSERT INTO "spieler" VALUES (13, 'Chris Feather', 'Prop', 3, 13.0, 1.0, '0', 4.0);
INSERT INTO "spieler" VALUES (14, 'Matt Cook', 'Second Row', 4, 17.0, 4.0, '0', 16.0);
INSERT INTO "spieler" VALUES (15, 'Sam Burgess', 'Loose Forward', 4, 23.0, 8.0, '0', 32.0);

INSERT INTO "wettkampfergebnis" VALUES (1, 1, 2, '11:10');
INSERT INTO "wettkampfergebnis" VALUES (2, 3, 2, '25:2');
INSERT INTO "wettkampfergebnis" VALUES (10, 4, 2, '13:10');
INSERT INTO "wettkampfergebnis" VALUES (4, 1, 2, '12:9');
INSERT INTO "wettkampfergebnis" VALUES (5, 1, 4, '10:3');
INSERT INTO "wettkampfergebnis" VALUES (6, 1, 6, '10:11');

COMMIT;