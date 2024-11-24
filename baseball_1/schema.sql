CREATE TABLE "manager_award_vote"
(
	"award_id"         TEXT,
	"jahr"             INTEGER,
	"liga_id"          TEXT,
	"spieler_id"       TEXT,
	"gewonnene_punkte" INTEGER,
	"punkte_max"       INTEGER,
	"erststimmen"      INTEGER
);

CREATE TABLE "spieler"
(
	"spieler_id"    TEXT,
	"geburtsjahr"   NUMERIC,
	"geburtsmonat"  NUMERIC,
	"geburtstag"    NUMERIC,
	"geburtsland"   TEXT,
	"geburtsstaat"  TEXT,
	"geburtsstadt"  TEXT,
	"todesjahr"     NUMERIC,
	"todesmonat"    NUMERIC,
	"todestag"      NUMERIC,
	"todesland"     TEXT,
	"tod_staat"     TEXT,
	"tod_stadt"     TEXT,
	"name_vor"      TEXT,
	"nachname"      TEXT,
	"vorname"       TEXT,
	"gewicht"       NUMERIC,
	"größe"         NUMERIC,
	"schläger"      TEXT,
	"würfe"         TEXT,
	"debüt"         TEXT,
	"letztes_spiel" TEXT,
	"retro_id"      TEXT,
	"bbref_id"      TEXT
);

CREATE TABLE "park"
(
	"park_id"    TEXT,
	"park_name"  TEXT,
	"park_alias" TEXT,
	"stadt"      TEXT,
	"staat"      TEXT,
	"land"       TEXT
);

CREATE TABLE "pitching"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"spielzeit"  INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"w"          INTEGER,
	"l"          INTEGER,
	"g"          INTEGER,
	"gs"         INTEGER,
	"cg"         INTEGER,
	"sho"        INTEGER,
	"sv"         INTEGER,
	"ipouts"     NUMERIC,
	"h"          INTEGER,
	"er"         INTEGER,
	"hr"         INTEGER,
	"bb"         INTEGER,
	"so"         INTEGER,
	"baopp"      NUMERIC,
	"era"        NUMERIC,
	"ibb"        NUMERIC,
	"wp"         NUMERIC,
	"hbp"        NUMERIC,
	"bk"         INTEGER,
	"bfp"        NUMERIC,
	"gf"         NUMERIC,
	"r"          INTEGER,
	"sh"         NUMERIC,
	"sf"         NUMERIC,
	"g_idp"      NUMERIC
);

CREATE TABLE "pitching_postseason"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"runde"      TEXT,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"w"          INTEGER,
	"l"          INTEGER,
	"g"          INTEGER,
	"gs"         INTEGER,
	"cg"         INTEGER,
	"sho"        INTEGER,
	"sv"         INTEGER,
	"ipouts"     INTEGER,
	"h"          INTEGER,
	"er"         INTEGER,
	"hr"         INTEGER,
	"bb"         INTEGER,
	"so"         INTEGER,
	"baopp"      TEXT,
	"era"        NUMERIC,
	"ibb"        NUMERIC,
	"wp"         NUMERIC,
	"hbp"        NUMERIC,
	"bk"         NUMERIC,
	"bfp"        NUMERIC,
	"gf"         INTEGER,
	"r"          INTEGER,
	"sh"         NUMERIC,
	"sf"         NUMERIC,
	"g_idp"      NUMERIC
);

CREATE TABLE "gehalt"
(
	"jahr"       INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"spieler_id" TEXT,
	"gehalt"     INTEGER
);

CREATE TABLE "hochschule"
(
	"college_id" TEXT,
	"name_voll"  TEXT,
	"stadt"      TEXT,
	"staat"      TEXT,
	"land"       TEXT
);

CREATE TABLE "nachsaison"
(
	"jahr"                         INTEGER,
	"runde"                        TEXT,
	"team_id_winner"               TEXT,
	"liga_id_gewinner"             TEXT,
	"mannschaftskennung_verlierer" TEXT,
	"liga_id_verlierer"            TEXT,
	"siege"                        INTEGER,
	"verluste"                     INTEGER,
	"ties"                         INTEGER
);

