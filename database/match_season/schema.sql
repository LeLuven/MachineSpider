CREATE TABLE "land"
(
	"land_id"                  INT,
	"landesname"               TEXT,
	"hauptstadt"               TEXT,
	"offizielle_muttersprache" TEXT,
	PRIMARY KEY ("land_id")
);

CREATE TABLE "mannschaft"
(
	"mannschaft_id" INT,
	"name"          TEXT,
	PRIMARY KEY ("mannschaft_id")
);

CREATE TABLE "spielzeit"
(
	"saison"            REAL,
	"spieler"           TEXT,
	"position"          TEXT,
	"land"              INT,
	"mannschaft"        INT,
	"draft_pick_nummer" INT,
	"draftklasse"       TEXT,
	"hochschule"        TEXT,
	PRIMARY KEY ("saison"),
	FOREIGN KEY ("land") REFERENCES "land" ("land_id"),
	FOREIGN KEY ("mannschaft") REFERENCES "mannschaft" ("mannschaft_id")
);

CREATE TABLE "spieler"
(
	"spieler_id"     INT,
	"spieler"        TEXT,
	"jahre_gespielt" TEXT,
	"gesamt_wl"      TEXT,
	"einzel_wl"      TEXT,
	"doppel_wl"      TEXT,
	"mannschaft"     INT,
	PRIMARY KEY ("spieler_id"),
	FOREIGN KEY ("mannschaft") REFERENCES "mannschaft" ("mannschaft_id")
);

BEGIN TRANSACTION;
INSERT INTO "land" VALUES (1, 'Indonesia', 'Jakarta', 'Bahasa Indonesia');
INSERT INTO "land" VALUES (2, 'Iran', 'Tehran', 'Persian ( Arabic script )');
INSERT INTO "land" VALUES (3, 'Iraq', 'Baghdad', 'Arabic ( Arabic script ) Kurdish');
INSERT INTO "land" VALUES (4, 'Ireland', 'Dublin', 'Irish English');
INSERT INTO "land" VALUES (5, 'Isle of Man', 'Douglas', 'English Manx');
INSERT INTO "land" VALUES (6, 'United States', 'Washington', 'English');

INSERT INTO "mannschaft" VALUES (1, 'Columbus Crew');
INSERT INTO "mannschaft" VALUES (2, 'Evalyn Feil');
INSERT INTO "mannschaft" VALUES (3, 'Anais VonRueden');
INSERT INTO "mannschaft" VALUES (4, 'Miami Fusion');
INSERT INTO "mannschaft" VALUES (5, 'Enrique Osinski');
INSERT INTO "mannschaft" VALUES (6, 'Brown Erdman');
INSERT INTO "mannschaft" VALUES (7, 'Los Angeles Galaxy');
INSERT INTO "mannschaft" VALUES (8, 'Berneice Hand');
INSERT INTO "mannschaft" VALUES (9, 'Ryley Goldner');
INSERT INTO "mannschaft" VALUES (10, 'D.C. United');

