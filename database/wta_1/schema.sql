CREATE TABLE "spieler"
(
	"spieler_id"   INT,
	"vorname"      TEXT,
	"nachname"     TEXT,
	"hand"         TEXT,
	"geburtsdatum" DATE,
	"ländercode"   TEXT,
	PRIMARY KEY ("spieler_id")
);

CREATE TABLE "spiele"
(
	"best_of"               INT,
	"unentschiedene_größe"  INT,
	"verlierer_alter"       FLOAT,
	"verlierer_eintrag"     TEXT,
	"verlierer_hand"        TEXT,
	"verlierer_ht"          INT,
	"verlierer_id"          INT,
	"verlierer_ioc"         TEXT,
	"verlierer_name"        TEXT,
	"verlierer_rang"        INT,
	"verlierer_rang_punkte" INT,
	"verlierer_saatgut"     INT,
	"spielnummer"           INT,
	"minuten"               INT,
	"runde"                 TEXT,
	"ergebnis"              TEXT,
	"oberfläche"            TEXT,
	"turnier_datum"         DATE,
	"turnier_id"            TEXT,
	"turnier_level"         TEXT,
	"turniername"           TEXT,
	"alter_des_gewinners"   FLOAT,
	"gewinner_eintrag"      TEXT,
	"gewinner_hand"         TEXT,
	"gewinner_ht"           INT,
	"gewinner_id"           INT,
	"gewinner_ioc"          TEXT,
	"gewinner_name"         TEXT,
	"sieger_rang"           INT,
	"gewinner_rang_punkte"  INT,
	"sieger_setzliste"      INT,
	"jahr"                  INT,
	FOREIGN KEY ("verlierer_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("gewinner_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "ranglisten"
(
	"rangliste_datum"  DATE,
	"rangliste"        INT,
	"spieler_id"       INT,
	"ranglistenpunkte" INT,
	"touren"           INT,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);
