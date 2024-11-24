CREATE TABLE "konten"
(
	"kunden_id" BIGINT NOT NULL,
	"name"      VARCHAR(64) NOT NULL,
	PRIMARY KEY ("kunden_id")
);

CREATE TABLE "ersparnisse"
(
	"kunden_id" BIGINT NOT NULL,
	"saldo"     FLOAT NOT NULL,
	PRIMARY KEY ("kunden_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "konten" ("kunden_id")
);

CREATE TABLE "girokonto"
(
	"kunden_id" BIGINT NOT NULL,
	"saldo"     FLOAT NOT NULL,
	PRIMARY KEY ("kunden_id"),
	FOREIGN KEY ("kunden_id") REFERENCES "konten" ("kunden_id")
);

BEGIN TRANSACTION;
INSERT INTO "konten" VALUES (1, 'Brown');
INSERT INTO "konten" VALUES (2, 'Wang');
INSERT INTO "konten" VALUES (3, 'O''mahony');
INSERT INTO "konten" VALUES (4, 'Weeks');
INSERT INTO "konten" VALUES (5, 'Granger');
INSERT INTO "konten" VALUES (6, 'Porter');
INSERT INTO "konten" VALUES (7, 'Wesley');

INSERT INTO "ersparnisse" VALUES (1, 200000.0);
INSERT INTO "ersparnisse" VALUES (2, 999999999.0);
INSERT INTO "ersparnisse" VALUES (3, 230000.0);
INSERT INTO "ersparnisse" VALUES (4, 60.0);
INSERT INTO "ersparnisse" VALUES (5, 80000.0);
INSERT INTO "ersparnisse" VALUES (6, 240.0);

INSERT INTO "girokonto" VALUES (1, 10000.0);
INSERT INTO "girokonto" VALUES (2, 2000.0);
INSERT INTO "girokonto" VALUES (3, 3000.0);
INSERT INTO "girokonto" VALUES (4, 7000.0);
INSERT INTO "girokonto" VALUES (5, 10000.0);
INSERT INTO "girokonto" VALUES (6, 77.0);
INSERT INTO "girokonto" VALUES (7, 7.0);

COMMIT;