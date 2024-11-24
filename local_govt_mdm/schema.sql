CREATE TABLE "kundenstammindex"
(
	"kundenstamm_id" INTEGER NOT NULL,
	"cmi_details"    VARCHAR(255),
	PRIMARY KEY ("kundenstamm_id")
);

CREATE TABLE "cmi_querverweise"
(
	"cmi_cross_reference_id" INTEGER NOT NULL,
	"kundenstamm_id"         INTEGER NOT NULL,
	"quellsystem_code"       CHAR(15) NOT NULL,
	PRIMARY KEY ("cmi_cross_reference_id"),
	FOREIGN KEY ("kundenstamm_id") REFERENCES "kundenstammindex" ("kundenstamm_id")
);

CREATE TABLE "gemeindesteuer"
(
	"council_tax_id"         INTEGER NOT NULL,
	"cmi_cross_reference_id" INTEGER NOT NULL,
	PRIMARY KEY ("council_tax_id"),
	FOREIGN KEY ("cmi_cross_reference_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

CREATE TABLE "gewerbesteuer"
(
	"business_rates_id"      INTEGER NOT NULL,
	"cmi_cross_reference_id" INTEGER NOT NULL,
	PRIMARY KEY ("business_rates_id"),
	FOREIGN KEY ("cmi_cross_reference_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

CREATE TABLE "leistungsüberzahlungen"
(
	"council_tax_id"   INTEGER NOT NULL,
	"cmi_cross_ref_id" INTEGER NOT NULL,
	PRIMARY KEY ("council_tax_id"),
	FOREIGN KEY ("cmi_cross_ref_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

CREATE TABLE "bußgelder"
(
	"council_tax_id"         INTEGER NOT NULL,
	"cmi_cross_reference_id" INTEGER NOT NULL,
	PRIMARY KEY ("council_tax_id"),
	FOREIGN KEY ("cmi_cross_reference_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

CREATE TABLE "mietrückstände"
(
	"council_tax_id"         INTEGER NOT NULL,
	"cmi_cross_reference_id" INTEGER NOT NULL,
	PRIMARY KEY ("council_tax_id"),
	FOREIGN KEY ("cmi_cross_reference_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

CREATE TABLE "wählerverzeichnis"
(
	"wahlregister_id"        INTEGER NOT NULL,
	"cmi_cross_reference_id" INTEGER NOT NULL,
	PRIMARY KEY ("wahlregister_id"),
	FOREIGN KEY ("cmi_cross_reference_id") REFERENCES "cmi_querverweise" ("cmi_cross_reference_id")
);

BEGIN TRANSACTION;
INSERT INTO "kundenstammindex" VALUES (1, 'Schmitt-Lang');
INSERT INTO "kundenstammindex" VALUES (2, 'Volkman, Mills and Ferry');
INSERT INTO "kundenstammindex" VALUES (3, 'Gusikowski PLC');
INSERT INTO "kundenstammindex" VALUES (4, 'Schmidt, Kertzmann and Lubowitz');
INSERT INTO "kundenstammindex" VALUES (5, 'Gottlieb, Becker and Wyman');
INSERT INTO "kundenstammindex" VALUES (6, 'Mayer-Hagenes');
INSERT INTO "kundenstammindex" VALUES (7, 'Streich-Morissette');
INSERT INTO "kundenstammindex" VALUES (8, 'Quigley-Paucek');
INSERT INTO "kundenstammindex" VALUES (9, 'Reynolds-McClure');

INSERT INTO "cmi_querverweise" VALUES (2, 4, 'Rent');
INSERT INTO "cmi_querverweise" VALUES (4, 5, 'Parking');
INSERT INTO "cmi_querverweise" VALUES (8, 1, 'Rent');
INSERT INTO "cmi_querverweise" VALUES (41, 5, 'Benefits');
INSERT INTO "cmi_querverweise" VALUES (48, 5, 'Benefits');
INSERT INTO "cmi_querverweise" VALUES (49, 1, 'Business');
INSERT INTO "cmi_querverweise" VALUES (59, 1, 'Rent');
INSERT INTO "cmi_querverweise" VALUES (65, 9, 'Benefits');
INSERT INTO "cmi_querverweise" VALUES (75, 5, 'Electoral');
INSERT INTO "cmi_querverweise" VALUES (77, 4, 'Electoral');
INSERT INTO "cmi_querverweise" VALUES (81, 9, 'Parking');
INSERT INTO "cmi_querverweise" VALUES (83, 3, 'Benefits');
INSERT INTO "cmi_querverweise" VALUES (95, 2, 'Business');
INSERT INTO "cmi_querverweise" VALUES (99, 9, 'Business');
INSERT INTO "cmi_querverweise" VALUES (100, 4, 'Rent');
INSERT INTO "cmi_querverweise" VALUES (101, 2, 'Tax');
INSERT INTO "cmi_querverweise" VALUES (102, 4, 'Tax');
INSERT INTO "cmi_querverweise" VALUES (103, 9, 'Tax');
INSERT INTO "cmi_querverweise" VALUES (104, 2, 'Tax');
INSERT INTO "cmi_querverweise" VALUES (105, 2, 'Tax');
INSERT INTO "cmi_querverweise" VALUES (106, 1, 'Tax');

INSERT INTO "gemeindesteuer" VALUES (1, 101);
INSERT INTO "gemeindesteuer" VALUES (2, 103);
INSERT INTO "gemeindesteuer" VALUES (3, 104);
INSERT INTO "gemeindesteuer" VALUES (7, 102);
INSERT INTO "gemeindesteuer" VALUES (8, 106);
INSERT INTO "gemeindesteuer" VALUES (9, 105);

INSERT INTO "gewerbesteuer" VALUES (2, 99);
INSERT INTO "gewerbesteuer" VALUES (5, 49);
INSERT INTO "gewerbesteuer" VALUES (8, 95);

INSERT INTO "leistungsüberzahlungen" VALUES (3, 65);
INSERT INTO "leistungsüberzahlungen" VALUES (6, 41);
INSERT INTO "leistungsüberzahlungen" VALUES (7, 83);
INSERT INTO "leistungsüberzahlungen" VALUES (8, 48);

INSERT INTO "bußgelder" VALUES (9, 4);
INSERT INTO "bußgelder" VALUES (10, 81);

INSERT INTO "mietrückstände" VALUES (1, 100);
INSERT INTO "mietrückstände" VALUES (2, 8);
INSERT INTO "mietrückstände" VALUES (6, 59);
INSERT INTO "mietrückstände" VALUES (7, 2);

INSERT INTO "wählerverzeichnis" VALUES (2, 83);
INSERT INTO "wählerverzeichnis" VALUES (3, 65);
INSERT INTO "wählerverzeichnis" VALUES (4, 100);
INSERT INTO "wählerverzeichnis" VALUES (6, 95);
INSERT INTO "wählerverzeichnis" VALUES (7, 65);
INSERT INTO "wählerverzeichnis" VALUES (8, 75);

COMMIT;