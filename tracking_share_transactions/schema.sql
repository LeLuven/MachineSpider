CREATE TABLE "anleger"
(
	"investor_id"  INTEGER,
	"anlegerdaten" VARCHAR(255),
	PRIMARY KEY ("investor_id")
);

CREATE TABLE "referenztransaktionsarten"
(
	"transaktionsart_code"             VARCHAR(10),
	"beschreibung_der_transaktionsart" VARCHAR(80) NOT NULL,
	PRIMARY KEY ("transaktionsart_code")
);

CREATE TABLE "lots"
(
	"lot_id"      INTEGER,
	"investor_id" INTEGER NOT NULL,
	"lot_details" VARCHAR(255),
	PRIMARY KEY ("lot_id"),
	FOREIGN KEY ("investor_id") REFERENCES "anleger" ("investor_id")
);

CREATE TABLE "transaktionen"
(
	"transaktions_id"        INTEGER,
	"investor_id"            INTEGER NOT NULL,
	"transaktionsart_code"   VARCHAR(10) NOT NULL,
	"datum_der_transaktion"  DATETIME,
	"betrag_der_transaktion" DECIMAL(19,4),
	"anzahl_der_aktien"      VARCHAR(40),
	"andere_angaben"         VARCHAR(255),
	PRIMARY KEY ("transaktions_id"),
	FOREIGN KEY ("investor_id") REFERENCES "anleger" ("investor_id"),
	FOREIGN KEY ("transaktionsart_code") REFERENCES "referenztransaktionsarten" ("transaktionsart_code")
);

CREATE TABLE "verkäufe"
(
	"verkaufstransaktion_id" INTEGER,
	"verkaufsdaten"          VARCHAR(255),
	PRIMARY KEY ("verkaufstransaktion_id"),
	FOREIGN KEY ("verkaufstransaktion_id") REFERENCES "transaktionen" ("transaktions_id")
);

CREATE TABLE "einkäufe"
(
	"einkauf_transaktions_id" INTEGER NOT NULL,
	"einkaufsdetails"         VARCHAR(255) NOT NULL,
	FOREIGN KEY ("einkauf_transaktions_id") REFERENCES "transaktionen" ("transaktions_id")
);

CREATE TABLE "transaktionen_lose"
(
	"transaktions_id" INTEGER NOT NULL,
	"lot_id"          INTEGER NOT NULL,
	FOREIGN KEY ("transaktions_id") REFERENCES "transaktionen" ("transaktions_id"),
	FOREIGN KEY ("lot_id") REFERENCES "lots" ("lot_id")
);

BEGIN TRANSACTION;
INSERT INTO "anleger" VALUES (1, 'z');
INSERT INTO "anleger" VALUES (2, 'z');
INSERT INTO "anleger" VALUES (3, 'd');
INSERT INTO "anleger" VALUES (4, 'd');
INSERT INTO "anleger" VALUES (5, 'b');
INSERT INTO "anleger" VALUES (6, 'k');
INSERT INTO "anleger" VALUES (7, 'l');
INSERT INTO "anleger" VALUES (8, 't');
INSERT INTO "anleger" VALUES (9, 'y');
INSERT INTO "anleger" VALUES (10, 'r');
INSERT INTO "anleger" VALUES (11, 'q');
INSERT INTO "anleger" VALUES (12, 'c');
INSERT INTO "anleger" VALUES (13, 'o');
INSERT INTO "anleger" VALUES (14, 'w');
INSERT INTO "anleger" VALUES (15, 'i');
INSERT INTO "anleger" VALUES (16, 'y');
INSERT INTO "anleger" VALUES (17, 'k');
INSERT INTO "anleger" VALUES (18, 'w');
INSERT INTO "anleger" VALUES (19, 'l');
INSERT INTO "anleger" VALUES (20, 'j');

INSERT INTO "referenztransaktionsarten" VALUES ('SALE', 'Sale');
INSERT INTO "referenztransaktionsarten" VALUES ('PUR', 'Purchase');

INSERT INTO "lots" VALUES (1, 13, 'r');
INSERT INTO "lots" VALUES (2, 16, 'z');
INSERT INTO "lots" VALUES (3, 10, 's');
INSERT INTO "lots" VALUES (4, 19, 's');
INSERT INTO "lots" VALUES (5, 6, 'q');
INSERT INTO "lots" VALUES (6, 20, 'd');
INSERT INTO "lots" VALUES (7, 7, 'm');
INSERT INTO "lots" VALUES (8, 7, 'h');
INSERT INTO "lots" VALUES (9, 20, 'z');
INSERT INTO "lots" VALUES (10, 9, 'x');
INSERT INTO "lots" VALUES (11, 1, 'd');
INSERT INTO "lots" VALUES (12, 19, 'm');
INSERT INTO "lots" VALUES (13, 7, 'z');
INSERT INTO "lots" VALUES (14, 6, 'd');
INSERT INTO "lots" VALUES (15, 1, 'h');

