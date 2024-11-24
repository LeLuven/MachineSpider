CREATE TABLE "schlacht"
(
	"id"                        INT,
	"name"                      TEXT,
	"datum"                     TEXT,
	"bulgarischer_kommandant"   TEXT,
	"lateinischer_befehlshaber" TEXT,
	"ergebnis"                  TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "schiff"
(
	"im_kampf_verloren"        INT,
	"id"                       INT,
	"name"                     TEXT,
	"tonnage"                  TEXT,
	"schiffstyp"               TEXT,
	"standort"                 TEXT,
	"disposition_des_schiffes" TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("im_kampf_verloren") REFERENCES "schlacht" ("id")
);

CREATE TABLE "tod"
(
	"verursacht_durch_schiff_id" INT,
	"id"                         INT,
	"note"                       TEXT,
	"getötet"                    INT,
	"verletzt"                   INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("verursacht_durch_schiff_id") REFERENCES "schiff" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "schlacht" VALUES (1, 'Battle of Adrianople', '14 April 1205', 'Kaloyan', 'Baldwin I', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (2, 'Battle of Serres', 'June 1205', 'Kaloyan', 'Unknown', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (3, 'Battle of Rusion', '31 January 1206', 'Kaloyan', 'Thierry de Termond', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (4, 'Battle of Rodosto', 'February 1206', 'Kaloyan', 'Unknown', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (5, 'Battle of Messinopolis', '4 September 1207', 'Unknown', 'Boniface of Montferrat', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (6, 'Battle of Boruy', 'June 1205', 'Boril', 'Henry I', 'Bulgarian victory');
INSERT INTO "schlacht" VALUES (7, 'Battle of Philippopolis', '31 June 1208', 'Boril', 'Henry I', 'Latin victory');
INSERT INTO "schlacht" VALUES (8, 'Siege of Constantinople', '1235', 'Ivan Asen II', 'John of Brienne', 'Two Year Truce');

INSERT INTO "schiff" VALUES (8, 1, 'Lettice', 't', 'Brig', 'English Channel', 'Captured');
INSERT INTO "schiff" VALUES (7, 2, 'Bon Accord', 't', 'Brig', 'English Channel', 'Captured');
INSERT INTO "schiff" VALUES (6, 3, 'Mary', 't', 'Brig', 'English Channel', 'Captured');
INSERT INTO "schiff" VALUES (5, 4, 'HMS Avon', '391', '18-gun Brig', 'English Channel', 'Wrecked');
INSERT INTO "schiff" VALUES (5, 5, 'Three Brothers', 't', 'Brig', 'SW Approaches', 'Scuttled');
INSERT INTO "schiff" VALUES (4, 6, 'Bacchus', 't', 'Brig', 'English Channel', 'Sank');
INSERT INTO "schiff" VALUES (8, 7, 'HMS Atalanta', '225', '8 gun Brig', 'Mid-Atlantic', 'Captured');

INSERT INTO "tod" VALUES (1, 1, 'Dantewada, Chhattisgarh', 8, 0);
INSERT INTO "tod" VALUES (2, 2, 'Dantewada, Chhattisgarh', 3, 0);
INSERT INTO "tod" VALUES (3, 13, 'Erraboru, Chhattisgarh', 25, 0);
INSERT INTO "tod" VALUES (3, 3, 'East Champaran, Bihar', 2, 0);
INSERT INTO "tod" VALUES (4, 4, 'Gajapati, Odisha', 3, 0);
INSERT INTO "tod" VALUES (4, 5, 'Sundargarh, Odisha', 0, 9);
INSERT INTO "tod" VALUES (5, 6, 'Dantewada, Chhattisgarh', 0, 0);
INSERT INTO "tod" VALUES (5, 7, 'Dantewada, Chhattisgarh', 4, 5);
INSERT INTO "tod" VALUES (6, 8, 'Kanker, Chhattisgarh', 0, 0);
INSERT INTO "tod" VALUES (1, 9, 'Dantewada, Chhattisgarh', 29, 0);
INSERT INTO "tod" VALUES (3, 10, 'WestMidnapore, West Bengal', 0, 0);
INSERT INTO "tod" VALUES (2, 11, 'Bastar, Chattisgarh', 0, 0);
INSERT INTO "tod" VALUES (5, 12, 'Bokaro, Jharkhand', 14, 0);

COMMIT;