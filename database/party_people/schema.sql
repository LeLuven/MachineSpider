CREATE TABLE "region"
(
	"region_id"   INT,
	"region_name" TEXT,
	"datum"       TEXT,
	"bezeichnung" TEXT,
	"format"      TEXT,
	"katalog"     TEXT,
	PRIMARY KEY ("region_id")
);

CREATE TABLE "party"
(
	"partei_id"              INT,
	"minister"               TEXT,
	"amtsantritt"            TEXT,
	"aus_dem_amt_geschieden" TEXT,
	"region_id"              INT,
	"parteiname"             TEXT,
	PRIMARY KEY ("partei_id"),
	FOREIGN KEY ("region_id") REFERENCES "region" ("region_id")
);

CREATE TABLE "mitglied"
(
	"mitglied_id"   INT,
	"mitglied_name" TEXT,
	"partei_id"     TEXT,
	"im_amt"        TEXT,
	PRIMARY KEY ("mitglied_id"),
	FOREIGN KEY ("partei_id") REFERENCES "party" ("partei_id")
);

CREATE TABLE "parteiveranstaltungen"
(
	"ereignis_id"                  INT,
	"veranstaltungsname"           TEXT,
	"partei_id"                    INT,
	"verantwortliches_mitglied_id" INT,
	PRIMARY KEY ("ereignis_id"),
	FOREIGN KEY ("partei_id") REFERENCES "party" ("partei_id"),
	FOREIGN KEY ("verantwortliches_mitglied_id") REFERENCES "mitglied" ("mitglied_id")
);

BEGIN TRANSACTION;
INSERT INTO "region" VALUES (1, 'United Kingdom', '1 July 2002', 'Parlophone', 'CD', '540 3622');
INSERT INTO "region" VALUES (2, 'United Kingdom', '1 July 2002', 'Parlophone', '2× LP', '539 9821');
INSERT INTO "region" VALUES (3, 'Japan', '3 July 2002', 'Toshiba-EMI', 'CD', 'TOCP-66045');
INSERT INTO "region" VALUES (4, 'United States', '16 July 2002', 'Astralwerks', 'CD', 'ASW 40362');
INSERT INTO "region" VALUES (5, 'United States', '16 July 2002', 'Astralwerks', 'CD digipak', 'ASW 40522');

INSERT INTO "party" VALUES (1, 'Dr. Kwame Nkrumah (MP)', '1957', '1958', 1, 'Convention Peoples Party');
INSERT INTO "party" VALUES (2, 'Kojo Botsio (MP)', '1958', '1959', 2, 'Progress Party');
INSERT INTO "party" VALUES (3, 'Ebenezer Ako-Adjei (MP)', '1959', '1960', 3, '3');
INSERT INTO "party" VALUES (4, 'Imoru Egala (MP)', '1960', '1961', 4, 'Convention Union Party');
INSERT INTO "party" VALUES (5, 'Ebenezer Ako-Adjei (MP)', '1961', '1962', 5, 'Sinefine Party');

INSERT INTO "mitglied" VALUES (1, 'Hon Tony Abbott', '3', '1994–present');
INSERT INTO "mitglied" VALUES (2, 'Hon Dick Adams', '2', '1993–2013');
INSERT INTO "mitglied" VALUES (3, 'Anthony Albanese', '2', '1996–present');
INSERT INTO "mitglied" VALUES (4, 'Hon John Anderson', '1', '1989–2007');
INSERT INTO "mitglied" VALUES (5, 'Peter Andren', '3', '1996–2007');
INSERT INTO "mitglied" VALUES (6, 'Hon Kevin Andrews', '3', '1991–present');
INSERT INTO "mitglied" VALUES (7, 'Hon Fran Bailey', '3', '1990–1993, 1996–2010');
INSERT INTO "mitglied" VALUES (8, 'Hon Bruce Baird', '3', '2001–2007');
INSERT INTO "mitglied" VALUES (9, 'Mark Baker', '3', '2004–2007');
INSERT INTO "mitglied" VALUES (10, 'Hon Bob Baldwin', '3', '2001–present');
INSERT INTO "mitglied" VALUES (11, 'Phil Barresi', '3', '1996–2007');
INSERT INTO "mitglied" VALUES (12, 'Kerry Bartlett', '1', '1996–2007');
INSERT INTO "mitglied" VALUES (13, 'Hon Kim Beazley', '2', '1980–2007');
INSERT INTO "mitglied" VALUES (14, 'Hon Arch Bevis', '2', '1990–2010');
INSERT INTO "mitglied" VALUES (15, 'Hon Bruce Billson', '3', '1996–present');

INSERT INTO "parteiveranstaltungen" VALUES (1, 'Annaual Meeting', 1, 4);
INSERT INTO "parteiveranstaltungen" VALUES (2, 'Conference', 1, 12);
INSERT INTO "parteiveranstaltungen" VALUES (3, 'Annaual Meeting', 2, 2);
INSERT INTO "parteiveranstaltungen" VALUES (4, 'Budget Meeting', 2, 3);
INSERT INTO "parteiveranstaltungen" VALUES (5, 'Annaual Meeting', 3, 10);
INSERT INTO "parteiveranstaltungen" VALUES (6, 'Election Meeting', 3, 11);
INSERT INTO "parteiveranstaltungen" VALUES (7, 'Budget Meeting', 3, 15);
INSERT INTO "parteiveranstaltungen" VALUES (8, 'Election Meeting', 1, 4);

COMMIT;