INSERT INTO "transaktionen" VALUES (1, 6, 'SALE', '1988-09-16 19:02:51', 302507.6996, '8718572', NULL);
INSERT INTO "transaktionen" VALUES (2, 18, 'PUR', '1982-06-06 17:19:00', 27.257, '9', NULL);
INSERT INTO "transaktionen" VALUES (3, 2, 'SALE', '1979-04-27 06:03:59', 48777.969, '8580', NULL);
INSERT INTO "transaktionen" VALUES (4, 14, 'PUR', '2001-11-28 15:06:25', 4.5263, '8040', NULL);
INSERT INTO "transaktionen" VALUES (5, 8, 'PUR', '1977-08-17 13:13:30', 0, '930', NULL);
INSERT INTO "transaktionen" VALUES (6, 19, 'PUR', '1985-10-08 13:13:39', 207484122.2796, '2751', NULL);
INSERT INTO "transaktionen" VALUES (7, 7, 'PUR', '1990-12-02 09:03:38', 822.803, '1522', NULL);
INSERT INTO "transaktionen" VALUES (8, 17, 'SALE', '2004-01-18 20:37:50', 78035671.4424, '96178', NULL);
INSERT INTO "transaktionen" VALUES (9, 20, 'PUR', '1977-08-13 02:18:47', 82057.207, '', NULL);
INSERT INTO "transaktionen" VALUES (10, 2, 'SALE', '1981-01-28 08:07:03', 29.3534, '1654756', NULL);
INSERT INTO "transaktionen" VALUES (11, 3, 'SALE', '2000-04-03 20:55:43', 0, '674529892', NULL);
INSERT INTO "transaktionen" VALUES (12, 18, 'SALE', '1983-11-01 17:57:27', 1, '587', NULL);
INSERT INTO "transaktionen" VALUES (13, 3, 'SALE', '2002-04-07 20:28:37', 183.2, '', NULL);
INSERT INTO "transaktionen" VALUES (14, 3, 'PUR', '2002-09-13 03:04:56', 0, '630021', NULL);
INSERT INTO "transaktionen" VALUES (15, 19, 'PUR', '1997-12-30 05:05:40', 8.9, '93191', NULL);

INSERT INTO "verkäufe" VALUES (1, 'x');
INSERT INTO "verkäufe" VALUES (2, 'o');
INSERT INTO "verkäufe" VALUES (3, 'a');
INSERT INTO "verkäufe" VALUES (4, 'f');
INSERT INTO "verkäufe" VALUES (5, 'y');
INSERT INTO "verkäufe" VALUES (6, 'x');
INSERT INTO "verkäufe" VALUES (7, 'p');
INSERT INTO "verkäufe" VALUES (8, 'e');
INSERT INTO "verkäufe" VALUES (9, 'p');
INSERT INTO "verkäufe" VALUES (10, 's');
INSERT INTO "verkäufe" VALUES (11, 's');
INSERT INTO "verkäufe" VALUES (12, 't');
INSERT INTO "verkäufe" VALUES (13, 'p');
INSERT INTO "verkäufe" VALUES (14, 'n');
INSERT INTO "verkäufe" VALUES (15, 'e');

INSERT INTO "einkäufe" VALUES (1, 'c');
INSERT INTO "einkäufe" VALUES (2, 'y');
INSERT INTO "einkäufe" VALUES (3, 'i');
INSERT INTO "einkäufe" VALUES (4, 'x');
INSERT INTO "einkäufe" VALUES (5, 'y');
INSERT INTO "einkäufe" VALUES (6, 'a');
INSERT INTO "einkäufe" VALUES (7, 'r');
INSERT INTO "einkäufe" VALUES (8, 'a');
INSERT INTO "einkäufe" VALUES (9, 'r');
INSERT INTO "einkäufe" VALUES (10, 'l');
INSERT INTO "einkäufe" VALUES (11, 'z');
INSERT INTO "einkäufe" VALUES (12, 'h');
INSERT INTO "einkäufe" VALUES (13, 't');
INSERT INTO "einkäufe" VALUES (14, 'o');
INSERT INTO "einkäufe" VALUES (15, 'x');

INSERT INTO "transaktionen_lose" VALUES (3, 11);
INSERT INTO "transaktionen_lose" VALUES (3, 8);
INSERT INTO "transaktionen_lose" VALUES (2, 11);
INSERT INTO "transaktionen_lose" VALUES (3, 14);
INSERT INTO "transaktionen_lose" VALUES (12, 10);
INSERT INTO "transaktionen_lose" VALUES (15, 10);
INSERT INTO "transaktionen_lose" VALUES (10, 10);
INSERT INTO "transaktionen_lose" VALUES (1, 1);
INSERT INTO "transaktionen_lose" VALUES (1, 14);
INSERT INTO "transaktionen_lose" VALUES (3, 4);
INSERT INTO "transaktionen_lose" VALUES (14, 9);
INSERT INTO "transaktionen_lose" VALUES (7, 1);
INSERT INTO "transaktionen_lose" VALUES (12, 15);
INSERT INTO "transaktionen_lose" VALUES (6, 3);
INSERT INTO "transaktionen_lose" VALUES (2, 1);

COMMIT;