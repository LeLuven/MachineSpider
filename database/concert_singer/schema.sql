CREATE TABLE "stadion"
(
	"stadion_id"   INT,
	"ort"          TEXT,
	"name"         TEXT,
	"kapazität"    INT,
	"höchste"      INT,
	"niedrigste"   INT,
	"durchschnitt" INT,
	PRIMARY KEY ("stadion_id")
);

CREATE TABLE "sänger"
(
	"sänger_id"                            INT,
	"name"                                 TEXT,
	"land"                                 TEXT,
	"songname"                             TEXT,
	"jahr_der_veröffentlichung_des_liedes" TEXT,
	"alter"                                INT,
	"ist_männlich"                         BOOL,
	PRIMARY KEY ("sänger_id")
);

CREATE TABLE "konzert"
(
	"konzert_id"  INT,
	"konzertname" TEXT,
	"thema"       TEXT,
	"stadion_id"  TEXT,
	"jahr"        TEXT,
	PRIMARY KEY ("konzert_id"),
	FOREIGN KEY ("stadion_id") REFERENCES "stadion" ("stadion_id")
);

CREATE TABLE "sänger_im_konzert"
(
	"konzert_id" INT,
	"sänger_id"  TEXT,
	PRIMARY KEY ("konzert_id", "sänger_id"),
	FOREIGN KEY ("konzert_id") REFERENCES "konzert" ("konzert_id"),
	FOREIGN KEY ("sänger_id") REFERENCES "sänger" ("sänger_id")
);

BEGIN TRANSACTION;
INSERT INTO "stadion" VALUES (1, 'Raith Rovers', 'Stark''s Park', 10104, 4812, 1294, 2106);
INSERT INTO "stadion" VALUES (2, 'Ayr United', 'Somerset Park', 11998, 2363, 1057, 1477);
INSERT INTO "stadion" VALUES (3, 'East Fife', 'Bayview Stadium', 2000, 1980, 533, 864);
INSERT INTO "stadion" VALUES (4, 'Queen''s Park', 'Hampden Park', 52500, 1763, 466, 730);
INSERT INTO "stadion" VALUES (5, 'Stirling Albion', 'Forthbank Stadium', 3808, 1125, 404, 642);
INSERT INTO "stadion" VALUES (6, 'Arbroath', 'Gayfield Park', 4125, 921, 411, 638);
INSERT INTO "stadion" VALUES (7, 'Alloa Athletic', 'Recreation Park', 3100, 1057, 331, 637);
INSERT INTO "stadion" VALUES (9, 'Peterhead', 'Balmoor', 4000, 837, 400, 615);
INSERT INTO "stadion" VALUES (10, 'Brechin City', 'Glebe Park', 3960, 780, 315, 552);

INSERT INTO "sänger" VALUES (1, 'Joe Sharp', 'Netherlands', 'You', '1992', 52, 'F');
INSERT INTO "sänger" VALUES (2, 'Timbaland', 'United States', 'Dangerous', '2008', 32, 'T');
INSERT INTO "sänger" VALUES (3, 'Justin Brown', 'France', 'Hey Oh', '2013', 29, 'T');
INSERT INTO "sänger" VALUES (4, 'Rose White', 'France', 'Sun', '2003', 41, 'F');
INSERT INTO "sänger" VALUES (5, 'John Nizinik', 'France', 'Gentleman', '2014', 43, 'T');
INSERT INTO "sänger" VALUES (6, 'Tribal King', 'France', 'Love', '2016', 25, 'T');

INSERT INTO "konzert" VALUES (1, 'Auditions', 'Free choice', '1', '2014');
INSERT INTO "konzert" VALUES (2, 'Super bootcamp', 'Free choice 2', '2', '2014');
INSERT INTO "konzert" VALUES (3, 'Home Visits', 'Bleeding Love', '2', '2015');
INSERT INTO "konzert" VALUES (4, 'Week 1', 'Wide Awake', '10', '2014');
INSERT INTO "konzert" VALUES (5, 'Week 1', 'Happy Tonight', '9', '2015');
INSERT INTO "konzert" VALUES (6, 'Week 2', 'Party All Night', '7', '2015');

INSERT INTO "sänger_im_konzert" VALUES (1, '2');
INSERT INTO "sänger_im_konzert" VALUES (1, '3');
INSERT INTO "sänger_im_konzert" VALUES (1, '5');
INSERT INTO "sänger_im_konzert" VALUES (2, '3');
INSERT INTO "sänger_im_konzert" VALUES (2, '6');
INSERT INTO "sänger_im_konzert" VALUES (3, '5');
INSERT INTO "sänger_im_konzert" VALUES (4, '4');
INSERT INTO "sänger_im_konzert" VALUES (5, '6');
INSERT INTO "sänger_im_konzert" VALUES (5, '3');
INSERT INTO "sänger_im_konzert" VALUES (6, '2');

COMMIT;