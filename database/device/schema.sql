CREATE TABLE "gerät"
(
	"geräte_id"          INT,
	"gerät"              TEXT,
	"betreiber"          TEXT,
	"paketversion"       TEXT,
	"anwendungen"        TEXT,
	"software_plattform" TEXT,
	PRIMARY KEY ("geräte_id")
);

CREATE TABLE "shop"
(
	"shop_id"         INT,
	"shop_name"       TEXT,
	"ort"             TEXT,
	"eröffnungsdatum" TEXT,
	"offenes_jahr"    INT,
	PRIMARY KEY ("shop_id")
);

CREATE TABLE "lager"
(
	"shop_id"   INT,
	"geräte_id" INT,
	"menge"     INT,
	PRIMARY KEY ("shop_id", "geräte_id"),
	FOREIGN KEY ("shop_id") REFERENCES "shop" ("shop_id"),
	FOREIGN KEY ("geräte_id") REFERENCES "gerät" ("geräte_id")
);

BEGIN TRANSACTION;
INSERT INTO "gerät" VALUES (1, 'BlackBerry Storm 9530', 'MTS Mobility', '5.0.0.808', '5.0.0.419', 'Android');
INSERT INTO "gerät" VALUES (2, 'Apple', 'Verizon Wireless', '5.0.0.328', '5.0.0.328', 'iOS');
INSERT INTO "gerät" VALUES (3, 'Huawei', 'Telus Mobility', '5.0.0.419', '5.0.0.419', 'Android');
INSERT INTO "gerät" VALUES (4, 'Xiaomi', 'Bell Mobility', '5.0.0.419', '5.0.0.419', 'Android');
INSERT INTO "gerät" VALUES (5, 'Samsung', 'Iusacell', '4.7.0.208', '4.7.0.151', 'Android');
INSERT INTO "gerät" VALUES (6, 'Galaxy', 'Vodafone AU', '5.0.0.742', '5.0.0.451', 'Android');

INSERT INTO "shop" VALUES (1, 'Dinas Device', 'Dinas', '1 January', 2014);
INSERT INTO "shop" VALUES (2, 'Best Buy', 'Cymmer', '15 July', 2006);
INSERT INTO "shop" VALUES (3, 'Ferndale', 'Blaenllechau', '8 November', 2009);
INSERT INTO "shop" VALUES (4, 'Apple', 'Blaenllechau', '10 June', 2009);
INSERT INTO "shop" VALUES (5, 'Pentre store', 'Pentre', '24 February', 2011);
INSERT INTO "shop" VALUES (6, 'Tynewydd repair', 'Porth', '11 April', 2007);
INSERT INTO "shop" VALUES (7, 'Dinas store', 'Dinas', '13 January', 2009);
INSERT INTO "shop" VALUES (8, 'Naval repair', 'Penygraig', '10 December', 2010);
INSERT INTO "shop" VALUES (9, 'Gelli repair', 'Gelli', '21 August', 2013);
INSERT INTO "shop" VALUES (10, 'Naval''s shop', 'Penygraig', '27 January', 2014);
INSERT INTO "shop" VALUES (11, 'ATnT', 'Maerdy', '23–24 December', 2015);
INSERT INTO "shop" VALUES (12, 'National Cellphone', 'Wattstown', '18 February', 2017);

INSERT INTO "lager" VALUES (1, 6, 100);
INSERT INTO "lager" VALUES (2, 6, 110);
INSERT INTO "lager" VALUES (3, 6, 134);
INSERT INTO "lager" VALUES (4, 6, 56);
INSERT INTO "lager" VALUES (1, 4, 200);
INSERT INTO "lager" VALUES (11, 6, 112);
INSERT INTO "lager" VALUES (3, 4, 124);
INSERT INTO "lager" VALUES (9, 4, 51);

COMMIT;