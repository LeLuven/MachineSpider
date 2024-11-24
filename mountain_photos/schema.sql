CREATE TABLE "berg"
(
	"id"        INT,
	"name"      TEXT,
	"höhe"      REAL,
	"vorsprung" REAL,
	"bereich"   TEXT,
	"land"      TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "kameraobjektiv"
(
	"id"              INT,
	"marke"           TEXT,
	"name"            TEXT,
	"brennweite_mm"   REAL,
	"maximale_blende" REAL,
	PRIMARY KEY ("id")
);

CREATE TABLE "fotos"
(
	"id"                INT,
	"kameraobjektiv_id" INT,
	"berg_id"           INT,
	"farbe"             TEXT,
	"name"              TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY ("kameraobjektiv_id") REFERENCES "kameraobjektiv" ("id"),
	FOREIGN KEY ("berg_id") REFERENCES "berg" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "berg" VALUES (1, 'Abune Yosef / Guliba Amba', 4260.0, 1909.0, 'Lasta Massif', 'Ethiopia');
INSERT INTO "berg" VALUES (2, 'Ioll / Yoll', 4220.0, 350.0, 'Kollo Massif', 'Ethiopia');
INSERT INTO "berg" VALUES (3, 'Bada', 4195.0, 1605.0, 'Arsi Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (4, 'Kaka / Kecha / Chiqe', 4193.0, 1215.0, 'Arsi Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (5, 'Jbel Toubkal', 4167.0, 3755.0, 'Toubkal Atlas', 'Morocco');
INSERT INTO "berg" VALUES (6, 'Muhavura', 4127.0, 1530.0, 'Virunga Mountains', 'Rwanda Uganda');
INSERT INTO "berg" VALUES (7, 'Hey / Hay', 4125.0, 660.0, 'Semien Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (8, 'Guna', 4120.0, 1510.0, 'Guna Massif', 'Ethiopia');
INSERT INTO "berg" VALUES (9, 'Choqa / Choke / Birhan', 4100.0, 2225.0, 'Choqa Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (10, 'Ouanoukrim', 4088.0, 420.0, 'Toubkal Atlas', 'Morocco');
INSERT INTO "berg" VALUES (11, 'Chilalo', 4071.0, 610.0, 'Arsi Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (12, 'Mount Cameroon', 4070.0, 3931.0, 'Cameroon line', 'Cameroon');
INSERT INTO "berg" VALUES (13, 'Inatye', 4070.0, 500.0, 'Semien Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (14, 'Ighil Mgoun', 4068.0, 1904.0, 'Central High Atlas', 'Morocco');
INSERT INTO "berg" VALUES (15, 'Weshema / Wasema?', 4030.0, 420.0, 'Bale Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (16, 'Oldoinyo Lesatima', 4001.0, 2081.0, 'Aberdare Range', 'Kenya');
INSERT INTO "berg" VALUES (17, 'Jebel n''Tarourt / Tifnout / Iferouane', 3996.0, 910.0, 'Toubkal Atlas', 'Morocco');
INSERT INTO "berg" VALUES (18, 'Muggia', 3950.0, 500.0, 'Lasta Massif', 'Ethiopia');
INSERT INTO "berg" VALUES (19, 'Dubbai', 3941.0, 1540.0, 'Tigray Mountains', 'Ethiopia');
INSERT INTO "berg" VALUES (20, 'Taska n’Zat', 3912.0, 460.0, 'Toubkal Atlas', 'Morocco');
INSERT INTO "berg" VALUES (21, 'Aksouâl', 3903.0, 450.0, 'Toubkal Atlas', 'Morocco');
INSERT INTO "berg" VALUES (22, 'Mount Kinangop', 3902.0, 530.0, 'Aberdare Range', 'Kenya');
INSERT INTO "berg" VALUES (23, 'Cimbia', 3900.0, 590.0, 'Kollo Massif', 'Ethiopia');

INSERT INTO "kameraobjektiv" VALUES (1, 'Olympus', 'Olympus 15mm f/8.0 Body Cap', 15.0, 8.0);
INSERT INTO "kameraobjektiv" VALUES (2, 'Olympus', 'Olympus M.Zuiko Digital ED 45mm f/1.8', 45.0, 1.8);
INSERT INTO "kameraobjektiv" VALUES (3, 'Olympus', 'Olympus M.Zuiko Digital ED 75mm f/1.8', 75.0, 1.8);
INSERT INTO "kameraobjektiv" VALUES (4, 'Panasonic', 'Panasonic Leica DG Summilux 25mm f /1.4 Asph.', 25.0, 1.4);
INSERT INTO "kameraobjektiv" VALUES (5, 'Panasonic', 'Panasonic Leica DG Nocticron 42.5mm f /1.2', 42.5, 1.2);
INSERT INTO "kameraobjektiv" VALUES (6, 'Panasonic', 'Panasonic Lumix G 150mm f /2.8', 150.0, 2.8);
INSERT INTO "kameraobjektiv" VALUES (7, 'Schneider Kreuznach', 'Schneider Kreuznach Super Angulon 14mm f /2.0', 14.0, 2.0);
INSERT INTO "kameraobjektiv" VALUES (8, 'Schneider Kreuznach', 'Schneider Kreuznach Xenon 30mm f /1.4', 30.0, 1.4);
INSERT INTO "kameraobjektiv" VALUES (9, 'Sigma', 'Sigma 19mm f2.8 DN', 19.0, 2.8);
INSERT INTO "kameraobjektiv" VALUES (10, 'Sigma', 'Sigma 19mm f2.8 EX DN', 19.0, 2.8);
INSERT INTO "kameraobjektiv" VALUES (11, 'Sigma', 'Sigma 30mm f2.8 DN', 30.0, 2.8);

INSERT INTO "fotos" VALUES (1, 1, 20, 'RBG', 'monkey');
INSERT INTO "fotos" VALUES (2, 10, 2, 'RBG', 'rabbits');
INSERT INTO "fotos" VALUES (3, 10, 1, 'Black/White', 'deers');
INSERT INTO "fotos" VALUES (4, 1, 10, 'RBG', 'grass');
INSERT INTO "fotos" VALUES (5, 5, 14, 'RBG', 'cloud');
INSERT INTO "fotos" VALUES (6, 6, 12, 'RBG', 'sunset');
INSERT INTO "fotos" VALUES (7, 7, 12, 'RBG', 'river');
INSERT INTO "fotos" VALUES (8, 7, 12, 'Black/White', 'wolfs');
INSERT INTO "fotos" VALUES (9, 10, 14, 'RBG', 'the mountain');
INSERT INTO "fotos" VALUES (10, 10, 20, 'RBG', 'life');

COMMIT;