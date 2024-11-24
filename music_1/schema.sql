CREATE TABLE "genre"
(
	"genre_name"         VARCHAR2(20) NOT NULL,
	"bewertung"          VARCHAR2(10),
	"am_beliebtesten_in" VARCHAR2(50),
	PRIMARY KEY ("genre_name")
);

CREATE TABLE "künstler"
(
	"künstlername"      VARCHAR2(50) NOT NULL,
	"land"              VARCHAR2(20),
	"geschlecht"        VARCHAR2(20),
	"bevorzugtes_genre" VARCHAR2(50),
	PRIMARY KEY ("künstlername"),
	FOREIGN KEY ("bevorzugtes_genre") REFERENCES "genre" ("genre_name") ON DELETE CASCADE
);

CREATE TABLE "files"
(
	"song_id"      NUMBER(10) NOT NULL,
	"künstlername" VARCHAR2(50),
	"dateigröße"   VARCHAR2(20),
	"dauer"        VARCHAR2(20),
	"formate"      VARCHAR2(20),
	PRIMARY KEY ("song_id"),
	FOREIGN KEY ("künstlername") REFERENCES "künstler" ("künstlername") ON DELETE CASCADE
);

CREATE TABLE "song"
(
	"songname"     VARCHAR2(50),
	"künstlername" VARCHAR2(50),
	"land"         VARCHAR2(20),
	"song_id"      NUMBER(10),
	"genre_is"     VARCHAR2(20),
	"bewertung"    NUMBER(10),
	"sprachen"     VARCHAR2(20),
	"release_date" DATE,
	"resolution"   NUMBER(10) NOT NULL,
	PRIMARY KEY ("songname"),
	FOREIGN KEY ("künstlername") REFERENCES "künstler" ("künstlername") ON DELETE CASCADE,
	FOREIGN KEY ("song_id") REFERENCES "files" ("song_id") ON DELETE CASCADE,
	FOREIGN KEY ("genre_is") REFERENCES "genre" ("genre_name") ON DELETE CASCADE
);

BEGIN TRANSACTION;
INSERT INTO "genre" VALUES ('tagore', '8', 'Bangladesh');
INSERT INTO "genre" VALUES ('nazrul', '7', 'Bangladesh');
INSERT INTO "genre" VALUES ('folk', '9', 'Sylhet,Chittagong,Kustia');
INSERT INTO "genre" VALUES ('modern', '8', 'Bangladesh');
INSERT INTO "genre" VALUES ('blues', '7', 'Canada');
INSERT INTO "genre" VALUES ('pop', '9', 'America');

INSERT INTO "künstler" VALUES ('Shrikanta', 'India', 'Male', 'tagore');
INSERT INTO "künstler" VALUES ('Prity', 'Bangladesh', 'Female', 'nazrul');
INSERT INTO "künstler" VALUES ('Farida', 'Bangladesh', 'Female', 'folk');
INSERT INTO "künstler" VALUES ('Topu', 'India', 'Female', 'modern');
INSERT INTO "künstler" VALUES ('Enrique', 'USA', 'Male', 'blues');
INSERT INTO "künstler" VALUES ('Michel', 'UK', 'Male', 'pop');

INSERT INTO "files" VALUES (1, 'Shrikanta', '3.78 MB', '3:45', 'mp4');
INSERT INTO "files" VALUES (2, 'Prity', '4.12 MB', '2:56', 'mp3');
INSERT INTO "files" VALUES (3, 'Farida', '3.69 MB', '4:12', 'mp4');
INSERT INTO "files" VALUES (4, 'Enrique', '4.58 MB', '5:23', 'mp4');
INSERT INTO "files" VALUES (5, 'Michel', '5.10 MB', '4:34', 'mp3');
INSERT INTO "files" VALUES (6, 'Topu', '4.10 MB', '4:30', 'mp4');

INSERT INTO "song" VALUES ('Tumi robe nirobe', 'Shrikanta', 'India', 1, 'tagore', 8, 'bangla', '28-AUG-2011', 1080);
INSERT INTO "song" VALUES ('Shukno patar nupur pae', 'Prity', 'Bangladesh', 2, 'nazrul', 5, 'bangla', '21-SEP-1997', 512);
INSERT INTO "song" VALUES ('Ami opar hoye', 'Farida', 'Bangladesh', 3, 'folk', 7, 'bangla', '7-APR-2001', 320);
INSERT INTO "song" VALUES ('My love', 'Enrique', 'USA', 4, 'blues', 6, 'english', '24-JAN-2007', 1080);
INSERT INTO "song" VALUES ('Just beat it', 'Michel', 'UK', 5, 'pop', 8, 'english', '17-MAR-2002', 720);
INSERT INTO "song" VALUES ('Aj ei akash', 'Topu', 'India', 6, 'modern', 10, 'bangla', '27-MAR-2004', 320);

COMMIT;