CREATE TABLE "mitarbeiter"
(
	"mitarbeiter_id" INT,
	"name"           TEXT,
	"alter"          INT,
	"stadt"          TEXT,
	PRIMARY KEY ("mitarbeiter_id")
);

CREATE TABLE "shop"
(
	"shop_id"                   INT,
	"name"                      TEXT,
	"ort"                       TEXT,
	"bezirk"                    TEXT,
	"anzahl_produkte"           INT,
	"name_des_geschäftsführers" TEXT,
	PRIMARY KEY ("shop_id")
);

CREATE TABLE "auswertung"
(
	"mitarbeiter_id"       TEXT,
	"ausgezeichnetes_jahr" TEXT,
	"bonus"                REAL,
	PRIMARY KEY ("mitarbeiter_id", "ausgezeichnetes_jahr"),
	FOREIGN KEY ("mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id")
);

CREATE TABLE "einstellung"
(
	"shop_id"        INT,
	"mitarbeiter_id" INT,
	"beginn_von"     TEXT,
	"ist_vollzeit"   BOOL,
	PRIMARY KEY ("mitarbeiter_id"),
	FOREIGN KEY ("shop_id") REFERENCES "shop" ("shop_id"),
	FOREIGN KEY ("mitarbeiter_id") REFERENCES "mitarbeiter" ("mitarbeiter_id")
);

BEGIN TRANSACTION;
INSERT INTO "mitarbeiter" VALUES (1, 'George Chuter', 23, 'Bristol');
INSERT INTO "mitarbeiter" VALUES (2, 'Lee Mears', 29, 'Bath');
INSERT INTO "mitarbeiter" VALUES (3, 'Mark Regan', 43, 'Bristol');
INSERT INTO "mitarbeiter" VALUES (4, 'Jason Hobson', 30, 'Bristol');
INSERT INTO "mitarbeiter" VALUES (5, 'Tim Payne', 29, 'Wasps');
INSERT INTO "mitarbeiter" VALUES (6, 'Andrew Sheridan', 28, 'Sale');
INSERT INTO "mitarbeiter" VALUES (7, 'Matt Stevens', 29, 'Bath');
INSERT INTO "mitarbeiter" VALUES (8, 'Phil Vickery', 40, 'Wasps');
INSERT INTO "mitarbeiter" VALUES (9, 'Steve Borthwick', 32, 'Bath');
INSERT INTO "mitarbeiter" VALUES (10, 'Louis Deacon', 36, 'Leicester');

INSERT INTO "shop" VALUES (1, 'FC Haka', 'Valkeakoski', 'Tehtaan kenttä', 3516, 'Olli Huttunen');
INSERT INTO "shop" VALUES (2, 'HJK', 'Helsinki', 'Finnair Stadium', 10770, 'Antti Muurinen');
INSERT INTO "shop" VALUES (3, 'FC Honka', 'Espoo', 'Tapiolan Urheilupuisto', 6000, 'Mika Lehkosuo');
INSERT INTO "shop" VALUES (4, 'FC Inter', 'Turku', 'Veritas Stadion', 10000, 'Job Dragtsma');
INSERT INTO "shop" VALUES (5, 'FF Jaro', 'Jakobstad', 'Jakobstads Centralplan', 5000, 'Mika Laurikainen');
INSERT INTO "shop" VALUES (6, 'FC KooTeePee', 'Kotka', 'Arto Tolsa Areena', 4780, 'Tommi Kautonen');
INSERT INTO "shop" VALUES (7, 'KuPS', 'Kuopio', 'Magnum Areena', 3500, 'Kai Nyyssönen');
INSERT INTO "shop" VALUES (8, 'FC Lahti', 'Lahti', 'Lahden Stadion', 15000, 'Ilkka Mäkelä');
INSERT INTO "shop" VALUES (9, 'IFK Mariehamn', 'Mariehamn', 'Wiklöf Holding Arena', 1600, 'Pekka Lyyski');

INSERT INTO "auswertung" VALUES ('1', '2011', 3000.0);
INSERT INTO "auswertung" VALUES ('2', '2015', 3200.0);
INSERT INTO "auswertung" VALUES ('1', '2016', 2900.0);
INSERT INTO "auswertung" VALUES ('4', '2017', 3200.0);
INSERT INTO "auswertung" VALUES ('7', '2018', 3200.0);
INSERT INTO "auswertung" VALUES ('10', '2016', 4000.0);

INSERT INTO "einstellung" VALUES (1, 1, '2009', 'T');
INSERT INTO "einstellung" VALUES (1, 2, '2003', 'T');
INSERT INTO "einstellung" VALUES (8, 3, '2011', 'F');
INSERT INTO "einstellung" VALUES (4, 4, '2012', 'T');
INSERT INTO "einstellung" VALUES (5, 5, '2013', 'T');
INSERT INTO "einstellung" VALUES (2, 6, '2010', 'F');
INSERT INTO "einstellung" VALUES (6, 7, '2008', 'T');

COMMIT;