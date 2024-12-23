CREATE TABLE "regionen"
(
	"region_id"   DECIMAL(5,0) NOT NULL,
	"region_name" VARCHAR(25) DEFAULT NULL,
	PRIMARY KEY ("region_id")
);

CREATE TABLE "abteilungen"
(
	"abteilung_id"   DECIMAL(4,0) NOT NULL DEFAULT '0',
	"abteilungsname" VARCHAR(30) NOT NULL,
	"manager_id"     DECIMAL(6,0) DEFAULT NULL,
	"ort_id"         DECIMAL(4,0) DEFAULT NULL,
	PRIMARY KEY ("abteilung_id")
);

CREATE TABLE "jobs"
(
	"job_id"           VARCHAR(10) NOT NULL DEFAULT '',
	"job_title"        VARCHAR(35) NOT NULL,
	"min_gehalt"       DECIMAL(6,0) DEFAULT NULL,
	"maximales_gehalt" DECIMAL(6,0) DEFAULT NULL,
	PRIMARY KEY ("job_id")
);

CREATE TABLE "länder"
(
	"land_id"   VARCHAR(2) NOT NULL,
	"land_name" VARCHAR(40) DEFAULT NULL,
	"region_id" DECIMAL(10,0) DEFAULT NULL,
	PRIMARY KEY ("land_id"),
	FOREIGN KEY ("region_id") REFERENCES "regionen" ("region_id")
);

CREATE TABLE "mitarbeiter"
(
	"arbeitnehmer_id"   DECIMAL(6,0) NOT NULL DEFAULT '0',
	"vorname"           VARCHAR(20) DEFAULT NULL,
	"nachname"          VARCHAR(25) NOT NULL,
	"email"             VARCHAR(25) NOT NULL,
	"telefonnummer"     VARCHAR(20) DEFAULT NULL,
	"einstellungsdatum" DATE NOT NULL,
	"job_id"            VARCHAR(10) NOT NULL,
	"gehalt"            DECIMAL(8,2) DEFAULT NULL,
	"provisions_pct"    DECIMAL(2,2) DEFAULT NULL,
	"manager_id"        DECIMAL(6,0) DEFAULT NULL,
	"abteilung_id"      DECIMAL(4,0) DEFAULT NULL,
	PRIMARY KEY ("arbeitnehmer_id"),
	FOREIGN KEY ("job_id") REFERENCES "jobs" ("job_id"),
	FOREIGN KEY ("abteilung_id") REFERENCES "abteilungen" ("abteilung_id")
);

CREATE TABLE "standorte"
(
	"ort_id"             DECIMAL(4,0) NOT NULL DEFAULT '0',
	"straßenadresse"     VARCHAR(40) DEFAULT NULL,
	"postleitzahl"       VARCHAR(12) DEFAULT NULL,
	"stadt"              VARCHAR(30) NOT NULL,
	"bundesland_provinz" VARCHAR(25) DEFAULT NULL,
	"land_id"            VARCHAR(2) DEFAULT NULL,
	PRIMARY KEY ("ort_id"),
	FOREIGN KEY ("land_id") REFERENCES "länder" ("land_id")
);

CREATE TABLE "job_history"
(
	"arbeitnehmer_id" DECIMAL(6,0) NOT NULL,
	"startdatum"      DATE NOT NULL,
	"end_date"        DATE NOT NULL,
	"job_id"          VARCHAR(10) NOT NULL,
	"abteilung_id"    DECIMAL(4,0) DEFAULT NULL,
	PRIMARY KEY ("arbeitnehmer_id", "startdatum"),
	FOREIGN KEY ("arbeitnehmer_id") REFERENCES "mitarbeiter" ("arbeitnehmer_id"),
	FOREIGN KEY ("job_id") REFERENCES "jobs" ("job_id"),
	FOREIGN KEY ("abteilung_id") REFERENCES "abteilungen" ("abteilung_id")
);

