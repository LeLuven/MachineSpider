CREATE TABLE "liste"
(
	"nachname"      TEXT,
	"vorname"       TEXT,
	"klasse"        INTEGER,
	"klassenzimmer" INTEGER,
	PRIMARY KEY ("nachname", "vorname")
);

CREATE TABLE "lehrer"
(
	"nachname"      TEXT,
	"vorname"       TEXT,
	"klassenzimmer" INTEGER,
	PRIMARY KEY ("nachname", "vorname")
);

BEGIN TRANSACTION;
INSERT INTO "liste" VALUES ('CAR', ' MAUDE', 2, 101);
INSERT INTO "liste" VALUES ('KRISTENSEN', ' STORMY', 6, 112);
INSERT INTO "liste" VALUES ('VANDERWOUDE', ' SHERWOOD', 3, 107);
INSERT INTO "liste" VALUES ('NOGODA', ' ISMAEL', 0, 105);
INSERT INTO "liste" VALUES ('DANESE', ' JANEE', 4, 111);
INSERT INTO "liste" VALUES ('AMY', ' PATRINA', 1, 102);
INSERT INTO "liste" VALUES ('PREHM', ' SHANEL', 0, 104);
INSERT INTO "liste" VALUES ('GRUNIN', ' EMILE', 5, 109);
INSERT INTO "liste" VALUES ('GELL', ' TAMI', 0, 104);
INSERT INTO "liste" VALUES ('MADLOCK', ' RAY', 4, 110);
INSERT INTO "liste" VALUES ('SUDA', ' DARLEEN', 4, 110);
INSERT INTO "liste" VALUES ('DROP', ' SHERMAN', 0, 104);
INSERT INTO "liste" VALUES ('PINNELL', ' ROBBY', 3, 107);
INSERT INTO "liste" VALUES ('BROMLEY', ' EVELINA', 1, 103);
INSERT INTO "liste" VALUES ('YUEN', ' ANIKA', 1, 103);
INSERT INTO "liste" VALUES ('BUSTILLOS', ' HILMA', 0, 106);
INSERT INTO "liste" VALUES ('GOODNOE', ' GAYLE', 4, 111);
INSERT INTO "liste" VALUES ('BALBOA', ' MEL', 1, 103);
INSERT INTO "liste" VALUES ('BARTKUS', ' REYNALDO', 1, 102);
INSERT INTO "liste" VALUES ('GROENEWEG', ' CRYSTA', 3, 107);
INSERT INTO "liste" VALUES ('HOUTCHENS', ' THEO', 0, 106);
INSERT INTO "liste" VALUES ('GERSTEIN', ' AL', 5, 109);
INSERT INTO "liste" VALUES ('MACIAG', ' CHET', 5, 109);
INSERT INTO "liste" VALUES ('SAADE', ' TOBIE', 4, 110);
INSERT INTO "liste" VALUES ('BRINE', ' FRANKLYN', 0, 106);
INSERT INTO "liste" VALUES ('HANNEMANN', ' CHANTAL', 1, 102);
INSERT INTO "liste" VALUES ('BYRUM', ' BENNIE', 0, 105);
INSERT INTO "liste" VALUES ('NETZEL', ' JODY', 0, 105);
INSERT INTO "liste" VALUES ('VANVLIET', ' COLLIN', 0, 106);
INSERT INTO "liste" VALUES ('HONES', ' GUILLERMINA', 0, 104);
INSERT INTO "liste" VALUES ('FLACHS', ' JEFFRY', 5, 109);
INSERT INTO "liste" VALUES ('GRABILL', ' JULIENNE', 0, 106);
INSERT INTO "liste" VALUES ('AREHART', ' VERTIE', 3, 107);
INSERT INTO "liste" VALUES ('RUNKLE', ' MARCUS', 1, 102);
INSERT INTO "liste" VALUES ('MOWATT', ' KITTIE', 0, 105);
INSERT INTO "liste" VALUES ('HOOSOCK', ' LANCE', 1, 103);
INSERT INTO "liste" VALUES ('LEAPER', ' ADRIAN', 4, 111);
INSERT INTO "liste" VALUES ('PASSEY', ' RAYLENE', 4, 110);
INSERT INTO "liste" VALUES ('NAKAHARA', ' SHERON', 0, 105);
INSERT INTO "liste" VALUES ('STIRE', ' SHIRLEY', 6, 112);
INSERT INTO "liste" VALUES ('RODDEY', ' CYRUS', 4, 110);
INSERT INTO "liste" VALUES ('CRANMER', ' CAREY', 5, 109);
INSERT INTO "liste" VALUES ('SCHUTZE', ' LANELLE', 5, 109);
INSERT INTO "liste" VALUES ('FULVIO', ' ELTON', 4, 111);
INSERT INTO "liste" VALUES ('HOESCHEN', ' LYNNETTE', 4, 108);
INSERT INTO "liste" VALUES ('SOLOMAN', ' BRODERICK', 0, 106);
INSERT INTO "liste" VALUES ('LAPLANT', ' SUMMER', 2, 101);
INSERT INTO "liste" VALUES ('LUSKEY', ' BRITT', 4, 108);
INSERT INTO "liste" VALUES ('JAGNEAUX', ' ELVIRA', 6, 112);
INSERT INTO "liste" VALUES ('BIBB', ' SHANAE', 1, 103);
INSERT INTO "liste" VALUES ('WIRTZFELD', ' DELORAS', 0, 106);
INSERT INTO "liste" VALUES ('RANSLER', ' RODGER', 1, 102);
INSERT INTO "liste" VALUES ('NABOZNY', ' CHRISSY', 3, 107);
INSERT INTO "liste" VALUES ('ATWOOD', ' BETHEL', 5, 109);
INSERT INTO "liste" VALUES ('CHIARAMONTE', ' NOVELLA', 2, 101);
INSERT INTO "liste" VALUES ('TRAYWICK', ' KERI', 1, 102);
INSERT INTO "liste" VALUES ('BRIGHTBILL', ' ANTONY', 1, 102);
INSERT INTO "liste" VALUES ('HUANG', ' TAWANNA', 5, 109);
INSERT INTO "liste" VALUES ('SANTORY', ' JORDON', 3, 107);
INSERT INTO "liste" VALUES ('LARKINS', ' GAYLE', 4, 110);

INSERT INTO "lehrer" VALUES ('MACROSTIE', ' MIN', 101);
INSERT INTO "lehrer" VALUES ('COVIN', ' JEROME', 102);
INSERT INTO "lehrer" VALUES ('MOYER', ' OTHA', 103);
INSERT INTO "lehrer" VALUES ('NIBLER', ' JERLENE', 104);
INSERT INTO "lehrer" VALUES ('MARROTTE', ' KIRK', 105);
INSERT INTO "lehrer" VALUES ('TARRING', ' LEIA', 106);
INSERT INTO "lehrer" VALUES ('URSERY', ' CHARMAINE', 107);
INSERT INTO "lehrer" VALUES ('ONDERSMA', ' LORIA', 108);
INSERT INTO "lehrer" VALUES ('KAWA', ' GORDON', 109);
INSERT INTO "lehrer" VALUES ('SUMPTION', ' GEORGETTA', 110);
INSERT INTO "lehrer" VALUES ('KRIENER', ' BILLIE', 111);
INSERT INTO "lehrer" VALUES ('SUGAI', ' ALFREDA', 112);

COMMIT;