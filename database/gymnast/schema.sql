CREATE TABLE "leute"
(
	"personen_id" INT,
	"name"        TEXT,
	"alter"       REAL,
	"größe"       REAL,
	"heimatort"   TEXT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "turner"
(
	"turner_id"            INT,
	"bodenübungspunkte"    REAL,
	"pauschenpferd_punkte" REAL,
	"ringe_punkte"         REAL,
	"sprung_punkte"        REAL,
	"barrenpunkte"         REAL,
	"reck_punkte"          REAL,
	"gesamtpunkte"         REAL,
	PRIMARY KEY ("turner_id"),
	FOREIGN KEY ("turner_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Paul Hamm', 24.0, 1.71, 'Santo Domingo');
INSERT INTO "leute" VALUES (2, 'Lorraine Súarez Carmona', 21.0, 1.75, 'Bonao');
INSERT INTO "leute" VALUES (3, 'Ashley Pérez Cabrera', 19.0, 1.7, 'Miami');
INSERT INTO "leute" VALUES (4, 'Elizabeth Quiñónez Aroyo', 20.0, 1.71, 'Santo Domingo');
INSERT INTO "leute" VALUES (5, 'Eve Tatiana Cruz Oviedo', 19.0, 1.72, 'Santo Domingo');
INSERT INTO "leute" VALUES (6, 'Nadia Caba Rodríguez', 22.0, 1.79, 'Santo Domingo');
INSERT INTO "leute" VALUES (7, 'Clary Sermina Delgado Cid', 21.0, 1.75, 'Santiago de los Caballeros');
INSERT INTO "leute" VALUES (8, 'Marina Castro Medina', 20.0, 1.76, 'Santo Domingo');
INSERT INTO "leute" VALUES (9, 'Rosa Clarissa Ortíz Melo', 23.0, 1.81, 'La Romana');
INSERT INTO "leute" VALUES (10, 'Endis de los Santos Álvarez', 24.0, 1.72, 'Los Alcarrizos');

INSERT INTO "turner" VALUES (1, 9.725, 9.737, 9.512, 9.575, 9.762, 9.75, 58.061);
INSERT INTO "turner" VALUES (2, 9.7, 9.625, 9.625, 9.65, 9.587, 9.737, 57.924);
INSERT INTO "turner" VALUES (4, 8.987, 9.75, 9.75, 9.65, 9.787, 9.725, 57.649);
INSERT INTO "turner" VALUES (6, 9.762, 9.325, 9.475, 9.762, 9.562, 9.55, 57.436);
INSERT INTO "turner" VALUES (7, 9.687, 9.675, 9.3, 9.537, 9.725, 9.5, 57.424);
INSERT INTO "turner" VALUES (8, 9.65, 9.712, 9.487, 9.637, 9.5, 9.412, 57.398);
INSERT INTO "turner" VALUES (10, 9.412, 9.525, 9.712, 9.55, 9.625, 9.55, 57.374);

COMMIT;