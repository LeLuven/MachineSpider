CREATE TABLE "chip_modell"
(
	"modellname"      TEXT,
	"einführungsjahr" REAL,
	"ram_mib"         REAL,
	"rom_mib"         REAL,
	"steckplätze"     TEXT,
	"wifi"            TEXT,
	"bluetooth"       TEXT,
	PRIMARY KEY ("modellname")
);

CREATE TABLE "bildschirm_modus"
(
	"grafikmodus"     REAL,
	"zeichenzellen"   TEXT,
	"pixel"           TEXT,
	"hardware_farben" REAL,
	"verwendete_kb"   REAL,
	"karte"           TEXT,
	"typ"             TEXT,
	PRIMARY KEY ("grafikmodus")
);

CREATE TABLE "telefon"
(
	"firmenname"           TEXT,
	"hardware_modellname"  TEXT,
	"akkreditierungstyp"   TEXT,
	"akkreditierungsstufe" TEXT,
	"datum"                TEXT,
	"chip_modell"          TEXT,
	"bildschirm_modus"     TEXT,
	PRIMARY KEY ("hardware_modellname"),
	FOREIGN KEY ("chip_modell") REFERENCES "chip_modell" ("modellname"),
	FOREIGN KEY ("bildschirm_modus") REFERENCES "bildschirm_modus" ("grafikmodus")
);

BEGIN TRANSACTION;
INSERT INTO "chip_modell" VALUES ('X5', 2002.0, 32.0, 32.0, '1CFII,1SD', 'No', 'No');
INSERT INTO "chip_modell" VALUES ('X5 high end', 2002.0, 64.0, 48.0, '1CFII,1SD', 'No', 'No');
INSERT INTO "chip_modell" VALUES ('X3 Basic', 2003.0, 32.0, 32.0, '1SD', 'No', 'No');
INSERT INTO "chip_modell" VALUES ('X3 Advanced', 2003.0, 64.0, 64.0, '1SD', 'No', 'No');
INSERT INTO "chip_modell" VALUES ('X3i', 2003.0, 64.0, 64.0, '1SD', '802.11b', 'No');
INSERT INTO "chip_modell" VALUES ('X30 low-end', 2004.0, 32.0, 32.0, '1SD', 'No', 'No');
INSERT INTO "chip_modell" VALUES ('X30 mid-range', 2004.0, 64.0, 64.0, '1SD', '802.11b', '1.1');
INSERT INTO "chip_modell" VALUES ('X30 high-end', 2004.0, 64.0, 64.0, '1SD', '802.11b', '1.1');
INSERT INTO "chip_modell" VALUES ('X50 Standard', 2004.0, 64.0, 64.0, '1CFII,1SD', 'No', 'Yes');
INSERT INTO "chip_modell" VALUES ('X50 Advanced', 2004.0, 64.0, 128.0, '1CFII,1SD', '802.11b', 'Yes');
INSERT INTO "chip_modell" VALUES ('X50v', 2004.0, 64.0, 128.0, '1CFII,1SD', '802.11b', '1.2');
INSERT INTO "chip_modell" VALUES ('X51 low-end', 2005.0, 64.0, 128.0, '1CFII,1SD', 'No', '1.2');
INSERT INTO "chip_modell" VALUES ('X51 mid-range', 2005.0, 64.0, 128.0, '1CFII,1SD', '802.11b', '1.2');
INSERT INTO "chip_modell" VALUES ('X51v', 2005.0, 64.0, 256.0, '1CFII,1SD', '802.11b', '1.2');

INSERT INTO "bildschirm_modus" VALUES (0.0, '80 × 32', '640 × 256', 2.0, 20.0, '3000–7FFF', 'Graphics');
INSERT INTO "bildschirm_modus" VALUES (1.0, '40 × 32', '320 × 256', 4.0, 20.0, '3000–7FFF', 'Graphics');
INSERT INTO "bildschirm_modus" VALUES (2.0, '20 × 32', '160 × 256', 8.0, 20.0, '3000–7FFF', 'Graphics');
INSERT INTO "bildschirm_modus" VALUES (3.0, '80 × 25', '640 × 200', 2.0, 16.0, '4000–7FFF', 'Text');
INSERT INTO "bildschirm_modus" VALUES (4.0, '40 × 32', '320 × 256', 2.0, 10.0, '5800–7FFF', 'Graphics');
INSERT INTO "bildschirm_modus" VALUES (5.0, '20 × 32', '160 × 256', 4.0, 10.0, '5800–7FFF', 'Graphics');
INSERT INTO "bildschirm_modus" VALUES (6.0, '40 × 25', '320 × 200', 2.0, 8.0, '6000–7FFF', 'Text');

INSERT INTO "telefon" VALUES ('Sony Mobile Communications', 'XPERIA T, XPERIA J', 'Full', 'joyn Hot Fixes', 'Approved (awarded 15.11.12)', 'X5', '1');
INSERT INTO "telefon" VALUES ('LG Electronics', 'LG-P760', 'Full', 'joyn Hot Fixes', 'Approved (awarded 19.11.12)', 'X51v', '3');
INSERT INTO "telefon" VALUES ('Nokia Corporation', 'Lumia 920, Lumia 820, Lumia 620', 'Full', 'joyn Hot Fixes', 'Approved (awarded 05.12.12)', 'X5', '4');
INSERT INTO "telefon" VALUES ('Samsung Electronics Co Ltd', 'GT-I9300', 'Full', 'joyn', 'Approved (awarded 23.10.12)', 'X30 low-end', '5');
INSERT INTO "telefon" VALUES ('HTC Corporation', 'Z520e', 'Provisional', 'joyn', 'Approved (valid until 14.09.13)', 'X3i', '6');
INSERT INTO "telefon" VALUES ('Samsung Electronics Co Ltd', 'GT-I9100', 'Provisional', 'joyn', 'Approved (valid until 06.04.13)', 'X50 Advanced', '1');
INSERT INTO "telefon" VALUES ('Nokia Corporation', 'Nokia 700', 'Provisional', 'joyn', 'Approved (valid until 03.05.13)', 'X5', '2');
INSERT INTO "telefon" VALUES ('Huawei Technologies Co.Ltd.', 'U8815 Asura', 'Provisional', 'joyn', 'Approved (valid until 03.05.13)', 'X50 Standard', '3');

COMMIT;