INSERT INTO "spielzeit" VALUES (1996.0, 'Steve Ralston Category:Articles with hCards', 'Midfielder', 6, 1, 18, '1996 MLS College Draft', 'Florida International');
INSERT INTO "spielzeit" VALUES (1997.0, 'Mike Duhaney Category:Articles with hCards', 'Defender', 6, 2, 87, '1996 MLS Inaugural Player Draft', 'UNLV');
INSERT INTO "spielzeit" VALUES (1998.0, 'Ben Olsen Category:Articles with hCards', 'Midfielder', 4, 3, 2, 'Project-40', 'Virginia');
INSERT INTO "spielzeit" VALUES (1999.0, 'Jay Heaps Category:Articles with hCards', 'Defender', 5, 4, 5, '1999 MLS College Draft', 'Duke');
INSERT INTO "spielzeit" VALUES (2000.0, 'Carlos Bocanegra Category:Articles with hCards', 'Defender', 5, 5, 4, '2000 MLS SuperDraft', 'UCLA');
INSERT INTO "spielzeit" VALUES (2001.0, 'Rodrigo Faria Category:Articles with hCards', 'Forward', 4, 5, 13, '2001 MLS SuperDraft', 'Concordia College');
INSERT INTO "spielzeit" VALUES (2002.0, 'Kyle Martino Category:Articles with hCards', 'Midfielder', 6, 3, 8, '2002 MLS SuperDraft', 'Virginia');
INSERT INTO "spielzeit" VALUES (2003.0, 'Damani Ralph Category:Articles with hCards', 'Forward', 1, 2, 18, '2003 MLS SuperDraft', 'Connecticut');
INSERT INTO "spielzeit" VALUES (2004.0, 'Clint Dempsey Category:Articles with hCards', 'Midfielder', 6, 3, 8, '2004 MLS SuperDraft', 'Furman');
INSERT INTO "spielzeit" VALUES (2005.0, 'Michael Parkhurst Category:Articles with hCards', 'Defender', 6, 4, 9, '2005 MLS SuperDraft', 'Wake Forest');
INSERT INTO "spielzeit" VALUES (2006.0, 'Jonathan Bornstein Category:Articles with hCards', 'Defender', 6, 10, 37, '2006 MLS SuperDraft', 'UCLA');
INSERT INTO "spielzeit" VALUES (2007.0, 'Maurice Edu Category:Articles with hCards', 'Midfielder', 4, 9, 1, '2007 MLS SuperDraft', 'Maryland');
INSERT INTO "spielzeit" VALUES (2008.0, 'Sean Franklin Category:Articles with hCards', 'Defender', 6, 5, 4, '2008 MLS SuperDraft', 'Cal State Northridge');
INSERT INTO "spielzeit" VALUES (2009.0, 'Omar Gonzalez Category:Articles with hCards', 'Defender', 6, 5, 3, '2009 MLS SuperDraft', 'Maryland');
INSERT INTO "spielzeit" VALUES (2010.0, 'Andy Najar Category:Articles with hCards', 'Midfielder', 4, 5, 6, 'D.C. United Academy', 'none');
INSERT INTO "spielzeit" VALUES (2011.0, 'C. J. Sapong Category:Articles with hCards', 'Forward', 6, 3, 10, '2011 MLS SuperDraft', 'James Madison');

INSERT INTO "spieler" VALUES (1, 'Cho Soong-Jae (630)', '1 (2011)', '2–0', '1–0', '1–0', 1);
INSERT INTO "spieler" VALUES (2, 'Chung Hong (717)', '1 (2011)', '0–0', '0–0', '0–0', 1);
INSERT INTO "spieler" VALUES (3, 'Im Kyu-tae (492)', '8 (2003–2005, 2007–2011)', '6–9', '5–7', '1–2', 1);
INSERT INTO "spieler" VALUES (4, 'Jeong Suk-Young (793)', '2 (2010–2011)', '1–2', '1–2', '0–0', 1);
INSERT INTO "spieler" VALUES (5, 'Kim Hyun-Joon (908)', '2 (2010–2011)', '3–4', '2–1', '1–3', 2);
INSERT INTO "spieler" VALUES (6, 'Kim Young-Jun (474)', '4 (2003–2004, 2010–2011)', '6–4', '6–3', '0–1', 4);
INSERT INTO "spieler" VALUES (7, 'Lim Yong-Kyu (288)', '3 (2009–2011)', '7–6', '5–6', '2–0', 6);
INSERT INTO "spieler" VALUES (8, 'Seol Jae-Min (none)', '2 (2010-2011)', '2–2', '0–0', '2–2', 1);
INSERT INTO "spieler" VALUES (9, 'An Jae-Sung', '3 (2005, 2007–2008)', '4–3', '3–2', '1–1', 1);
INSERT INTO "spieler" VALUES (10, 'Bae Nam-Ju', '2 (1988, 1990)', '1–3', '0–2', '1–1', 8);

COMMIT;