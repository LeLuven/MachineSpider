CREATE TABLE "hochschule"
(
	"college_id"        INT,
	"name"              TEXT,
	"leitername"        TEXT,
	"hochschulstandort" TEXT,
	PRIMARY KEY ("college_id")
);

CREATE TABLE "mitglied"
(
	"mitglied_id" INT,
	"name"        TEXT,
	"land"        TEXT,
	"college_id"  INT,
	PRIMARY KEY ("mitglied_id"),
	FOREIGN KEY ("college_id") REFERENCES "hochschule" ("college_id")
);

CREATE TABLE "rund"
(
	"runde_id"         INT,
	"mitglied_id"      INT,
	"dekorationsthema" TEXT,
	"rang_in_runde"    INT,
	PRIMARY KEY ("runde_id", "mitglied_id"),
	FOREIGN KEY ("mitglied_id") REFERENCES "mitglied" ("mitglied_id")
);

BEGIN TRANSACTION;
INSERT INTO "hochschule" VALUES (1, 'Saskatchewan School', 'Ousame Tounkara', 'Ottawa');
INSERT INTO "hochschule" VALUES (2, 'B.C. School', 'Ryan Thelwell', 'Minnesota');
INSERT INTO "hochschule" VALUES (3, 'Calgary School', 'Andre Arlain', 'St. Francis Xavier');
INSERT INTO "hochschule" VALUES (4, 'Edmonton School', 'Samir Chahine', 'McGill');
INSERT INTO "hochschule" VALUES (5, 'Toronto School', 'Roger Dunbrack', 'Western Ontario');

INSERT INTO "mitglied" VALUES (1, 'Jack Nicklaus', 'United States', 1);
INSERT INTO "mitglied" VALUES (2, 'Billy Casper', 'United States', 1);
INSERT INTO "mitglied" VALUES (3, 'Arnold Palmer', 'Canada', 4);
INSERT INTO "mitglied" VALUES (4, 'Tom Watson', 'United States', 4);
INSERT INTO "mitglied" VALUES (5, 'Homero Blancas', 'United States', 2);
INSERT INTO "mitglied" VALUES (6, 'Pat Fitzsimons', 'Canada', 5);
INSERT INTO "mitglied" VALUES (7, 'Bobby Nichols', 'Canada', 5);
INSERT INTO "mitglied" VALUES (8, 'J. C. Snead', 'Canada', 4);
INSERT INTO "mitglied" VALUES (9, 'Lee Trevino', 'United States', 3);
INSERT INTO "mitglied" VALUES (10, 'Tom Weiskopf', 'United States', 3);

INSERT INTO "rund" VALUES (1, 1, 'Walk on the Moon', 1);
INSERT INTO "rund" VALUES (1, 2, 'Soft Dream', 2);
INSERT INTO "rund" VALUES (1, 10, 'Dark Nights', 4);
INSERT INTO "rund" VALUES (2, 4, 'Sweetie', 3);
INSERT INTO "rund" VALUES (2, 6, 'Summer', 2);
INSERT INTO "rund" VALUES (2, 9, 'Happiness', 1);

COMMIT;