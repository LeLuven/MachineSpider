CREATE TABLE "state"
(
	"staatsname"  TEXT,
	"bevölkerung" INTEGER DEFAULT NULL,
	"gebiet"      DOUBLE DEFAULT NULL,
	"landesname"  VARCHAR(3) NOT NULL DEFAULT '',
	"hauptstadt"  TEXT,
	"dichte"      DOUBLE DEFAULT NULL,
	PRIMARY KEY ("staatsname")
);

CREATE TABLE "see"
(
	"see_name"   TEXT,
	"gebiet"     DOUBLE DEFAULT NULL,
	"landesname" VARCHAR(3) NOT NULL DEFAULT '',
	"staatsname" TEXT
);

CREATE TABLE "stadt"
(
	"stadtname"   TEXT,
	"bevölkerung" INTEGER DEFAULT NULL,
	"landesname"  VARCHAR(3) NOT NULL DEFAULT '',
	"staatsname"  TEXT,
	PRIMARY KEY ("stadtname", "staatsname"),
	FOREIGN KEY ("staatsname") REFERENCES "state" ("staatsname")
);

CREATE TABLE "grenzinfo"
(
	"staatsname" TEXT,
	"grenze"     TEXT,
	PRIMARY KEY ("staatsname", "grenze"),
	FOREIGN KEY ("staatsname") REFERENCES "state" ("staatsname"),
	FOREIGN KEY ("grenze") REFERENCES "state" ("staatsname")
);

CREATE TABLE "highlow"
(
	"staatsname"          TEXT,
	"höchste_erhebung"    TEXT,
	"tiefster_punkt"      TEXT,
	"höchster_punkt"      TEXT,
	"niedrigste_erhebung" TEXT,
	PRIMARY KEY ("staatsname"),
	FOREIGN KEY ("staatsname") REFERENCES "state" ("staatsname")
);

CREATE TABLE "berg"
(
	"bergname"   TEXT,
	"berghöhe"   INTEGER DEFAULT NULL,
	"landesname" VARCHAR(3) NOT NULL DEFAULT '',
	"staatsname" TEXT,
	PRIMARY KEY ("bergname", "staatsname"),
	FOREIGN KEY ("staatsname") REFERENCES "state" ("staatsname")
);

CREATE TABLE "fluss"
(
	"flussname"    TEXT,
	"länge"        INTEGER DEFAULT NULL,
	"landesname"   VARCHAR(3) NOT NULL DEFAULT '',
	"durchquerung" TEXT,
	PRIMARY KEY ("flussname"),
	FOREIGN KEY ("durchquerung") REFERENCES "state" ("staatsname")
);
