CREATE TABLE "rollen"
(
	"rollencode"         VARCHAR(15),
	"rollenbeschreibung" VARCHAR(80),
	PRIMARY KEY ("rollencode")
);

CREATE TABLE "dokumentstrukturen"
(
	"dokumentenstruktur_code"                  VARCHAR(15),
	"code_der_übergeordneten_dokumentstruktur" VARCHAR(15),
	"beschreibung_der_dokumentstruktur"        VARCHAR(80),
	PRIMARY KEY ("dokumentenstruktur_code")
);

CREATE TABLE "sachgebiete"
(
	"funktionsbereich_code"          VARCHAR(15),
	"übergeordneter_sachgebietscode" VARCHAR(15),
	"funktionsbereichsbeschreibung"  VARCHAR(80) NOT NULL,
	PRIMARY KEY ("funktionsbereich_code")
);

CREATE TABLE "bilder"
(
	"image_id"      INTEGER,
	"bild_alt_text" VARCHAR(80),
	"bildname"      VARCHAR(40),
	"bild_url"      VARCHAR(255),
	PRIMARY KEY ("image_id")
);

CREATE TABLE "benutzer"
(
	"benutzer_id"    INTEGER,
	"rollencode"     VARCHAR(15) NOT NULL,
	"benutzername"   VARCHAR(40),
	"benutzer_login" VARCHAR(40),
	"passwort"       VARCHAR(40),
	PRIMARY KEY ("benutzer_id"),
	FOREIGN KEY ("rollencode") REFERENCES "rollen" ("rollencode")
);

CREATE TABLE "dokumente"
(
	"dokument_code"           VARCHAR(15),
	"dokumentenstruktur_code" VARCHAR(15) NOT NULL,
	"dokumenttyp_code"        VARCHAR(15) NOT NULL,
	"zugriffsanzahl"          INTEGER,
	"dokumentname"            VARCHAR(80),
	PRIMARY KEY ("dokument_code"),
	FOREIGN KEY ("dokumentenstruktur_code") REFERENCES "dokumentstrukturen" ("dokumentenstruktur_code")
);

CREATE TABLE "dokumentensachgebiete"
(
	"dokument_code"         VARCHAR(15) NOT NULL,
	"funktionsbereich_code" VARCHAR(15) NOT NULL,
	FOREIGN KEY ("dokument_code") REFERENCES "dokumente" ("dokument_code"),
	FOREIGN KEY ("funktionsbereich_code") REFERENCES "sachgebiete" ("funktionsbereich_code")
);

CREATE TABLE "dokumentenabschnitte"
(
	"abschnitt_id"    INTEGER,
	"dokument_code"   VARCHAR(15) NOT NULL,
	"abschnittsfolge" INTEGER,
	"abschnitt_code"  VARCHAR(20),
	"abschnittstitel" VARCHAR(80),
	PRIMARY KEY ("abschnitt_id"),
	FOREIGN KEY ("dokument_code") REFERENCES "dokumente" ("dokument_code")
);

CREATE TABLE "dokumente_abschnitte_bilder"
(
	"abschnitt_id" INTEGER NOT NULL,
	"image_id"     INTEGER NOT NULL,
	PRIMARY KEY ("abschnitt_id", "image_id"),
	FOREIGN KEY ("abschnitt_id") REFERENCES "dokumentenabschnitte" ("abschnitt_id"),
	FOREIGN KEY ("image_id") REFERENCES "bilder" ("image_id")
);

BEGIN TRANSACTION;
INSERT INTO "rollen" VALUES ('DBA', 'Database Administrator');
INSERT INTO "rollen" VALUES ('PROJ-MGR', 'Project Manager');

INSERT INTO "dokumentstrukturen" VALUES ('1', '1', 'Header');
INSERT INTO "dokumentstrukturen" VALUES ('6', '1', 'Main section');
INSERT INTO "dokumentstrukturen" VALUES ('8', '1', 'Bib');
INSERT INTO "dokumentstrukturen" VALUES ('5', '6', 'Image section');
INSERT INTO "dokumentstrukturen" VALUES ('9', '8', 'Author section');

