CREATE TABLE "universität"
(
	"schule_id"      INT,
	"schule"         TEXT,
	"standort"       TEXT,
	"gegründet"      REAL,
	"zugehörigkeit"  TEXT,
	"einschreibung"  REAL,
	"spitzname"      TEXT,
	"hauptkonferenz" TEXT,
	PRIMARY KEY ("schule_id")
);

CREATE TABLE "basketballspiel"
(
	"mannschaft_id"       INT,
	"schule_id"           INT,
	"mannschaftsname"     TEXT,
	"acc_regular_season"  TEXT,
	"acc_prozent"         TEXT,
	"acc_home"            TEXT,
	"acc_auswärts"        TEXT,
	"alle_spiele"         TEXT,
	"alle_spiele_prozent" INT,
	"alle_heimspiele"     TEXT,
	"alle_auswärtsspiele" TEXT,
	"alle_neutralen"      TEXT,
	PRIMARY KEY ("mannschaft_id"),
	FOREIGN KEY ("schule_id") REFERENCES "universität" ("schule_id")
);

BEGIN TRANSACTION;
INSERT INTO "universität" VALUES (1, 'University of Delaware', 'Newark, DE', 1743.0, 'Public', 19067.0, 'Fightin'' Blue Hens', 'Colonial Athletic Association ( D-I )');
INSERT INTO "universität" VALUES (2, 'Lebanon Valley College', 'Annville, PA', 1866.0, 'Private/Methodist', 2100.0, 'Flying Dutchmen', 'MAC Commonwealth Conference ( D-III )');
INSERT INTO "universität" VALUES (3, 'University of Rhode Island', 'Kingston, RI', 1892.0, 'Public', 19095.0, 'Rams', 'Atlantic 10 Conference ( D-I )');
INSERT INTO "universität" VALUES (4, 'Rutgers University', 'New Brunswick, NJ', 1766.0, 'Public', 56868.0, 'Scarlet Knights', 'American Athletic Conference ( D-I )');
INSERT INTO "universität" VALUES (5, 'Stony Brook University', 'Stony Brook, NY', 1957.0, 'Public', 23997.0, 'Seawolves', 'America East Conference ( D-I )');

INSERT INTO "basketballspiel" VALUES (1, 1, 'North Carolina', '14–2', '.875', '6–2', '8–0', '35–2', 0.946, '14–2', '13–0', '9–1');
INSERT INTO "basketballspiel" VALUES (2, 2, 'Duke', '13–3', '.813', '7–1', '6–2', '28–6', 0.824, '15–1', '8–2', '5–3');
INSERT INTO "basketballspiel" VALUES (3, 4, 'Clemson', '10–6', '.625', '7–1', '3–5', '24–10', 0.706, '14–2', '6–5', '4–3');
INSERT INTO "basketballspiel" VALUES (4, 5, 'Virginia Tech', '9–7', '.563', '6–2', '3–5', '21–14', 0.6, '14–3', '4–8', '3–3');

COMMIT;