BEGIN TRANSACTION;
INSERT INTO "regionen" VALUES (1, 'Europe\r');
INSERT INTO "regionen" VALUES (2, 'Americas\r');
INSERT INTO "regionen" VALUES (3, 'Asia\r');
INSERT INTO "regionen" VALUES (4, 'Middle East and Africa\r');

INSERT INTO "abteilungen" VALUES (10, 'Administration', 200, 1700);
INSERT INTO "abteilungen" VALUES (20, 'Marketing', 201, 1800);
INSERT INTO "abteilungen" VALUES (30, 'Purchasing', 114, 1700);
INSERT INTO "abteilungen" VALUES (40, 'Human Resources', 203, 2400);
INSERT INTO "abteilungen" VALUES (50, 'Shipping', 121, 1500);
INSERT INTO "abteilungen" VALUES (60, 'IT', 103, 1400);
INSERT INTO "abteilungen" VALUES (70, 'Public Relations', 204, 2700);
INSERT INTO "abteilungen" VALUES (80, 'Sales', 145, 2500);
INSERT INTO "abteilungen" VALUES (90, 'Executive', 100, 1700);
INSERT INTO "abteilungen" VALUES (100, 'Finance', 108, 1700);
INSERT INTO "abteilungen" VALUES (110, 'Accounting', 205, 1700);
INSERT INTO "abteilungen" VALUES (120, 'Treasury', 0, 1700);
INSERT INTO "abteilungen" VALUES (130, 'Corporate Tax', 0, 1700);
INSERT INTO "abteilungen" VALUES (140, 'Control And Credit', 0, 1700);
INSERT INTO "abteilungen" VALUES (150, 'Shareholder Services', 0, 1700);
INSERT INTO "abteilungen" VALUES (160, 'Benefits', 0, 1700);
INSERT INTO "abteilungen" VALUES (170, 'Manufacturing', 0, 1700);
INSERT INTO "abteilungen" VALUES (180, 'Construction', 0, 1700);
INSERT INTO "abteilungen" VALUES (190, 'Contracting', 0, 1700);
INSERT INTO "abteilungen" VALUES (200, 'Operations', 0, 1700);
INSERT INTO "abteilungen" VALUES (210, 'IT Support', 0, 1700);
INSERT INTO "abteilungen" VALUES (220, 'NOC', 0, 1700);
INSERT INTO "abteilungen" VALUES (230, 'IT Helpdesk', 0, 1700);
INSERT INTO "abteilungen" VALUES (240, 'Government Sales', 0, 1700);
INSERT INTO "abteilungen" VALUES (250, 'Retail Sales', 0, 1700);
INSERT INTO "abteilungen" VALUES (260, 'Recruiting', 0, 1700);
INSERT INTO "abteilungen" VALUES (270, 'Payroll', 0, 1700);

