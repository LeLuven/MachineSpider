CREATE TABLE "lieder"
(
	"song_id" INTEGER,
	"titel"   TEXT,
	PRIMARY KEY ("song_id")
);

CREATE TABLE "alben"
(
	"aid"   INTEGER,
	"titel" TEXT,
	"jahr"  INTEGER,
	"label" TEXT,
	"typ"   TEXT,
	PRIMARY KEY ("aid")
);

CREATE TABLE "band"
(
	"id"       INTEGER,
	"vorname"  TEXT,
	"nachname" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "titel_listen"
(
	"album_id" INTEGER,
	"position" INTEGER,
	"song_id"  INTEGER,
	PRIMARY KEY ("album_id", "position"),
	FOREIGN KEY ("album_id") REFERENCES "alben" ("aid"),
	FOREIGN KEY ("song_id") REFERENCES "lieder" ("song_id")
);

CREATE TABLE "instrumente"
(
	"song_id"     INTEGER,
	"bandmate_id" INTEGER,
	"instrument"  TEXT,
	PRIMARY KEY ("song_id", "bandmate_id", "instrument"),
	FOREIGN KEY ("song_id") REFERENCES "lieder" ("song_id"),
	FOREIGN KEY ("bandmate_id") REFERENCES "band" ("id")
);

CREATE TABLE "leistung"
(
	"song_id"        INTEGER,
	"bandkollege"    INTEGER,
	"bühnenposition" TEXT,
	PRIMARY KEY ("song_id", "bandkollege"),
	FOREIGN KEY ("song_id") REFERENCES "lieder" ("song_id"),
	FOREIGN KEY ("bandkollege") REFERENCES "band" ("id")
);

CREATE TABLE "vocals"
(
	"song_id"     INTEGER,
	"bandkollege" INTEGER,
	"typ"         TEXT,
	PRIMARY KEY ("song_id", "bandkollege"),
	FOREIGN KEY ("song_id") REFERENCES "lieder" ("song_id"),
	FOREIGN KEY ("bandkollege") REFERENCES "band" ("id")
);