INSERT INTO "sachgebiete" VALUES ('8', '8', 'Signature');
INSERT INTO "sachgebiete" VALUES ('1', '8', 'Acknowledgement');
INSERT INTO "sachgebiete" VALUES ('9', '8', 'Keep blank');

INSERT INTO "bilder" VALUES (1, 'Lea', 'top1', 'http://www.rempelnader.com/1.jpg');
INSERT INTO "bilder" VALUES (2, 'Arden', 'top2', 'http://connellykertzmann.org/1.jpg');
INSERT INTO "bilder" VALUES (3, 'Mohamed', 'top3', 'http://www.bernierconnelly.com/1.jpg');
INSERT INTO "bilder" VALUES (4, 'Chaya', 'top4', 'http://abernathyboehm.com/1.jpg');
INSERT INTO "bilder" VALUES (5, 'Percival', 'chapter1', 'http://gaylord.info/1.jpg');
INSERT INTO "bilder" VALUES (6, 'Lincoln', 'chapter2', 'http://www.hellerreinger.com/1.jpg');
INSERT INTO "bilder" VALUES (7, 'Camylle', 'chapter3', 'http://faycummerata.net/1.jpg');
INSERT INTO "bilder" VALUES (8, 'Ashtyn', 'chapter4', 'http://haleychamplin.net/1.jpg');
INSERT INTO "bilder" VALUES (9, 'Filomena', 'chapter5', 'http://www.fritsch.net/1.jpg');
INSERT INTO "bilder" VALUES (10, 'Jeanette', 'data1', 'http://sauer.com/1.jpg');
INSERT INTO "bilder" VALUES (11, 'Name', 'data2', 'http://www.heller.com/1.jpg');
INSERT INTO "bilder" VALUES (12, 'Marianna', 'data3', 'http://www.hermann.com/1.jpg');
INSERT INTO "bilder" VALUES (13, 'Stephen', 'data4', 'http://rowelakin.com/1.jpg');
INSERT INTO "bilder" VALUES (14, 'Miller', 'data5', 'http://andersonluettgen.net/1.jpg');
INSERT INTO "bilder" VALUES (15, 'Trycia', 'data6', 'http://www.beahan.biz/1.jpg');

INSERT INTO "benutzer" VALUES (1, 'PROJ-MGR', 'dickens.elta', '0', 'e72b5a2d50b39a8760764a5f7a9d68ca2f076877');
INSERT INTO "benutzer" VALUES (2, 'DBA', 'tremblay.raheem', '1', '9bc25a040d5647ced5ec32e1a455e90fafc10bcb');
INSERT INTO "benutzer" VALUES (3, 'DBA', 'lynn.haley', '0', '90db8f51449e6c39e2a01f0b649d5a92fe76bbbb');
INSERT INTO "benutzer" VALUES (4, 'PROJ-MGR', 'ycremin', '0', 'f6977378f409f5d2d230016a6678a582e14f43b0');
INSERT INTO "benutzer" VALUES (5, 'PROJ-MGR', 'larson.vesta', '1', 'da383455a05a824606c54e99f671c4d6a2ddae26');
INSERT INTO "benutzer" VALUES (6, 'DBA', 'amelie53', '0', '6aa66440864ff8143fe7dee5940a6af3460bad07');
INSERT INTO "benutzer" VALUES (7, 'DBA', 'jacklyn.schmitt', '1', '3f6affa583bfdf7fac6faeb2ca418431909d4b39');
INSERT INTO "benutzer" VALUES (8, 'PROJ-MGR', 'joanne.deckow', '0', '20241478f890508ac47870cfba472e1db04a71ca');
INSERT INTO "benutzer" VALUES (9, 'PROJ-MGR', 'dickinson.lenora', '0', 'a0fe5434a5f4c218e37b0082f2408b357feb0fa6');
INSERT INTO "benutzer" VALUES (10, 'DBA', 'heller.harley', '1', '11af7569a5c1e8b455add5755e18131be2ac8636');
INSERT INTO "benutzer" VALUES (11, 'DBA', 'roger.o''conner', '0', '3d478d7056d6417966f6b1676f6ec81b3094f44f');
INSERT INTO "benutzer" VALUES (12, 'DBA', 'gussie00', '1', '75f7b5ed8e70e86467155e003ccda6fce1011c29');
INSERT INTO "benutzer" VALUES (13, 'PROJ-MGR', 'johanna.fisher', '1', '1fb26eea854962d41512827bf90a5b7ce4b359d8');
INSERT INTO "benutzer" VALUES (14, 'DBA', 'faye30', '0', '27cca8f94136f0e8971b5ca555a21ff756871b27');
INSERT INTO "benutzer" VALUES (15, 'PROJ-MGR', 'glenna.simonis', '1', '95f489fc0921bbb3e7d661a550ae208b88d9b11a');

