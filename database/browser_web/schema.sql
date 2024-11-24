CREATE TABLE "web_client_beschleuniger"
(
	"id"             INT,
	"name"           TEXT,
	"betriebssystem" TEXT,
	"client"         TEXT,
	"verbindung"     TEXT,
	PRIMARY KEY ("id")
);

CREATE TABLE "browser"
(
	"id"          INT,
	"name"        TEXT,
	"marktanteil" REAL,
	PRIMARY KEY ("id")
);

CREATE TABLE "beschleuniger_kompatibler_browser"
(
	"beschleuniger_id"     INT,
	"browser_id"           INT,
	"kompatibel_seit_jahr" INT,
	PRIMARY KEY ("beschleuniger_id", "browser_id"),
	FOREIGN KEY ("beschleuniger_id") REFERENCES "web_client_beschleuniger" ("id"),
	FOREIGN KEY ("browser_id") REFERENCES "browser" ("id")
);

BEGIN TRANSACTION;
INSERT INTO "web_client_beschleuniger" VALUES (1, 'CACHEbox', 'Appliance (Linux)', 'End user, ISP', 'Broadband, Satellite, Wireless, Fiber, DSL');
INSERT INTO "web_client_beschleuniger" VALUES (2, 'CProxy', 'Windows', 'user', 'up to 756kbit/s');
INSERT INTO "web_client_beschleuniger" VALUES (3, 'Fasterfox', 'Windows, Mac, Linux and Mobile devices', 'user', 'Dialup, Wireless, Broadband, DSL');
INSERT INTO "web_client_beschleuniger" VALUES (4, 'fasTun', 'Any', 'All', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (5, 'Freewire', 'Windows, except NT and 95', 'ISP', 'Dial-up');
INSERT INTO "web_client_beschleuniger" VALUES (6, 'Google Web Accelerator (discontinued)', 'Windows', 'user/Google server', 'Broadband');
INSERT INTO "web_client_beschleuniger" VALUES (7, 'Heigh Speed', 'Windows', 'All', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (8, 'Netfury', 'Windows, Mac', 'End User, ISP', 'Dial-up, Broadband, DSL, ISDN, Satellite, Wireless');
INSERT INTO "web_client_beschleuniger" VALUES (9, 'Nitro', 'Windows, Mac', 'End User, ISP', 'Dial-up, Broadband, DSL, ISDN, Satellite, Wireless');
INSERT INTO "web_client_beschleuniger" VALUES (10, 'ONSPEED', 'Windows, Mac and Mobile devices', 'user', 'Dialup, Wireless, Broadband, DSL');
INSERT INTO "web_client_beschleuniger" VALUES (11, 'Opera Turbo', 'Android, Linux, Mac and Windows devices', 'user/Opera server', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (12, 'Polipo', 'Unix (Linux, *BSD, Mac OS X, others), Windows', 'user/ISP', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (13, 'Propel', 'Windows, Mac', 'End User, ISP', 'Dial, DSL, ISDN, Satellite, wireless');
INSERT INTO "web_client_beschleuniger" VALUES (14, 'Proxyconn Web Accelerator', 'Windows, Mac, Mobile devices', 'user', 'Dialup, Wireless, Broadband, DSL');
INSERT INTO "web_client_beschleuniger" VALUES (15, 'RabbIT', 'Any system with Java 1.6 VM available', 'ISP', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (16, 'Squid', 'Unix (Linux, *BSD, Mac OS X, others), Windows', 'user/ISP', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (17, 'Toonel', 'Windows, Linux, Mac OS, Symbian, WindowsMobile', 'user/ISP', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (18, 'WinGate', 'Windows (2000 onwards)', 'All', 'Any');
INSERT INTO "web_client_beschleuniger" VALUES (19, 'Ziproxy', 'Unix (Linux, *BSD, Mac OS X, others)', 'ISP', 'Any');

INSERT INTO "browser" VALUES (1, 'Internet Explorer', 28.96);
INSERT INTO "browser" VALUES (2, 'Firefox', 18.11);
INSERT INTO "browser" VALUES (3, 'Safari', 8.54);
INSERT INTO "browser" VALUES (4, 'Opera', 1.2);

INSERT INTO "beschleuniger_kompatibler_browser" VALUES (1, 1, 1995);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (1, 2, 1996);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (2, 3, 1996);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (2, 4, 2000);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (3, 1, 2005);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (3, 2, 2007);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (3, 3, 2008);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (4, 4, 2009);
INSERT INTO "beschleuniger_kompatibler_browser" VALUES (9, 1, 2010);

COMMIT;