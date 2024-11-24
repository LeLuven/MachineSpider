CREATE TABLE "autor"
(
	"aid"      INT,
	"homepage" TEXT,
	"name"     TEXT,
	"oid"      INT,
	PRIMARY KEY ("aid")
);

CREATE TABLE "konferenz"
(
	"cid"      INT,
	"homepage" TEXT,
	"name"     TEXT,
	PRIMARY KEY ("cid")
);

CREATE TABLE "domain"
(
	"did"  INT,
	"name" TEXT,
	PRIMARY KEY ("did")
);

CREATE TABLE "journal"
(
	"homepage" TEXT,
	"jid"      INT,
	"name"     TEXT,
	PRIMARY KEY ("jid")
);

CREATE TABLE "schlüsselwort"
(
	"schlüsselwort" TEXT,
	"kind"          INT,
	PRIMARY KEY ("kind")
);

CREATE TABLE "organisation"
(
	"kontinent" TEXT,
	"homepage"  TEXT,
	"name"      TEXT,
	"oid"       INT,
	PRIMARY KEY ("oid")
);

CREATE TABLE "domain_autor"
(
	"aid" INT,
	"did" INT,
	PRIMARY KEY ("aid", "did"),
	FOREIGN KEY ("aid") REFERENCES "autor" ("aid"),
	FOREIGN KEY ("did") REFERENCES "domain" ("did")
);

CREATE TABLE "bereich_konferenz"
(
	"cid" INT,
	"did" INT,
	PRIMARY KEY ("cid", "did"),
	FOREIGN KEY ("cid") REFERENCES "konferenz" ("cid"),
	FOREIGN KEY ("did") REFERENCES "domain" ("did")
);

CREATE TABLE "bereich_journal"
(
	"did" INT,
	"jid" INT,
	PRIMARY KEY ("did", "jid"),
	FOREIGN KEY ("did") REFERENCES "domain" ("did"),
	FOREIGN KEY ("jid") REFERENCES "journal" ("jid")
);

CREATE TABLE "publikation"
(
	"abstract"       TEXT,
	"cid"            TEXT,
	"citation_num"   INT,
	"jid"            INT,
	"pid"            INT,
	"referenznummer" INT,
	"titel"          TEXT,
	"jahr"           INT,
	PRIMARY KEY ("pid"),
	FOREIGN KEY ("cid") REFERENCES "konferenz" ("cid"),
	FOREIGN KEY ("jid") REFERENCES "journal" ("jid")
);

CREATE TABLE "domain_keyword"
(
	"did"  INT,
	"kind" INT,
	PRIMARY KEY ("did", "kind"),
	FOREIGN KEY ("did") REFERENCES "domain" ("did"),
	FOREIGN KEY ("kind") REFERENCES "schlüsselwort" ("kind")
);

CREATE TABLE "bereich_publikation"
(
	"did" INT,
	"pid" INT,
	PRIMARY KEY ("did", "pid"),
	FOREIGN KEY ("did") REFERENCES "domain" ("did"),
	FOREIGN KEY ("pid") REFERENCES "publikation" ("pid")
);

CREATE TABLE "publikation_schlüsselwort"
(
	"pid"  INT,
	"kind" INT,
	PRIMARY KEY ("pid", "kind"),
	FOREIGN KEY ("pid") REFERENCES "publikation" ("pid"),
	FOREIGN KEY ("kind") REFERENCES "schlüsselwort" ("kind")
);

CREATE TABLE "schreibt"
(
	"aid" INT,
	"pid" INT,
	PRIMARY KEY ("aid", "pid"),
	FOREIGN KEY ("aid") REFERENCES "autor" ("aid"),
	FOREIGN KEY ("pid") REFERENCES "publikation" ("pid")
);

CREATE TABLE "cite"
(
	"zitiert" INT,
	"citing"  INT,
	FOREIGN KEY ("zitiert") REFERENCES "publikation" ("pid"),
	FOREIGN KEY ("citing") REFERENCES "publikation" ("pid")
);
