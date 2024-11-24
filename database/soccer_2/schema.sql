CREATE TABLE "hochschule"
(
	"college_name"  VARCHAR(20) NOT NULL,
	"staat"         VARCHAR(2),
	"einschreibung" NUMERIC(5,0),
	PRIMARY KEY ("college_name")
);

CREATE TABLE "spieler"
(
	"spieler_id"       NUMERIC(5,0) NOT NULL,
	"spielername"      VARCHAR(20),
	"ja_karte"         VARCHAR(3),
	"trainingsstunden" NUMERIC(5,0),
	PRIMARY KEY ("spieler_id")
);

CREATE TABLE "tryout"
(
	"spieler_id"      NUMERIC(5,0),
	"college_name"    VARCHAR(20),
	"spielerposition" VARCHAR(8),
	"entscheidung"    VARCHAR(3),
	PRIMARY KEY ("spieler_id", "college_name"),
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("college_name") REFERENCES "hochschule" ("college_name")
);

BEGIN TRANSACTION;
INSERT INTO "hochschule" VALUES ('LSU', 'LA', 18000);
INSERT INTO "hochschule" VALUES ('ASU', 'AZ', 12000);
INSERT INTO "hochschule" VALUES ('OU', 'OK', 22000);
INSERT INTO "hochschule" VALUES ('FSU', 'FL', 19000);

INSERT INTO "spieler" VALUES (10001, 'Andrew', 'no', 1200);
INSERT INTO "spieler" VALUES (20002, 'Blake', 'no', 1600);
INSERT INTO "spieler" VALUES (30003, 'Charles', 'no', 300);
INSERT INTO "spieler" VALUES (40004, 'David', 'yes', 1600);
INSERT INTO "spieler" VALUES (40002, 'Drago', 'yes', 1600);
INSERT INTO "spieler" VALUES (50005, 'Eddie', 'yes', 600);

INSERT INTO "tryout" VALUES (10001, 'LSU', 'goalie', 'no');
INSERT INTO "tryout" VALUES (10001, 'ASU', 'goalie', 'yes');
INSERT INTO "tryout" VALUES (20002, 'FSU', 'striker', 'yes');
INSERT INTO "tryout" VALUES (30003, 'OU', 'mid', 'no');
INSERT INTO "tryout" VALUES (40004, 'ASU', 'goalie', 'no');
INSERT INTO "tryout" VALUES (50005, 'LSU', 'mid', 'no');

COMMIT;