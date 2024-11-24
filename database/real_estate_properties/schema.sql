CREATE TABLE "referenz_merkmalstypen"
(
	"merkmalstyp_code" VARCHAR(20),
	"merkmalstyp_name" VARCHAR(80),
	PRIMARY KEY ("merkmalstyp_code")
);

CREATE TABLE "referenz_eigenschaftstypen"
(
	"eigenschaftsart_code"         VARCHAR(20),
	"eigenschaftsart_beschreibung" VARCHAR(80),
	PRIMARY KEY ("eigenschaftsart_code")
);

CREATE TABLE "andere_verfügbare_eigenschaften"
(
	"merkmal_id"           INTEGER,
	"merkmalstyp_code"     VARCHAR(20) NOT NULL,
	"merkmalsname"         VARCHAR(80),
	"merkmalsbeschreibung" VARCHAR(80),
	PRIMARY KEY ("merkmal_id"),
	FOREIGN KEY ("merkmalstyp_code") REFERENCES "referenz_merkmalstypen" ("merkmalstyp_code")
);

CREATE TABLE "eigenschaften"
(
	"eigenschaft_id"                  INTEGER,
	"eigenschaftsart_code"            VARCHAR(20) NOT NULL,
	"datum_auf_dem_markt"             DATETIME,
	"datum_verkauft"                  DATETIME,
	"immobilienname"                  VARCHAR(80),
	"adresse_der_immobilie"           VARCHAR(255),
	"anzahl_der_zimmer"               INTEGER,
	"vom_verkäufer_gewünschter_preis" DECIMAL(19,4),
	"vom_käufer_angebotener_preis"    DECIMAL(19,4),
	"vereinbarter_verkaufspreis"      DECIMAL(19,4),
	"apt_merkmal_1"                   VARCHAR(255),
	"apt_feature_2"                   VARCHAR(255),
	"apt_merkmal_3"                   VARCHAR(255),
	"fld_merkmal_1"                   VARCHAR(255),
	"fld_merkmal_2"                   VARCHAR(255),
	"fld_merkmal_3"                   VARCHAR(255),
	"hse_merkmal_1"                   VARCHAR(255),
	"hse_merkmal_2"                   VARCHAR(255),
	"hse_merkmal_3"                   VARCHAR(255),
	"oth_merkmal_1"                   VARCHAR(255),
	"oth_feature_2"                   VARCHAR(255),
	"oth_merkmal_3"                   VARCHAR(255),
	"shp_merkmal_1"                   VARCHAR(255),
	"shp_merkmal_2"                   VARCHAR(255),
	"shp_merkmal_3"                   VARCHAR(255),
	"andere_merkmalsangaben"          VARCHAR(255),
	PRIMARY KEY ("eigenschaft_id"),
	FOREIGN KEY ("eigenschaftsart_code") REFERENCES "referenz_eigenschaftstypen" ("eigenschaftsart_code")
);

CREATE TABLE "andere_eigenschaftsmerkmale"
(
	"eigenschaft_id"           INTEGER NOT NULL,
	"merkmal_id"               INTEGER NOT NULL,
	"eigenschaftsbeschreibung" VARCHAR(80),
	FOREIGN KEY ("eigenschaft_id") REFERENCES "eigenschaften" ("eigenschaft_id"),
	FOREIGN KEY ("merkmal_id") REFERENCES "andere_verfügbare_eigenschaften" ("merkmal_id")
);

BEGIN TRANSACTION;
INSERT INTO "referenz_merkmalstypen" VALUES ('Amenity', 'Amenity, eg Pool.');
INSERT INTO "referenz_merkmalstypen" VALUES ('Security', 'Securiyt, eg Burglar Alarm.');

INSERT INTO "referenz_eigenschaftstypen" VALUES ('House', 'House, Bungalow, etc.');
INSERT INTO "referenz_eigenschaftstypen" VALUES ('Apartment', 'Apartment, Flat, Condo, etc.');
INSERT INTO "referenz_eigenschaftstypen" VALUES ('Field', 'Field, Meadow.');
INSERT INTO "referenz_eigenschaftstypen" VALUES ('Other', 'Other, to be determined.');
INSERT INTO "referenz_eigenschaftstypen" VALUES ('Shop', 'Shop, Retail Outlet.');

INSERT INTO "andere_verfügbare_eigenschaften" VALUES (2, 'Amenity', 'AirCon', 'Air Conditioning.');
INSERT INTO "andere_verfügbare_eigenschaften" VALUES (3, 'Amenity', 'Pool', 'Swimming Pool.');
INSERT INTO "andere_verfügbare_eigenschaften" VALUES (4, 'Security', 'BurglarAlarm', 'Burglar Alarm');

