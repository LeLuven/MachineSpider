CREATE TABLE "arbeitet_an"
(
	"mitarbeiter_ssn" INTEGER,
	"projektnummer"   INTEGER,
	"stunden"         REAL,
	PRIMARY KEY ("mitarbeiter_ssn", "projektnummer")
);

CREATE TABLE "mitarbeiter"
(
	"vorname"       TEXT,
	"minit"         TEXT,
	"nachname"      TEXT,
	"ssn"           INTEGER,
	"geburtsdatum"  TEXT,
	"anschrift"     TEXT,
	"geschlecht"    TEXT,
	"gehalt"        INTEGER,
	"super_ssn"     INTEGER,
	"department no" INTEGER,
	PRIMARY KEY ("ssn")
);

CREATE TABLE "abteilung"
(
	"abteilungsname"                TEXT,
	"abteilungsnummer"              INTEGER,
	"vorgesetzter_ssn"              INTEGER,
	"anfangsdatum_des_vorgesetzten" TEXT,
	PRIMARY KEY ("abteilungsnummer")
);

CREATE TABLE "projekt"
(
	"abhängiger_name"     TEXT,
	"abhängige_nummer"    INTEGER,
	"abhängiger_standort" TEXT,
	"abteilungsnummer"    INTEGER,
	PRIMARY KEY ("abhängige_nummer")
);

CREATE TABLE "abhängig"
(
	"mitarbeiter_ssn" INTEGER,
	"abhängiger_name" TEXT,
	"geschlecht"      TEXT,
	"geburtsdatum"    TEXT,
	"beziehung"       TEXT,
	PRIMARY KEY ("mitarbeiter_ssn", "abhängiger_name")
);

CREATE TABLE "abteilung_standorte"
(
	"abteilungsnummer"   INTEGER,
	"abteilungsstandort" TEXT,
	PRIMARY KEY ("abteilungsnummer", "abteilungsstandort")
);

BEGIN TRANSACTION;
INSERT INTO "arbeitet_an" VALUES (123456789, 1, 32.5);
INSERT INTO "arbeitet_an" VALUES (123456789, 2, 7.5);
INSERT INTO "arbeitet_an" VALUES (666884444, 3, 40.0);
INSERT INTO "arbeitet_an" VALUES (453453453, 1, 20.0);
INSERT INTO "arbeitet_an" VALUES (453453453, 2, 20.0);
INSERT INTO "arbeitet_an" VALUES (333445555, 2, 10.0);
INSERT INTO "arbeitet_an" VALUES (333445555, 3, 10.0);
INSERT INTO "arbeitet_an" VALUES (333445555, 10, 10.0);
INSERT INTO "arbeitet_an" VALUES (333445555, 20, 10.0);
INSERT INTO "arbeitet_an" VALUES (999887777, 30, 30.0);
INSERT INTO "arbeitet_an" VALUES (999887777, 10, 10.0);
INSERT INTO "arbeitet_an" VALUES (987987987, 10, 35.0);
INSERT INTO "arbeitet_an" VALUES (987987987, 30, 5.0);
INSERT INTO "arbeitet_an" VALUES (987654321, 30, 20.0);
INSERT INTO "arbeitet_an" VALUES (987654321, 20, 15.0);
INSERT INTO "arbeitet_an" VALUES (888665555, 20, NULL);

INSERT INTO "mitarbeiter" VALUES ('Jonh', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, 333445555, 5);
INSERT INTO "mitarbeiter" VALUES ('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555, 5);
INSERT INTO "mitarbeiter" VALUES ('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 333445555, 5);
INSERT INTO "mitarbeiter" VALUES ('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, 333445555, 5);
INSERT INTO "mitarbeiter" VALUES ('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1);
INSERT INTO "mitarbeiter" VALUES ('Jennifier', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555, 4);
INSERT INTO "mitarbeiter" VALUES ('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, 987654321, 4);
INSERT INTO "mitarbeiter" VALUES ('Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, 987654321, 4);

INSERT INTO "abteilung" VALUES ('Headquarters', 1, 888665555, '1981-06-19');
INSERT INTO "abteilung" VALUES ('Administration', 4, 987654321, '1995-01-01');
INSERT INTO "abteilung" VALUES ('Research', 5, 333445555, '1988-05-22');

INSERT INTO "projekt" VALUES ('ProductX', 1, 'Bellaire', 5);
INSERT INTO "projekt" VALUES ('ProductY', 2, 'Sugarland', 5);
INSERT INTO "projekt" VALUES ('ProductZ', 3, 'Houston', 5);
INSERT INTO "projekt" VALUES ('Computerization', 10, 'Stafford', 4);
INSERT INTO "projekt" VALUES ('Reorganization', 20, 'Houston', 1);
INSERT INTO "projekt" VALUES ('Newbenefits', 30, 'Stafford', 4);

INSERT INTO "abhängig" VALUES (333445555, 'Alice', 'F', '1986-04-05', 'Daughter');
INSERT INTO "abhängig" VALUES (333445555, 'Theodore', 'M', '1983-10-25', 'Son');
INSERT INTO "abhängig" VALUES (333445555, 'Joy', 'F', '1958-05-03', 'Spouse');
INSERT INTO "abhängig" VALUES (987654321, 'Abner', 'M', '1942-02-28', 'Spouse');
INSERT INTO "abhängig" VALUES (123456789, 'Michael', 'M', '1988-01-04', 'Son');
INSERT INTO "abhängig" VALUES (123456789, 'Alice', 'F', '1988-12-30', 'Daughter');
INSERT INTO "abhängig" VALUES (123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse');

INSERT INTO "abteilung_standorte" VALUES (1, 'Houston');
INSERT INTO "abteilung_standorte" VALUES (4, 'Stafford');
INSERT INTO "abteilung_standorte" VALUES (5, 'Bellaire');
INSERT INTO "abteilung_standorte" VALUES (5, 'Sugarland');
INSERT INTO "abteilung_standorte" VALUES (5, 'Houston');

COMMIT;