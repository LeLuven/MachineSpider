CREATE TABLE "schauspieler"
(
	"aid"          INT,
	"geschlecht"   TEXT,
	"name"         TEXT,
	"nationalität" TEXT,
	"geburtsstadt" TEXT,
	"geburtsjahr"  INT,
	PRIMARY KEY ("aid")
);

CREATE TABLE "urheberrecht"
(
	"id"   INT,
	"msid" INT,
	"cid"  INT,
	PRIMARY KEY ("id")
);

CREATE TABLE "genre"
(
	"gid"   INT,
	"genre" TEXT,
	PRIMARY KEY ("gid")
);

CREATE TABLE "unternehmen"
(
	"id"         INT,
	"name"       TEXT,
	"ländercode" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "direktor"
(
	"did"          INT,
	"geschlecht"   TEXT,
	"name"         TEXT,
	"nationalität" TEXT,
	"geburtsstadt" TEXT,
	"geburtsjahr"  INT,
	PRIMARY KEY ("did")
);

CREATE TABLE "hersteller"
(
	"pid"          INT,
	"geschlecht"   TEXT,
	"name"         TEXT,
	"nationalität" TEXT,
	"geburtsstadt" TEXT,
	"geburtsjahr"  INT,
	PRIMARY KEY ("pid")
);

CREATE TABLE "schlüsselwort"
(
	"id"            INT,
	"schlüsselwort" TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "film"
(
	"mid"                   INT,
	"titel"                 TEXT,
	"veröffentlichungsjahr" INT,
	"titel_aka"             TEXT,
	"budget"                TEXT,
	PRIMARY KEY ("mid")
);

CREATE TABLE "tv_serie"
(
	"sid"                   INT,
	"titel"                 TEXT,
	"veröffentlichungsjahr" INT,
	"anzahl_der_staffeln"   INT,
	"anzahl_der_episoden"   INT,
	"titel_aka"             TEXT,
	"budget"                TEXT,
	PRIMARY KEY ("sid")
);

CREATE TABLE "verfasser"
(
	"wid"                 INT,
	"geschlecht"          TEXT,
	"name"                INT,
	"nationalität"        INT,
	"anzahl_der_episoden" INT,
	"geburtsstadt"        TEXT,
	"geburtsjahr"         INT,
	PRIMARY KEY ("wid")
);

CREATE TABLE "besetzung"
(
	"id"    INT,
	"msid"  INT,
	"aid"   INT,
	"rolle" INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("aid") REFERENCES "schauspieler" ("aid")
);

CREATE TABLE "klassifizierung"
(
	"id"   INT,
	"msid" INT,
	"gid"  INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("gid") REFERENCES "genre" ("gid")
);

CREATE TABLE "regie"
(
	"id"   INT,
	"msid" INT,
	"did"  INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("did") REFERENCES "direktor" ("did")
);

CREATE TABLE "gemacht_von"
(
	"id"   INT,
	"msid" INT,
	"pid"  INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("pid") REFERENCES "hersteller" ("pid")
);

CREATE TABLE "tags"
(
	"id"   INT,
	"msid" INT,
	"kid"  INT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("kid") REFERENCES "schlüsselwort" ("id")
);

CREATE TABLE "geschrieben_von"
(
	"id"   INT,
	"msid" INT,
	"wid"  INT,
	FOREIGN KEY ("msid") REFERENCES "urheberrecht" ("msid"),
	FOREIGN KEY ("wid") REFERENCES "verfasser" ("wid")
);