INSERT INTO "eigenschaften" VALUES (1, 'House', '1991-06-21 23:52:10', '1979-05-13 16:58:06', 'park', '4745 Emerson Stravenue Suite 829
South Garret, IN 16772-5682', 7, 372652.2909, 1.68, 4201.8, 'aut', 'suscipit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (2, 'House', '1990-05-25 23:01:51', '1990-11-14 19:16:38', 'the cole', '098 Tremaine Highway Suite 569
South Wilford, NJ 46587-3537', 1, 661536468.4429, 8.7122, 21769471.8328, 'est', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (3, 'Other', '1986-11-26 04:12:18', '1981-06-26 21:28:28', 'prism', '062 Micaela Court Apt. 707
Margretville, WV 51628-3617', 8, 1337, 11375259.502, 5, 'ut', 'et', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (4, 'Field', '2017-09-14 15:49:23', '2003-02-27 18:17:11', 'riverside', '49578 Ayden Mountains
New Russellhaven, UT 46626', 6, 192374065.8, 15.17, 4514.807, 'nesciunt', 'adipisci', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (5, 'Apartment', '2016-05-06 16:53:39', '2012-08-19 07:36:57', 'parc east', '2765 Schulist Stream
Lindmouth, UT 03391-3817', 5, 983.8596, 10.1067, 1.0012, 'quo', 'sequi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (6, 'Shop', '1994-02-14 02:27:13', '1995-01-31 11:18:42', 'high line', '6837 Darien Views Apt. 475
South Maraview, KS 77770', 9, 2573, 0, 476919.3, 'sed', 'culpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (7, 'Shop', '1996-09-16 22:04:27', '1998-09-15 05:26:22', 'avalon', '092 Paucek Highway Apt. 772
East Erika, IA 61358', 8, 150045.7568, 296733, 2794972.2495, 'quos', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (8, 'Apartment', '1976-06-10 20:25:38', '2001-11-09 04:37:33', 'vogue', '24365 Ulices Run
Homenicktown, MD 88485-6198', 9, 13.4715, 0, 0, 'fuga', 'odio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (9, 'Apartment', '1978-05-15 10:53:37', '1971-04-14 03:23:49', 'longacre', '107 Roob Courts
Erdmanburgh, IA 42926-0873', 5, 2219.6778, 3520911.5258, 3344706.5755, 'enim', 'sit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (10, 'Apartment', '2003-12-25 16:13:19', '1997-01-07 19:52:45', 'renoir', '084 Lakin Vista Apt. 394
Fishertown, MA 16876', 9, 77172926.3, 1.5509, 244353758.1824, 'consequatur', 'vero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (11, 'Other', '1981-08-23 05:40:38', '1997-11-07 20:22:05', 'murray hill', '2088 Bashirian Fork Suite 337
Faustinoport, MT 16771-9320', 2, 6713620.9, 13991131.434, 170766.472, 'et', 'est', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (12, 'Apartment', '2016-05-24 09:57:45', '1980-07-08 16:13:17', 'ten tower', '743 Ephraim Greens
Anniemouth, HI 47084-3853', 5, 305, 2, 456840888.16, 'qui', 'autem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (13, 'Other', '2000-08-07 06:59:14', '1973-02-24 02:56:06', 'chelsea', '60845 Else Highway Apt. 826
South Dougfort, CO 43200-4258', 2, 2198735.095, 0, 44132.4621, 'fuga', 'aut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (14, 'Other', '1986-12-31 10:05:32', '1987-12-07 07:41:27', 'wall street', '1474 Dibbert Fields Suite 055
South Renee, IN 58286-3097', 7, 78.7208, 2449185.2, 0, 'et', 'eos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "eigenschaften" VALUES (15, 'Apartment', '1993-08-04 10:49:04', '1984-02-01 19:54:54', 'parc coliseum', '986 Hagenes Drives
Draketon, UT 83411-3393', 3, 331, 27537286, 2574, 'aut', 'iusto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO "andere_eigenschaftsmerkmale" VALUES (15, 3, 'dolorem');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (12, 4, 'earum');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (6, 2, 'illo');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (7, 2, 'hic');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (6, 3, 'et');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (14, 4, 'quo');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (4, 3, 'odio');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (1, 2, 'ad');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (11, 4, 'vitae');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (9, 3, 'quo');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (6, 3, 'corrupti');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (6, 3, 'doloribus');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (13, 2, 'autem');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (3, 2, 'cumque');
INSERT INTO "andere_eigenschaftsmerkmale" VALUES (14, 4, 'modi');

COMMIT;