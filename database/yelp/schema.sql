CREATE TABLE "business"
(
	"angebot"                INT,
	"business_id"            TEXT,
	"name"                   TEXT,
	"vollständige_adresse"   TEXT,
	"stadt"                  TEXT,
	"breitengrad"            TEXT,
	"längengrad"             TEXT,
	"anzahl_der_bewertungen" INT,
	"ist_geöffnet"           INT,
	"bewertung"              REAL,
	"bundesland"             TEXT,
	PRIMARY KEY ("angebot")
);

CREATE TABLE "benutzer"
(
	"uid"             INT,
	"benutzerkennung" TEXT,
	"name"            TEXT,
	PRIMARY KEY ("uid")
);

CREATE TABLE "kategorie"
(
	"id"            INT,
	"business_id"   TEXT,
	"kategoriename" TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("business_id") REFERENCES "business" ("business_id")
);

CREATE TABLE "checkin"
(
	"cid"         INT,
	"business_id" TEXT,
	"count"       INT,
	"tag"         TEXT,
	PRIMARY KEY ("cid"),
	FOREIGN KEY ("business_id") REFERENCES "business" ("business_id")
);

CREATE TABLE "nachbarschaft"
(
	"id"                 INT,
	"business_id"        TEXT,
	"nachbarschaftsname" TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("business_id") REFERENCES "business" ("business_id")
);

CREATE TABLE "rückblick"
(
	"rid"             INT,
	"business_id"     TEXT,
	"benutzerkennung" TEXT,
	"bewertung"       REAL,
	"text"            TEXT,
	"jahr"            INT,
	"monat"           TEXT,
	PRIMARY KEY ("rid"),
	FOREIGN KEY ("business_id") REFERENCES "business" ("business_id"),
	FOREIGN KEY ("benutzerkennung") REFERENCES "benutzer" ("benutzerkennung")
);

CREATE TABLE "tip"
(
	"tipp_id"         INT,
	"business_id"     TEXT,
	"text"            TEXT,
	"benutzerkennung" TEXT,
	"mag"             INT,
	"jahr"            INT,
	"monat"           TEXT,
	PRIMARY KEY ("tipp_id"),
	FOREIGN KEY ("business_id") REFERENCES "business" ("business_id"),
	FOREIGN KEY ("benutzerkennung") REFERENCES "benutzer" ("benutzerkennung")
);
