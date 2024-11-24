CREATE TABLE "tv_channel"
(
	"id"                         TEXT,
	"serienname"                 TEXT,
	"land"                       TEXT,
	"sprache"                    TEXT,
	"inhalt"                     TEXT,
	"pixel_seitenverhältnis_par" TEXT,
	"hochauflösendes_fernsehen"  TEXT,
	"pay_per_view_ppv"           TEXT,
	"paket_option"               TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "tv_serien"
(
	"id"                   REAL,
	"episode"              TEXT,
	"ausstrahlungsdatum"   TEXT,
	"bewertung"            TEXT,
	"anteil"               REAL,
	"18_49_einschaltquote" TEXT,
	"zuschauer_m"          TEXT,
	"wöchentlicher_rang"   REAL,
	"kanal"                TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("kanal") REFERENCES "tv_channel" ("id")
);

CREATE TABLE "cartoon"
(
	"id"                        REAL,
	"titel"                     TEXT,
	"regie"                     TEXT,
	"geschrieben_von"           TEXT,
	"ursprüngliches_sendedatum" TEXT,
	"produktionscode"           REAL,
	"kanal"                     TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("kanal") REFERENCES "tv_channel" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "tv_channel" VALUES ('700', 'Sky Radio', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('701', 'Sky Music', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('703', 'Music Box Italia', 'Italy', 'Italian', 'music', '4:3 / 16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('704', 'MTV Hits', 'Italy', 'Italian', 'music', '16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('705', 'MTV Classic', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('706', 'MTV Rocks', 'United Kingdom', 'English', 'music', '16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('707', 'MTV Dance', 'United Kingdom', 'English', 'music', '16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('708', 'MTV Music', 'Italy', 'Italian', 'music', '16:9', 'no', 'no', 'no ( FTV )');
INSERT INTO "tv_channel" VALUES ('709', 'MTV Live HD', 'Poland', 'English', 'music', '16:9', 'yes', 'no', 'Sky Famiglia + Sky HD');
INSERT INTO "tv_channel" VALUES ('713', 'Radio Capital TiVù', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'no ( FTV )');
INSERT INTO "tv_channel" VALUES ('714', 'myDeejay', 'Italy', 'Italian', 'music', '16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('715', 'Match Music', 'Italy', 'Italian', 'music', '4:3 / 16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('717', 'Rock TV', 'Italy', 'Italian', 'music', '4:3 / 16:9', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('719', 'Hip Hop TV', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'Sky Famiglia');
INSERT INTO "tv_channel" VALUES ('728', 'Classica', 'Italy', 'Italian', 'music', '4:3', 'no', 'no', 'Option');

INSERT INTO "tv_serien" VALUES (1.0, 'A Love of a Lifetime', 'September 24, 2007', '5.8', 9.0, '3.5/9', '9.16', 43.0, '700');
INSERT INTO "tv_serien" VALUES (2.0, 'Friendly Skies', 'October 1, 2007', '5.3', 9.0, '3.2/8', '8.23', 50.0, '701');
INSERT INTO "tv_serien" VALUES (3.0, 'Game Three', 'October 8, 2007', '4.4', 7.0, '2.9/7', '6.94', 61.0, '707');
INSERT INTO "tv_serien" VALUES (4.0, 'The Year of the Rabbit', 'October 15, 2007', '4.3', 7.0, '2.7/7', '6.75', 67.0, '713');
INSERT INTO "tv_serien" VALUES (5.0, 'The Legend of Dylan McCleen', 'October 22, 2007', '3.8', 6.0, '2.4/6', '6.06', 72.0, '714');
INSERT INTO "tv_serien" VALUES (6.0, 'Keepers', 'October 29, 2007', '3.7', 6.0, '2.2/6', '5.75', 71.0, '700');
INSERT INTO "tv_serien" VALUES (7.0, 'Double Down', 'November 5, 2007', '3.4', 6.0, '2.1/5', '5.13', 80.0, '708');
INSERT INTO "tv_serien" VALUES (8.0, 'Winterland', 'November 12, 2007', '4.0', 7.0, '2.4/6', '6.09', 70.0, '707');
INSERT INTO "tv_serien" VALUES (9.0, 'Emily', 'November 19, 2007', '3.7', 6.0, '2.2/6', '5.61', 66.0, '717');
INSERT INTO "tv_serien" VALUES (10.0, 'Blowback', 'November 26, 2007', '3.7', 6.0, '2.4/6', '6.05', 68.0, '719');
INSERT INTO "tv_serien" VALUES (11.0, 'Home By Another Way', 'December 10, 2007', '3.5', 6.0, '1.7/5', '5.28', 62.0, '728');
INSERT INTO "tv_serien" VALUES (12.0, 'The Hanged Man', 'December 17, 2007', '3.0', 5.0, '1.5/4', '4.24', 65.0, '714');

INSERT INTO "cartoon" VALUES (1.0, 'The Rise of the Blue Beetle!', 'Ben Jones', 'Michael Jelenic', 'November14,2008', 101.0, '700');
INSERT INTO "cartoon" VALUES (2.0, 'Terror on Dinosaur Island!', 'Brandon Vietti', 'Steven Melching', 'November21,2008', 102.0, '701');
INSERT INTO "cartoon" VALUES (3.0, 'Evil Under the Sea!', 'Michael Chang', 'Joseph Kuhr', 'December5,2008', 103.0, '703');
INSERT INTO "cartoon" VALUES (4.0, 'Day of the Dark Knight!', 'Ben Jones', 'J. M. DeMatteis', 'January2,2009', 104.0, '704');
INSERT INTO "cartoon" VALUES (5.0, 'Invasion of the Secret Santas!', 'Brandon Vietti', 'Adam Beechen', 'December12,2008', 105.0, '705');
INSERT INTO "cartoon" VALUES (6.0, 'Enter the Outsiders!', 'Michael Chang', 'Todd Casey', 'January9,2009', 106.0, '706');
INSERT INTO "cartoon" VALUES (7.0, 'Dawn of the Dead Man!', 'Ben Jones', 'Steven Melching', 'January16,2009', 107.0, '707');
INSERT INTO "cartoon" VALUES (8.0, 'Fall of the Blue Beetle!', 'Brandon Vietti', 'James Krieg', 'January23,2009', 108.0, '708');
INSERT INTO "cartoon" VALUES (9.0, 'Journey to the Center of the Bat!', 'Michael Chang', 'Matt Wayne', 'January30,2009', 109.0, '707');
INSERT INTO "cartoon" VALUES (10.0, 'The Eyes of Despero!', 'Ben Jones', 'J. M. DeMatteis', 'February6,2009', 110.0, '728');
INSERT INTO "cartoon" VALUES (11.0, 'Return of the Fearsome Fangs!', 'Brandon Vietti', 'Todd Casey', 'February20,2009', 111.0, '700');
INSERT INTO "cartoon" VALUES (12.0, 'Deep Cover for Batman!', 'Michael Chang', 'Joseph Kuhr', 'February27,2009', 112.0, '707');

COMMIT;