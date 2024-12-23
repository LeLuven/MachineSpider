CREATE TABLE "stadt"
(
	"stadt_id"              INT,
	"stadt"                 TEXT,
	"hanzi"                 TEXT,
	"hanyu_pinyin"          TEXT,
	"regionale_bevölkerung" INT,
	"bip"                   REAL,
	PRIMARY KEY ("stadt_id")
);

CREATE TABLE "match"
(
	"match_id"   INT,
	"datum"      TEXT,
	"spielort"   TEXT,
	"punkte"     TEXT,
	"ergebnis"   TEXT,
	"wettbewerb" TEXT,
	PRIMARY KEY ("match_id")
);

CREATE TABLE "temperatur"
(
	"stadt_id" INT,
	"jan"      REAL,
	"feb"      REAL,
	"mar"      REAL,
	"apr"      REAL,
	"jun"      REAL,
	"jul"      REAL,
	"aug"      REAL,
	"sep"      REAL,
	"oct"      REAL,
	"nov"      REAL,
	"dec"      REAL,
	PRIMARY KEY ("stadt_id"),
	FOREIGN KEY ("stadt_id") REFERENCES "stadt" ("stadt_id")
);

CREATE TABLE "gastgeberstadt"
(
	"jahr"              INT,
	"match_id"          INT,
	"gastgebende_stadt" TEXT,
	PRIMARY KEY ("jahr"),
	FOREIGN KEY ("match_id") REFERENCES "match" ("match_id"),
	FOREIGN KEY ("gastgebende_stadt") REFERENCES "stadt" ("stadt_id")
);

BEGIN TRANSACTION;
INSERT INTO "stadt" VALUES (1, 'Shanghai', '上海', 'Shànghǎi', 23019148, 1919.57);
INSERT INTO "stadt" VALUES (2, 'Nanjing ( Jiangsu )', '南京', 'Nánjīng', 8004680, 614.55);
INSERT INTO "stadt" VALUES (3, 'Hangzhou ( Zhejiang )', '杭州', 'Hángzhōu', 8700400, 701.18);
INSERT INTO "stadt" VALUES (4, 'Suzhou ( Jiangsu )', '苏州/ 蘇州', 'Sūzhōu', 10465994, 1071.7);
INSERT INTO "stadt" VALUES (5, 'Ningbo ( Zhejiang )', '宁波/ 寧波', 'Níngbō', 7605689, 601.05);
INSERT INTO "stadt" VALUES (6, 'Wuxi ( Jiangsu )', '无锡/ 無錫', 'Wúxī', 6372624, 688.02);
INSERT INTO "stadt" VALUES (7, 'Nantong ( Jiangsu )', '南通', 'Nántōng', 7282835, 408.02);
INSERT INTO "stadt" VALUES (8, 'Shaoxing ( Zhejiang )', '绍兴/ 紹興', 'Shàoxīng', 4912200, 329.12);
INSERT INTO "stadt" VALUES (9, 'Changzhou ( Jiangsu )', '常州', 'Chángzhōu', 4591972, 358.04);
INSERT INTO "stadt" VALUES (10, 'Jinhua ( Zhejiang )', '金华/ 金華', 'Jīnhuá', 4614100, 244.77);
INSERT INTO "stadt" VALUES (11, 'Jiaxing ( Zhejiang )', '嘉兴/ 嘉興', 'Jiāxīng', 4501700, 266.81);
INSERT INTO "stadt" VALUES (12, 'Taizhou ( Zhejiang )', '台州', 'Tāizhōu', 5968800, 279.49);
INSERT INTO "stadt" VALUES (13, 'Yangzhou ( Jiangsu )', '扬州/ 揚州', 'Yángzhōu', 4459760, 263.03);

INSERT INTO "match" VALUES (1, '18 February 1992', 'Estadio Cuscatlán , San Salvador , El Salvador', '1-0', '2-0', 'Friendly match');
INSERT INTO "match" VALUES (2, '19 July 1992', 'Estadio Rigoberto López , Managua , Nicaragua', '3-0', '5-0', '1994 FIFA World Cup qualification');
INSERT INTO "match" VALUES (3, '23 July 1992', 'Estadio Cuscatlán , San Salvador , El Salvador', '1-0', '5-1', '1994 FIFA World Cup qualification');
INSERT INTO "match" VALUES (4, '23 July 1992', 'Estadio Cuscatlán , San Salvador , El Salvador', '3-0', '5-1', '1994 FIFA World Cup qualification');
INSERT INTO "match" VALUES (5, '4 April 1993', 'Estadio Cuscatlán , San Salvador , El Salvador', '1–0', '2–1', '1994 FIFA World Cup qualification');
INSERT INTO "match" VALUES (6, '23 July 2000', 'Estadio Cuscatlán , San Salvador , El Salvador', '2–1', '7–1', '2002 FIFA World Cup qualification');

INSERT INTO "temperatur" VALUES (1, 17.8, 17.8, 18.3, 18.9, 20.0, 20.6, 20.6, 20.6, 20.0, 19.4, 18.3);
INSERT INTO "temperatur" VALUES (2, 26.1, 26.1, 26.1, 26.1, 27.8, 27.8, 28.3, 28.3, 28.3, 27.2, 26.7);
INSERT INTO "temperatur" VALUES (3, 18.9, 18.3, 19.4, 20.0, 22.2, 23.3, 23.9, 23.3, 22.8, 21.7, 20.0);
INSERT INTO "temperatur" VALUES (4, 26.7, 27.2, 27.8, 28.3, 30.6, 31.1, 31.7, 31.7, 30.6, 28.9, 27.8);
INSERT INTO "temperatur" VALUES (6, 17.2, 17.2, 18.3, 18.9, 20.6, 21.7, 21.7, 21.1, 20.6, 20.0, 18.3);
INSERT INTO "temperatur" VALUES (10, 26.7, 27.2, 27.8, 27.8, 30.0, 30.6, 31.1, 31.1, 30.6, 28.9, 27.8);
INSERT INTO "temperatur" VALUES (7, 18.3, 18.9, 19.4, 20.6, 22.8, 23.3, 23.3, 23.3, 22.8, 21.7, 20.0);
INSERT INTO "temperatur" VALUES (11, 25.6, 26.6, 26.6, 26.1, 28.3, 28.9, 29.4, 29.4, 28.9, 27.2, 26.1);

INSERT INTO "gastgeberstadt" VALUES (2008, 1, '1');
INSERT INTO "gastgeberstadt" VALUES (2009, 2, '2');
INSERT INTO "gastgeberstadt" VALUES (2010, 3, '2');
INSERT INTO "gastgeberstadt" VALUES (2011, 4, '6');
INSERT INTO "gastgeberstadt" VALUES (2012, 5, '12');
INSERT INTO "gastgeberstadt" VALUES (2013, 6, '11');

COMMIT;