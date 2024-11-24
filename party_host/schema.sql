CREATE TABLE "party"
(
	"party_id"             INT,
	"party_thema"          TEXT,
	"ort"                  TEXT,
	"erstes_jahr"          TEXT,
	"letztes_jahr"         TEXT,
	"anzahl_der_gastgeber" INT,
	PRIMARY KEY ("party_id")
);

CREATE TABLE "gastgeber"
(
	"host_id"      INT,
	"name"         TEXT,
	"nationalität" TEXT,
	"alter"        TEXT,
	PRIMARY KEY ("host_id")
);

CREATE TABLE "party_gastgeber"
(
	"party_id"                INT,
	"host_id"                 INT,
	"ist_hauptverantwortlich" BOOL,
	PRIMARY KEY ("party_id", "host_id"),
	FOREIGN KEY ("party_id") REFERENCES "party" ("party_id"),
	FOREIGN KEY ("host_id") REFERENCES "gastgeber" ("host_id")
);

BEGIN TRANSACTION;
INSERT INTO "party" VALUES (1, 'Spring', 'Hemkade 48 Zaandam', '2000', '2001', 5);
INSERT INTO "party" VALUES (2, 'Club Q-BASE', 'Hemkade 48 Zaandam', '2002', '2002', 23);
INSERT INTO "party" VALUES (3, 'Hardcore Resurrection', 'Various locations', '2000', '2003', 4);
INSERT INTO "party" VALUES (4, 'Teqnology', 'Heineken Music Hall Amsterdam', '2002', '2004', 6);
INSERT INTO "party" VALUES (5, 'Qlubtempo', 'Hemkade 48 Zaandam, Heineken Music Hall Amsterdam', '2001', '2007', 31);
INSERT INTO "party" VALUES (6, 'QrimeTime', 'Heineken Music Hall Amsterdam', '2004', '2007', 4);
INSERT INTO "party" VALUES (7, 'In Qontrol', 'RAI Amsterdam', '2004', '2010', 7);
INSERT INTO "party" VALUES (8, 'Houseqlassics', 'Various locations', '1999', '2010', 18);

INSERT INTO "gastgeber" VALUES (1, 'Austin Daye', 'United States', '43');
INSERT INTO "gastgeber" VALUES (2, 'Lloyd Daniels', 'United States', '37');
INSERT INTO "gastgeber" VALUES (3, 'Kornel David', 'Hungary', '31');
INSERT INTO "gastgeber" VALUES (4, 'Antonio Davis', 'United States', '26');
INSERT INTO "gastgeber" VALUES (5, 'Ed Davis', 'United States', '45');
INSERT INTO "gastgeber" VALUES (6, 'Hubert Davis', 'United States', '47');
INSERT INTO "gastgeber" VALUES (7, 'Carlos Delfino', 'Argentina', '30');
INSERT INTO "gastgeber" VALUES (8, 'Justin Dentmon', 'United States', '40');
INSERT INTO "gastgeber" VALUES (9, 'DeMar DeRozan', 'United States', '31');
INSERT INTO "gastgeber" VALUES (10, 'Derrick Dial', 'United States', '60');

INSERT INTO "party_gastgeber" VALUES (1, 1, 'T');
INSERT INTO "party_gastgeber" VALUES (8, 7, 'T');
INSERT INTO "party_gastgeber" VALUES (6, 10, 'F');
INSERT INTO "party_gastgeber" VALUES (4, 2, 'T');
INSERT INTO "party_gastgeber" VALUES (2, 5, 'F');
INSERT INTO "party_gastgeber" VALUES (6, 3, 'T');

COMMIT;