CREATE TABLE "treiber"
(
	"fahrer_id"   INT,
	"name"        TEXT,
	"partei"      TEXT,
	"heimatstadt" TEXT,
	"alter"       INT,
	PRIMARY KEY ("fahrer_id")
);

CREATE TABLE "schule"
(
	"schule_id" INT,
	"klasse"    TEXT,
	"schule"    TEXT,
	"standort"  TEXT,
	"typ"       TEXT,
	PRIMARY KEY ("schule_id")
);

CREATE TABLE "schulbus"
(
	"schule_id"     INT,
	"fahrer_id"     INT,
	"arbeitsjahre"  INT,
	"wenn_vollzeit" BOOL,
	PRIMARY KEY ("schule_id", "fahrer_id"),
	FOREIGN KEY ("schule_id") REFERENCES "schule" ("schule_id"),
	FOREIGN KEY ("fahrer_id") REFERENCES "treiber" ("fahrer_id")
);

BEGIN TRANSACTION;
INSERT INTO "treiber" VALUES (1, 'Matthew Ritter', 'Dem', 'Hartford', 40);
INSERT INTO "treiber" VALUES (2, 'Dan Carter', 'Rep', 'Bethel', 30);
INSERT INTO "treiber" VALUES (3, 'Minnie Gonzalez', 'Dem', 'Hartford', 46);
INSERT INTO "treiber" VALUES (4, 'Angel Acre', 'Dem', 'Hartford', 42);
INSERT INTO "treiber" VALUES (5, 'Brandon McGee', 'Dem', 'Hartford', 45);
INSERT INTO "treiber" VALUES (6, 'Edwin Vargas', 'Dem', 'Hartford', 52);
INSERT INTO "treiber" VALUES (7, 'Douglas McCrory', 'Dem', 'Hartford', 36);
INSERT INTO "treiber" VALUES (8, 'Timothy Ackert', 'Rep', 'Coventry', 35);
INSERT INTO "treiber" VALUES (9, 'Jason Rojas', 'Dem', 'East Hartford', 38);
INSERT INTO "treiber" VALUES (10, 'Henry Genga', 'Dem', 'East Hartford', 37);
INSERT INTO "treiber" VALUES (11, 'Tim Larson', 'Dem', 'East Hartford', 36);
INSERT INTO "treiber" VALUES (12, 'Geoff Luxenberg', 'Dem', 'Manchester', 52);

INSERT INTO "schule" VALUES (1, 'Kindergarten', 'Noelani Elementary School', 'Honolulu, Hawaii', 'Public');
INSERT INTO "schule" VALUES (2, '1st-3rd grade', 'St. Francis Assisi', 'Jakarta, Indonesia', 'Private Catholic');
INSERT INTO "schule" VALUES (3, '4th grade', 'State Elementary School Menteng 01', 'Jakarta, Indonesia', 'Public');
INSERT INTO "schule" VALUES (4, '5th-12th grade', 'Punahou School', 'Honolulu, Hawaii', 'Private');
INSERT INTO "schule" VALUES (5, 'Freshman–Sophomore year', 'Occidental College', 'Los Angeles, California', 'Private');
INSERT INTO "schule" VALUES (6, 'Junior–Senior year', 'Columbia University', 'New York City', 'Private');
INSERT INTO "schule" VALUES (7, 'College', 'Harvard Law School', 'Cambridge, Massachusetts', 'Private');

INSERT INTO "schulbus" VALUES (1, 10, 10, 'F');
INSERT INTO "schulbus" VALUES (5, 7, 8, 'T');
INSERT INTO "schulbus" VALUES (3, 4, 6, 'T');
INSERT INTO "schulbus" VALUES (7, 9, 2, 'T');
INSERT INTO "schulbus" VALUES (4, 3, 3, 'T');

COMMIT;