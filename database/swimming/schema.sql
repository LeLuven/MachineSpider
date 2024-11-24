CREATE TABLE "schwimmer"
(
	"id"           INT,
	"name"         TEXT,
	"nationalität" TEXT,
	"meter_100"    REAL,
	"meter_200"    TEXT,
	"meter_300"    TEXT,
	"meter_400"    TEXT,
	"meter_500"    TEXT,
	"zähler_600"   TEXT,
	"meter_700"    TEXT,
	"zeit"         TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "stadion"
(
	"id"             INT,
	"name"           TEXT,
	"kapazität"      INT,
	"stadt"          TEXT,
	"land"           TEXT,
	"eröffnungsjahr" INT,
	PRIMARY KEY ("id")
);

CREATE TABLE "veranstaltung"
(
	"id"         INT,
	"name"       TEXT,
	"stadion_id" INT,
	"jahr"       TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("stadion_id") REFERENCES "stadion" ("id")
);

CREATE TABLE "rekord"
(
	"id"           INT,
	"ergebnis"     TEXT,
	"schwimmer_id" INT,
	"event_id"     INT,
	PRIMARY KEY ("schwimmer_id", "event_id"),
	FOREIGN KEY ("schwimmer_id") REFERENCES "schwimmer" ("id"),
	FOREIGN KEY ("event_id") REFERENCES "veranstaltung" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "schwimmer" VALUES (7, 'Przemysław Stańczyk', 'Poland', 57.31, '1:57.10', '2:56.02', '3:55.36', '4:54.21', '5:52.59', '6:50.91', '7:47.91');
INSERT INTO "schwimmer" VALUES (4, 'Craig Stevens', 'Australia', 57.35, '1:56.34', '2:55.90', '3:55.72', '4:55.08', '5:54.45', '6:52.69', '7:48.67');
INSERT INTO "schwimmer" VALUES (5, 'Federico Colbertaldo', 'Italy', 57.66, '1:56.77', '2:56.04', '3:55.37', '4:54.48', '5:53.53', '6:52.58', '7:49.98');
INSERT INTO "schwimmer" VALUES (8, 'Sébastien Rouault', 'France', 55.67, '1:54.40', '2:53.46', '3:52.93', '4:52.85', '5:53.03', '6:53.34', '7:52.04');
INSERT INTO "schwimmer" VALUES (1, 'Sergiy Fesenko', 'Ukraine', 57.34, '1:57.26', '2:57.10', '3:57.12', '4:57.03', '5:56.31', '6:55.07', '7:53.43');
INSERT INTO "schwimmer" VALUES (2, 'Grant Hackett', 'Australia', 57.34, '1:57.21', '2:56.95', '3:57.00', '4:56.96', '5:57.10', '6:57.44', '7:55.39');
INSERT INTO "schwimmer" VALUES (6, 'Ryan Cochrane', 'Canada', 57.84, '1:57.26', '2:56.64', '3:56.34', '4:56.15', '5:56.99', '6:57.69', '7:56.56');
INSERT INTO "schwimmer" VALUES (3, 'Oussama Mellouli', 'Tunisia', 57.31, '1:56.44', '2:55.94', '3:55.49', '4:54.19', '5:52.92', '6:50.80', '7:46.95');

INSERT INTO "stadion" VALUES (1, 'Nou Mestalla', 75000, 'Valencia', 'Spain', 2004);
INSERT INTO "stadion" VALUES (2, 'Gazprom Arena', 69501, 'Saint Petersburg', 'Russia', 2005);
INSERT INTO "stadion" VALUES (3, 'Baku Olympic Stadium', 68000, 'Baku', 'Azerbaijan', 2005);
INSERT INTO "stadion" VALUES (4, 'Estadio La Peineta', 67500, 'Madrid', 'Spain', 2005);
INSERT INTO "stadion" VALUES (5, 'Ferenc Puskás Stadion', 65000, 'Budapest', 'Hungary', 2006);
INSERT INTO "stadion" VALUES (6, 'Stade des Lumières', 61556, 'Lyon', 'France', 2004);
INSERT INTO "stadion" VALUES (7, 'Northumberland Development Project', 56250, 'London', 'England', 2006);
INSERT INTO "stadion" VALUES (8, 'Fisht Olympic Stadium', 47659, 'Sochi', 'Russia', 2004);
INSERT INTO "stadion" VALUES (9, 'Arena Baltika', 45015, 'Kaliningrad', 'Russia', 2007);
INSERT INTO "stadion" VALUES (10, 'Yubileyniy Stadium', 45015, 'Saransk', 'Russia', 2005);

INSERT INTO "veranstaltung" VALUES (1, 'FINA', 1, '2016');
INSERT INTO "veranstaltung" VALUES (2, 'Pacific', 10, '2011');
INSERT INTO "veranstaltung" VALUES (3, 'World Master', 2, '2012');
INSERT INTO "veranstaltung" VALUES (4, 'World Junior', 3, '2013');
INSERT INTO "veranstaltung" VALUES (5, 'IPC', 4, '2014');
INSERT INTO "veranstaltung" VALUES (6, 'European FINA', 8, '2017');

INSERT INTO "rekord" VALUES (1, 'NC', 1, 1);
INSERT INTO "rekord" VALUES (2, 'Win', 1, 2);
INSERT INTO "rekord" VALUES (3, 'Loss', 3, 3);
INSERT INTO "rekord" VALUES (4, 'Win', 4, 3);
INSERT INTO "rekord" VALUES (5, 'Loss', 1, 3);
INSERT INTO "rekord" VALUES (6, 'Win', 6, 3);
INSERT INTO "rekord" VALUES (7, 'Win', 5, 3);
INSERT INTO "rekord" VALUES (8, 'Win', 2, 1);
INSERT INTO "rekord" VALUES (9, 'Win', 3, 1);
INSERT INTO "rekord" VALUES (10, 'Win', 4, 1);
INSERT INTO "rekord" VALUES (11, 'Win', 4, 2);
INSERT INTO "rekord" VALUES (12, 'Win', 3, 5);
INSERT INTO "rekord" VALUES (13, 'Loss', 4, 4);

COMMIT;