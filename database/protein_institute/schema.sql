CREATE TABLE "gebäude"
(
	"gebäude_id"         TEXT,
	"name"               TEXT,
	"straßenadresse"     TEXT,
	"jahre_als_höchstes" TEXT,
	"höhe_fuß"           INT,
	"etagen"             INT,
	PRIMARY KEY ("gebäude_id")
);

CREATE TABLE "einrichtung"
(
	"institutions_id" TEXT,
	"einrichtung"     TEXT,
	"standort"        TEXT,
	"gegründet"       REAL,
	"typ"             TEXT,
	"einschreibung"   INT,
	"mannschaft"      TEXT,
	"hauptkonferenz"  TEXT,
	"gebäude_id"      TEXT,
	PRIMARY KEY ("institutions_id"),
	FOREIGN KEY ("gebäude_id") REFERENCES "gebäude" ("gebäude_id")
);

CREATE TABLE "eiweiß"
(
	"allgemeiner_name"                          TEXT,
	"name_des_proteins"                         TEXT,
	"divergenz_zur_menschlichen_abstammung"     REAL,
	"hinterlegungsnummer"                       TEXT,
	"sequenzlänge"                              REAL,
	"sequenzidentität_mit_menschlichem_protein" TEXT,
	"institutions_id"                           TEXT,
	PRIMARY KEY ("allgemeiner_name"),
	FOREIGN KEY ("institutions_id") REFERENCES "einrichtung" ("institutions_id")
);

BEGIN TRANSACTION;
INSERT INTO "gebäude" VALUES ('0', 'Citizens Bank Building', '701 North Franklin Street', '1913–1915', 145, 12);
INSERT INTO "gebäude" VALUES ('1', 'Tampa City Hall', '315 John F. Kennedy Boulevard', '1915–1926', 160, 10);
INSERT INTO "gebäude" VALUES ('2', 'Floridan Hotel', '905 Franklin Street', '1926–1966', 204, 17);
INSERT INTO "gebäude" VALUES ('3', 'Franklin Exchange Building', '655 North Franklin Street', '1966–1972', 280, 22);
INSERT INTO "gebäude" VALUES ('4', 'Park Tower', '400 North Tampa Street', '1972–1981', 458, 36);
INSERT INTO "gebäude" VALUES ('5', 'One Tampa City Center', '201 North Franklin Street', '1981–1986', 537, 39);
INSERT INTO "gebäude" VALUES ('6', 'Bank of America Tower', '101 East Kennedy Boulevard', '1986–1992', 577, 42);
INSERT INTO "gebäude" VALUES ('7', '100 North Tampa', '100 North Tampa Street', '1992–present', 579, 42);

INSERT INTO "einrichtung" VALUES ('0', 'Ave Maria University', 'Ave Maria, Florida', 1998.0, 'Private', 1200, 'Gyrenes', 'The Sun', '1');
INSERT INTO "einrichtung" VALUES ('1', 'Dakota State University', 'Madison, South Dakota', 1881.0, 'Public', 3102, 'Trojans', 'none', '1');
INSERT INTO "einrichtung" VALUES ('2', 'Edward Waters College', 'Jacksonville, Florida', 1866.0, 'Private', 800, 'Tigers', 'Gulf Coast (GCAC)', '3');
INSERT INTO "einrichtung" VALUES ('3', 'Haskell Indian Nations University', 'Lawrence, Kansas', 1884.0, 'Tribal', 1000, 'Fighting Indians', 'MCAC', '5');
INSERT INTO "einrichtung" VALUES ('4', 'Jamestown College', 'Jamestown, North Dakota', 1883.0, 'Private', 967, 'Jimmies', 'none', '2');
INSERT INTO "einrichtung" VALUES ('5', 'Lindenwood University–Belleville', 'Belleville, Illinois', 2003.0, 'Private', 2600, 'Lynx', 'none', '0');
INSERT INTO "einrichtung" VALUES ('6', 'Mayville State University', 'Mayville, North Dakota', 1889.0, 'Public', 825, 'Comets', 'none', '0');
INSERT INTO "einrichtung" VALUES ('7', 'Menlo College', 'Atherton, California', 1927.0, 'Private', 650, 'Oaks', 'CalPac', '4');
INSERT INTO "einrichtung" VALUES ('8', 'Point University', 'West Point, Georgia', 1937.0, 'Private', 1035, 'Skyhawks', 'AAC', '7');
INSERT INTO "einrichtung" VALUES ('9', 'Valley City State University', 'Valley City, North Dakota', 1890.0, 'Public', 1340, 'Vikings', 'none', '3');
INSERT INTO "einrichtung" VALUES ('10', 'Webber International University', 'Babson Park, Florida', 1927.0, 'Private', 616, 'Warriors', 'The Sun', '5');

INSERT INTO "eiweiß" VALUES ('Tropical Clawed Frog', 'uncharacterized protein C20orf117-like', 371.2, 'XP_002942331.1', 1584.0, '39%', '1');
INSERT INTO "eiweiß" VALUES ('purple sea urchin', 'uncharacterized protein LOC578090', 742.9, 'XP_783370.2', 1587.0, '47%', '3');
INSERT INTO "eiweiß" VALUES ('body louse', 'Centromeric protein E, putative', 782.7, 'XP_002429877.1', 2086.0, '30%', '5');
INSERT INTO "eiweiß" VALUES ('southern house mosquito', 'conserved hypothetical protein', 782.7, 'XP_001843754.1', 1878.0, '32%', '5');
INSERT INTO "eiweiß" VALUES ('porkworm', 'surface antigen repeat family protein', 937.5, 'XP_003380263.1', 2030.0, '36%', '9');

COMMIT;