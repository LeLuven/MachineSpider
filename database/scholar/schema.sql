CREATE TABLE "veranstaltungsort"
(
	"venue_id"   INTEGER NOT NULL,
	"venue_name" VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY ("venue_id")
);

CREATE TABLE "autor"
(
	"autor_id"    INTEGER NOT NULL,
	"autorenname" VARCHAR(50) DEFAULT NULL,
	PRIMARY KEY ("autor_id")
);

CREATE TABLE "dataset"
(
	"datensatz_id" INTEGER NOT NULL,
	"dataset_name" VARCHAR(50) DEFAULT NULL,
	PRIMARY KEY ("datensatz_id")
);

CREATE TABLE "journal"
(
	"zeitschrift_id" INTEGER NOT NULL,
	"journal_name"   VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY ("zeitschrift_id")
);

CREATE TABLE "schlüsselbegriff"
(
	"schlüsselphrase_id"       INTEGER NOT NULL,
	"name_des_schlüsselsatzes" VARCHAR(50) DEFAULT NULL,
	PRIMARY KEY ("schlüsselphrase_id")
);

CREATE TABLE "papierdatensatz"
(
	"papier_id"    INTEGER DEFAULT NULL,
	"datensatz_id" INTEGER DEFAULT NULL,
	PRIMARY KEY ("papier_id", "datensatz_id")
);

CREATE TABLE "papier"
(
	"papier_id"          INTEGER NOT NULL,
	"titel"              VARCHAR(300) DEFAULT NULL,
	"venue_id"           INTEGER DEFAULT NULL,
	"jahr"               INTEGER DEFAULT NULL,
	"anzahl_der_zitate"  INTEGER DEFAULT NULL,
	"anzahl_zitiert_von" INTEGER DEFAULT NULL,
	"zeitschrift_id"     INTEGER DEFAULT NULL,
	PRIMARY KEY ("papier_id"),
	FOREIGN KEY ("venue_id") REFERENCES "veranstaltungsort" ("venue_id"),
	FOREIGN KEY ("zeitschrift_id") REFERENCES "journal" ("zeitschrift_id")
);

CREATE TABLE "cite"
(
	"citing_paper_id"   INTEGER NOT NULL,
	"zitierter_beitrag" INTEGER NOT NULL,
	PRIMARY KEY ("citing_paper_id", "zitierter_beitrag"),
	FOREIGN KEY ("citing_paper_id") REFERENCES "papier" ("papier_id"),
	FOREIGN KEY ("zitierter_beitrag") REFERENCES "papier" ("papier_id")
);

CREATE TABLE "aufsatz_schlüsselwort"
(
	"papier_id"          INTEGER DEFAULT NULL,
	"schlüsselphrase_id" INTEGER DEFAULT NULL,
	PRIMARY KEY ("papier_id", "schlüsselphrase_id"),
	FOREIGN KEY ("papier_id") REFERENCES "papier" ("papier_id"),
	FOREIGN KEY ("schlüsselphrase_id") REFERENCES "schlüsselbegriff" ("schlüsselphrase_id")
);

CREATE TABLE "schreibt"
(
	"papier_id" INTEGER DEFAULT NULL,
	"autor_id"  INTEGER DEFAULT NULL,
	PRIMARY KEY ("papier_id", "autor_id"),
	FOREIGN KEY ("papier_id") REFERENCES "papier" ("papier_id"),
	FOREIGN KEY ("autor_id") REFERENCES "autor" ("autor_id")
);
