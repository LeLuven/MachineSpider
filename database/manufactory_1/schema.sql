CREATE TABLE "manufacturers"
(
	"code"      INTEGER,
	"name"      VARCHAR(255) NOT NULL,
	"hauptsitz" VARCHAR(255) NOT NULL,
	"gründer"   VARCHAR(255) NOT NULL,
	"umsatz"    REAL,
	PRIMARY KEY ("code")
);

CREATE TABLE "produkte"
(
	"code"       INTEGER,
	"name"       VARCHAR(255) NOT NULL,
	"preis"      DECIMAL NOT NULL,
	"hersteller" INTEGER NOT NULL,
	PRIMARY KEY ("code"),
	FOREIGN KEY ("hersteller") REFERENCES "manufacturers" ("code")
);

BEGIN TRANSACTION;
INSERT INTO "manufacturers" VALUES (1, 'Sony', 'Tokyo', 'Andy', 120.0);
INSERT INTO "manufacturers" VALUES (2, 'Creative Labs', 'Austin', 'Owen', 100.0);
INSERT INTO "manufacturers" VALUES (3, 'Hewlett-Packard', 'Los Angeles', 'James', 50.0);
INSERT INTO "manufacturers" VALUES (4, 'Iomega', 'Beijing', 'Mary', 200.0);
INSERT INTO "manufacturers" VALUES (5, 'Fujitsu', 'Taiwan', 'John', 130.0);
INSERT INTO "manufacturers" VALUES (6, 'Winchester', 'Paris', 'Robert', 30.0);

INSERT INTO "produkte" VALUES (1, 'Hard drive', 240, 5);
INSERT INTO "produkte" VALUES (2, 'Memory', 120, 6);
INSERT INTO "produkte" VALUES (3, 'ZIP drive', 150, 4);
INSERT INTO "produkte" VALUES (4, 'Floppy disk', 5, 6);
INSERT INTO "produkte" VALUES (5, 'Monitor', 240, 1);
INSERT INTO "produkte" VALUES (6, 'DVD drive', 180, 2);
INSERT INTO "produkte" VALUES (7, 'CD drive', 90, 2);
INSERT INTO "produkte" VALUES (8, 'Printer', 270, 3);
INSERT INTO "produkte" VALUES (9, 'Toner cartridge', 66, 3);
INSERT INTO "produkte" VALUES (10, 'DVD burner', 180, 2);
INSERT INTO "produkte" VALUES (11, 'DVD drive', 150, 3);

COMMIT;