CREATE TABLE "bank"
(
	"filialnummer"      INT,
	"bname"             VARCHAR(20),
	"anzahl_der_kunden" INT,
	"stadt"             VARCHAR(10),
	"bundesland"        VARCHAR(20),
	PRIMARY KEY ("filialnummer")
);

CREATE TABLE "kunde"
(
	"kunden_id"          VARCHAR(3),
	"kundenname"         VARCHAR(20),
	"kontoart"           CHAR(1),
	"kontostand"         INT,
	"anzahl_der_kredite" INT,
	"kreditwürdigkeit"   INT,
	"filialnummer"       INT,
	"bundesland"         VARCHAR(20),
	PRIMARY KEY ("kunden_id"),
	FOREIGN KEY ("filialnummer") REFERENCES "bank" ("filialnummer")
);

CREATE TABLE "kredit"
(
	"darlehens_id" VARCHAR(3),
	"darlehensart" VARCHAR(15),
	"kunden_id"    VARCHAR(3),
	"filialnummer" VARCHAR(3),
	"betrag"       INT,
	PRIMARY KEY ("darlehens_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "kunde" ("kunden_id"),
	FOREIGN KEY ("filialnummer") REFERENCES "bank" ("filialnummer")
);

BEGIN TRANSACTION;
INSERT INTO "bank" VALUES (1, 'morningside', 203, 'New York City', 'New York');
INSERT INTO "bank" VALUES (2, 'downtown', 123, 'Salt Lake City', 'Utah');
INSERT INTO "bank" VALUES (3, 'broadway', 453, 'New York City', 'New York');
INSERT INTO "bank" VALUES (4, 'high', 367, 'Austin', 'Texas');

INSERT INTO "kunde" VALUES ('1', 'Mary', 'saving', 2000, 2, 30, 2, 'Utah');
INSERT INTO "kunde" VALUES ('2', 'Jack', 'checking', 1000, 1, 20, 1, 'Texas');
INSERT INTO "kunde" VALUES ('3', 'Owen', 'saving', 800000, 0, 210, 3, 'New York');

INSERT INTO "kredit" VALUES ('1', 'Mortgages', '1', '1', 2050);
INSERT INTO "kredit" VALUES ('2', 'Auto', '1', '2', 3000);
INSERT INTO "kredit" VALUES ('3', 'Business', '3', '3', 5000);

COMMIT;