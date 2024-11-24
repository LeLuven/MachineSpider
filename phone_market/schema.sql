CREATE TABLE "telefon"
(
	"name"           TEXT,
	"telefon_nummer" INT,
	"speicher_in_g"  INT,
	"betreiber"      TEXT,
	"preis"          REAL,
	PRIMARY KEY ("telefon_nummer")
);

CREATE TABLE "markt"
(
	"markt_id"                INT,
	"bezirk"                  TEXT,
	"anzahl_der_arbeitnehmer" INT,
	"anzahl_der_geschäfte"    REAL,
	"rang"                    INT,
	PRIMARY KEY ("markt_id")
);

CREATE TABLE "telefonmarkt"
(
	"markt_id"       INT,
	"telefon_nummer" TEXT,
	"num_of_stock"   INT,
	PRIMARY KEY ("markt_id", "telefon_nummer"),
	FOREIGN KEY ("markt_id") REFERENCES "markt" ("markt_id"),
	FOREIGN KEY ("telefon_nummer") REFERENCES "telefon" ("telefon_nummer")
);

BEGIN TRANSACTION;
INSERT INTO "telefon" VALUES ('IPhone 5s', 1, 32, 'Sprint', 320.0);
INSERT INTO "telefon" VALUES ('IPhone 6', 5, 128, 'Sprint', 480.0);
INSERT INTO "telefon" VALUES ('IPhone 6s', 2, 128, 'TMobile', 699.0);
INSERT INTO "telefon" VALUES ('IPhone 7', 4, 16, 'TMobile', 899.0);
INSERT INTO "telefon" VALUES ('IPhone X', 3, 64, 'TMobile', 1000.0);

INSERT INTO "markt" VALUES (1, 'Alberta', 1966, 40.0, 1);
INSERT INTO "markt" VALUES (2, 'British Columbia', 1965, 49.0, 21);
INSERT INTO "markt" VALUES (3, 'New Brunswick', 1978, 10.0, 4);
INSERT INTO "markt" VALUES (4, 'Nova Scotia', 1968, 32.0, 5);
INSERT INTO "markt" VALUES (5, 'Ontario', 1958, 54.0, 3);
INSERT INTO "markt" VALUES (6, 'Quebec', 1958, 54.0, 8);

INSERT INTO "telefonmarkt" VALUES (1, '1', 2232);
INSERT INTO "telefonmarkt" VALUES (2, '2', 4324);
INSERT INTO "telefonmarkt" VALUES (1, '4', 874);
INSERT INTO "telefonmarkt" VALUES (5, '1', 682);
INSERT INTO "telefonmarkt" VALUES (2, '3', 908);
INSERT INTO "telefonmarkt" VALUES (6, '3', 1632);

COMMIT;