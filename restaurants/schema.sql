CREATE TABLE "geografisch"
(
	"stadtname" TEXT,
	"landkreis" TEXT,
	"region"    TEXT,
	PRIMARY KEY ("stadtname")
);

CREATE TABLE "restaurant"
(
	"id"        INT,
	"name"      TEXT,
	"speiseart" TEXT,
	"stadtname" TEXT,
	"bewertung" REAL,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("stadtname") REFERENCES "geografisch" ("stadtname")
);

CREATE TABLE "ort"
(
	"restaurant_id" INT,
	"hausnummer"    INT,
	"straßenname"   TEXT,
	"stadtname"     TEXT,
	PRIMARY KEY ("restaurant_id"),
	FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("id"),
	FOREIGN KEY ("stadtname") REFERENCES "geografisch" ("stadtname")
);
