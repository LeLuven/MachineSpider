CREATE TABLE "schiff"
(
	"schiffs_id"   INT,
	"name"         TEXT,
	"typ"          TEXT,
	"nationalität" TEXT,
	"tonnage"      INT,
	PRIMARY KEY ("schiffs_id")
);

CREATE TABLE "mission"
(
	"mission_id"             INT,
	"schiffs_id"             INT,
	"code"                   TEXT,
	"startjahr"              INT,
	"standort"               TEXT,
	"geschwindigkeit_knoten" INT,
	"schicksal"              TEXT,
	PRIMARY KEY ("mission_id"),
	FOREIGN KEY ("schiffs_id") REFERENCES "schiff" ("schiffs_id")
);

BEGIN TRANSACTION;
INSERT INTO "schiff" VALUES (1, 'Corbridge', 'Cargo ship', 'United Kingdom', 3687);
INSERT INTO "schiff" VALUES (2, 'Farringford', 'Battle ship', 'United States', 3146);
INSERT INTO "schiff" VALUES (3, 'Dromonby', 'Cargo ship', 'United Kingdom', 3627);
INSERT INTO "schiff" VALUES (4, 'Author', 'Cargo ship', 'United Kingdom', 3496);
INSERT INTO "schiff" VALUES (5, 'Trader', 'Battle ship', 'United Kingdom', 3608);
INSERT INTO "schiff" VALUES (6, 'Ariadne', 'Cargo ship', 'United States', 3035);
INSERT INTO "schiff" VALUES (7, 'Appam', 'Battle ship', 'United Kingdom', 7781);
INSERT INTO "schiff" VALUES (8, 'Clan McTavish', 'Cargo ship', 'United States', 5816);

INSERT INTO "mission" VALUES (1, 1, 'VMV-1', 1930, 'Germany', 25, 'Decommissioned 1950');
INSERT INTO "mission" VALUES (2, 2, 'VMV-2', 1930, 'Germany', 25, 'Decommissioned 1950');
INSERT INTO "mission" VALUES (3, 3, 'VMV-3', 1930, 'Helsinki , Finland', 23, 'Lost (burned) 1931');
INSERT INTO "mission" VALUES (4, 5, 'VMV-4 Former: Sterling', 1916, 'Norway', 16, 'Retired 1939');
INSERT INTO "mission" VALUES (5, 6, 'VMV-5', 1931, 'Uusikaupunki , Finland', 23, 'Decommissioned 1959');
INSERT INTO "mission" VALUES (6, 7, 'VMV-6', 1931, 'Uusikaupunki , Finland', 23, 'Decommissioned 1960');
INSERT INTO "mission" VALUES (7, 8, 'VMV-7', 1932, 'Turku , Finland', 23, 'Lost (burned and sunk) 1933');

COMMIT;