INSERT INTO "jobs" VALUES ('AD_PRES', 'President', 20000, 40000);
INSERT INTO "jobs" VALUES ('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO "jobs" VALUES ('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO "jobs" VALUES ('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO "jobs" VALUES ('FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO "jobs" VALUES ('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO "jobs" VALUES ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO "jobs" VALUES ('SA_MAN', 'Sales Manager', 10000, 20000);
INSERT INTO "jobs" VALUES ('SA_REP', 'Sales Representative', 6000, 12000);
INSERT INTO "jobs" VALUES ('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO "jobs" VALUES ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO "jobs" VALUES ('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO "jobs" VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO "jobs" VALUES ('SH_CLERK', 'Shipping Clerk', 2500, 5500);
INSERT INTO "jobs" VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO "jobs" VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO "jobs" VALUES ('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO "jobs" VALUES ('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO "jobs" VALUES ('PR_REP', 'Public Relations Representative', 4500, 10500);

INSERT INTO "länder" VALUES ('AR', 'Argentina', 2);
INSERT INTO "länder" VALUES ('AU', 'Australia', 3);
INSERT INTO "länder" VALUES ('BE', 'Belgium', 1);
INSERT INTO "länder" VALUES ('BR', 'Brazil', 2);
INSERT INTO "länder" VALUES ('CA', 'Canada', 2);
INSERT INTO "länder" VALUES ('CH', 'Switzerland', 1);
INSERT INTO "länder" VALUES ('CN', 'China', 3);
INSERT INTO "länder" VALUES ('DE', 'Germany', 1);
INSERT INTO "länder" VALUES ('DK', 'Denmark', 1);
INSERT INTO "länder" VALUES ('EG', 'Egypt', 4);
INSERT INTO "länder" VALUES ('FR', 'France', 1);
INSERT INTO "länder" VALUES ('HK', 'HongKong', 3);
INSERT INTO "länder" VALUES ('IL', 'Israel', 4);
INSERT INTO "länder" VALUES ('IN', 'India', 3);
INSERT INTO "länder" VALUES ('IT', 'Italy', 1);
INSERT INTO "länder" VALUES ('JP', 'Japan', 3);
INSERT INTO "länder" VALUES ('KW', 'Kuwait', 4);
INSERT INTO "länder" VALUES ('MX', 'Mexico', 2);
INSERT INTO "länder" VALUES ('NG', 'Nigeria', 4);
INSERT INTO "länder" VALUES ('NL', 'Netherlands', 1);
INSERT INTO "länder" VALUES ('SG', 'Singapore', 3);
INSERT INTO "länder" VALUES ('UK', 'United Kingdom', 1);
INSERT INTO "länder" VALUES ('US', 'United States of America', 2);
INSERT INTO "länder" VALUES ('ZM', 'Zambia', 4);
INSERT INTO "länder" VALUES ('ZW', 'Zimbabwe', 4);

INSERT INTO "mitarbeiter" VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000, 0, 0, 90);
INSERT INTO "mitarbeiter" VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', 17000, 0, 100, 90);
INSERT INTO "mitarbeiter" VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', 17000, 0, 100, 90);
INSERT INTO "mitarbeiter" VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', 9000, 0, 102, 60);
INSERT INTO "mitarbeiter" VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', 6000, 0, 103, 60);
INSERT INTO "mitarbeiter" VALUES (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', 4800, 0, 103, 60);
INSERT INTO "mitarbeiter" VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', 4800, 0, 103, 60);
INSERT INTO "mitarbeiter" VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', 4200, 0, 103, 60);
INSERT INTO "mitarbeiter" VALUES (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', 12000, 0, 101, 100);
INSERT INTO "mitarbeiter" VALUES (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', 9000, 0, 108, 100);
INSERT INTO "mitarbeiter" VALUES (110, 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', 8200, 0, 108, 100);
INSERT INTO "mitarbeiter" VALUES (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', 7700, 0, 108, 100);
INSERT INTO "mitarbeiter" VALUES (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', 7800, 0, 108, 100);
INSERT INTO "mitarbeiter" VALUES (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', 6900, 0, 108, 100);
INSERT INTO "mitarbeiter" VALUES (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', 11000, 0, 100, 30);
INSERT INTO "mitarbeiter" VALUES (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', 3100, 0, 114, 30);
INSERT INTO "mitarbeiter" VALUES (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', 2900, 0, 114, 30);
INSERT INTO "mitarbeiter" VALUES (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', 2800, 0, 114, 30);
INSERT INTO "mitarbeiter" VALUES (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', 2600, 0, 114, 30);
INSERT INTO "mitarbeiter" VALUES (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', 2500, 0, 114, 30);
INSERT INTO "mitarbeiter" VALUES (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', 8000, 0, 100, 50);
INSERT INTO "mitarbeiter" VALUES (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', 8200, 0, 100, 50);
INSERT INTO "mitarbeiter" VALUES (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', 7900, 0, 100, 50);
INSERT INTO "mitarbeiter" VALUES (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', 6500, 0, 100, 50);
INSERT INTO "mitarbeiter" VALUES (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', 5800, 0, 100, 50);
INSERT INTO "mitarbeiter" VALUES (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', 3200, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', 2700, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', 2400, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', 2200, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', 3300, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', 2800, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', 2500, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', 2100, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', 3300, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', 2900, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', 2400, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', 2200, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', 3600, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', 3200, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (139, 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', 2700, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', 2500, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', 3500, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', 3100, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', 2600, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', 2500, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', 14000, 0.4, 100, 80);
INSERT INTO "mitarbeiter" VALUES (146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', 13500, 0.3, 100, 80);
INSERT INTO "mitarbeiter" VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', 12000, 0.3, 100, 80);
INSERT INTO "mitarbeiter" VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', 11000, 0.3, 100, 80);
INSERT INTO "mitarbeiter" VALUES (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', 10500, 0.2, 100, 80);
INSERT INTO "mitarbeiter" VALUES (150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', 10000, 0.3, 145, 80);
INSERT INTO "mitarbeiter" VALUES (151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', 9500, 0.25, 145, 80);
INSERT INTO "mitarbeiter" VALUES (152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', 9000, 0.25, 145, 80);
INSERT INTO "mitarbeiter" VALUES (153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', 8000, 0.2, 145, 80);
INSERT INTO "mitarbeiter" VALUES (154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', 7500, 0.2, 145, 80);
INSERT INTO "mitarbeiter" VALUES (155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', 7000, 0.15, 145, 80);
INSERT INTO "mitarbeiter" VALUES (156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', 10000, 0.35, 146, 80);
INSERT INTO "mitarbeiter" VALUES (157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', 9500, 0.35, 146, 80);
INSERT INTO "mitarbeiter" VALUES (158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', 9000, 0.35, 146, 80);
INSERT INTO "mitarbeiter" VALUES (159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', 8000, 0.3, 146, 80);
INSERT INTO "mitarbeiter" VALUES (160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', 7500, 0.3, 146, 80);
INSERT INTO "mitarbeiter" VALUES (161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', 7000, 0.25, 146, 80);
INSERT INTO "mitarbeiter" VALUES (162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', 10500, 0.25, 147, 80);
INSERT INTO "mitarbeiter" VALUES (163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', 9500, 0.15, 147, 80);
INSERT INTO "mitarbeiter" VALUES (164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', 7200, 0.1, 147, 80);
INSERT INTO "mitarbeiter" VALUES (165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', 6800, 0.1, 147, 80);
INSERT INTO "mitarbeiter" VALUES (166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', 6400, 0.1, 147, 80);
INSERT INTO "mitarbeiter" VALUES (167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', 6200, 0.1, 147, 80);
INSERT INTO "mitarbeiter" VALUES (168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', 11500, 0.25, 148, 80);
INSERT INTO "mitarbeiter" VALUES (169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', 10000, 0.2, 148, 80);
INSERT INTO "mitarbeiter" VALUES (170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', 9600, 0.2, 148, 80);
INSERT INTO "mitarbeiter" VALUES (171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', 7400, 0.15, 148, 80);
INSERT INTO "mitarbeiter" VALUES (172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', 7300, 0.15, 148, 80);
INSERT INTO "mitarbeiter" VALUES (173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', 6100, 0.1, 148, 80);
INSERT INTO "mitarbeiter" VALUES (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', 11000, 0.3, 149, 80);
INSERT INTO "mitarbeiter" VALUES (175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', 8800, 0.25, 149, 80);
INSERT INTO "mitarbeiter" VALUES (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', 8600, 0.2, 149, 80);
INSERT INTO "mitarbeiter" VALUES (177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', 8400, 0.2, 149, 80);
INSERT INTO "mitarbeiter" VALUES (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', 7000, 0.15, 149, 0);
INSERT INTO "mitarbeiter" VALUES (179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', 6200, 0.1, 149, 80);
INSERT INTO "mitarbeiter" VALUES (180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', 3200, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', 3100, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', 2500, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', 2800, 0, 120, 50);
INSERT INTO "mitarbeiter" VALUES (184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', 4200, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', 4100, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', 3400, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', 3000, 0, 121, 50);
INSERT INTO "mitarbeiter" VALUES (188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', 3800, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', 3600, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', 2900, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', 2500, 0, 122, 50);
INSERT INTO "mitarbeiter" VALUES (192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', 4000, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', 3900, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', 3200, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', 2800, 0, 123, 50);
INSERT INTO "mitarbeiter" VALUES (196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', 3100, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', 3000, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', 2600, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', 2600, 0, 124, 50);
INSERT INTO "mitarbeiter" VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', 4400, 0, 101, 10);
INSERT INTO "mitarbeiter" VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', 13000, 0, 100, 20);
INSERT INTO "mitarbeiter" VALUES (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', 6000, 0, 201, 20);
INSERT INTO "mitarbeiter" VALUES (203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', 6500, 0, 101, 40);
INSERT INTO "mitarbeiter" VALUES (204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', 10000, 0, 101, 70);
INSERT INTO "mitarbeiter" VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', 12000, 0, 101, 110);
INSERT INTO "mitarbeiter" VALUES (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', 8300, 0, 205, 110);

INSERT INTO "standorte" VALUES (1000, '1297 Via Cola di Rie', '989', 'Roma', '', 'IT');
INSERT INTO "standorte" VALUES (1100, '93091 Calle della Testa', '10934', 'Venice', '', 'IT');
INSERT INTO "standorte" VALUES (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO "standorte" VALUES (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP');
INSERT INTO "standorte" VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO "standorte" VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO "standorte" VALUES (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO "standorte" VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO "standorte" VALUES (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO "standorte" VALUES (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO "standorte" VALUES (2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN');
INSERT INTO "standorte" VALUES (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO "standorte" VALUES (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO "standorte" VALUES (2300, '198 Clementi North', '540198', 'Singapore', '', 'SG');
INSERT INTO "standorte" VALUES (2400, '8204 Arthur St', '', 'London', '', 'UK');
INSERT INTO "standorte" VALUES (2500, '"Magdalen Centre', ' The Oxford ', 'OX9 9ZB', 'Oxford', 'Ox');
INSERT INTO "standorte" VALUES (2600, '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO "standorte" VALUES (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO "standorte" VALUES (2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO "standorte" VALUES (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO "standorte" VALUES (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO "standorte" VALUES (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO "standorte" VALUES (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', '"Distrito Federal', '"');

INSERT INTO "job_history" VALUES (102, '1993-01-13', '1998-07-24', 'IT_PROG', 60);
INSERT INTO "job_history" VALUES (101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110);
INSERT INTO "job_history" VALUES (101, '1993-10-28', '1997-03-15', 'AC_MGR', 110);
INSERT INTO "job_history" VALUES (201, '1996-02-17', '1999-12-19', 'MK_REP', 20);
INSERT INTO "job_history" VALUES (114, '1998-03-24', '1999-12-31', 'ST_CLERK', 50);
INSERT INTO "job_history" VALUES (122, '1999-01-01', '1999-12-31', 'ST_CLERK', 50);
INSERT INTO "job_history" VALUES (200, '1987-09-17', '1993-06-17', 'AD_ASST', 90);
INSERT INTO "job_history" VALUES (176, '1998-03-24', '1998-12-31', 'SA_REP', 80);
INSERT INTO "job_history" VALUES (176, '1999-01-01', '1999-12-31', 'SA_MAN', 80);
INSERT INTO "job_history" VALUES (200, '1994-07-01', '1998-12-31', 'AC_ACCOUNT', 90);
INSERT INTO "job_history" VALUES (0, '0000-00-00', '0000-00-00', '', 0);

COMMIT;