CREATE TABLE "mannschaft"
(
	"jahr"                        INTEGER,
	"liga_id"                     TEXT,
	"team_id"                     TEXT,
	"franchise_id"                TEXT,
	"div_id"                      TEXT,
	"rang"                        INTEGER,
	"g"                           INTEGER,
	"ghome"                       NUMERIC,
	"w"                           INTEGER,
	"l"                           INTEGER,
	"div_win"                     TEXT,
	"wc_win"                      TEXT,
	"lg_win"                      TEXT,
	"ws_win"                      TEXT,
	"r"                           INTEGER,
	"ab"                          INTEGER,
	"h"                           INTEGER,
	"doppelt"                     INTEGER,
	"dreifach"                    INTEGER,
	"hr"                          INTEGER,
	"bb"                          INTEGER,
	"so"                          NUMERIC,
	"sb"                          NUMERIC,
	"cs"                          NUMERIC,
	"hbp"                         NUMERIC,
	"sf"                          NUMERIC,
	"ra"                          INTEGER,
	"er"                          INTEGER,
	"era"                         NUMERIC,
	"cg"                          INTEGER,
	"sho"                         INTEGER,
	"sv"                          INTEGER,
	"ipouts"                      INTEGER,
	"ha"                          INTEGER,
	"hra"                         INTEGER,
	"bba"                         INTEGER,
	"soa"                         INTEGER,
	"e"                           INTEGER,
	"dp"                          NUMERIC,
	"fp"                          NUMERIC,
	"name"                        TEXT,
	"park"                        TEXT,
	"anwesenheit"                 NUMERIC,
	"bpf"                         INTEGER,
	"ppf"                         INTEGER,
	"team_id_br"                  TEXT,
	"mannschaftskennung_lahman45" TEXT,
	"mannschaftskennung_retro"    TEXT
);

CREATE TABLE "team_franchise"
(
	"franchise_id"   TEXT,
	"franchise_name" TEXT,
	"aktiv"          TEXT,
	"na_assoc"       TEXT
);

CREATE TABLE "mannschaftshälfte"
(
	"jahr"    INTEGER,
	"liga_id" TEXT,
	"team_id" TEXT,
	"halb"    INTEGER,
	"div_id"  TEXT,
	"div_win" TEXT,
	"rang"    INTEGER,
	"g"       INTEGER,
	"w"       INTEGER,
	"l"       INTEGER
);