INSERT INTO "dokumente" VALUES ('217', '8', 'Book', 1864, 'Learning English');
INSERT INTO "dokumente" VALUES ('621', '1', 'Paper', 8208, 'Research about Art history');
INSERT INTO "dokumente" VALUES ('958', '8', 'Book', 3769, 'Learning Database');
INSERT INTO "dokumente" VALUES ('961', '5', 'Advertisement', 6661, 'Summer Sails');
INSERT INTO "dokumente" VALUES ('989', '9', 'Book', 2910, 'Learning Japanese');
INSERT INTO "dokumente" VALUES ('930', '9', 'CV', 6345, 'David CV');
INSERT INTO "dokumente" VALUES ('928', '8', 'Book', 2045, 'How to cook pasta');
INSERT INTO "dokumente" VALUES ('510', '6', 'Paper', 3479, 'Humanity: a fact');
INSERT INTO "dokumente" VALUES ('706', '9', 'Advertisement', 8623, 'Winter Sails');
INSERT INTO "dokumente" VALUES ('465', '9', 'CV', 5924, 'John CV');
INSERT INTO "dokumente" VALUES ('713', '8', 'CV', 2294, 'Joe CV');
INSERT INTO "dokumente" VALUES ('566', '5', 'Advertisement', 3289, 'Spring Sails');
INSERT INTO "dokumente" VALUES ('349', '9', 'Book', 1219, 'Life about Claude Monet');
INSERT INTO "dokumente" VALUES ('675', '1', 'Advertisement', 7509, 'Fall Sails');
INSERT INTO "dokumente" VALUES ('714', '6', 'Paper', 9948, 'Relationships between History and Arts');

INSERT INTO "dokumentensachgebiete" VALUES ('675', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('930', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('217', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('465', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('958', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('958', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('217', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('961', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('928', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('958', '9');
INSERT INTO "dokumentensachgebiete" VALUES ('349', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('961', '8');
INSERT INTO "dokumentensachgebiete" VALUES ('989', '1');
INSERT INTO "dokumentensachgebiete" VALUES ('706', '8');
INSERT INTO "dokumentensachgebiete" VALUES ('713', '8');

INSERT INTO "dokumentenabschnitte" VALUES (12, '714', 6072, '70', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (15, '217', 4510, '14', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (19, '675', 7236, '90', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (21, '675', 9847, '72', 'before');
INSERT INTO "dokumentenabschnitte" VALUES (23, '465', 8548, '49', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (27, '566', 6016, '18', 'before');
INSERT INTO "dokumentenabschnitte" VALUES (38, '930', 6521, '58', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (40, '465', 4964, '93', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (54, '961', 4794, '34', 'before');
INSERT INTO "dokumentenabschnitte" VALUES (57, '989', 6349, '22', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (62, '621', 5552, '16', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (86, '706', 2170, '60', 'after');
INSERT INTO "dokumentenabschnitte" VALUES (89, '566', 2354, '34', 'before');
INSERT INTO "dokumentenabschnitte" VALUES (93, '713', 4433, '91', 'before');
INSERT INTO "dokumentenabschnitte" VALUES (95, '621', 8805, '38', 'before');

INSERT INTO "dokumente_abschnitte_bilder" VALUES (93, 6);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (86, 2);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (27, 3);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (12, 12);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (19, 12);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (38, 12);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (89, 8);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (23, 8);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (40, 5);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (19, 2);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (62, 14);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (21, 2);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (86, 4);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (15, 14);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (54, 12);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (38, 7);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (15, 13);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (27, 10);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (40, 6);
INSERT INTO "dokumente_abschnitte_bilder" VALUES (19, 6);

COMMIT;