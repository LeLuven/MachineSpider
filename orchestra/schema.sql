CREATE TABLE "leiter"
(
	"dirigent_id"  INT,
	"name"         TEXT,
	"alter"        INT,
	"nationalität" TEXT,
	"arbeitsjahr"  INT,
	PRIMARY KEY ("dirigent_id")
);

CREATE TABLE "orchester"
(
	"orchestra_id"       INT,
	"orchester"          TEXT,
	"dirigent_id"        INT,
	"plattenfirma"       TEXT,
	"gründungsjahr"      REAL,
	"hauptplattenformat" TEXT,
	PRIMARY KEY ("orchestra_id"),
	FOREIGN KEY ("dirigent_id") REFERENCES "leiter" ("dirigent_id")
);

CREATE TABLE "aufführung"
(
	"leistung_id"                            INT,
	"orchestra_id"                           INT,
	"typ"                                    TEXT,
	"datum"                                  TEXT,
	"offizielle_einschaltquoten_(millionen)" REAL,
	"wöchentlicher_rang"                     TEXT,
	"aktie"                                  TEXT,
	PRIMARY KEY ("leistung_id"),
	FOREIGN KEY ("orchestra_id") REFERENCES "orchester" ("orchestra_id")
);

CREATE TABLE "auftritt"
(
	"show_id"                INT,
	"leistung_id"            INT,
	"wenn_erste_vorstellung" BOOL,
	"ergebnis"               TEXT,
	"anwesenheit"            REAL,
	FOREIGN KEY ("leistung_id") REFERENCES "aufführung" ("leistung_id")
);

BEGIN TRANSACTION;
INSERT INTO "leiter" VALUES (1, 'Antal Doráti', 40, 'USA', 10);
INSERT INTO "leiter" VALUES (2, 'Igor Stravinsky', 41, 'UK', 11);
INSERT INTO "leiter" VALUES (3, 'Colin Davis', 42, 'USA', 6);
INSERT INTO "leiter" VALUES (4, 'Paul Jorgensen', 43, 'UK', 11);
INSERT INTO "leiter" VALUES (5, 'Antal Brown', 43, 'USA', 20);
INSERT INTO "leiter" VALUES (6, 'Charles Dutoit', 43, 'France', 12);
INSERT INTO "leiter" VALUES (7, 'Gerard Schwarz', 50, 'USA', 20);
INSERT INTO "leiter" VALUES (8, 'Pierre Boulez', 49, 'UK', 11);
INSERT INTO "leiter" VALUES (9, 'Valeri Gergiev', 47, 'USA', 16);
INSERT INTO "leiter" VALUES (10, 'Robert Craft', 63, 'UK', 21);
INSERT INTO "leiter" VALUES (11, 'Seiji Ozawa', 43, 'USA', 10);
INSERT INTO "leiter" VALUES (12, 'Michael Tilson Thomas', 42, 'France', 12);

INSERT INTO "orchester" VALUES (1, 'London Symphony Orchestra', 1, 'Mercury Records', 2003.0, 'CD');
INSERT INTO "orchester" VALUES (2, 'Columbia Symphony Orchestra', 2, 'Columbia Masterworks', 2009.0, 'CD / LP');
INSERT INTO "orchester" VALUES (3, 'Royal Concertgebouw Orchestra', 3, 'Philips', 2008.0, 'CD');
INSERT INTO "orchester" VALUES (4, 'Royal Danish Orchestra', 4, 'Kultur', 2002.0, 'DVD');
INSERT INTO "orchester" VALUES (5, 'Detroit Symphony Orchestra', 5, 'Decca Records', 2002.0, 'CD');
INSERT INTO "orchester" VALUES (6, 'Montreal Symphony Orchestra', 6, 'Decca Records', 2004.0, 'CD');
INSERT INTO "orchester" VALUES (7, 'Seattle Symphony Orchestra', 7, 'Delos Records', 2002.0, 'CD');
INSERT INTO "orchester" VALUES (8, 'Chicago Symphony Orchestra', 8, 'Deutsche Grammophon', 2003.0, 'CD');
INSERT INTO "orchester" VALUES (9, 'Kirov Orchestra', 9, 'Philips Classics Records', 2008.0, 'CD');
INSERT INTO "orchester" VALUES (10, 'Philharmonia Orchestra', 10, 'Koch Records / Naxos Records', 2006.0, 'CD');
INSERT INTO "orchester" VALUES (11, 'Orchestre de Paris', 11, 'EMI', 2007.0, 'CD');
INSERT INTO "orchester" VALUES (12, 'San Francisco Symphony Orchestra', 12, 'RCA', 2008.0, 'CD');

INSERT INTO "aufführung" VALUES (1, 1, 'Auditions 1', '9 June', 5.2, '12', '22.7%');
INSERT INTO "aufführung" VALUES (2, 2, 'Auditions 2', '10 June', 6.73, '8', '28.0%');
INSERT INTO "aufführung" VALUES (3, 3, 'Auditions 3', '11 June', 7.28, '15', '29.4%');
INSERT INTO "aufführung" VALUES (4, 4, 'Auditions 4', '12 June', 7.39, '13', '29.3%');
INSERT INTO "aufführung" VALUES (5, 5, 'Auditions 5', '13 June', 7.51, '11', '29.2%');
INSERT INTO "aufführung" VALUES (11, 11, 'Semi-final 1', '14 June', 8.36, '9', '34.0%');
INSERT INTO "aufführung" VALUES (6, 6, 'Semi-final 2', '15 June', 9.28, '8', '38.1%');
INSERT INTO "aufführung" VALUES (7, 7, 'Semi-final 3', '16 June', 9.29, '7', '40.9%');
INSERT INTO "aufführung" VALUES (8, 8, 'Live final', '17 June', 11.58, '1', '43.7%');
INSERT INTO "aufführung" VALUES (9, 9, 'Live final results', '17 June', 11.45, '2', '44.7%');
INSERT INTO "aufführung" VALUES (10, 10, 'Series average', '2007', 8.38, 'TBC', '34%');

INSERT INTO "auftritt" VALUES (1, 1, 'Glebe Park', 'T', 1026.0);
INSERT INTO "auftritt" VALUES (2, 2, 'Fir Park', 'T', 695.0);
INSERT INTO "auftritt" VALUES (3, 3, 'St. Mirren Park', 'F', 555.0);
INSERT INTO "auftritt" VALUES (4, 4, 'St. Mirren Park', 'F', 1925.0);
INSERT INTO "auftritt" VALUES (5, 5, 'Hampden Park', 'T', 2431.0);

COMMIT;