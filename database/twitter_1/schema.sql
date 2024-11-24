CREATE TABLE "benutzerprofile"
(
	"uid"          INT(11) NOT NULL,
	"name"         VARCHAR(255) DEFAULT NULL,
	"email"        VARCHAR(255) DEFAULT NULL,
	"partition_id" INT(11) DEFAULT NULL,
	"follower"     INT(11) DEFAULT NULL,
	PRIMARY KEY ("uid")
);

CREATE TABLE "follows"
(
	"user_id"     INT(11) NOT NULL,
	"follower_id" INT(11) NOT NULL,
	PRIMARY KEY ("user_id", "follower_id"),
	FOREIGN KEY ("user_id") REFERENCES "benutzerprofile" ("uid"),
	FOREIGN KEY ("follower_id") REFERENCES "benutzerprofile" ("uid")
);

CREATE TABLE "tweets"
(
	"id"          BIGINT(20) NOT NULL,
	"user_id"     INT(11) NOT NULL,
	"text"        CHAR(140) NOT NULL,
	"create_date" DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("user_id") REFERENCES "benutzerprofile" ("uid")
);

BEGIN TRANSACTION;
INSERT INTO "benutzerprofile" VALUES (1, 'Iron Man', 'ts@richest.com', 1, 6662425);
INSERT INTO "benutzerprofile" VALUES (2, 'Mary', 'Mary@yale.edu', 2, 890);
INSERT INTO "benutzerprofile" VALUES (3, 'Black Widow
', 'bw@superhero.com', 23, 35425845);
INSERT INTO "benutzerprofile" VALUES (4, 'Susan', 'susan@gmail.com
', 1, 100);
INSERT INTO "benutzerprofile" VALUES (5, 'Tyler Swift', 'ts@superstar.com
', 10, 99999998);
INSERT INTO "benutzerprofile" VALUES (6, 'Celine Dion', 'cd@superstar.com', 5, 23927492);
INSERT INTO "benutzerprofile" VALUES (7, 'Natalie Portman', 'np@superstar.com', 5, 94375428);

INSERT INTO "follows" VALUES (1, 2);
INSERT INTO "follows" VALUES (2, 3);
INSERT INTO "follows" VALUES (7, 1);
INSERT INTO "follows" VALUES (1, 3);
INSERT INTO "follows" VALUES (3, 6);
INSERT INTO "follows" VALUES (5, 6);
INSERT INTO "follows" VALUES (5, 1);
INSERT INTO "follows" VALUES (1, 5);
INSERT INTO "follows" VALUES (3, 4);

INSERT INTO "tweets" VALUES (1, 1, 'Hello I''m Tony Stark.', '2018-03-09 20:00:14');
INSERT INTO "tweets" VALUES (2, 3, 'Today I have went shopping at Laffayette.', '2018-03-09 20:01:02');
INSERT INTO "tweets" VALUES (4, 1, 'My company is hiring interns.', '2018-03-12 02:30:30');
INSERT INTO "tweets" VALUES (5, 4, 'Oh, I only have a few fans.', '2018-03-12 02:30:30');
INSERT INTO "tweets" VALUES (6, 6, 'Let’s celebrate women, fight for equality and support each other,  not just today, but everyday!', '2018-03-12 02:30:30');
INSERT INTO "tweets" VALUES (7, 5, 'I love my new boyfriend.', '2018-03-12 02:30:30');
INSERT INTO "tweets" VALUES (8, 4, 'I feel tired and don''t want to write SQLs.', '2018-03-12 02:30:30');
INSERT INTO "tweets" VALUES (9, 6, 'I had a pretty rough time during the last couple of weeks', '2018-03-12 02:30:30');

COMMIT;