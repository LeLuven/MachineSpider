CREATE TABLE "vorwahl_staat"
(
	"vorwahl" INTEGER NOT NULL,
	"staat"   VARCHAR(2) NOT NULL,
	PRIMARY KEY ("vorwahl")
);

CREATE TABLE "wettbewerbe"
(
	"teilnehmernummer" INTEGER,
	"kandidatenname"   VARCHAR(50) NOT NULL,
	PRIMARY KEY ("teilnehmernummer")
);

CREATE TABLE "stimmen"
(
	"stimme_id"        INTEGER NOT NULL,
	"telefonnummer"    INTEGER NOT NULL,
	"staat"            VARCHAR(2) NOT NULL,
	"teilnehmernummer" INTEGER NOT NULL,
	"created"          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ("stimme_id"),
	FOREIGN KEY ("staat") REFERENCES "vorwahl_staat" ("staat"),
	FOREIGN KEY ("teilnehmernummer") REFERENCES "wettbewerbe" ("teilnehmernummer")
);

BEGIN TRANSACTION;
INSERT INTO "vorwahl_staat" VALUES (201, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (202, 'DC');
INSERT INTO "vorwahl_staat" VALUES (203, 'CT');
INSERT INTO "vorwahl_staat" VALUES (205, 'AL');
INSERT INTO "vorwahl_staat" VALUES (206, 'WA');
INSERT INTO "vorwahl_staat" VALUES (207, 'ME');
INSERT INTO "vorwahl_staat" VALUES (208, 'ID');
INSERT INTO "vorwahl_staat" VALUES (209, 'CA');
INSERT INTO "vorwahl_staat" VALUES (210, 'TX');
INSERT INTO "vorwahl_staat" VALUES (212, 'NY');
INSERT INTO "vorwahl_staat" VALUES (213, 'CA');
INSERT INTO "vorwahl_staat" VALUES (214, 'TX');
INSERT INTO "vorwahl_staat" VALUES (215, 'PA');
INSERT INTO "vorwahl_staat" VALUES (216, 'OH');
INSERT INTO "vorwahl_staat" VALUES (217, 'IL');
INSERT INTO "vorwahl_staat" VALUES (218, 'MN');
INSERT INTO "vorwahl_staat" VALUES (219, 'IN');
INSERT INTO "vorwahl_staat" VALUES (224, 'IL');
INSERT INTO "vorwahl_staat" VALUES (225, 'LA');
INSERT INTO "vorwahl_staat" VALUES (228, 'MS');
INSERT INTO "vorwahl_staat" VALUES (229, 'GA');
INSERT INTO "vorwahl_staat" VALUES (231, 'MI');
INSERT INTO "vorwahl_staat" VALUES (234, 'OH');
INSERT INTO "vorwahl_staat" VALUES (236, 'VA');
INSERT INTO "vorwahl_staat" VALUES (239, 'FL');
INSERT INTO "vorwahl_staat" VALUES (240, 'MD');
INSERT INTO "vorwahl_staat" VALUES (248, 'MI');
INSERT INTO "vorwahl_staat" VALUES (251, 'AL');
INSERT INTO "vorwahl_staat" VALUES (252, 'NC');
INSERT INTO "vorwahl_staat" VALUES (253, 'WA');
INSERT INTO "vorwahl_staat" VALUES (254, 'TX');
INSERT INTO "vorwahl_staat" VALUES (256, 'AL');
INSERT INTO "vorwahl_staat" VALUES (260, 'IN');
INSERT INTO "vorwahl_staat" VALUES (262, 'WI');
INSERT INTO "vorwahl_staat" VALUES (267, 'PA');
INSERT INTO "vorwahl_staat" VALUES (269, 'MI');
INSERT INTO "vorwahl_staat" VALUES (270, 'KY');
INSERT INTO "vorwahl_staat" VALUES (276, 'VA');
INSERT INTO "vorwahl_staat" VALUES (278, 'MI');
INSERT INTO "vorwahl_staat" VALUES (281, 'TX');
INSERT INTO "vorwahl_staat" VALUES (283, 'OH');
INSERT INTO "vorwahl_staat" VALUES (301, 'MD');
INSERT INTO "vorwahl_staat" VALUES (302, 'DE');
INSERT INTO "vorwahl_staat" VALUES (303, 'CO');
INSERT INTO "vorwahl_staat" VALUES (304, 'WV');
INSERT INTO "vorwahl_staat" VALUES (305, 'FL');
INSERT INTO "vorwahl_staat" VALUES (307, 'WY');
INSERT INTO "vorwahl_staat" VALUES (308, 'NE');
INSERT INTO "vorwahl_staat" VALUES (309, 'IL');
INSERT INTO "vorwahl_staat" VALUES (310, 'CA');
INSERT INTO "vorwahl_staat" VALUES (312, 'IL');
INSERT INTO "vorwahl_staat" VALUES (313, 'MI');
INSERT INTO "vorwahl_staat" VALUES (314, 'MO');
INSERT INTO "vorwahl_staat" VALUES (315, 'NY');
INSERT INTO "vorwahl_staat" VALUES (316, 'KS');
INSERT INTO "vorwahl_staat" VALUES (317, 'IN');
INSERT INTO "vorwahl_staat" VALUES (318, 'LA');
INSERT INTO "vorwahl_staat" VALUES (319, 'IA');
INSERT INTO "vorwahl_staat" VALUES (320, 'MN');
INSERT INTO "vorwahl_staat" VALUES (321, 'FL');
INSERT INTO "vorwahl_staat" VALUES (323, 'CA');
INSERT INTO "vorwahl_staat" VALUES (325, 'TX');
INSERT INTO "vorwahl_staat" VALUES (330, 'OH');
INSERT INTO "vorwahl_staat" VALUES (331, 'IL');
INSERT INTO "vorwahl_staat" VALUES (334, 'AL');
INSERT INTO "vorwahl_staat" VALUES (336, 'NC');
INSERT INTO "vorwahl_staat" VALUES (337, 'LA');
INSERT INTO "vorwahl_staat" VALUES (339, 'MA');
INSERT INTO "vorwahl_staat" VALUES (341, 'CA');
INSERT INTO "vorwahl_staat" VALUES (347, 'NY');
INSERT INTO "vorwahl_staat" VALUES (351, 'MA');
INSERT INTO "vorwahl_staat" VALUES (352, 'FL');
INSERT INTO "vorwahl_staat" VALUES (360, 'WA');
INSERT INTO "vorwahl_staat" VALUES (361, 'TX');
INSERT INTO "vorwahl_staat" VALUES (369, 'CA');
INSERT INTO "vorwahl_staat" VALUES (380, 'OH');
INSERT INTO "vorwahl_staat" VALUES (385, 'UT');
INSERT INTO "vorwahl_staat" VALUES (386, 'FL');
INSERT INTO "vorwahl_staat" VALUES (401, 'RI');
INSERT INTO "vorwahl_staat" VALUES (402, 'NE');
INSERT INTO "vorwahl_staat" VALUES (404, 'GA');
INSERT INTO "vorwahl_staat" VALUES (405, 'OK');
INSERT INTO "vorwahl_staat" VALUES (406, 'MT');
INSERT INTO "vorwahl_staat" VALUES (407, 'FL');
INSERT INTO "vorwahl_staat" VALUES (408, 'CA');
INSERT INTO "vorwahl_staat" VALUES (409, 'TX');
INSERT INTO "vorwahl_staat" VALUES (410, 'MD');
INSERT INTO "vorwahl_staat" VALUES (412, 'PA');
INSERT INTO "vorwahl_staat" VALUES (413, 'MA');
INSERT INTO "vorwahl_staat" VALUES (414, 'WI');
INSERT INTO "vorwahl_staat" VALUES (415, 'CA');
INSERT INTO "vorwahl_staat" VALUES (417, 'MO');
INSERT INTO "vorwahl_staat" VALUES (419, 'OH');
INSERT INTO "vorwahl_staat" VALUES (423, 'TN');
INSERT INTO "vorwahl_staat" VALUES (424, 'CA');
INSERT INTO "vorwahl_staat" VALUES (425, 'WA');
INSERT INTO "vorwahl_staat" VALUES (430, 'TX');
INSERT INTO "vorwahl_staat" VALUES (432, 'TX');
INSERT INTO "vorwahl_staat" VALUES (434, 'VA');
INSERT INTO "vorwahl_staat" VALUES (435, 'UT');
INSERT INTO "vorwahl_staat" VALUES (440, 'OH');
INSERT INTO "vorwahl_staat" VALUES (442, 'CA');
INSERT INTO "vorwahl_staat" VALUES (443, 'MD');
INSERT INTO "vorwahl_staat" VALUES (464, 'IL');
INSERT INTO "vorwahl_staat" VALUES (469, 'TX');
INSERT INTO "vorwahl_staat" VALUES (470, 'GA');
INSERT INTO "vorwahl_staat" VALUES (475, 'CT');
INSERT INTO "vorwahl_staat" VALUES (478, 'GA');
INSERT INTO "vorwahl_staat" VALUES (479, 'AR');
INSERT INTO "vorwahl_staat" VALUES (480, 'AZ');
INSERT INTO "vorwahl_staat" VALUES (484, 'PA');
INSERT INTO "vorwahl_staat" VALUES (501, 'AR');
INSERT INTO "vorwahl_staat" VALUES (502, 'KY');
INSERT INTO "vorwahl_staat" VALUES (503, 'OR');
INSERT INTO "vorwahl_staat" VALUES (504, 'LA');
INSERT INTO "vorwahl_staat" VALUES (505, 'NM');
INSERT INTO "vorwahl_staat" VALUES (507, 'MN');
INSERT INTO "vorwahl_staat" VALUES (508, 'MA');
INSERT INTO "vorwahl_staat" VALUES (509, 'WA');
INSERT INTO "vorwahl_staat" VALUES (510, 'CA');
INSERT INTO "vorwahl_staat" VALUES (512, 'TX');
INSERT INTO "vorwahl_staat" VALUES (513, 'OH');
INSERT INTO "vorwahl_staat" VALUES (515, 'IA');
INSERT INTO "vorwahl_staat" VALUES (516, 'NY');
INSERT INTO "vorwahl_staat" VALUES (517, 'MI');
INSERT INTO "vorwahl_staat" VALUES (518, 'NY');
INSERT INTO "vorwahl_staat" VALUES (520, 'AZ');
INSERT INTO "vorwahl_staat" VALUES (530, 'CA');
INSERT INTO "vorwahl_staat" VALUES (540, 'VA');
INSERT INTO "vorwahl_staat" VALUES (541, 'OR');
INSERT INTO "vorwahl_staat" VALUES (551, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (557, 'MO');
INSERT INTO "vorwahl_staat" VALUES (559, 'CA');
INSERT INTO "vorwahl_staat" VALUES (561, 'FL');
INSERT INTO "vorwahl_staat" VALUES (562, 'CA');
INSERT INTO "vorwahl_staat" VALUES (563, 'IA');
INSERT INTO "vorwahl_staat" VALUES (564, 'WA');
INSERT INTO "vorwahl_staat" VALUES (567, 'OH');
INSERT INTO "vorwahl_staat" VALUES (570, 'PA');
INSERT INTO "vorwahl_staat" VALUES (571, 'VA');
INSERT INTO "vorwahl_staat" VALUES (573, 'MO');
INSERT INTO "vorwahl_staat" VALUES (574, 'IN');
INSERT INTO "vorwahl_staat" VALUES (575, 'NM');
INSERT INTO "vorwahl_staat" VALUES (580, 'OK');
INSERT INTO "vorwahl_staat" VALUES (585, 'NY');
INSERT INTO "vorwahl_staat" VALUES (586, 'MI');
INSERT INTO "vorwahl_staat" VALUES (601, 'MS');
INSERT INTO "vorwahl_staat" VALUES (602, 'AZ');
INSERT INTO "vorwahl_staat" VALUES (603, 'NH');
INSERT INTO "vorwahl_staat" VALUES (605, 'SD');
INSERT INTO "vorwahl_staat" VALUES (606, 'KY');
INSERT INTO "vorwahl_staat" VALUES (607, 'NY');
INSERT INTO "vorwahl_staat" VALUES (608, 'WI');
INSERT INTO "vorwahl_staat" VALUES (609, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (610, 'PA');
INSERT INTO "vorwahl_staat" VALUES (612, 'MN');
INSERT INTO "vorwahl_staat" VALUES (614, 'OH');
INSERT INTO "vorwahl_staat" VALUES (615, 'TN');
INSERT INTO "vorwahl_staat" VALUES (616, 'MI');
INSERT INTO "vorwahl_staat" VALUES (617, 'MA');
INSERT INTO "vorwahl_staat" VALUES (618, 'IL');
INSERT INTO "vorwahl_staat" VALUES (619, 'CA');
INSERT INTO "vorwahl_staat" VALUES (620, 'KS');
INSERT INTO "vorwahl_staat" VALUES (623, 'AZ');
INSERT INTO "vorwahl_staat" VALUES (626, 'CA');
INSERT INTO "vorwahl_staat" VALUES (627, 'CA');
INSERT INTO "vorwahl_staat" VALUES (628, 'CA');
INSERT INTO "vorwahl_staat" VALUES (630, 'IL');
INSERT INTO "vorwahl_staat" VALUES (631, 'NY');
INSERT INTO "vorwahl_staat" VALUES (636, 'MO');
INSERT INTO "vorwahl_staat" VALUES (641, 'IA');
INSERT INTO "vorwahl_staat" VALUES (646, 'NY');
INSERT INTO "vorwahl_staat" VALUES (650, 'CA');
INSERT INTO "vorwahl_staat" VALUES (651, 'MN');
INSERT INTO "vorwahl_staat" VALUES (660, 'MO');
INSERT INTO "vorwahl_staat" VALUES (661, 'CA');
INSERT INTO "vorwahl_staat" VALUES (662, 'MS');
INSERT INTO "vorwahl_staat" VALUES (669, 'CA');
INSERT INTO "vorwahl_staat" VALUES (678, 'GA');
INSERT INTO "vorwahl_staat" VALUES (679, 'MI');
INSERT INTO "vorwahl_staat" VALUES (682, 'TX');
INSERT INTO "vorwahl_staat" VALUES (689, 'FL');
INSERT INTO "vorwahl_staat" VALUES (701, 'ND');
INSERT INTO "vorwahl_staat" VALUES (702, 'NV');
INSERT INTO "vorwahl_staat" VALUES (703, 'VA');
INSERT INTO "vorwahl_staat" VALUES (704, 'NC');
INSERT INTO "vorwahl_staat" VALUES (706, 'GA');
INSERT INTO "vorwahl_staat" VALUES (707, 'CA');
INSERT INTO "vorwahl_staat" VALUES (708, 'IL');
INSERT INTO "vorwahl_staat" VALUES (712, 'IA');
INSERT INTO "vorwahl_staat" VALUES (713, 'TX');
INSERT INTO "vorwahl_staat" VALUES (714, 'CA');
INSERT INTO "vorwahl_staat" VALUES (715, 'WI');
INSERT INTO "vorwahl_staat" VALUES (716, 'NY');
INSERT INTO "vorwahl_staat" VALUES (717, 'PA');
INSERT INTO "vorwahl_staat" VALUES (718, 'NY');
INSERT INTO "vorwahl_staat" VALUES (719, 'CO');
INSERT INTO "vorwahl_staat" VALUES (720, 'CO');
INSERT INTO "vorwahl_staat" VALUES (724, 'PA');
INSERT INTO "vorwahl_staat" VALUES (727, 'FL');
INSERT INTO "vorwahl_staat" VALUES (731, 'TN');
INSERT INTO "vorwahl_staat" VALUES (732, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (734, 'MI');
INSERT INTO "vorwahl_staat" VALUES (737, 'TX');
INSERT INTO "vorwahl_staat" VALUES (740, 'OH');
INSERT INTO "vorwahl_staat" VALUES (747, 'CA');
INSERT INTO "vorwahl_staat" VALUES (754, 'FL');
INSERT INTO "vorwahl_staat" VALUES (757, 'VA');
INSERT INTO "vorwahl_staat" VALUES (760, 'CA');
INSERT INTO "vorwahl_staat" VALUES (762, 'GA');
INSERT INTO "vorwahl_staat" VALUES (763, 'MN');
INSERT INTO "vorwahl_staat" VALUES (764, 'CA');
INSERT INTO "vorwahl_staat" VALUES (765, 'IN');
INSERT INTO "vorwahl_staat" VALUES (769, 'MS');
INSERT INTO "vorwahl_staat" VALUES (770, 'GA');
INSERT INTO "vorwahl_staat" VALUES (772, 'FL');
INSERT INTO "vorwahl_staat" VALUES (773, 'IL');
INSERT INTO "vorwahl_staat" VALUES (774, 'MA');
INSERT INTO "vorwahl_staat" VALUES (775, 'NV');
INSERT INTO "vorwahl_staat" VALUES (779, 'IL');
INSERT INTO "vorwahl_staat" VALUES (781, 'MA');
INSERT INTO "vorwahl_staat" VALUES (785, 'KS');
INSERT INTO "vorwahl_staat" VALUES (786, 'FL');
INSERT INTO "vorwahl_staat" VALUES (801, 'UT');
INSERT INTO "vorwahl_staat" VALUES (802, 'VT');
INSERT INTO "vorwahl_staat" VALUES (803, 'SC');
INSERT INTO "vorwahl_staat" VALUES (804, 'VA');
INSERT INTO "vorwahl_staat" VALUES (805, 'CA');
INSERT INTO "vorwahl_staat" VALUES (806, 'TX');
INSERT INTO "vorwahl_staat" VALUES (808, 'HI');
INSERT INTO "vorwahl_staat" VALUES (810, 'MI');
INSERT INTO "vorwahl_staat" VALUES (812, 'IN');
INSERT INTO "vorwahl_staat" VALUES (813, 'FL');
INSERT INTO "vorwahl_staat" VALUES (814, 'PA');
INSERT INTO "vorwahl_staat" VALUES (815, 'IL');
INSERT INTO "vorwahl_staat" VALUES (816, 'MO');
INSERT INTO "vorwahl_staat" VALUES (817, 'TX');
INSERT INTO "vorwahl_staat" VALUES (818, 'CA');
INSERT INTO "vorwahl_staat" VALUES (828, 'NC');
INSERT INTO "vorwahl_staat" VALUES (830, 'TX');
INSERT INTO "vorwahl_staat" VALUES (831, 'CA');
INSERT INTO "vorwahl_staat" VALUES (832, 'TX');
INSERT INTO "vorwahl_staat" VALUES (835, 'PA');
INSERT INTO "vorwahl_staat" VALUES (843, 'SC');
INSERT INTO "vorwahl_staat" VALUES (845, 'NY');
INSERT INTO "vorwahl_staat" VALUES (847, 'IL');
INSERT INTO "vorwahl_staat" VALUES (848, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (850, 'FL');
INSERT INTO "vorwahl_staat" VALUES (856, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (857, 'MA');
INSERT INTO "vorwahl_staat" VALUES (858, 'CA');
INSERT INTO "vorwahl_staat" VALUES (859, 'KY');
INSERT INTO "vorwahl_staat" VALUES (860, 'CT');
INSERT INTO "vorwahl_staat" VALUES (862, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (863, 'FL');
INSERT INTO "vorwahl_staat" VALUES (864, 'SC');
INSERT INTO "vorwahl_staat" VALUES (865, 'TN');
INSERT INTO "vorwahl_staat" VALUES (870, 'AR');
INSERT INTO "vorwahl_staat" VALUES (872, 'IL');
INSERT INTO "vorwahl_staat" VALUES (878, 'PA');
INSERT INTO "vorwahl_staat" VALUES (901, 'TN');
INSERT INTO "vorwahl_staat" VALUES (903, 'TX');
INSERT INTO "vorwahl_staat" VALUES (904, 'FL');
INSERT INTO "vorwahl_staat" VALUES (906, 'MI');
INSERT INTO "vorwahl_staat" VALUES (907, 'AK');
INSERT INTO "vorwahl_staat" VALUES (908, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (909, 'CA');
INSERT INTO "vorwahl_staat" VALUES (910, 'NC');
INSERT INTO "vorwahl_staat" VALUES (912, 'GA');
INSERT INTO "vorwahl_staat" VALUES (913, 'KS');
INSERT INTO "vorwahl_staat" VALUES (914, 'NY');
INSERT INTO "vorwahl_staat" VALUES (915, 'TX');
INSERT INTO "vorwahl_staat" VALUES (916, 'CA');
INSERT INTO "vorwahl_staat" VALUES (917, 'NY');
INSERT INTO "vorwahl_staat" VALUES (918, 'OK');
INSERT INTO "vorwahl_staat" VALUES (919, 'NC');
INSERT INTO "vorwahl_staat" VALUES (920, 'WI');
INSERT INTO "vorwahl_staat" VALUES (925, 'CA');
INSERT INTO "vorwahl_staat" VALUES (927, 'FL');
INSERT INTO "vorwahl_staat" VALUES (928, 'AZ');
INSERT INTO "vorwahl_staat" VALUES (931, 'TN');
INSERT INTO "vorwahl_staat" VALUES (935, 'CA');
INSERT INTO "vorwahl_staat" VALUES (936, 'TX');
INSERT INTO "vorwahl_staat" VALUES (937, 'OH');
INSERT INTO "vorwahl_staat" VALUES (940, 'TX');
INSERT INTO "vorwahl_staat" VALUES (941, 'FL');
INSERT INTO "vorwahl_staat" VALUES (947, 'MI');
INSERT INTO "vorwahl_staat" VALUES (949, 'CA');
INSERT INTO "vorwahl_staat" VALUES (951, 'CA');
INSERT INTO "vorwahl_staat" VALUES (952, 'MN');
INSERT INTO "vorwahl_staat" VALUES (954, 'FL');
INSERT INTO "vorwahl_staat" VALUES (956, 'TX');
INSERT INTO "vorwahl_staat" VALUES (957, 'NM');
INSERT INTO "vorwahl_staat" VALUES (959, 'CT');
INSERT INTO "vorwahl_staat" VALUES (970, 'CO');
INSERT INTO "vorwahl_staat" VALUES (971, 'OR');
INSERT INTO "vorwahl_staat" VALUES (972, 'TX');
INSERT INTO "vorwahl_staat" VALUES (973, 'NJ');
INSERT INTO "vorwahl_staat" VALUES (975, 'MO');
INSERT INTO "vorwahl_staat" VALUES (978, 'MA');
INSERT INTO "vorwahl_staat" VALUES (979, 'TX');
INSERT INTO "vorwahl_staat" VALUES (980, 'NC');
INSERT INTO "vorwahl_staat" VALUES (984, 'NC');
INSERT INTO "vorwahl_staat" VALUES (985, 'LA');
INSERT INTO "vorwahl_staat" VALUES (989, 'MI');

INSERT INTO "wettbewerbe" VALUES (1, 'Edwina Burnam');
INSERT INTO "wettbewerbe" VALUES (2, 'Tabatha Gehling');
INSERT INTO "wettbewerbe" VALUES (3, 'Kelly Clauss');
INSERT INTO "wettbewerbe" VALUES (4, 'Jessie Alloway');
INSERT INTO "wettbewerbe" VALUES (5, 'Alana Bregman');
INSERT INTO "wettbewerbe" VALUES (6, 'Jessie Eichman');
INSERT INTO "wettbewerbe" VALUES (7, 'Allie Rogalski');
INSERT INTO "wettbewerbe" VALUES (8, 'Nita Coster');
INSERT INTO "wettbewerbe" VALUES (9, 'Kurt Walser');
INSERT INTO "wettbewerbe" VALUES (10, 'Ericka Dieter');
INSERT INTO "wettbewerbe" VALUES (11, 'Loraine NygrenTania Mattioli');

INSERT INTO "stimmen" VALUES (1, 7182887233, 'NY', 2, '2018-03-09 19:03:21');
INSERT INTO "stimmen" VALUES (2, 7148407040, 'NY', 3, '2018-03-09 19:03:36');
INSERT INTO "stimmen" VALUES (3, 6209222712, 'CA', 3, '2018-03-09 19:03:39');
INSERT INTO "stimmen" VALUES (5, 5112677315, 'NJ
', 5, '2018-03-09 19:03:40');

COMMIT;