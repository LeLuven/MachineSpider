CREATE TABLE "schiff"
(
	"schiffs_id" INT,
	"name"       TEXT,
	"typ"        TEXT,
	"baujahr"    REAL,
	"klasse"     TEXT,
	"flagge"     TEXT,
	PRIMARY KEY ("schiffs_id")
);

CREATE TABLE "kapitän"
(
	"kapitän_id" INT,
	"name"       TEXT,
	"schiffs_id" INT,
	"alter"      TEXT,
	"klasse"     TEXT,
	"rang"       TEXT,
	PRIMARY KEY ("kapitän_id"),
	FOREIGN KEY ("schiffs_id") REFERENCES "schiff" ("schiffs_id")
);

BEGIN TRANSACTION;
INSERT INTO "schiff" VALUES (1, 'HMS Manxman', 'Panamax', 1997.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (2, 'HMS Gorgon', 'Panamax', 1998.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (3, 'HM Cutter Avenger', 'Panamax', 1997.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (4, 'HM Schooner Hotspur', 'Panamax', 1998.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (5, 'HMS Destiny', 'Panamax', 1998.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (6, 'HMS Trojan', 'Panamax', 1997.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (7, 'HM Sloop Sparrow', 'Panamax', 1997.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (8, 'HMS Phalarope', 'Panamax', 1997.0, 'KR', 'Panama');
INSERT INTO "schiff" VALUES (9, 'HMS Undine', 'Panamax', 1998.0, 'GL', 'Malta');

INSERT INTO "kapitän" VALUES (1, 'Captain Sir Henry Langford', 1, '40', 'Third-rate ship of the line', 'Midshipman');
INSERT INTO "kapitän" VALUES (2, 'Captain Beves Conway', 2, '54', 'Third-rate ship of the line', 'Midshipman');
INSERT INTO "kapitän" VALUES (3, 'Lieutenant Hugh Bolitho', 3, '43', 'Cutter', 'Midshipman');
INSERT INTO "kapitän" VALUES (4, 'Lieutenant Montagu Verling', 4, '45', 'Armed schooner', 'Midshipman');
INSERT INTO "kapitän" VALUES (5, 'Captain Henry Dumaresq', 5, '38', 'Frigate', 'Lieutenant');
INSERT INTO "kapitän" VALUES (6, 'Captain Gilbert Pears', 2, '60', 'Third-rate ship of the line', 'Lieutenant');
INSERT INTO "kapitän" VALUES (7, 'Commander Richard Bolitho', 3, '38', 'Sloop-of-war', 'Commander, junior captain');

COMMIT;