CREATE TABLE "all_star"
(
	"spieler_id"    TEXT,
	"jahr"          INTEGER,
	"spiel_num"     INTEGER,
	"spiel_id"      TEXT,
	"team_id"       TEXT,
	"liga_id"       TEXT,
	"gp"            NUMERIC,
	"startposition" NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "manager_prämie"
(
	"spieler_id"    TEXT,
	"award_id"      TEXT,
	"jahr"          INTEGER,
	"liga_id"       TEXT,
	"unentschieden" TEXT,
	"anmerkungen"   NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "spieler_auszeichnung"
(
	"spieler_id"    TEXT,
	"award_id"      TEXT,
	"jahr"          INTEGER,
	"liga_id"       TEXT,
	"unentschieden" TEXT,
	"anmerkungen"   TEXT,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "spielerauszeichnung_abstimmung"
(
	"award_id"         TEXT,
	"jahr"             INTEGER,
	"liga_id"          TEXT,
	"spieler_id"       TEXT,
	"gewonnene_punkte" NUMERIC,
	"punkte_max"       INTEGER,
	"erststimmen"      NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "batting"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"spielzeit"  INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"g"          INTEGER,
	"ab"         NUMERIC,
	"r"          NUMERIC,
	"h"          NUMERIC,
	"doppelt"    NUMERIC,
	"dreifach"   NUMERIC,
	"hr"         NUMERIC,
	"rbi"        NUMERIC,
	"sb"         NUMERIC,
	"cs"         NUMERIC,
	"bb"         NUMERIC,
	"so"         NUMERIC,
	"ibb"        NUMERIC,
	"hbp"        NUMERIC,
	"sh"         NUMERIC,
	"sf"         NUMERIC,
	"g_idp"      NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "fielding"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"spielzeit"  INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"pos"        TEXT,
	"g"          INTEGER,
	"gs"         NUMERIC,
	"inn_outs"   NUMERIC,
	"po"         NUMERIC,
	"a"          NUMERIC,
	"e"          NUMERIC,
	"dp"         NUMERIC,
	"pb"         NUMERIC,
	"wp"         NUMERIC,
	"sb"         NUMERIC,
	"cs"         NUMERIC,
	"zr"         NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "spielfeld_aussen"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"spielzeit"  INTEGER,
	"glf"        NUMERIC,
	"gcf"        NUMERIC,
	"grf"        NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "ruhmeshalle"
(
	"spieler_id"          TEXT,
	"yearid"              INTEGER,
	"votedby"             TEXT,
	"stimmzettel"         NUMERIC,
	"benötigt"            NUMERIC,
	"stimmen"             NUMERIC,
	"eingeweiht"          TEXT,
	"kategorie"           TEXT,
	"benötigte_anmerkung" TEXT,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "spielerschule"
(
	"spieler_id" TEXT,
	"college_id" TEXT,
	"jahr"       INTEGER,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("college_id") REFERENCES "hochschule" ("college_id")
);

CREATE TABLE "spielbetrieb_nachsaison"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"runde"      TEXT,
	"pos"        TEXT,
	"g"          INTEGER,
	"gs"         NUMERIC,
	"inn_outs"   NUMERIC,
	"po"         INTEGER,
	"a"          INTEGER,
	"e"          INTEGER,
	"dp"         INTEGER,
	"tp"         INTEGER,
	"pb"         NUMERIC,
	"sb"         NUMERIC,
	"cs"         NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id")
);

CREATE TABLE "auftritte"
(
	"jahr"       INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"spieler_id" TEXT,
	"g_all"      NUMERIC,
	"gs"         NUMERIC,
	"g_batting"  INTEGER,
	"g_defense"  NUMERIC,
	"g_p"        INTEGER,
	"g_c"        INTEGER,
	"g_1b"       INTEGER,
	"g_2b"       INTEGER,
	"g_3b"       INTEGER,
	"g_ss"       INTEGER,
	"g_lf"       INTEGER,
	"g_cf"       INTEGER,
	"g_rf"       INTEGER,
	"g_of"       INTEGER,
	"g_dh"       NUMERIC,
	"g_ph"       NUMERIC,
	"g_pr"       NUMERIC,
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id"),
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id")
);

CREATE TABLE "schlägerei_nach_der_saison"
(
	"jahr"       INTEGER,
	"runde"      TEXT,
	"spieler_id" TEXT,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"g"          INTEGER,
	"ab"         INTEGER,
	"r"          INTEGER,
	"h"          INTEGER,
	"doppelt"    INTEGER,
	"dreifach"   INTEGER,
	"hr"         INTEGER,
	"rbi"        INTEGER,
	"sb"         INTEGER,
	"cs"         NUMERIC,
	"bb"         INTEGER,
	"so"         INTEGER,
	"ibb"        NUMERIC,
	"hbp"        NUMERIC,
	"sh"         NUMERIC,
	"sf"         NUMERIC,
	"g_idp"      NUMERIC,
	FOREIGN KEY ("spieler_id") REFERENCES "spieler" ("spieler_id"),
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id")
);

CREATE TABLE "heimspiel"
(
	"jahr"             INTEGER,
	"liga_id"          TEXT,
	"team_id"          TEXT,
	"park_id"          TEXT,
	"span_first"       TEXT,
	"zeitraum_letzter" TEXT,
	"spiele"           INTEGER,
	"eröffnungen"      INTEGER,
	"anwesenheit"      INTEGER,
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id"),
	FOREIGN KEY ("park_id") REFERENCES "park" ("park_id")
);

CREATE TABLE "manager"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"inseason"   INTEGER,
	"g"          INTEGER,
	"w"          INTEGER,
	"l"          INTEGER,
	"rang"       NUMERIC,
	"plyr_mgr"   TEXT,
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id")
);

CREATE TABLE "manager_halb"
(
	"spieler_id" TEXT,
	"jahr"       INTEGER,
	"team_id"    TEXT,
	"liga_id"    TEXT,
	"inseason"   INTEGER,
	"halb"       INTEGER,
	"g"          INTEGER,
	"w"          INTEGER,
	"l"          INTEGER,
	"rang"       INTEGER,
	FOREIGN KEY ("team_id") REFERENCES "mannschaft" ("team_id")
);
