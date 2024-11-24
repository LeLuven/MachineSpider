CREATE TABLE "scientists"
(
	"ssn"  INT,
	"name" CHAR(30) NOT NULL,
	PRIMARY KEY ("ssn")
);

CREATE TABLE "projekte"
(
	"code"    CHAR(4),
	"name"    CHAR(50) NOT NULL,
	"stunden" INT,
	PRIMARY KEY ("code")
);

CREATE TABLE "zugeordnet_zu"
(
	"wissenschaftler" INT NOT NULL,
	"projekt"         CHAR(4) NOT NULL,
	PRIMARY KEY ("wissenschaftler", "projekt"),
	FOREIGN KEY ("wissenschaftler") REFERENCES "scientists" ("ssn"),
	FOREIGN KEY ("projekt") REFERENCES "projekte" ("code")
);

BEGIN TRANSACTION;
INSERT INTO "scientists" VALUES (123234877, 'Michael Rogers');
INSERT INTO "scientists" VALUES (152934485, 'Anand Manikutty');
INSERT INTO "scientists" VALUES (222364883, 'Carol Smith');
INSERT INTO "scientists" VALUES (326587417, 'Joe Stevens');
INSERT INTO "scientists" VALUES (332154719, 'Mary-Anne Foster');
INSERT INTO "scientists" VALUES (332569843, 'George ODonnell');
INSERT INTO "scientists" VALUES (546523478, 'John Doe');
INSERT INTO "scientists" VALUES (631231482, 'David Smith');
INSERT INTO "scientists" VALUES (654873219, 'Zacary Efron');
INSERT INTO "scientists" VALUES (745685214, 'Eric Goldsmith');
INSERT INTO "scientists" VALUES (845657245, 'Elizabeth Doe');
INSERT INTO "scientists" VALUES (845657246, 'Kumar Swamy');

INSERT INTO "projekte" VALUES ('AeH1', 'Winds: Studying Bernoullis Principle', 156);
INSERT INTO "projekte" VALUES ('AeH2', 'Aerodynamics and Bridge Design', 189);
INSERT INTO "projekte" VALUES ('AeH3', 'Aerodynamics and Gas Mileage', 256);
INSERT INTO "projekte" VALUES ('AeH4', 'Aerodynamics and Ice Hockey', 789);
INSERT INTO "projekte" VALUES ('AeH5', 'Aerodynamics of a Football', 98);
INSERT INTO "projekte" VALUES ('AeH6', 'Aerodynamics of Air Hockey', 89);
INSERT INTO "projekte" VALUES ('Ast1', 'A Matter of Time', 112);
INSERT INTO "projekte" VALUES ('Ast2', 'A Puzzling Parallax', 299);
INSERT INTO "projekte" VALUES ('Ast3', 'Build Your Own Telescope', 6546);
INSERT INTO "projekte" VALUES ('Bte1', 'Juicy: Extracting Apple Juice with Pectinase', 321);
INSERT INTO "projekte" VALUES ('Bte2', 'A Magnetic Primer Designer', 9684);
INSERT INTO "projekte" VALUES ('Bte3', 'Bacterial Transformation Efficiency', 321);
INSERT INTO "projekte" VALUES ('Che1', 'A Silver-Cleaning Battery', 545);
INSERT INTO "projekte" VALUES ('Che2', 'A Soluble Separation Solution', 778);

INSERT INTO "zugeordnet_zu" VALUES (123234877, 'AeH1');
INSERT INTO "zugeordnet_zu" VALUES (152934485, 'AeH3');
INSERT INTO "zugeordnet_zu" VALUES (222364883, 'Ast3');
INSERT INTO "zugeordnet_zu" VALUES (326587417, 'Ast3');
INSERT INTO "zugeordnet_zu" VALUES (332154719, 'Bte1');
INSERT INTO "zugeordnet_zu" VALUES (546523478, 'Che1');
INSERT INTO "zugeordnet_zu" VALUES (631231482, 'Ast3');
INSERT INTO "zugeordnet_zu" VALUES (654873219, 'Che1');
INSERT INTO "zugeordnet_zu" VALUES (745685214, 'AeH3');
INSERT INTO "zugeordnet_zu" VALUES (845657245, 'Ast1');
INSERT INTO "zugeordnet_zu" VALUES (845657246, 'Ast2');
INSERT INTO "zugeordnet_zu" VALUES (332569843, 'AeH4');

COMMIT;