CREATE TABLE "leute"
(
	"personen_id"  INT,
	"name"         TEXT,
	"land"         TEXT,
	"ist_männlich" TEXT,
	"alter"        INT,
	PRIMARY KEY ("personen_id")
);

CREATE TABLE "kirche"
(
	"kirche_id"       INT,
	"name"            TEXT,
	"organisiert_von" TEXT,
	"eröffnungsdatum" INT,
	"fortführung_von" TEXT,
	PRIMARY KEY ("kirche_id")
);

CREATE TABLE "hochzeit"
(
	"kirche_id"    INT,
	"männer_id"    INT,
	"weibliche_id" INT,
	"jahr"         INT,
	PRIMARY KEY ("kirche_id", "männer_id", "weibliche_id"),
	FOREIGN KEY ("kirche_id") REFERENCES "kirche" ("kirche_id"),
	FOREIGN KEY ("männer_id") REFERENCES "leute" ("personen_id"),
	FOREIGN KEY ("weibliche_id") REFERENCES "leute" ("personen_id")
);

BEGIN TRANSACTION;
INSERT INTO "leute" VALUES (1, 'Mike Weir', 'Canada', 'T', 34);
INSERT INTO "leute" VALUES (2, 'Juli Hanson', 'Sweden', 'F', 32);
INSERT INTO "leute" VALUES (3, 'Ricky Barnes', 'United States', 'T', 30);
INSERT INTO "leute" VALUES (4, 'Summer Duval', 'United States', 'F', 30);
INSERT INTO "leute" VALUES (5, 'Todd Hamilton', 'United States', 'T', 27);
INSERT INTO "leute" VALUES (6, 'Annie Mediate', 'United States', 'F', 26);
INSERT INTO "leute" VALUES (7, 'Lucas Glover', 'United States', 'T', 31);
INSERT INTO "leute" VALUES (8, 'Joe O''Hair', 'United States', 'F', 31);
INSERT INTO "leute" VALUES (9, 'Graeme McDowell', 'Northern Ireland', 'T', 34);
INSERT INTO "leute" VALUES (10, 'Jamie Mickelson', 'United States', 'F', 36);
INSERT INTO "leute" VALUES (11, 'Adam Scott', 'Australia', 'T', 26);
INSERT INTO "leute" VALUES (12, 'Danny Toms', 'United States', 'F', 25);

INSERT INTO "kirche" VALUES (1, 'Pure Church of Christ', 'Wycam Clark', 1831, 'Church of Christ');
INSERT INTO "kirche" VALUES (2, 'Independent Church', '– Hoton', 1832, 'Church of Christ');
INSERT INTO "kirche" VALUES (3, 'Church of Christ', 'Ezra Booth', 1836, 'Church of the Latter Day Saints');
INSERT INTO "kirche" VALUES (4, 'Church of Christ (Parrishite)', 'Warren Parrish', 1837, 'Church of the Latter Day Saints');
INSERT INTO "kirche" VALUES (5, 'Alston Church', 'Isaac Russell', 1839, 'Church of Jesus Christ of Latter Day Saints');
INSERT INTO "kirche" VALUES (6, 'Church of Christ', 'William Chubby', 1830, 'Church of Jesus Christ of Latter Day Saints');
INSERT INTO "kirche" VALUES (7, 'Church of Jesus Christ, the Bride, the Lamb''s Wife', 'George M. Hinkle', 1840, 'Church of Jesus Christ of Latter Day Saints');
INSERT INTO "kirche" VALUES (8, 'Church of Christ', 'Hiram Page', 1842, 'Church of Jesus Christ of Latter Day Saints');
INSERT INTO "kirche" VALUES (9, 'True Church of Jesus Christ of Latter Day Saints', 'William Law', 1844, 'Church of Jesus Christ of Latter Day Saints');

INSERT INTO "hochzeit" VALUES (1, 1, 2, 2014);
INSERT INTO "hochzeit" VALUES (3, 3, 4, 2015);
INSERT INTO "hochzeit" VALUES (5, 5, 6, 2016);
INSERT INTO "hochzeit" VALUES (4, 7, 8, 2016);

COMMIT;