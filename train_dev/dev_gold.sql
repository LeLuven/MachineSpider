SELECT count(*) FROM sänger	concert_singer
SELECT count(*) FROM sänger	concert_singer
SELECT name , land , alter FROM sänger ORDER BY alter DESC	concert_singer
SELECT name , land , alter FROM sänger ORDER BY alter DESC	concert_singer
SELECT avg(alter) , min(alter) , max(alter) FROM sänger WHERE land = 'France'	concert_singer
SELECT avg(alter) , min(alter) , max(alter) FROM sänger WHERE land = 'France'	concert_singer
SELECT songname , jahr_der_veröffentlichung_des_liedes FROM sänger ORDER BY alter LIMIT 1	concert_singer
SELECT songname , jahr_der_veröffentlichung_des_liedes FROM sänger ORDER BY alter LIMIT 1	concert_singer
SELECT DISTINCT land FROM sänger WHERE alter > 20	concert_singer
SELECT DISTINCT land FROM sänger WHERE alter > 20	concert_singer
SELECT land , count(*) FROM sänger GROUP BY land	concert_singer
SELECT land , count(*) FROM sänger GROUP BY land	concert_singer
SELECT songname FROM sänger WHERE alter > (SELECT avg(alter) FROM sänger)	concert_singer
SELECT songname FROM sänger WHERE alter > (SELECT avg(alter) FROM sänger)	concert_singer
SELECT ort , name FROM stadion WHERE kapazität BETWEEN 5000 AND 10000	concert_singer
SELECT ort , name FROM stadion WHERE kapazität BETWEEN 5000 AND 10000	concert_singer
select max(kapazität), durchschnitt from stadion	concert_singer
select avg(kapazität) , max(kapazität) from stadion	concert_singer
SELECT name , kapazität FROM stadion ORDER BY durchschnitt DESC LIMIT 1	concert_singer
SELECT name , kapazität FROM stadion ORDER BY durchschnitt DESC LIMIT 1	concert_singer
SELECT count(*) FROM konzert WHERE jahr = 2014 OR jahr = 2015	concert_singer
SELECT count(*) FROM konzert WHERE jahr = 2014 OR jahr = 2015	concert_singer
SELECT T2.name , count(*) FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id GROUP BY T1.stadion_id	concert_singer
SELECT T2.name , count(*) FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id GROUP BY T1.stadion_id	concert_singer
SELECT T2.name , T2.kapazität FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr >= 2014 GROUP BY T2.stadion_id ORDER BY count(*) DESC LIMIT 1	concert_singer
select t2.name , t2.kapazität from konzert as t1 join stadion as t2 on t1.stadion_id = t2.stadion_id where t1.jahr > 2013 group by t2.stadion_id order by count(*) desc limit 1	concert_singer
SELECT jahr FROM konzert GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT jahr FROM konzert GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT name FROM stadion WHERE stadion_id NOT IN (SELECT stadion_id FROM konzert)	concert_singer
SELECT name FROM stadion WHERE stadion_id NOT IN (SELECT stadion_id FROM konzert)	concert_singer
SELECT land FROM sänger WHERE alter > 40 INTERSECT SELECT land FROM sänger WHERE alter < 30	concert_singer
SELECT name FROM stadion EXCEPT SELECT T2.name FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2014	concert_singer
SELECT name FROM stadion EXCEPT SELECT T2.name FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2014	concert_singer
SELECT T2.konzertname , T2.thema , count(*) FROM sänger_im_konzert AS T1 JOIN konzert AS T2 ON T1.konzert_id = T2.konzert_id GROUP BY T2.konzert_id	concert_singer
select t2.konzertname , t2.thema , count(*) from sänger_im_konzert as t1 join konzert as t2 on t1.konzert_id = t2.konzert_id group by t2.konzert_id	concert_singer
SELECT T2.name , count(*) FROM sänger_im_konzert AS T1 JOIN sänger AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T2.sänger_id	concert_singer
SELECT T2.name , count(*) FROM sänger_im_konzert AS T1 JOIN sänger AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T2.sänger_id	concert_singer
SELECT T2.name FROM sänger_im_konzert AS T1 JOIN sänger AS T2 ON T1.sänger_id = T2.sänger_id JOIN konzert AS T3 ON T1.konzert_id = T3.konzert_id WHERE T3.jahr = 2014	concert_singer
SELECT T2.name FROM sänger_im_konzert AS T1 JOIN sänger AS T2 ON T1.sänger_id = T2.sänger_id JOIN konzert AS T3 ON T1.konzert_id = T3.konzert_id WHERE T3.jahr = 2014	concert_singer
SELECT name , land FROM sänger WHERE songname LIKE '%Hey%'	concert_singer
SELECT name , land FROM sänger WHERE songname LIKE '%Hey%'	concert_singer
SELECT T2.name , T2.ort FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2014 INTERSECT SELECT T2.name , T2.ort FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2015	concert_singer
SELECT T2.name , T2.ort FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2014 INTERSECT SELECT T2.name , T2.ort FROM konzert AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.stadion_id WHERE T1.jahr = 2015	concert_singer
select count(*) from konzert where stadion_id = (select stadion_id from stadion order by kapazität desc limit 1)	concert_singer
select count(*) from konzert where stadion_id = (select stadion_id from stadion order by kapazität desc limit 1)	concert_singer
SELECT count(*) FROM haustiere WHERE gewicht > 10	pets_1
SELECT count(*) FROM haustiere WHERE gewicht > 10	pets_1
SELECT gewicht FROM haustiere ORDER BY haustier_alter LIMIT 1	pets_1
SELECT gewicht FROM haustiere ORDER BY haustier_alter LIMIT 1	pets_1
SELECT max(gewicht) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT max(gewicht) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT count(*) FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id WHERE T1.alter > 20	pets_1
SELECT count(*) FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id WHERE T1.alter > 20	pets_1
SELECT count(*) FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T2.haustier_id = T3.haustier_id WHERE T1.geschlecht = 'F' AND T3.haustier_typ = 'dog'	pets_1
SELECT count(*) FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T2.haustier_id = T3.haustier_id WHERE T1.geschlecht = 'F' AND T3.haustier_typ = 'dog'	pets_1
SELECT count(DISTINCT haustier_typ) FROM haustiere	pets_1
SELECT count(DISTINCT haustier_typ) FROM haustiere	pets_1
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat' OR T3.haustier_typ = 'dog'	pets_1
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat' OR T3.haustier_typ = 'dog'	pets_1
select t1.vorname from schüler as t1 join hat_haustier as t2 on t1.student_id = t2.student_id join haustiere as t3 on t3.haustier_id = t2.haustier_id where t3.haustier_typ = 'cat' intersect select t1.vorname from schüler as t1 join hat_haustier as t2 on t1.student_id = t2.student_id join haustiere as t3 on t3.haustier_id = t2.haustier_id where t3.haustier_typ = 'dog'	pets_1
SELECT T1.vorname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat' INTERSECT SELECT T1.vorname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'dog'	pets_1
SELECT hauptfach , alter FROM schüler WHERE student_id NOT IN (SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat')	pets_1
SELECT hauptfach , alter FROM schüler WHERE student_id NOT IN (SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat')	pets_1
SELECT student_id FROM schüler EXCEPT SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat'	pets_1
SELECT student_id FROM schüler EXCEPT SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat'	pets_1
SELECT T1.vorname , T1.alter FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'dog' AND T1.student_id NOT IN (SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat')	pets_1
SELECT T1.vorname , T1.alter FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'dog' AND T1.student_id NOT IN (SELECT T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_typ = 'cat')	pets_1
SELECT haustier_typ , gewicht FROM haustiere ORDER BY haustier_alter LIMIT 1	pets_1
SELECT haustier_typ , gewicht FROM haustiere ORDER BY haustier_alter LIMIT 1	pets_1
SELECT haustier_id , gewicht FROM haustiere WHERE haustier_alter > 1	pets_1
SELECT haustier_id , gewicht FROM haustiere WHERE haustier_alter > 1	pets_1
SELECT avg(haustier_alter) , max(haustier_alter) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT avg(haustier_alter) , max(haustier_alter) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT avg(gewicht) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT avg(gewicht) , haustier_typ FROM haustiere GROUP BY haustier_typ	pets_1
SELECT DISTINCT T1.vorname , T1.alter FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id	pets_1
SELECT DISTINCT T1.vorname , T1.alter FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id	pets_1
SELECT T2.haustier_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id WHERE T1.nachname = 'Smith'	pets_1
SELECT T2.haustier_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id WHERE T1.nachname = 'Smith'	pets_1
SELECT count(*) , T1.student_id FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	pets_1
select count(*) , t1.student_id from schüler as t1 join hat_haustier as t2 on t1.student_id = t2.student_id group by t1.student_id	pets_1
SELECT T1.vorname , T1.geschlecht FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 1	pets_1
SELECT T1.vorname , T1.geschlecht FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) > 1	pets_1
SELECT T1.nachname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_alter = 3 AND T3.haustier_typ = 'cat'	pets_1
SELECT T1.nachname FROM schüler AS T1 JOIN hat_haustier AS T2 ON T1.student_id = T2.student_id JOIN haustiere AS T3 ON T3.haustier_id = T2.haustier_id WHERE T3.haustier_alter = 3 AND T3.haustier_typ = 'cat'	pets_1
select avg(alter) from schüler where student_id not in (select student_id from hat_haustier)	pets_1
select avg(alter) from schüler where student_id not in (select student_id from hat_haustier)	pets_1
SELECT count(*) FROM kontinente;	car_1
SELECT count(*) FROM kontinente;	car_1
SELECT T1.cont_id , T1.kontinent , count(*) FROM kontinente AS T1 JOIN länder AS T2 ON T1.cont_id = T2.kontinent GROUP BY T1.cont_id;	car_1
SELECT T1.cont_id , T1.kontinent , count(*) FROM kontinente AS T1 JOIN länder AS T2 ON T1.cont_id = T2.kontinent GROUP BY T1.cont_id;	car_1
SELECT count(*) FROM länder;	car_1
SELECT count(*) FROM länder;	car_1
SELECT T1.vollständiger_name , T1.id , count(*) FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller GROUP BY T1.id;	car_1
SELECT T1.vollständiger_name , T1.id , count(*) FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller GROUP BY T1.id;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id ORDER BY T2.ps ASC LIMIT 1;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id ORDER BY T2.ps ASC LIMIT 1;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.gewicht < (SELECT avg(gewicht) FROM autos_daten)	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.gewicht < (SELECT avg(gewicht) FROM autos_daten)	car_1
SELECT DISTINCT T1.hersteller FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller JOIN autonamen AS T3 ON T2.modell = T3.modell JOIN autos_daten AS T4 ON T3.marke_id = T4.id WHERE T4.jahr = '1970';	car_1
SELECT DISTINCT T1.hersteller FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller JOIN autonamen AS T3 ON T2.modell = T3.modell JOIN autos_daten AS T4 ON T3.marke_id = T4.id WHERE T4.jahr = '1970';	car_1
SELECT T2.marke , T1.jahr FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T1.jahr = (SELECT min(jahr) FROM autos_daten);	car_1
SELECT T2.marke , T1.jahr FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T1.jahr = (SELECT min(jahr) FROM autos_daten);	car_1
SELECT DISTINCT T1.modell FROM modellliste AS T1 JOIN autonamen AS T2 ON T1.modell = T2.modell JOIN autos_daten AS T3 ON T2.marke_id = T3.id WHERE T3.jahr > 1980;	car_1
SELECT DISTINCT T1.modell FROM modellliste AS T1 JOIN autonamen AS T2 ON T1.modell = T2.modell JOIN autos_daten AS T3 ON T2.marke_id = T3.id WHERE T3.jahr > 1980;	car_1
SELECT T1.kontinent , count(*) FROM kontinente AS T1 JOIN länder AS T2 ON T1.cont_id = T2.kontinent JOIN autohersteller AS T3 ON T2.land_id = T3.land GROUP BY T1.kontinent;	car_1
SELECT T1.kontinent , count(*) FROM kontinente AS T1 JOIN länder AS T2 ON T1.cont_id = T2.kontinent JOIN autohersteller AS T3 ON T2.land_id = T3.land GROUP BY T1.kontinent;	car_1
SELECT T2.landesname FROM autohersteller AS T1 JOIN länder AS T2 ON T1.land = T2.land_id GROUP BY T1.land ORDER BY Count(*) DESC LIMIT 1;	car_1
SELECT T2.landesname FROM autohersteller AS T1 JOIN länder AS T2 ON T1.land = T2.land_id GROUP BY T1.land ORDER BY Count(*) DESC LIMIT 1;	car_1
select count(*) , t2.vollständiger_name from modellliste as t1 join autohersteller as t2 on t1.hersteller = t2.id group by t2.id;	car_1
SELECT Count(*) , T2.vollständiger_name , T2.id FROM modellliste AS T1 JOIN autohersteller AS T2 ON T1.hersteller = T2.id GROUP BY T2.id;	car_1
SELECT T1.beschleunigung FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T2.marke = 'amc hornet sportabout (sw)';	car_1
SELECT T1.beschleunigung FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T2.marke = 'amc hornet sportabout (sw)';	car_1
SELECT count(*) FROM autohersteller AS T1 JOIN länder AS T2 ON T1.land = T2.land_id WHERE T2.landesname = 'france';	car_1
SELECT count(*) FROM autohersteller AS T1 JOIN länder AS T2 ON T1.land = T2.land_id WHERE T2.landesname = 'france';	car_1
SELECT count(*) FROM modellliste AS T1 JOIN autohersteller AS T2 ON T1.hersteller = T2.id JOIN länder AS T3 ON T2.land = T3.land_id WHERE T3.landesname = 'usa';	car_1
SELECT count(*) FROM modellliste AS T1 JOIN autohersteller AS T2 ON T1.hersteller = T2.id JOIN länder AS T3 ON T2.land = T3.land_id WHERE T3.landesname = 'usa';	car_1
SELECT avg(mpg) FROM autos_daten WHERE zylinder = 4;	car_1
SELECT avg(mpg) FROM autos_daten WHERE zylinder = 4;	car_1
select min(gewicht) from autos_daten where zylinder = 8 and jahr = 1974	car_1
select min(gewicht) from autos_daten where zylinder = 8 and jahr = 1974	car_1
SELECT hersteller , modell FROM modellliste;	car_1
SELECT hersteller , modell FROM modellliste;	car_1
SELECT T1.landesname , T1.land_id FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land GROUP BY T1.land_id HAVING count(*) >= 1;	car_1
SELECT T1.landesname , T1.land_id FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land GROUP BY T1.land_id HAVING count(*) >= 1;	car_1
SELECT count(*) FROM autos_daten WHERE ps > 150;	car_1
SELECT count(*) FROM autos_daten WHERE ps > 150;	car_1
SELECT avg(gewicht) , jahr FROM autos_daten GROUP BY jahr;	car_1
SELECT avg(gewicht) , jahr FROM autos_daten GROUP BY jahr;	car_1
SELECT T1.landesname FROM länder AS T1 JOIN kontinente AS T2 ON T1.kontinent = T2.cont_id JOIN autohersteller AS T3 ON T1.land_id = T3.land WHERE T2.kontinent = 'europe' GROUP BY T1.landesname HAVING count(*) >= 3;	car_1
SELECT T1.landesname FROM länder AS T1 JOIN kontinente AS T2 ON T1.kontinent = T2.cont_id JOIN autohersteller AS T3 ON T1.land_id = T3.land WHERE T2.kontinent = 'europe' GROUP BY T1.landesname HAVING count(*) >= 3;	car_1
SELECT T2.ps , T1.marke FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.zylinder = 3 ORDER BY T2.ps DESC LIMIT 1;	car_1
SELECT T2.ps , T1.marke FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.zylinder = 3 ORDER BY T2.ps DESC LIMIT 1;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id ORDER BY T2.mpg DESC LIMIT 1;	car_1
select t1.modell from autonamen as t1 join autos_daten as t2 on t1.marke_id = t2.id order by t2.mpg desc limit 1;	car_1
SELECT avg(ps) FROM autos_daten WHERE jahr < 1980;	car_1
select avg(ps) from autos_daten where jahr < 1980;	car_1
SELECT avg(T2.edispl) FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T1.modell = 'volvo';	car_1
SELECT avg(T2.edispl) FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T1.modell = 'volvo';	car_1
SELECT max(beschleunigung) , zylinder FROM autos_daten GROUP BY zylinder;	car_1
SELECT max(beschleunigung) , zylinder FROM autos_daten GROUP BY zylinder;	car_1
SELECT modell FROM autonamen GROUP BY modell ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT modell FROM autonamen GROUP BY modell ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT count(*) FROM autos_daten WHERE zylinder > 4;	car_1
SELECT count(*) FROM autos_daten WHERE zylinder > 4;	car_1
SELECT count(*) FROM autos_daten WHERE jahr = 1980;	car_1
SELECT count(*) FROM autos_daten WHERE jahr = 1980;	car_1
SELECT count(*) FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller WHERE T1.vollständiger_name = 'American Motor Company';	car_1
SELECT count(*) FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller WHERE T1.vollständiger_name = 'American Motor Company';	car_1
SELECT T1.vollständiger_name , T1.id FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller GROUP BY T1.id HAVING count(*) > 3;	car_1
SELECT T1.vollständiger_name , T1.id FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller GROUP BY T1.id HAVING count(*) > 3;	car_1
SELECT DISTINCT T2.modell FROM autonamen AS T1 JOIN modellliste AS T2 ON T1.modell = T2.modell JOIN autohersteller AS T3 ON T2.hersteller = T3.id JOIN autos_daten AS T4 ON T1.marke_id = T4.id WHERE T3.vollständiger_name = 'General Motors' OR T4.gewicht > 3500;	car_1
SELECT DISTINCT T2.modell FROM autonamen AS T1 JOIN modellliste AS T2 ON T1.modell = T2.modell JOIN autohersteller AS T3 ON T2.hersteller = T3.id JOIN autos_daten AS T4 ON T1.marke_id = T4.id WHERE T3.vollständiger_name = 'General Motors' OR T4.gewicht > 3500;	car_1
select distinct jahr from autos_daten where gewicht between 3000 and 4000;	car_1
select distinct jahr from autos_daten where gewicht between 3000 and 4000;	car_1
SELECT T1.ps FROM autos_daten AS T1 ORDER BY T1.beschleunigung DESC LIMIT 1;	car_1
SELECT T1.ps FROM autos_daten AS T1 ORDER BY T1.beschleunigung DESC LIMIT 1;	car_1
SELECT T1.zylinder FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T2.modell = 'volvo' ORDER BY T1.beschleunigung ASC LIMIT 1;	car_1
SELECT T1.zylinder FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T2.modell = 'volvo' ORDER BY T1.beschleunigung ASC LIMIT 1;	car_1
SELECT COUNT(*) FROM autos_daten WHERE beschleunigung > ( SELECT beschleunigung FROM autos_daten ORDER BY ps DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM autos_daten WHERE beschleunigung > ( SELECT beschleunigung FROM autos_daten ORDER BY ps DESC LIMIT 1 );	car_1
select count(*) from länder as t1 join autohersteller as t2 on t1.land_id = t2.land group by t1.land_id having count(*) > 2	car_1
select count(*) from länder as t1 join autohersteller as t2 on t1.land_id = t2.land group by t1.land_id having count(*) > 2	car_1
SELECT COUNT(*) FROM autos_daten WHERE zylinder > 6;	car_1
SELECT COUNT(*) FROM autos_daten WHERE zylinder > 6;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.zylinder = 4 ORDER BY T2.ps DESC LIMIT 1;	car_1
SELECT T1.modell FROM autonamen AS T1 JOIN autos_daten AS T2 ON T1.marke_id = T2.id WHERE T2.zylinder = 4 ORDER BY T2.ps DESC LIMIT 1;	car_1
SELECT T2.marke_id , T2.marke FROM autos_daten AS T1 JOIN autonamen AS T2 ON T1.id = T2.marke_id WHERE T1.ps > (SELECT min(ps) FROM autos_daten) AND T1.zylinder <= 3;	car_1
select t2.marke_id , t2.marke from autos_daten as t1 join autonamen as t2 on t1.id = t2.marke_id where t1.ps > (select min(ps) from autos_daten) and t1.zylinder < 4;	car_1
select max(mpg) from autos_daten where zylinder = 8 or jahr < 1980	car_1
select max(mpg) from autos_daten where zylinder = 8 or jahr < 1980	car_1
SELECT DISTINCT T1.modell FROM modellliste AS T1 JOIN autonamen AS T2 ON T1.modell = T2.modell JOIN autos_daten AS T3 ON T2.marke_id = T3.id JOIN autohersteller AS T4 ON T1.hersteller = T4.id WHERE T3.gewicht < 3500 AND T4.vollständiger_name != 'Ford Motor Company';	car_1
SELECT DISTINCT T1.modell FROM modellliste AS T1 JOIN autonamen AS T2 ON T1.modell = T2.modell JOIN autos_daten AS T3 ON T2.marke_id = T3.id JOIN autohersteller AS T4 ON T1.hersteller = T4.id WHERE T3.gewicht < 3500 AND T4.vollständiger_name != 'Ford Motor Company';	car_1
SELECT landesname FROM länder EXCEPT SELECT T1.landesname FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land;	car_1
SELECT landesname FROM länder EXCEPT SELECT T1.landesname FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land;	car_1
select t1.id , t1.hersteller from autohersteller as t1 join modellliste as t2 on t1.id = t2.hersteller group by t1.id having count(*) >= 2 intersect select t1.id , t1.hersteller from autohersteller as t1 join modellliste as t2 on t1.id = t2.hersteller join autonamen as t3 on t2.modell = t3.modell group by t1.id having count(*) > 3;	car_1
SELECT T1.id , T1.hersteller FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.hersteller FROM autohersteller AS T1 JOIN modellliste AS T2 ON T1.id = T2.hersteller JOIN autonamen AS T3 ON T2.modell = T3.modell GROUP BY T1.id HAVING count(*) > 3;	car_1
SELECT T1.land_id , T1.landesname FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land GROUP BY T1.land_id HAVING count(*) > 3 UNION SELECT T1.land_id , T1.landesname FROM länder AS T1 JOIN autohersteller AS T2 ON T1.land_id = T2.land JOIN modellliste AS T3 ON T2.id = T3.hersteller WHERE T3.modell = 'fiat';	car_1
select t1.land_id , t1.landesname from länder as t1 join autohersteller as t2 on t1.land_id = t2.land group by t1.land_id having count(*) > 3 union select t1.land_id , t1.landesname from länder as t1 join autohersteller as t2 on t1.land_id = t2.land join modellliste as t3 on t2.id = t3.hersteller where t3.modell = 'fiat';	car_1
SELECT land FROM fluggesellschaften WHERE name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT land FROM fluggesellschaften WHERE name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT abkürzung FROM fluggesellschaften WHERE name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT abkürzung FROM fluggesellschaften WHERE name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT name_der_fluggesellschaft , abkürzung FROM fluggesellschaften WHERE land = "USA"	flight_2
SELECT name_der_fluggesellschaft , abkürzung FROM fluggesellschaften WHERE land = "USA"	flight_2
SELECT flughafen_code , flughafen_name FROM flughäfen WHERE stadt = "Anthony"	flight_2
SELECT flughafen_code , flughafen_name FROM flughäfen WHERE stadt = "Anthony"	flight_2
SELECT count(*) FROM fluggesellschaften	flight_2
SELECT count(*) FROM fluggesellschaften	flight_2
SELECT count(*) FROM flughäfen	flight_2
SELECT count(*) FROM flughäfen	flight_2
SELECT count(*) FROM flüge	flight_2
SELECT count(*) FROM flüge	flight_2
SELECT name_der_fluggesellschaft FROM fluggesellschaften WHERE abkürzung = "UAL"	flight_2
SELECT name_der_fluggesellschaft FROM fluggesellschaften WHERE abkürzung = "UAL"	flight_2
SELECT count(*) FROM fluggesellschaften WHERE land = "USA"	flight_2
SELECT count(*) FROM fluggesellschaften WHERE land = "USA"	flight_2
SELECT stadt , land FROM flughäfen WHERE flughafen_name = "Alton"	flight_2
SELECT stadt , land FROM flughäfen WHERE flughafen_name = "Alton"	flight_2
SELECT flughafen_name FROM flughäfen WHERE flughafen_code = "AKO"	flight_2
SELECT flughafen_name FROM flughäfen WHERE flughafen_code = "AKO"	flight_2
SELECT flughafen_name FROM flughäfen WHERE stadt = "Aberdeen"	flight_2
SELECT flughafen_name FROM flughäfen WHERE stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge WHERE quellflughafen = "APG"	flight_2
SELECT count(*) FROM flüge WHERE quellflughafen = "APG"	flight_2
SELECT count(*) FROM flüge WHERE zielflughafen = "ATO"	flight_2
SELECT count(*) FROM flüge WHERE zielflughafen = "ATO"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.quellflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.quellflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code JOIN flughäfen AS T3 ON T1.quellflughafen = T3.flughafen_code WHERE T2.stadt = "Ashley" AND T3.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code JOIN flughäfen AS T3 ON T1.quellflughafen = T3.flughafen_code WHERE T2.stadt = "Ashley" AND T3.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN fluggesellschaften AS T2 ON T1.fluggesellschaft = T2.fluggesellschaft_id WHERE T2.name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN fluggesellschaften AS T2 ON T1.fluggesellschaft = T2.fluggesellschaft_id WHERE T2.name_der_fluggesellschaft = "JetBlue Airways"	flight_2
SELECT count(*) FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T2.fluggesellschaft = T1.fluggesellschaft_id WHERE T1.name_der_fluggesellschaft = "United Airlines" AND T2.zielflughafen = "ASY"	flight_2
SELECT count(*) FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T2.fluggesellschaft = T1.fluggesellschaft_id WHERE T1.name_der_fluggesellschaft = "United Airlines" AND T2.zielflughafen = "ASY"	flight_2
SELECT count(*) FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T2.fluggesellschaft = T1.fluggesellschaft_id WHERE T1.name_der_fluggesellschaft = "United Airlines" AND T2.quellflughafen = "AHD"	flight_2
SELECT count(*) FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T2.fluggesellschaft = T1.fluggesellschaft_id WHERE T1.name_der_fluggesellschaft = "United Airlines" AND T2.quellflughafen = "AHD"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code JOIN fluggesellschaften AS T3 ON T3.fluggesellschaft_id = T1.fluggesellschaft WHERE T2.stadt = "Aberdeen" AND T3.name_der_fluggesellschaft = "United Airlines"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code JOIN fluggesellschaften AS T3 ON T3.fluggesellschaft_id = T1.fluggesellschaft WHERE T2.stadt = "Aberdeen" AND T3.name_der_fluggesellschaft = "United Airlines"	flight_2
SELECT T1.stadt FROM flughäfen AS T1 JOIN flüge AS T2 ON T1.flughafen_code = T2.zielflughafen GROUP BY T1.stadt ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.stadt FROM flughäfen AS T1 JOIN flüge AS T2 ON T1.flughafen_code = T2.zielflughafen GROUP BY T1.stadt ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.stadt FROM flughäfen AS T1 JOIN flüge AS T2 ON T1.flughafen_code = T2.quellflughafen GROUP BY T1.stadt ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.stadt FROM flughäfen AS T1 JOIN flüge AS T2 ON T1.flughafen_code = T2.quellflughafen GROUP BY T1.stadt ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.abkürzung , T1.land FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.abkürzung , T1.land FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "AHD"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "AHD"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.zielflughafen = "AHD"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.zielflughafen = "AHD"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "APG" INTERSECT SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "CVO"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "APG" INTERSECT SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "CVO"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "CVO" EXCEPT SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "APG"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "CVO" EXCEPT SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft WHERE T2.quellflughafen = "APG"	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft HAVING count(*) > 10	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft HAVING count(*) > 10	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft HAVING count(*) < 200	flight_2
SELECT T1.name_der_fluggesellschaft FROM fluggesellschaften AS T1 JOIN flüge AS T2 ON T1.fluggesellschaft_id = T2.fluggesellschaft GROUP BY T1.name_der_fluggesellschaft HAVING count(*) < 200	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN fluggesellschaften AS T2 ON T2.fluggesellschaft_id = T1.fluggesellschaft WHERE T2.name_der_fluggesellschaft = "United Airlines"	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN fluggesellschaften AS T2 ON T2.fluggesellschaft_id = T1.fluggesellschaft WHERE T2.name_der_fluggesellschaft = "United Airlines"	flight_2
SELECT flugnummer FROM flüge WHERE quellflughafen = "APG"	flight_2
SELECT flugnummer FROM flüge WHERE quellflughafen = "APG"	flight_2
SELECT flugnummer FROM flüge WHERE zielflughafen = "APG"	flight_2
SELECT flugnummer FROM flüge WHERE zielflughafen = "APG"	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.quellflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.quellflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT T1.flugnummer FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen" OR T2.stadt = "Abilene"	flight_2
SELECT count(*) FROM flüge AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen = T2.flughafen_code WHERE T2.stadt = "Aberdeen" OR T2.stadt = "Abilene"	flight_2
SELECT flughafen_name FROM flughäfen WHERE flughafen_code NOT IN (SELECT quellflughafen FROM flüge UNION SELECT zielflughafen FROM flüge)	flight_2
SELECT flughafen_name FROM flughäfen WHERE flughafen_code NOT IN (SELECT quellflughafen FROM flüge UNION SELECT zielflughafen FROM flüge)	flight_2
SELECT count(*) FROM mitarbeiter	employee_hire_evaluation
SELECT count(*) FROM mitarbeiter	employee_hire_evaluation
SELECT name FROM mitarbeiter ORDER BY alter	employee_hire_evaluation
SELECT name FROM mitarbeiter ORDER BY alter	employee_hire_evaluation
SELECT count(*) , stadt FROM mitarbeiter GROUP BY stadt	employee_hire_evaluation
SELECT count(*) , stadt FROM mitarbeiter GROUP BY stadt	employee_hire_evaluation
SELECT stadt FROM mitarbeiter WHERE alter < 30 GROUP BY stadt HAVING count(*) > 1	employee_hire_evaluation
SELECT stadt FROM mitarbeiter WHERE alter < 30 GROUP BY stadt HAVING count(*) > 1	employee_hire_evaluation
SELECT count(*) , ort FROM shop GROUP BY ort	employee_hire_evaluation
SELECT count(*) , ort FROM shop GROUP BY ort	employee_hire_evaluation
SELECT name_des_geschäftsführers , bezirk FROM shop ORDER BY anzahl_produkte DESC LIMIT 1	employee_hire_evaluation
SELECT name_des_geschäftsführers , bezirk FROM shop ORDER BY anzahl_produkte DESC LIMIT 1	employee_hire_evaluation
SELECT min(anzahl_produkte) , max(anzahl_produkte) FROM shop	employee_hire_evaluation
SELECT min(anzahl_produkte) , max(anzahl_produkte) FROM shop	employee_hire_evaluation
SELECT name , ort , bezirk FROM shop ORDER BY anzahl_produkte DESC	employee_hire_evaluation
SELECT name , ort , bezirk FROM shop ORDER BY anzahl_produkte DESC	employee_hire_evaluation
SELECT name FROM shop WHERE anzahl_produkte > (SELECT avg(anzahl_produkte) FROM shop)	employee_hire_evaluation
SELECT name FROM shop WHERE anzahl_produkte > (SELECT avg(anzahl_produkte) FROM shop)	employee_hire_evaluation
SELECT t1.name FROM mitarbeiter AS t1 JOIN auswertung AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id GROUP BY t2.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT t1.name FROM mitarbeiter AS t1 JOIN auswertung AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id GROUP BY t2.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT t1.name FROM mitarbeiter AS t1 JOIN auswertung AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id ORDER BY t2.bonus DESC LIMIT 1	employee_hire_evaluation
SELECT t1.name FROM mitarbeiter AS t1 JOIN auswertung AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id ORDER BY t2.bonus DESC LIMIT 1	employee_hire_evaluation
SELECT name FROM mitarbeiter WHERE mitarbeiter_id NOT IN (SELECT mitarbeiter_id FROM auswertung)	employee_hire_evaluation
SELECT name FROM mitarbeiter WHERE mitarbeiter_id NOT IN (SELECT mitarbeiter_id FROM auswertung)	employee_hire_evaluation
SELECT t2.name FROM einstellung AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT t2.name FROM einstellung AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM einstellung)	employee_hire_evaluation
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM einstellung)	employee_hire_evaluation
SELECT count(*) , t2.name FROM einstellung AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id GROUP BY t2.name	employee_hire_evaluation
SELECT count(*) , t2.name FROM einstellung AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id GROUP BY t2.name	employee_hire_evaluation
SELECT sum(bonus) FROM auswertung	employee_hire_evaluation
SELECT sum(bonus) FROM auswertung	employee_hire_evaluation
SELECT * FROM einstellung	employee_hire_evaluation
SELECT * FROM einstellung	employee_hire_evaluation
SELECT bezirk FROM shop WHERE anzahl_produkte < 3000 INTERSECT SELECT bezirk FROM shop WHERE anzahl_produkte > 10000	employee_hire_evaluation
SELECT bezirk FROM shop WHERE anzahl_produkte < 3000 INTERSECT SELECT bezirk FROM shop WHERE anzahl_produkte > 10000	employee_hire_evaluation
SELECT count(DISTINCT ort) FROM shop	employee_hire_evaluation
SELECT count(DISTINCT ort) FROM shop	employee_hire_evaluation
SELECT count(*) FROM dokumente	cre_doc_template_mgt
SELECT count(*) FROM dokumente	cre_doc_template_mgt
SELECT dokument_id , dokumentenname , dokumentenbeschreibung FROM dokumente	cre_doc_template_mgt
SELECT dokument_id , dokumentenname , dokumentenbeschreibung FROM dokumente	cre_doc_template_mgt
SELECT dokumentenname , vorlage_id FROM dokumente WHERE dokumentenbeschreibung LIKE "%w%"	cre_doc_template_mgt
SELECT dokumentenname , vorlage_id FROM dokumente WHERE dokumentenbeschreibung LIKE "%w%"	cre_doc_template_mgt
SELECT dokument_id , vorlage_id , dokumentenbeschreibung FROM dokumente WHERE dokumentenname = "Robbin CV"	cre_doc_template_mgt
SELECT dokument_id , vorlage_id , dokumentenbeschreibung FROM dokumente WHERE dokumentenname = "Robbin CV"	cre_doc_template_mgt
SELECT count(DISTINCT vorlage_id) FROM dokumente	cre_doc_template_mgt
SELECT count(DISTINCT vorlage_id) FROM dokumente	cre_doc_template_mgt
SELECT count(*) FROM dokumente AS T1 JOIN vorlagen AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T2.vorlagentyp_code = 'PPT'	cre_doc_template_mgt
SELECT count(*) FROM dokumente AS T1 JOIN vorlagen AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T2.vorlagentyp_code = 'PPT'	cre_doc_template_mgt
SELECT vorlage_id , count(*) FROM dokumente GROUP BY vorlage_id	cre_doc_template_mgt
SELECT vorlage_id , count(*) FROM dokumente GROUP BY vorlage_id	cre_doc_template_mgt
SELECT T1.vorlage_id , T2.vorlagentyp_code FROM dokumente AS T1 JOIN vorlagen AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlage_id ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT T1.vorlage_id , T2.vorlagentyp_code FROM dokumente AS T1 JOIN vorlagen AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlage_id ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT vorlage_id FROM dokumente GROUP BY vorlage_id HAVING count(*) > 1	cre_doc_template_mgt
SELECT vorlage_id FROM dokumente GROUP BY vorlage_id HAVING count(*) > 1	cre_doc_template_mgt
SELECT vorlage_id FROM vorlagen EXCEPT SELECT vorlage_id FROM dokumente	cre_doc_template_mgt
SELECT vorlage_id FROM vorlagen EXCEPT SELECT vorlage_id FROM dokumente	cre_doc_template_mgt
SELECT count(*) FROM vorlagen	cre_doc_template_mgt
SELECT count(*) FROM vorlagen	cre_doc_template_mgt
SELECT vorlage_id , versionsnummer , vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT vorlage_id , versionsnummer , vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT DISTINCT vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT DISTINCT vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT vorlage_id FROM vorlagen WHERE vorlagentyp_code = "PP" OR vorlagentyp_code = "PPT"	cre_doc_template_mgt
SELECT vorlage_id FROM vorlagen WHERE vorlagentyp_code = "PP" OR vorlagentyp_code = "PPT"	cre_doc_template_mgt
SELECT count(*) FROM vorlagen WHERE vorlagentyp_code = "CV"	cre_doc_template_mgt
SELECT count(*) FROM vorlagen WHERE vorlagentyp_code = "CV"	cre_doc_template_mgt
SELECT versionsnummer , vorlagentyp_code FROM vorlagen WHERE versionsnummer > 5	cre_doc_template_mgt
SELECT versionsnummer , vorlagentyp_code FROM vorlagen WHERE versionsnummer > 5	cre_doc_template_mgt
SELECT vorlagentyp_code , count(*) FROM vorlagen GROUP BY vorlagentyp_code	cre_doc_template_mgt
SELECT vorlagentyp_code , count(*) FROM vorlagen GROUP BY vorlagentyp_code	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen GROUP BY vorlagentyp_code ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen GROUP BY vorlagentyp_code ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen GROUP BY vorlagentyp_code HAVING count(*) < 3	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen GROUP BY vorlagentyp_code HAVING count(*) < 3	cre_doc_template_mgt
SELECT min(versionsnummer) , vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT min(versionsnummer) , vorlagentyp_code FROM vorlagen	cre_doc_template_mgt
SELECT T1.vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T2.dokumentenname = "Data base"	cre_doc_template_mgt
SELECT T1.vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T2.dokumentenname = "Data base"	cre_doc_template_mgt
SELECT T2.dokumentenname FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T1.vorlagentyp_code = "BK"	cre_doc_template_mgt
SELECT T2.dokumentenname FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id WHERE T1.vorlagentyp_code = "BK"	cre_doc_template_mgt
SELECT T1.vorlagentyp_code , count(*) FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlagentyp_code	cre_doc_template_mgt
SELECT T1.vorlagentyp_code , count(*) FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlagentyp_code	cre_doc_template_mgt
SELECT T1.vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlagentyp_code ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT T1.vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id GROUP BY T1.vorlagentyp_code ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen EXCEPT SELECT vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id	cre_doc_template_mgt
SELECT vorlagentyp_code FROM vorlagen EXCEPT SELECT vorlagentyp_code FROM vorlagen AS T1 JOIN dokumente AS T2 ON T1.vorlage_id = T2.vorlage_id	cre_doc_template_mgt
SELECT vorlagentyp_code , schablonentyp_beschreibung FROM referenzvorlagentypen	cre_doc_template_mgt
SELECT vorlagentyp_code , schablonentyp_beschreibung FROM referenzvorlagentypen	cre_doc_template_mgt
SELECT schablonentyp_beschreibung FROM referenzvorlagentypen WHERE vorlagentyp_code = "AD"	cre_doc_template_mgt
SELECT schablonentyp_beschreibung FROM referenzvorlagentypen WHERE vorlagentyp_code = "AD"	cre_doc_template_mgt
SELECT vorlagentyp_code FROM referenzvorlagentypen WHERE schablonentyp_beschreibung = "Book"	cre_doc_template_mgt
SELECT vorlagentyp_code FROM referenzvorlagentypen WHERE schablonentyp_beschreibung = "Book"	cre_doc_template_mgt
SELECT DISTINCT T1.schablonentyp_beschreibung FROM referenzvorlagentypen AS T1 JOIN vorlagen AS T2 ON T1.vorlagentyp_code = T2.vorlagentyp_code JOIN dokumente AS T3 ON T2.vorlage_id = T3.vorlage_id	cre_doc_template_mgt
SELECT DISTINCT T1.schablonentyp_beschreibung FROM referenzvorlagentypen AS T1 JOIN vorlagen AS T2 ON T1.vorlagentyp_code = T2.vorlagentyp_code JOIN dokumente AS T3 ON T2.vorlage_id = T3.vorlage_id	cre_doc_template_mgt
SELECT T2.vorlage_id FROM referenzvorlagentypen AS T1 JOIN vorlagen AS T2 ON T1.vorlagentyp_code = T2.vorlagentyp_code WHERE T1.schablonentyp_beschreibung = "Presentation"	cre_doc_template_mgt
SELECT T2.vorlage_id FROM referenzvorlagentypen AS T1 JOIN vorlagen AS T2 ON T1.vorlagentyp_code = T2.vorlagentyp_code WHERE T1.schablonentyp_beschreibung = "Presentation"	cre_doc_template_mgt
SELECT count(*) FROM absätze	cre_doc_template_mgt
SELECT count(*) FROM absätze	cre_doc_template_mgt
SELECT count(*) FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = 'Summer Show'	cre_doc_template_mgt
SELECT count(*) FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = 'Summer Show'	cre_doc_template_mgt
select sonstige_angaben from absätze where absatztext like 'korea'	cre_doc_template_mgt
select sonstige_angaben from absätze where absatztext like 'korea'	cre_doc_template_mgt
SELECT T1.absatz_id , T1.absatztext FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = 'Welcome to NY'	cre_doc_template_mgt
SELECT T1.absatz_id , T1.absatztext FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = 'Welcome to NY'	cre_doc_template_mgt
SELECT T1.absatztext FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = "Customer reviews"	cre_doc_template_mgt
SELECT T1.absatztext FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = "Customer reviews"	cre_doc_template_mgt
SELECT dokument_id , count(*) FROM absätze GROUP BY dokument_id ORDER BY dokument_id	cre_doc_template_mgt
SELECT dokument_id , count(*) FROM absätze GROUP BY dokument_id ORDER BY dokument_id	cre_doc_template_mgt
SELECT T1.dokument_id , T2.dokumentenname , count(*) FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id GROUP BY T1.dokument_id	cre_doc_template_mgt
SELECT T1.dokument_id , T2.dokumentenname , count(*) FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id GROUP BY T1.dokument_id	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id HAVING count(*) >= 2	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id HAVING count(*) >= 2	cre_doc_template_mgt
SELECT T1.dokument_id , T2.dokumentenname FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id GROUP BY T1.dokument_id ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT T1.dokument_id , T2.dokumentenname FROM absätze AS T1 JOIN dokumente AS T2 ON T1.dokument_id = T2.dokument_id GROUP BY T1.dokument_id ORDER BY count(*) DESC LIMIT 1	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id ORDER BY count(*) ASC LIMIT 1	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id ORDER BY count(*) ASC LIMIT 1	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id HAVING count(*) BETWEEN 1 AND 2	cre_doc_template_mgt
SELECT dokument_id FROM absätze GROUP BY dokument_id HAVING count(*) BETWEEN 1 AND 2	cre_doc_template_mgt
SELECT dokument_id FROM absätze WHERE absatztext = 'Brazil' INTERSECT SELECT dokument_id FROM absätze WHERE absatztext = 'Ireland'	cre_doc_template_mgt
SELECT dokument_id FROM absätze WHERE absatztext = 'Brazil' INTERSECT SELECT dokument_id FROM absätze WHERE absatztext = 'Ireland'	cre_doc_template_mgt
SELECT count(*) FROM lehrer	course_teach
SELECT count(*) FROM lehrer	course_teach
SELECT name FROM lehrer ORDER BY alter ASC	course_teach
SELECT name FROM lehrer ORDER BY alter ASC	course_teach
SELECT alter , heimatort FROM lehrer	course_teach
SELECT alter , heimatort FROM lehrer	course_teach
select name from lehrer where heimatort != "little lever urban district"	course_teach
select name from lehrer where heimatort != "little lever urban district"	course_teach
SELECT name FROM lehrer WHERE alter = 32 OR alter = 33	course_teach
SELECT name FROM lehrer WHERE alter = 32 OR alter = 33	course_teach
SELECT heimatort FROM lehrer ORDER BY alter ASC LIMIT 1	course_teach
SELECT heimatort FROM lehrer ORDER BY alter ASC LIMIT 1	course_teach
SELECT heimatort , COUNT(*) FROM lehrer GROUP BY heimatort	course_teach
SELECT heimatort , COUNT(*) FROM lehrer GROUP BY heimatort	course_teach
SELECT heimatort FROM lehrer GROUP BY heimatort ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT heimatort FROM lehrer GROUP BY heimatort ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT heimatort FROM lehrer GROUP BY heimatort HAVING COUNT(*) >= 2	course_teach
SELECT heimatort FROM lehrer GROUP BY heimatort HAVING COUNT(*) >= 2	course_teach
SELECT T3.name , T2.kurs FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id	course_teach
SELECT T3.name , T2.kurs FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id	course_teach
SELECT T3.name , T2.kurs FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id ORDER BY T3.name	course_teach
SELECT T3.name , T2.kurs FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id ORDER BY T3.name	course_teach
SELECT T3.name FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id WHERE T2.kurs = "Math"	course_teach
SELECT T3.name FROM kurseinteilung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id JOIN lehrer AS T3 ON T1.lehrer_id = T3.lehrer_id WHERE T2.kurs = "Math"	course_teach
SELECT T2.name , COUNT(*) FROM kurseinteilung AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id GROUP BY T2.name	course_teach
SELECT T2.name , COUNT(*) FROM kurseinteilung AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id GROUP BY T2.name	course_teach
SELECT T2.name FROM kurseinteilung AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id GROUP BY T2.name HAVING COUNT(*) >= 2	course_teach
SELECT T2.name FROM kurseinteilung AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id GROUP BY T2.name HAVING COUNT(*) >= 2	course_teach
SELECT name FROM lehrer WHERE lehrer_id NOT IN (SELECT lehrer_id FROM kurseinteilung)	course_teach
SELECT name FROM lehrer WHERE lehrer_id NOT IN (SELECT lehrer_id FROM kurseinteilung)	course_teach
SELECT count(*) FROM kunde WHERE alter < 30	museum_visit
SELECT name FROM kunde WHERE mitgliedsstufe > 4 ORDER BY mitgliedsstufe DESC	museum_visit
SELECT avg(alter) FROM kunde WHERE mitgliedsstufe <= 4	museum_visit
SELECT name , mitgliedsstufe FROM kunde WHERE mitgliedsstufe > 4 ORDER BY alter DESC	museum_visit
SELECT museum_id , name FROM museum ORDER BY anzahl_der_mitarbeiter DESC LIMIT 1	museum_visit
SELECT avg(anzahl_der_mitarbeiter) FROM museum WHERE eröffnungsjahr < 2009	museum_visit
SELECT anzahl_der_mitarbeiter , eröffnungsjahr FROM museum WHERE name = 'Plaza Museum'	museum_visit
SELECT name FROM museum WHERE anzahl_der_mitarbeiter > (SELECT min(anzahl_der_mitarbeiter) FROM museum WHERE eröffnungsjahr > 2010)	museum_visit
SELECT t1.kunden_id , t1.name , t1.alter FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kunden_id HAVING count(*) > 1	museum_visit
SELECT t2.kunden_id , t1.name , t1.mitgliedsstufe FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t2.kunden_id ORDER BY sum(t2.gesamtausgaben) DESC LIMIT 1	museum_visit
SELECT t2.museum_id , t1.name FROM museum AS t1 JOIN besuch AS t2 ON t1.museum_id = t2.museum_id GROUP BY t2.museum_id ORDER BY count(*) DESC LIMIT 1	museum_visit
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM besuch)	museum_visit
SELECT t1.name , t1.alter FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id ORDER BY t2.num_of_ticket DESC LIMIT 1	museum_visit
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM besuch	museum_visit
SELECT sum(t2.gesamtausgaben) FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.mitgliedsstufe = 1	museum_visit
SELECT t1.name FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id JOIN museum AS t3 ON t3.museum_id = t2.museum_id WHERE t3.eröffnungsjahr < 2009 INTERSECT SELECT t1.name FROM kunde AS t1 JOIN besuch AS t2 ON t1.kunden_id = t2.kunden_id JOIN museum AS t3 ON t3.museum_id = t2.museum_id WHERE t3.eröffnungsjahr > 2011	museum_visit
SELECT count(*) FROM kunde WHERE kunden_id NOT IN (SELECT t2.kunden_id FROM museum AS t1 JOIN besuch AS t2 ON t1.museum_id = t2.museum_id WHERE t1.eröffnungsjahr > 2010)	museum_visit
SELECT count(*) FROM museum WHERE eröffnungsjahr > 2013 OR eröffnungsjahr < 2008	museum_visit
SELECT count(*) FROM spieler	wta_1
SELECT count(*) FROM spieler	wta_1
SELECT count(*) FROM spiele	wta_1
SELECT count(*) FROM spiele	wta_1
SELECT vorname , geburtsdatum FROM spieler WHERE ländercode = 'USA'	wta_1
SELECT vorname , geburtsdatum FROM spieler WHERE ländercode = 'USA'	wta_1
SELECT avg(verlierer_alter) , avg(alter_des_gewinners) FROM spiele	wta_1
SELECT avg(verlierer_alter) , avg(alter_des_gewinners) FROM spiele	wta_1
SELECT avg(sieger_rang) FROM spiele	wta_1
SELECT avg(sieger_rang) FROM spiele	wta_1
SELECT min(verlierer_rang) FROM spiele	wta_1
SELECT min(verlierer_rang) FROM spiele	wta_1
SELECT count(DISTINCT ländercode) FROM spieler	wta_1
SELECT count(DISTINCT ländercode) FROM spieler	wta_1
SELECT count(DISTINCT verlierer_name) FROM spiele	wta_1
SELECT count(DISTINCT verlierer_name) FROM spiele	wta_1
SELECT turniername FROM spiele GROUP BY turniername HAVING count(*) > 10	wta_1
SELECT turniername FROM spiele GROUP BY turniername HAVING count(*) > 10	wta_1
SELECT gewinner_name FROM spiele WHERE jahr = 2013 INTERSECT SELECT gewinner_name FROM spiele WHERE jahr = 2016	wta_1
SELECT gewinner_name FROM spiele WHERE jahr = 2013 INTERSECT SELECT gewinner_name FROM spiele WHERE jahr = 2016	wta_1
SELECT count(*) FROM spiele WHERE jahr = 2013 OR jahr = 2016	wta_1
SELECT count(*) FROM spiele WHERE jahr = 2013 OR jahr = 2016	wta_1
SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id WHERE T2.turniername = 'WTA Championships' INTERSECT SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id WHERE T2.turniername = 'Australian Open'	wta_1
SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id WHERE T2.turniername = 'WTA Championships' INTERSECT SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id WHERE T2.turniername = 'Australian Open'	wta_1
SELECT vorname , ländercode FROM spieler ORDER BY geburtsdatum LIMIT 1	wta_1
SELECT vorname , ländercode FROM spieler ORDER BY geburtsdatum LIMIT 1	wta_1
SELECT vorname , nachname FROM spieler ORDER BY geburtsdatum	wta_1
SELECT vorname , nachname FROM spieler ORDER BY geburtsdatum	wta_1
SELECT vorname , nachname FROM spieler WHERE hand = 'L' ORDER BY geburtsdatum	wta_1
SELECT vorname , nachname FROM spieler WHERE hand = 'L' ORDER BY geburtsdatum	wta_1
SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id ORDER BY T2.touren DESC LIMIT 1	wta_1
SELECT T1.ländercode , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id ORDER BY T2.touren DESC LIMIT 1	wta_1
SELECT jahr FROM spiele GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT jahr FROM spiele GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT gewinner_name , gewinner_rang_punkte FROM spiele GROUP BY gewinner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT gewinner_name , gewinner_rang_punkte FROM spiele GROUP BY gewinner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT gewinner_name FROM spiele WHERE turniername = 'Australian Open' ORDER BY gewinner_rang_punkte DESC LIMIT 1	wta_1
SELECT gewinner_name FROM spiele WHERE turniername = 'Australian Open' ORDER BY gewinner_rang_punkte DESC LIMIT 1	wta_1
SELECT gewinner_name , verlierer_name FROM spiele ORDER BY minuten DESC LIMIT 1	wta_1
SELECT gewinner_name , verlierer_name FROM spiele ORDER BY minuten DESC LIMIT 1	wta_1
SELECT avg(rangliste) , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.vorname	wta_1
SELECT avg(rangliste) , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.vorname	wta_1
SELECT sum(ranglistenpunkte) , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.vorname	wta_1
SELECT sum(ranglistenpunkte) , T1.vorname FROM spieler AS T1 JOIN ranglisten AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.vorname	wta_1
SELECT count(*) , ländercode FROM spieler GROUP BY ländercode	wta_1
SELECT count(*) , ländercode FROM spieler GROUP BY ländercode	wta_1
SELECT ländercode FROM spieler GROUP BY ländercode ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT ländercode FROM spieler GROUP BY ländercode ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT ländercode FROM spieler GROUP BY ländercode HAVING count(*) > 50	wta_1
SELECT ländercode FROM spieler GROUP BY ländercode HAVING count(*) > 50	wta_1
SELECT sum(touren) , rangliste_datum FROM ranglisten GROUP BY rangliste_datum	wta_1
SELECT sum(touren) , rangliste_datum FROM ranglisten GROUP BY rangliste_datum	wta_1
SELECT count(*) , jahr FROM spiele GROUP BY jahr	wta_1
SELECT count(*) , jahr FROM spiele GROUP BY jahr	wta_1
SELECT DISTINCT gewinner_name , sieger_rang FROM spiele ORDER BY alter_des_gewinners LIMIT 3	wta_1
SELECT DISTINCT gewinner_name , sieger_rang FROM spiele ORDER BY alter_des_gewinners LIMIT 3	wta_1
SELECT count(DISTINCT gewinner_name) FROM spiele WHERE turniername = 'WTA Championships' AND gewinner_hand = 'L'	wta_1
SELECT count(DISTINCT gewinner_name) FROM spiele WHERE turniername = 'WTA Championships' AND gewinner_hand = 'L'	wta_1
SELECT T1.vorname , T1.ländercode , T1.geburtsdatum FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id ORDER BY T2.gewinner_rang_punkte DESC LIMIT 1	wta_1
SELECT T1.vorname , T1.ländercode , T1.geburtsdatum FROM spieler AS T1 JOIN spiele AS T2 ON T1.spieler_id = T2.gewinner_id ORDER BY T2.gewinner_rang_punkte DESC LIMIT 1	wta_1
SELECT count(*) , hand FROM spieler GROUP BY hand	wta_1
SELECT count(*) , hand FROM spieler GROUP BY hand	wta_1
SELECT count(*) FROM schiff WHERE disposition_des_schiffes = 'Captured'	battle_death
SELECT name , tonnage FROM schiff ORDER BY name DESC	battle_death
SELECT name , datum FROM schlacht	battle_death
SELECT max(getötet) , min(getötet) FROM tod	battle_death
SELECT avg(verletzt) FROM tod	battle_death
SELECT T1.getötet , T1.verletzt FROM tod AS T1 JOIN schiff AS t2 ON T1.verursacht_durch_schiff_id = T2.id WHERE T2.tonnage = 't'	battle_death
SELECT name , ergebnis FROM schlacht WHERE bulgarischer_kommandant != 'Boril'	battle_death
SELECT DISTINCT T1.id , T1.name FROM schlacht AS T1 JOIN schiff AS T2 ON T1.id = T2.im_kampf_verloren WHERE T2.schiffstyp = 'Brig'	battle_death
SELECT T1.id , T1.name FROM schlacht AS T1 JOIN schiff AS T2 ON T1.id = T2.im_kampf_verloren JOIN tod AS T3 ON T2.id = T3.verursacht_durch_schiff_id GROUP BY T1.id HAVING sum(T3.getötet) > 10	battle_death
SELECT T2.id , T2.name FROM tod AS T1 JOIN schiff AS t2 ON T1.verursacht_durch_schiff_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	battle_death
SELECT name FROM schlacht WHERE bulgarischer_kommandant = 'Kaloyan' AND lateinischer_befehlshaber = 'Baldwin I'	battle_death
SELECT count(DISTINCT ergebnis) FROM schlacht	battle_death
SELECT count(*) FROM schlacht WHERE id NOT IN ( SELECT im_kampf_verloren FROM schiff WHERE tonnage = '225' );	battle_death
SELECT T1.name , T1.datum FROM schlacht AS T1 JOIN schiff AS T2 ON T1.id = T2.im_kampf_verloren WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.datum FROM schlacht AS T1 JOIN schiff AS T2 ON T1.id = T2.im_kampf_verloren WHERE T2.name = 'HMS Atalanta'	battle_death
SELECT name , ergebnis , bulgarischer_kommandant FROM schlacht EXCEPT SELECT T1.name , T1.ergebnis , T1.bulgarischer_kommandant FROM schlacht AS T1 JOIN schiff AS T2 ON T1.id = T2.im_kampf_verloren WHERE T2.standort = 'English Channel'	battle_death
SELECT note FROM tod WHERE note LIKE '%East%'	battle_death
SELECT zeile_1 , zeile_2 FROM adressen	student_transcripts_tracking
SELECT zeile_1 , zeile_2 FROM adressen	student_transcripts_tracking
SELECT count(*) FROM kurse	student_transcripts_tracking
SELECT count(*) FROM kurse	student_transcripts_tracking
SELECT kursbeschreibung FROM kurse WHERE kursname = 'math'	student_transcripts_tracking
SELECT kursbeschreibung FROM kurse WHERE kursname = 'math'	student_transcripts_tracking
SELECT postleitzahl FROM adressen WHERE stadt = 'Port Chelsea'	student_transcripts_tracking
SELECT postleitzahl FROM adressen WHERE stadt = 'Port Chelsea'	student_transcripts_tracking
SELECT T2.abteilungsname , T1.abteilung_id FROM studiengänge AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id GROUP BY T1.abteilung_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
select t2.abteilungsname , t1.abteilung_id from studiengänge as t1 join abteilungen as t2 on t1.abteilung_id = t2.abteilung_id group by t1.abteilung_id order by count(*) desc limit 1	student_transcripts_tracking
SELECT count(DISTINCT abteilung_id) FROM studiengänge	student_transcripts_tracking
SELECT count(DISTINCT abteilung_id) FROM studiengänge	student_transcripts_tracking
SELECT count(DISTINCT abschluss_zusammenfassung_name) FROM studiengänge	student_transcripts_tracking
SELECT count(DISTINCT abschluss_zusammenfassung_name) FROM studiengänge	student_transcripts_tracking
SELECT count(*) FROM abteilungen AS T1 JOIN studiengänge AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T1.abteilungsname = 'engineer'	student_transcripts_tracking
SELECT count(*) FROM abteilungen AS T1 JOIN studiengänge AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T1.abteilungsname = 'engineer'	student_transcripts_tracking
SELECT abschnittname , abschnittsbeschreibung FROM abschnitte	student_transcripts_tracking
SELECT abschnittname , abschnittsbeschreibung FROM abschnitte	student_transcripts_tracking
SELECT T1.kursname , T1.kurs_id FROM kurse AS T1 JOIN abschnitte AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kurs_id HAVING count(*) <= 2	student_transcripts_tracking
SELECT T1.kursname , T1.kurs_id FROM kurse AS T1 JOIN abschnitte AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kurs_id HAVING count(*) <= 2	student_transcripts_tracking
SELECT abschnittname FROM abschnitte ORDER BY abschnittname DESC	student_transcripts_tracking
SELECT abschnittname FROM abschnitte ORDER BY abschnittname DESC	student_transcripts_tracking
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT abteilungsbeschreibung FROM abteilungen WHERE abteilungsname LIKE '%computer%'	student_transcripts_tracking
SELECT abteilungsbeschreibung FROM abteilungen WHERE abteilungsname LIKE '%computer%'	student_transcripts_tracking
SELECT T1.vorname , T1.mittlerer_name , T1.nachname , T1.student_id FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2	student_transcripts_tracking
SELECT T1.vorname , T1.mittlerer_name , T1.nachname , T1.student_id FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2	student_transcripts_tracking
SELECT DISTINCT T1.vorname , T1.mittlerer_name , T1.nachname FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN studiengänge AS T3 ON T2.studiengang_id = T3.studiengang_id WHERE T3.abschluss_zusammenfassung_name = 'Bachelor'	student_transcripts_tracking
SELECT DISTINCT T1.vorname , T1.mittlerer_name , T1.nachname FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN studiengänge AS T3 ON T2.studiengang_id = T3.studiengang_id WHERE T3.abschluss_zusammenfassung_name = 'Bachelor'	student_transcripts_tracking
SELECT T1.abschluss_zusammenfassung_name FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id GROUP BY T1.abschluss_zusammenfassung_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.abschluss_zusammenfassung_name FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id GROUP BY T1.abschluss_zusammenfassung_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.studiengang_id , T1.abschluss_zusammenfassung_name FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id GROUP BY T1.studiengang_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.studiengang_id , T1.abschluss_zusammenfassung_name FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id GROUP BY T1.studiengang_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.student_id , T1.vorname , T1.mittlerer_name , T1.nachname , count(*) , T1.student_id FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.student_id , T1.vorname , T1.mittlerer_name , T1.nachname , count(*) , T1.student_id FROM schüler AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT semester_name FROM semesters WHERE semester_id NOT IN( SELECT semester_id FROM student_enrolment )	student_transcripts_tracking
SELECT semester_name FROM semesters WHERE semester_id NOT IN( SELECT semester_id FROM student_enrolment )	student_transcripts_tracking
SELECT DISTINCT T1.kursname FROM kurse AS T1 JOIN einschreibungskurse_für_studenten AS T2 ON T1.kurs_id = T2.kurs_id	student_transcripts_tracking
SELECT DISTINCT T1.kursname FROM kurse AS T1 JOIN einschreibungskurse_für_studenten AS T2 ON T1.kurs_id = T2.kurs_id	student_transcripts_tracking
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibungskurse_für_studenten AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibungskurse_für_studenten AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.nachname FROM schüler AS T1 JOIN adressen AS T2 ON T1.aktuelle_adresse = T2.adresse_id WHERE T2.bundesland_provinz_landkreis = 'NorthCarolina' EXCEPT SELECT DISTINCT T3.nachname FROM schüler AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id	student_transcripts_tracking
SELECT T1.nachname FROM schüler AS T1 JOIN adressen AS T2 ON T1.aktuelle_adresse = T2.adresse_id WHERE T2.bundesland_provinz_landkreis = 'NorthCarolina' EXCEPT SELECT DISTINCT T3.nachname FROM schüler AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id	student_transcripts_tracking
SELECT T2.datum_der_abschrift , T1.abschrift_id FROM zeugnisinhalte AS T1 JOIN transcripts AS T2 ON T1.abschrift_id = T2.abschrift_id GROUP BY T1.abschrift_id HAVING count(*) >= 2	student_transcripts_tracking
SELECT T2.datum_der_abschrift , T1.abschrift_id FROM zeugnisinhalte AS T1 JOIN transcripts AS T2 ON T1.abschrift_id = T2.abschrift_id GROUP BY T1.abschrift_id HAVING count(*) >= 2	student_transcripts_tracking
SELECT handynummer FROM schüler WHERE vorname = 'Timmothy' AND nachname = 'Ward'	student_transcripts_tracking
select handynummer from schüler where vorname = 'timmothy' and nachname = 'ward'	student_transcripts_tracking
SELECT vorname , mittlerer_name , nachname FROM schüler ORDER BY datum_der_ersten_anmeldung ASC LIMIT 1	student_transcripts_tracking
SELECT vorname , mittlerer_name , nachname FROM schüler ORDER BY datum_der_ersten_anmeldung ASC LIMIT 1	student_transcripts_tracking
SELECT vorname , mittlerer_name , nachname FROM schüler ORDER BY datum_der_abmeldung ASC LIMIT 1	student_transcripts_tracking
SELECT vorname , mittlerer_name , nachname FROM schüler ORDER BY datum_der_abmeldung ASC LIMIT 1	student_transcripts_tracking
SELECT vorname FROM schüler WHERE aktuelle_adresse != permanente_adresse_id	student_transcripts_tracking
SELECT vorname FROM schüler WHERE aktuelle_adresse != permanente_adresse_id	student_transcripts_tracking
SELECT T1.adresse_id , T1.zeile_1 , T1.zeile_2 FROM adressen AS T1 JOIN schüler AS T2 ON T1.adresse_id = T2.aktuelle_adresse GROUP BY T1.adresse_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.adresse_id , T1.zeile_1 , T1.zeile_2 FROM adressen AS T1 JOIN schüler AS T2 ON T1.adresse_id = T2.aktuelle_adresse GROUP BY T1.adresse_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT avg(datum_der_abschrift) FROM transcripts	student_transcripts_tracking
SELECT avg(datum_der_abschrift) FROM transcripts	student_transcripts_tracking
SELECT datum_der_abschrift , sonstige_angaben FROM transcripts ORDER BY datum_der_abschrift ASC LIMIT 1	student_transcripts_tracking
SELECT datum_der_abschrift , sonstige_angaben FROM transcripts ORDER BY datum_der_abschrift ASC LIMIT 1	student_transcripts_tracking
SELECT count(*) FROM transcripts	student_transcripts_tracking
SELECT count(*) FROM transcripts	student_transcripts_tracking
SELECT datum_der_abschrift FROM transcripts ORDER BY datum_der_abschrift DESC LIMIT 1	student_transcripts_tracking
SELECT datum_der_abschrift FROM transcripts ORDER BY datum_der_abschrift DESC LIMIT 1	student_transcripts_tracking
SELECT count(*) , student_course_id FROM zeugnisinhalte GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT count(*) , student_course_id FROM zeugnisinhalte GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T2.datum_der_abschrift , T1.abschrift_id FROM zeugnisinhalte AS T1 JOIN transcripts AS T2 ON T1.abschrift_id = T2.abschrift_id GROUP BY T1.abschrift_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT T2.datum_der_abschrift , T1.abschrift_id FROM zeugnisinhalte AS T1 JOIN transcripts AS T2 ON T1.abschrift_id = T2.abschrift_id GROUP BY T1.abschrift_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT DISTINCT T2.semester_id FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id WHERE abschluss_zusammenfassung_name = 'Master' INTERSECT SELECT DISTINCT T2.semester_id FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id WHERE abschluss_zusammenfassung_name = 'Bachelor'	student_transcripts_tracking
SELECT DISTINCT T2.semester_id FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id WHERE abschluss_zusammenfassung_name = 'Master' INTERSECT SELECT DISTINCT T2.semester_id FROM studiengänge AS T1 JOIN student_enrolment AS T2 ON T1.studiengang_id = T2.studiengang_id WHERE abschluss_zusammenfassung_name = 'Bachelor'	student_transcripts_tracking
SELECT count(DISTINCT aktuelle_adresse) FROM schüler	student_transcripts_tracking
SELECT count(DISTINCT aktuelle_adresse) FROM schüler	student_transcripts_tracking
SELECT andere_angaben_zum_schüler FROM schüler ORDER BY andere_angaben_zum_schüler DESC	student_transcripts_tracking
SELECT andere_angaben_zum_schüler FROM schüler ORDER BY andere_angaben_zum_schüler DESC	student_transcripts_tracking
SELECT abschnittsbeschreibung FROM abschnitte WHERE abschnittname = 'h'	student_transcripts_tracking
SELECT abschnittsbeschreibung FROM abschnitte WHERE abschnittname = 'h'	student_transcripts_tracking
select t1.vorname from schüler as t1 join adressen as t2 on t1.permanente_adresse_id = t2.adresse_id where t2.land = 'haiti' or t1.handynummer = '09700166582'	student_transcripts_tracking
select t1.vorname from schüler as t1 join adressen as t2 on t1.permanente_adresse_id = t2.adresse_id where t2.land = 'haiti' or t1.handynummer = '09700166582'	student_transcripts_tracking
SELECT titel FROM cartoon ORDER BY titel	tvshow
SELECT titel FROM cartoon ORDER BY titel	tvshow
SELECT titel FROM cartoon WHERE regie = "Ben Jones";	tvshow
SELECT titel FROM cartoon WHERE regie = "Ben Jones";	tvshow
SELECT count(*) FROM cartoon WHERE geschrieben_von = "Joseph Kuhr";	tvshow
SELECT count(*) FROM cartoon WHERE geschrieben_von = "Joseph Kuhr";	tvshow
SELECT titel , regie FROM cartoon ORDER BY ursprüngliches_sendedatum	tvshow
SELECT titel , regie FROM cartoon ORDER BY ursprüngliches_sendedatum	tvshow
SELECT titel FROM cartoon WHERE regie = "Ben Jones" OR regie = "Brandon Vietti";	tvshow
SELECT titel FROM cartoon WHERE regie = "Ben Jones" OR regie = "Brandon Vietti";	tvshow
SELECT land , count(*) FROM tv_channel GROUP BY land ORDER BY count(*) DESC LIMIT 1;	tvshow
SELECT land , count(*) FROM tv_channel GROUP BY land ORDER BY count(*) DESC LIMIT 1;	tvshow
SELECT count(DISTINCT serienname) , count(DISTINCT inhalt) FROM tv_channel;	tvshow
SELECT count(DISTINCT serienname) , count(DISTINCT inhalt) FROM tv_channel;	tvshow
SELECT inhalt FROM tv_channel WHERE serienname = "Sky Radio";	tvshow
SELECT inhalt FROM tv_channel WHERE serienname = "Sky Radio";	tvshow
SELECT paket_option FROM tv_channel WHERE serienname = "Sky Radio";	tvshow
SELECT paket_option FROM tv_channel WHERE serienname = "Sky Radio";	tvshow
SELECT count(*) FROM tv_channel WHERE sprache = "English";	tvshow
SELECT count(*) FROM tv_channel WHERE sprache = "English";	tvshow
SELECT sprache , count(*) FROM tv_channel GROUP BY sprache ORDER BY count(*) ASC LIMIT 1;	tvshow
SELECT sprache , count(*) FROM tv_channel GROUP BY sprache ORDER BY count(*) ASC LIMIT 1;	tvshow
SELECT sprache , count(*) FROM tv_channel GROUP BY sprache	tvshow
SELECT sprache , count(*) FROM tv_channel GROUP BY sprache	tvshow
SELECT T1.serienname FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.titel = "The Rise of the Blue Beetle!";	tvshow
SELECT T1.serienname FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.titel = "The Rise of the Blue Beetle!";	tvshow
SELECT T2.titel FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T1.serienname = "Sky Radio";	tvshow
SELECT T2.titel FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T1.serienname = "Sky Radio";	tvshow
SELECT episode FROM tv_serien ORDER BY bewertung	tvshow
SELECT episode FROM tv_serien ORDER BY bewertung	tvshow
SELECT episode , bewertung FROM tv_serien ORDER BY bewertung DESC LIMIT 3;	tvshow
SELECT episode , bewertung FROM tv_serien ORDER BY bewertung DESC LIMIT 3;	tvshow
SELECT max(anteil) , min(anteil) FROM tv_serien;	tvshow
SELECT max(anteil) , min(anteil) FROM tv_serien;	tvshow
SELECT ausstrahlungsdatum FROM tv_serien WHERE episode = "A Love of a Lifetime";	tvshow
SELECT ausstrahlungsdatum FROM tv_serien WHERE episode = "A Love of a Lifetime";	tvshow
SELECT wöchentlicher_rang FROM tv_serien WHERE episode = "A Love of a Lifetime";	tvshow
SELECT wöchentlicher_rang FROM tv_serien WHERE episode = "A Love of a Lifetime";	tvshow
SELECT T1.serienname FROM tv_channel AS T1 JOIN tv_serien AS T2 ON T1.id = T2.kanal WHERE T2.episode = "A Love of a Lifetime";	tvshow
SELECT T1.serienname FROM tv_channel AS T1 JOIN tv_serien AS T2 ON T1.id = T2.kanal WHERE T2.episode = "A Love of a Lifetime";	tvshow
SELECT T2.episode FROM tv_channel AS T1 JOIN tv_serien AS T2 ON T1.id = T2.kanal WHERE T1.serienname = "Sky Radio";	tvshow
SELECT T2.episode FROM tv_channel AS T1 JOIN tv_serien AS T2 ON T1.id = T2.kanal WHERE T1.serienname = "Sky Radio";	tvshow
SELECT count(*) , regie FROM cartoon GROUP BY regie	tvshow
SELECT count(*) , regie FROM cartoon GROUP BY regie	tvshow
select produktionscode , kanal from cartoon order by ursprüngliches_sendedatum desc limit 1	tvshow
select produktionscode , kanal from cartoon order by ursprüngliches_sendedatum desc limit 1	tvshow
SELECT paket_option , serienname FROM tv_channel WHERE hochauflösendes_fernsehen = "yes"	tvshow
SELECT paket_option , serienname FROM tv_channel WHERE hochauflösendes_fernsehen = "yes"	tvshow
SELECT T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.geschrieben_von = 'Todd Casey'	tvshow
SELECT T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.geschrieben_von = 'Todd Casey'	tvshow
SELECT land FROM tv_channel EXCEPT SELECT T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.geschrieben_von = 'Todd Casey'	tvshow
SELECT land FROM tv_channel EXCEPT SELECT T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.geschrieben_von = 'Todd Casey'	tvshow
SELECT T1.serienname , T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.regie = 'Michael Chang' INTERSECT SELECT T1.serienname , T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.regie = 'Ben Jones'	tvshow
SELECT T1.serienname , T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.regie = 'Michael Chang' INTERSECT SELECT T1.serienname , T1.land FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.kanal WHERE T2.regie = 'Ben Jones'	tvshow
SELECT pixel_seitenverhältnis_par , land FROM tv_channel WHERE sprache != 'English'	tvshow
SELECT pixel_seitenverhältnis_par , land FROM tv_channel WHERE sprache != 'English'	tvshow
SELECT id FROM tv_channel GROUP BY land HAVING count(*) > 2	tvshow
SELECT id FROM tv_channel GROUP BY land HAVING count(*) > 2	tvshow
SELECT id FROM tv_channel EXCEPT SELECT kanal FROM cartoon WHERE regie = 'Ben Jones'	tvshow
SELECT id FROM tv_channel EXCEPT SELECT kanal FROM cartoon WHERE regie = 'Ben Jones'	tvshow
SELECT paket_option FROM tv_channel WHERE id NOT IN (SELECT kanal FROM cartoon WHERE regie = 'Ben Jones')	tvshow
SELECT paket_option FROM tv_channel WHERE id NOT IN (SELECT kanal FROM cartoon WHERE regie = 'Ben Jones')	tvshow
SELECT count(*) FROM pokerspieler	poker_player
SELECT count(*) FROM pokerspieler	poker_player
SELECT gewinn FROM pokerspieler ORDER BY gewinn DESC	poker_player
SELECT gewinn FROM pokerspieler ORDER BY gewinn DESC	poker_player
SELECT finaltisch_gemacht , beste_platzierung FROM pokerspieler	poker_player
SELECT finaltisch_gemacht , beste_platzierung FROM pokerspieler	poker_player
SELECT avg(gewinn) FROM pokerspieler	poker_player
SELECT avg(gewinn) FROM pokerspieler	poker_player
SELECT geldrang FROM pokerspieler ORDER BY gewinn DESC LIMIT 1	poker_player
SELECT geldrang FROM pokerspieler ORDER BY gewinn DESC LIMIT 1	poker_player
SELECT max(finaltisch_gemacht) FROM pokerspieler WHERE gewinn < 200000	poker_player
SELECT max(finaltisch_gemacht) FROM pokerspieler WHERE gewinn < 200000	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id WHERE T2.gewinn > 300000	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id WHERE T2.gewinn > 300000	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.finaltisch_gemacht	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.finaltisch_gemacht	poker_player
SELECT T1.geburtsdatum FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewinn ASC LIMIT 1	poker_player
SELECT T1.geburtsdatum FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewinn ASC LIMIT 1	poker_player
SELECT T2.geldrang FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.größe DESC LIMIT 1	poker_player
SELECT T2.geldrang FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.größe DESC LIMIT 1	poker_player
SELECT avg(T2.gewinn) FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id WHERE T1.größe > 200	poker_player
SELECT avg(T2.gewinn) FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id WHERE T1.größe > 200	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewinn DESC	poker_player
SELECT T1.name FROM leute AS T1 JOIN pokerspieler AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewinn DESC	poker_player
SELECT nationalität , COUNT(*) FROM leute GROUP BY nationalität	poker_player
SELECT nationalität , COUNT(*) FROM leute GROUP BY nationalität	poker_player
SELECT nationalität FROM leute GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT nationalität FROM leute GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT nationalität FROM leute GROUP BY nationalität HAVING COUNT(*) >= 2	poker_player
SELECT nationalität FROM leute GROUP BY nationalität HAVING COUNT(*) >= 2	poker_player
SELECT name , geburtsdatum FROM leute ORDER BY name ASC	poker_player
SELECT name , geburtsdatum FROM leute ORDER BY name ASC	poker_player
SELECT name FROM leute WHERE nationalität != "Russia"	poker_player
SELECT name FROM leute WHERE nationalität != "Russia"	poker_player
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM pokerspieler)	poker_player
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM pokerspieler)	poker_player
SELECT count(DISTINCT nationalität) FROM leute	poker_player
SELECT count(DISTINCT nationalität) FROM leute	poker_player
SELECT count(*) FROM vorwahl_staat	voter_1
SELECT teilnehmernummer , kandidatenname FROM wettbewerbe ORDER BY kandidatenname DESC	voter_1
SELECT stimme_id , telefonnummer , staat FROM stimmen	voter_1
SELECT max(vorwahl) , min(vorwahl) FROM vorwahl_staat	voter_1
SELECT max(created) FROM stimmen WHERE staat = 'CA'	voter_1
SELECT kandidatenname FROM wettbewerbe WHERE kandidatenname != 'Jessie Alloway'	voter_1
SELECT DISTINCT staat , created FROM stimmen	voter_1
SELECT T1.teilnehmernummer , T1.kandidatenname FROM wettbewerbe AS T1 JOIN stimmen AS T2 ON T1.teilnehmernummer = T2.teilnehmernummer GROUP BY T1.teilnehmernummer HAVING count(*) >= 2	voter_1
SELECT T1.teilnehmernummer , T1.kandidatenname FROM wettbewerbe AS T1 JOIN stimmen AS T2 ON T1.teilnehmernummer = T2.teilnehmernummer GROUP BY T1.teilnehmernummer ORDER BY count(*) ASC LIMIT 1	voter_1
SELECT count(*) FROM stimmen WHERE staat = 'NY' OR staat = 'CA'	voter_1
SELECT count(*) FROM wettbewerbe WHERE teilnehmernummer NOT IN ( SELECT teilnehmernummer FROM stimmen )	voter_1
SELECT T1.vorwahl FROM vorwahl_staat AS T1 JOIN stimmen AS T2 ON T1.staat = T2.staat GROUP BY T1.vorwahl ORDER BY count(*) DESC LIMIT 1	voter_1
SELECT T2.created , T2.staat , T2.telefonnummer FROM wettbewerbe AS T1 JOIN stimmen AS T2 ON T1.teilnehmernummer = T2.teilnehmernummer WHERE T1.kandidatenname = 'Tabatha Gehling'	voter_1
SELECT T3.vorwahl FROM wettbewerbe AS T1 JOIN stimmen AS T2 ON T1.teilnehmernummer = T2.teilnehmernummer JOIN vorwahl_staat AS T3 ON T2.staat = T3.staat WHERE T1.kandidatenname = 'Tabatha Gehling' INTERSECT SELECT T3.vorwahl FROM wettbewerbe AS T1 JOIN stimmen AS T2 ON T1.teilnehmernummer = T2.teilnehmernummer JOIN vorwahl_staat AS T3 ON T2.staat = T3.staat WHERE T1.kandidatenname = 'Kelly Clauss'	voter_1
select kandidatenname from wettbewerbe where kandidatenname like "%al%"	voter_1
SELECT name FROM land WHERE unabhängiges_jahr > 1950	world_1
SELECT name FROM land WHERE unabhängiges_jahr > 1950	world_1
SELECT count(*) FROM land WHERE regierungsform = "Republic"	world_1
SELECT count(*) FROM land WHERE regierungsform = "Republic"	world_1
SELECT sum(fläche) FROM land WHERE region = "Caribbean"	world_1
SELECT sum(fläche) FROM land WHERE region = "Caribbean"	world_1
SELECT kontinent FROM land WHERE name = "Anguilla"	world_1
SELECT kontinent FROM land WHERE name = "Anguilla"	world_1
SELECT region FROM land AS T1 JOIN stadt AS T2 ON T1.code = T2.ländercode WHERE T2.name = "Kabul"	world_1
SELECT region FROM land AS T1 JOIN stadt AS T2 ON T1.code = T2.ländercode WHERE T2.name = "Kabul"	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Aruba" ORDER BY prozent DESC LIMIT 1	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Aruba" ORDER BY prozent DESC LIMIT 1	world_1
SELECT bevölkerung , lebenserwartung FROM land WHERE name = "Brazil"	world_1
SELECT bevölkerung , lebenserwartung FROM land WHERE name = "Brazil"	world_1
SELECT bevölkerung , region FROM land WHERE name = "Angola"	world_1
SELECT bevölkerung , region FROM land WHERE name = "Angola"	world_1
SELECT avg(lebenserwartung) FROM land WHERE region = "Central Africa"	world_1
SELECT avg(lebenserwartung) FROM land WHERE region = "Central Africa"	world_1
SELECT name FROM land WHERE kontinent = "Asia" ORDER BY lebenserwartung LIMIT 1	world_1
SELECT name FROM land WHERE kontinent = "Asia" ORDER BY lebenserwartung LIMIT 1	world_1
SELECT sum(bevölkerung) , max(gnp) FROM land WHERE kontinent = "Asia"	world_1
SELECT sum(bevölkerung) , max(gnp) FROM land WHERE kontinent = "Asia"	world_1
SELECT avg(lebenserwartung) FROM land WHERE kontinent = "Africa" AND regierungsform = "Republic"	world_1
SELECT avg(lebenserwartung) FROM land WHERE kontinent = "Africa" AND regierungsform = "Republic"	world_1
SELECT sum(fläche) FROM land WHERE kontinent = "Asia" OR kontinent = "Europe"	world_1
SELECT sum(fläche) FROM land WHERE kontinent = "Asia" OR kontinent = "Europe"	world_1
SELECT sum(bevölkerung) FROM stadt WHERE bezirk = "Gelderland"	world_1
SELECT sum(bevölkerung) FROM stadt WHERE bezirk = "Gelderland"	world_1
SELECT avg(gnp) , sum(bevölkerung) FROM land WHERE regierungsform = "US Territory"	world_1
SELECT avg(gnp) , sum(bevölkerung) FROM land WHERE regierungsform = "US Territory"	world_1
SELECT count(DISTINCT sprache) FROM landessprache	world_1
SELECT count(DISTINCT sprache) FROM landessprache	world_1
SELECT count(DISTINCT regierungsform) FROM land WHERE kontinent = "Africa"	world_1
SELECT count(DISTINCT regierungsform) FROM land WHERE kontinent = "Africa"	world_1
SELECT COUNT(T2.sprache) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Aruba"	world_1
SELECT COUNT(T2.sprache) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Aruba"	world_1
SELECT COUNT(*) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Afghanistan" AND ist_offiziell = "T"	world_1
SELECT COUNT(*) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.name = "Afghanistan" AND ist_offiziell = "T"	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT T1.kontinent FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.kontinent ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT T1.kontinent FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.kontinent ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT COUNT(*) FROM (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "Dutch")	world_1
SELECT COUNT(*) FROM (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "Dutch")	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "French"	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "French"	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" AND T2.ist_offiziell = "T" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "French" AND T2.ist_offiziell = "T"	world_1
SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" AND T2.ist_offiziell = "T" INTERSECT SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "French" AND T2.ist_offiziell = "T"	world_1
SELECT COUNT( DISTINCT kontinent) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "Chinese"	world_1
SELECT COUNT( DISTINCT kontinent) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "Chinese"	world_1
SELECT DISTINCT T1.region FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" OR T2.sprache = "Dutch"	world_1
SELECT DISTINCT T1.region FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" OR T2.sprache = "Dutch"	world_1
select t1.name from land as t1 join landessprache as t2 on t1.code = t2.ländercode where t2.sprache = "english" and ist_offiziell = "t" union select t1.name from land as t1 join landessprache as t2 on t1.code = t2.ländercode where t2.sprache = "dutch" and ist_offiziell = "t"	world_1
SELECT * FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" AND ist_offiziell = "T" UNION SELECT * FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "Dutch" AND ist_offiziell = "T"	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.kontinent = "Asia" GROUP BY T2.sprache ORDER BY COUNT (*) DESC LIMIT 1	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.kontinent = "Asia" GROUP BY T2.sprache ORDER BY COUNT (*) DESC LIMIT 1	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.regierungsform = "Republic" GROUP BY T2.sprache HAVING COUNT(*) = 1	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.regierungsform = "Republic" GROUP BY T2.sprache HAVING COUNT(*) = 1	world_1
SELECT T1.name , T1.bevölkerung FROM stadt AS T1 JOIN landessprache AS T2 ON T1.ländercode = T2.ländercode WHERE T2.sprache = "English" ORDER BY T1.bevölkerung DESC LIMIT 1	world_1
SELECT T1.name , T1.bevölkerung FROM stadt AS T1 JOIN landessprache AS T2 ON T1.ländercode = T2.ländercode WHERE T2.sprache = "English" ORDER BY T1.bevölkerung DESC LIMIT 1	world_1
SELECT name , bevölkerung , lebenserwartung FROM land WHERE kontinent = "Asia" ORDER BY fläche DESC LIMIT 1	world_1
SELECT name , bevölkerung , lebenserwartung FROM land WHERE kontinent = "Asia" ORDER BY fläche DESC LIMIT 1	world_1
SELECT avg(lebenserwartung) FROM land WHERE name NOT IN (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" AND T2.ist_offiziell = "T")	world_1
SELECT avg(lebenserwartung) FROM land WHERE name NOT IN (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English" AND T2.ist_offiziell = "T")	world_1
SELECT sum(bevölkerung) FROM land WHERE name NOT IN (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English")	world_1
SELECT sum(bevölkerung) FROM land WHERE name NOT IN (SELECT T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T2.sprache = "English")	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.staatsoberhaupt = "Beatrix" AND T2.ist_offiziell = "T"	world_1
SELECT T2.sprache FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE T1.staatsoberhaupt = "Beatrix" AND T2.ist_offiziell = "T"	world_1
SELECT count(DISTINCT T2.sprache) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE unabhängiges_jahr < 1930 AND T2.ist_offiziell = "T"	world_1
SELECT count(DISTINCT T2.sprache) FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode WHERE unabhängiges_jahr < 1930 AND T2.ist_offiziell = "T"	world_1
SELECT name FROM land WHERE fläche > (SELECT min(fläche) FROM land WHERE kontinent = "Europe")	world_1
SELECT name FROM land WHERE fläche > (SELECT min(fläche) FROM land WHERE kontinent = "Europe")	world_1
SELECT name FROM land WHERE kontinent = "Africa" AND bevölkerung < (SELECT max(bevölkerung) FROM land WHERE kontinent = "Asia")	world_1
SELECT name FROM land WHERE kontinent = "Africa" AND bevölkerung < (SELECT min(bevölkerung) FROM land WHERE kontinent = "Asia")	world_1
SELECT name FROM land WHERE kontinent = "Asia" AND bevölkerung > (SELECT max(bevölkerung) FROM land WHERE kontinent = "Africa")	world_1
SELECT name FROM land WHERE kontinent = "Asia" AND bevölkerung > (SELECT min(bevölkerung) FROM land WHERE kontinent = "Africa")	world_1
SELECT ländercode FROM landessprache EXCEPT SELECT ländercode FROM landessprache WHERE sprache = "English"	world_1
SELECT ländercode FROM landessprache EXCEPT SELECT ländercode FROM landessprache WHERE sprache = "English"	world_1
SELECT DISTINCT ländercode FROM landessprache WHERE sprache != "English"	world_1
SELECT DISTINCT ländercode FROM landessprache WHERE sprache != "English"	world_1
SELECT code FROM land WHERE regierungsform != "Republic" EXCEPT SELECT ländercode FROM landessprache WHERE sprache = "English"	world_1
SELECT code FROM land WHERE regierungsform != "Republic" EXCEPT SELECT ländercode FROM landessprache WHERE sprache = "English"	world_1
SELECT DISTINCT T2.name FROM land AS T1 JOIN stadt AS T2 ON T2.ländercode = T1.code WHERE T1.kontinent = 'Europe' AND T1.name NOT IN (SELECT T3.name FROM land AS T3 JOIN landessprache AS T4 ON T3.code = T4.ländercode WHERE T4.ist_offiziell = 'T' AND T4.sprache = 'English')	world_1
SELECT DISTINCT T2.name FROM land AS T1 JOIN stadt AS T2 ON T2.ländercode = T1.code WHERE T1.kontinent = 'Europe' AND T1.name NOT IN (SELECT T3.name FROM land AS T3 JOIN landessprache AS T4 ON T3.code = T4.ländercode WHERE T4.ist_offiziell = 'T' AND T4.sprache = 'English')	world_1
select distinct t3.name from land as t1 join landessprache as t2 on t1.code = t2.ländercode join stadt as t3 on t1.code = t3.ländercode where t2.ist_offiziell = 't' and t2.sprache = 'chinese' and t1.kontinent = "asia"	world_1
SELECT DISTINCT T3.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode JOIN stadt AS T3 ON T1.code = T3.ländercode WHERE T2.ist_offiziell = 'T' AND T2.sprache = 'Chinese' AND T1.kontinent = "Asia"	world_1
SELECT name , fläche , unabhängiges_jahr FROM land ORDER BY bevölkerung LIMIT 1	world_1
SELECT name , fläche , unabhängiges_jahr FROM land ORDER BY bevölkerung LIMIT 1	world_1
SELECT name , bevölkerung , staatsoberhaupt FROM land ORDER BY fläche DESC LIMIT 1	world_1
SELECT name , bevölkerung , staatsoberhaupt FROM land ORDER BY fläche DESC LIMIT 1	world_1
SELECT COUNT(T2.sprache) , T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.name HAVING COUNT(*) > 2	world_1
SELECT COUNT(T2.sprache) , T1.name FROM land AS T1 JOIN landessprache AS T2 ON T1.code = T2.ländercode GROUP BY T1.name HAVING COUNT(*) > 2	world_1
SELECT count(*) , bezirk FROM stadt WHERE bevölkerung > (SELECT avg(bevölkerung) FROM stadt) GROUP BY bezirk	world_1
SELECT count(*) , bezirk FROM stadt WHERE bevölkerung > (SELECT avg(bevölkerung) FROM stadt) GROUP BY bezirk	world_1
SELECT sum(bevölkerung) , regierungsform FROM land GROUP BY regierungsform HAVING avg(lebenserwartung) > 72	world_1
SELECT sum(bevölkerung) , regierungsform FROM land GROUP BY regierungsform HAVING avg(lebenserwartung) > 72	world_1
SELECT sum(bevölkerung) , avg(lebenserwartung) , kontinent FROM land GROUP BY kontinent HAVING avg(lebenserwartung) < 72	world_1
SELECT sum(bevölkerung) , avg(lebenserwartung) , kontinent FROM land GROUP BY kontinent HAVING avg(lebenserwartung) < 72	world_1
SELECT name , fläche FROM land ORDER BY fläche DESC LIMIT 5	world_1
SELECT name , fläche FROM land ORDER BY fläche DESC LIMIT 5	world_1
SELECT name FROM land ORDER BY bevölkerung DESC LIMIT 3	world_1
SELECT name FROM land ORDER BY bevölkerung DESC LIMIT 3	world_1
SELECT name FROM land ORDER BY bevölkerung ASC LIMIT 3	world_1
SELECT name FROM land ORDER BY bevölkerung ASC LIMIT 3	world_1
SELECT count(*) FROM land WHERE kontinent = "Asia"	world_1
SELECT count(*) FROM land WHERE kontinent = "Asia"	world_1
SELECT name FROM land WHERE kontinent = "Europe" AND bevölkerung = "80000"	world_1
SELECT name FROM land WHERE kontinent = "Europe" AND bevölkerung = "80000"	world_1
select sum(bevölkerung) , avg(fläche) from land where kontinent = "north america" and fläche > 3000	world_1
select sum(bevölkerung) , avg(fläche) from land where kontinent = "north america" and fläche > 3000	world_1
SELECT name FROM stadt WHERE bevölkerung BETWEEN 160000 AND 900000	world_1
select name from stadt where bevölkerung between 160000 and 900000	world_1
SELECT sprache FROM landessprache GROUP BY sprache ORDER BY count(*) DESC LIMIT 1	world_1
SELECT sprache FROM landessprache GROUP BY sprache ORDER BY count(*) DESC LIMIT 1	world_1
SELECT sprache , ländercode , max(prozent) FROM landessprache GROUP BY ländercode	world_1
SELECT sprache , ländercode , max(prozent) FROM landessprache GROUP BY ländercode	world_1
SELECT count(*) , max(prozent) FROM landessprache WHERE sprache = "Spanish" GROUP BY ländercode	world_1
SELECT count(*) , max(prozent) FROM landessprache WHERE sprache = "Spanish" GROUP BY ländercode	world_1
SELECT ländercode , max(prozent) FROM landessprache WHERE sprache = "Spanish" GROUP BY ländercode	world_1
SELECT ländercode , max(prozent) FROM landessprache WHERE sprache = "Spanish" GROUP BY ländercode	world_1
SELECT count(*) FROM leiter	orchestra
SELECT count(*) FROM leiter	orchestra
SELECT name FROM leiter ORDER BY alter ASC	orchestra
SELECT name FROM leiter ORDER BY alter ASC	orchestra
SELECT name FROM leiter WHERE nationalität != 'USA'	orchestra
SELECT name FROM leiter WHERE nationalität != 'USA'	orchestra
SELECT plattenfirma FROM orchester ORDER BY gründungsjahr DESC	orchestra
SELECT plattenfirma FROM orchester ORDER BY gründungsjahr DESC	orchestra
SELECT avg(anwesenheit) FROM auftritt	orchestra
SELECT avg(anwesenheit) FROM auftritt	orchestra
SELECT max(aktie) , min(aktie) FROM aufführung WHERE typ != "Live final"	orchestra
SELECT max(aktie) , min(aktie) FROM aufführung WHERE typ != "Live final"	orchestra
SELECT count(DISTINCT nationalität) FROM leiter	orchestra
SELECT count(DISTINCT nationalität) FROM leiter	orchestra
SELECT name FROM leiter ORDER BY arbeitsjahr DESC	orchestra
SELECT name FROM leiter ORDER BY arbeitsjahr DESC	orchestra
SELECT name FROM leiter ORDER BY arbeitsjahr DESC LIMIT 1	orchestra
SELECT name FROM leiter ORDER BY arbeitsjahr DESC LIMIT 1	orchestra
SELECT T1.name , T2.orchester FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id	orchestra
SELECT T1.name , T2.orchester FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id GROUP BY T2.dirigent_id HAVING COUNT(*) > 1	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id GROUP BY T2.dirigent_id HAVING COUNT(*) > 1	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id GROUP BY T2.dirigent_id ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id GROUP BY T2.dirigent_id ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id WHERE gründungsjahr > 2008	orchestra
SELECT T1.name FROM leiter AS T1 JOIN orchester AS T2 ON T1.dirigent_id = T2.dirigent_id WHERE gründungsjahr > 2008	orchestra
SELECT plattenfirma , COUNT(*) FROM orchester GROUP BY plattenfirma	orchestra
SELECT plattenfirma , COUNT(*) FROM orchester GROUP BY plattenfirma	orchestra
SELECT hauptplattenformat FROM orchester GROUP BY hauptplattenformat ORDER BY COUNT(*) ASC	orchestra
SELECT hauptplattenformat FROM orchester GROUP BY hauptplattenformat ORDER BY COUNT(*) ASC	orchestra
SELECT plattenfirma FROM orchester GROUP BY plattenfirma ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT plattenfirma FROM orchester GROUP BY plattenfirma ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT orchester FROM orchester WHERE orchestra_id NOT IN (SELECT orchestra_id FROM aufführung)	orchestra
SELECT orchester FROM orchester WHERE orchestra_id NOT IN (SELECT orchestra_id FROM aufführung)	orchestra
SELECT plattenfirma FROM orchester WHERE gründungsjahr < 2003 INTERSECT SELECT plattenfirma FROM orchester WHERE gründungsjahr > 2003	orchestra
SELECT plattenfirma FROM orchester WHERE gründungsjahr < 2003 INTERSECT SELECT plattenfirma FROM orchester WHERE gründungsjahr > 2003	orchestra
SELECT COUNT(*) FROM orchester WHERE hauptplattenformat = "CD" OR hauptplattenformat = "DVD"	orchestra
SELECT COUNT(*) FROM orchester WHERE hauptplattenformat = "CD" OR hauptplattenformat = "DVD"	orchestra
SELECT gründungsjahr FROM orchester AS T1 JOIN aufführung AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1	orchestra
SELECT gründungsjahr FROM orchester AS T1 JOIN aufführung AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1	orchestra
SELECT count(*) FROM oberschüler	network_1
SELECT count(*) FROM oberschüler	network_1
SELECT name , grade FROM oberschüler	network_1
SELECT name , grade FROM oberschüler	network_1
SELECT grade FROM oberschüler	network_1
SELECT grade FROM oberschüler	network_1
SELECT grade FROM oberschüler WHERE name = "Kyle"	network_1
SELECT grade FROM oberschüler WHERE name = "Kyle"	network_1
SELECT name FROM oberschüler WHERE grade = 10	network_1
SELECT name FROM oberschüler WHERE grade = 10	network_1
SELECT id FROM oberschüler WHERE name = "Kyle"	network_1
SELECT id FROM oberschüler WHERE name = "Kyle"	network_1
SELECT count(*) FROM oberschüler WHERE grade = 9 OR grade = 10	network_1
SELECT count(*) FROM oberschüler WHERE grade = 9 OR grade = 10	network_1
SELECT grade , count(*) FROM oberschüler GROUP BY grade	network_1
SELECT grade , count(*) FROM oberschüler GROUP BY grade	network_1
SELECT grade FROM oberschüler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM oberschüler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM oberschüler GROUP BY grade HAVING count(*) >= 4	network_1
SELECT grade FROM oberschüler GROUP BY grade HAVING count(*) >= 4	network_1
SELECT schüler_id , count(*) FROM freund GROUP BY schüler_id	network_1
SELECT schüler_id , count(*) FROM freund GROUP BY schüler_id	network_1
SELECT T2.name , count(*) FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id	network_1
SELECT T2.name , count(*) FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id HAVING count(*) >= 3	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id HAVING count(*) >= 3	network_1
SELECT T3.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id JOIN oberschüler AS T3 ON T1.freund_id = T3.id WHERE T2.name = "Kyle"	network_1
SELECT T3.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id JOIN oberschüler AS T3 ON T1.freund_id = T3.id WHERE T2.name = "Kyle"	network_1
SELECT count(*) FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.name = "Kyle"	network_1
SELECT count(*) FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.name = "Kyle"	network_1
SELECT id FROM oberschüler EXCEPT SELECT schüler_id FROM freund	network_1
SELECT id FROM oberschüler EXCEPT SELECT schüler_id FROM freund	network_1
SELECT name FROM oberschüler EXCEPT SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id	network_1
SELECT name FROM oberschüler EXCEPT SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id	network_1
SELECT schüler_id FROM freund INTERSECT SELECT liked_id FROM likes	network_1
SELECT schüler_id FROM freund INTERSECT SELECT liked_id FROM likes	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id INTERSECT SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.liked_id = T2.id	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id INTERSECT SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.liked_id = T2.id	network_1
SELECT schüler_id , count(*) FROM likes GROUP BY schüler_id	network_1
SELECT schüler_id , count(*) FROM likes GROUP BY schüler_id	network_1
SELECT T2.name , count(*) FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id	network_1
SELECT T2.name , count(*) FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id	network_1
SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id HAVING count(*) >= 2	network_1
SELECT T2.name FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id GROUP BY T1.schüler_id HAVING count(*) >= 2	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.grade > 5 GROUP BY T1.schüler_id HAVING count(*) >= 2	network_1
SELECT T2.name FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.grade > 5 GROUP BY T1.schüler_id HAVING count(*) >= 2	network_1
SELECT count(*) FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.name = "Kyle"	network_1
SELECT count(*) FROM likes AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id WHERE T2.name = "Kyle"	network_1
SELECT avg(grade) FROM oberschüler WHERE id IN (SELECT T1.schüler_id FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id)	network_1
SELECT avg(grade) FROM oberschüler WHERE id IN (SELECT T1.schüler_id FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id)	network_1
SELECT min(grade) FROM oberschüler WHERE id NOT IN (SELECT T1.schüler_id FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id)	network_1
SELECT min(grade) FROM oberschüler WHERE id NOT IN (SELECT T1.schüler_id FROM freund AS T1 JOIN oberschüler AS T2 ON T1.schüler_id = T2.id)	network_1
SELECT bundesland FROM besitzer INTERSECT SELECT bundesland FROM berufe	dog_kennels
SELECT bundesland FROM besitzer INTERSECT SELECT bundesland FROM berufe	dog_kennels
SELECT avg(alter) FROM hunde WHERE hund_id IN ( SELECT hund_id FROM behandlungen )	dog_kennels
SELECT avg(alter) FROM hunde WHERE hund_id IN ( SELECT hund_id FROM behandlungen )	dog_kennels
SELECT berufs_id , nachname , handynummer FROM berufe WHERE bundesland = 'Indiana' UNION SELECT T1.berufs_id , T1.nachname , T1.handynummer FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) > 2	dog_kennels
SELECT berufs_id , nachname , handynummer FROM berufe WHERE bundesland = 'Indiana' UNION SELECT T1.berufs_id , T1.nachname , T1.handynummer FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) > 2	dog_kennels
select name from hunde where hund_id not in ( select hund_id from behandlungen group by hund_id having sum(kosten_der_behandlung) > 1000 )	dog_kennels
select name from hunde where hund_id not in ( select hund_id from behandlungen group by hund_id having sum(kosten_der_behandlung) > 1000 )	dog_kennels
SELECT vorname FROM berufe UNION SELECT vorname FROM besitzer EXCEPT SELECT name FROM hunde	dog_kennels
SELECT vorname FROM berufe UNION SELECT vorname FROM besitzer EXCEPT SELECT name FROM hunde	dog_kennels
SELECT berufs_id , rollencode , e_mail_adresse FROM berufe EXCEPT SELECT T1.berufs_id , T1.rollencode , T1.e_mail_adresse FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id	dog_kennels
SELECT berufs_id , rollencode , e_mail_adresse FROM berufe EXCEPT SELECT T1.berufs_id , T1.rollencode , T1.e_mail_adresse FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id	dog_kennels
SELECT T1.besitzer_id , T2.vorname , T2.nachname FROM hunde AS T1 JOIN besitzer AS T2 ON T1.besitzer_id = T2.besitzer_id GROUP BY T1.besitzer_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.besitzer_id , T2.vorname , T2.nachname FROM hunde AS T1 JOIN besitzer AS T2 ON T1.besitzer_id = T2.besitzer_id GROUP BY T1.besitzer_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.berufs_id , T1.rollencode , T1.vorname FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) >= 2	dog_kennels
SELECT T1.berufs_id , T1.rollencode , T1.vorname FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) >= 2	dog_kennels
SELECT T1.rassenname FROM rassen AS T1 JOIN hunde AS T2 ON T1.rasse_code = T2.rasse_code GROUP BY T1.rassenname ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.rassenname FROM rassen AS T1 JOIN hunde AS T2 ON T1.rasse_code = T2.rasse_code GROUP BY T1.rassenname ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.besitzer_id , T1.nachname FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id JOIN behandlungen AS T3 ON T2.hund_id = T3.hund_id GROUP BY T1.besitzer_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.besitzer_id , T1.nachname FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id JOIN behandlungen AS T3 ON T2.hund_id = T3.hund_id GROUP BY T1.besitzer_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.beschreibung_der_behandlungsart FROM behandlungsarten AS T1 JOIN behandlungen AS T2 ON T1.behandlungsart_code = T2.behandlungsart_code GROUP BY T1.behandlungsart_code ORDER BY sum(kosten_der_behandlung) ASC LIMIT 1	dog_kennels
SELECT T1.beschreibung_der_behandlungsart FROM behandlungsarten AS T1 JOIN behandlungen AS T2 ON T1.behandlungsart_code = T2.behandlungsart_code GROUP BY T1.behandlungsart_code ORDER BY sum(kosten_der_behandlung) ASC LIMIT 1	dog_kennels
SELECT T1.besitzer_id , T1.postleitzahl FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id JOIN behandlungen AS T3 ON T2.hund_id = T3.hund_id GROUP BY T1.besitzer_id ORDER BY sum(T3.kosten_der_behandlung) DESC LIMIT 1	dog_kennels
SELECT T1.besitzer_id , T1.postleitzahl FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id JOIN behandlungen AS T3 ON T2.hund_id = T3.hund_id GROUP BY T1.besitzer_id ORDER BY sum(T3.kosten_der_behandlung) DESC LIMIT 1	dog_kennels
SELECT T1.berufs_id , T1.handynummer FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) >= 2	dog_kennels
SELECT T1.berufs_id , T1.handynummer FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id GROUP BY T1.berufs_id HAVING count(*) >= 2	dog_kennels
SELECT DISTINCT T1.vorname , T1.nachname FROM berufe AS T1 JOIN behandlungen AS T2 WHERE kosten_der_behandlung < ( SELECT avg(kosten_der_behandlung) FROM behandlungen )	dog_kennels
SELECT DISTINCT T1.vorname , T1.nachname FROM berufe AS T1 JOIN behandlungen AS T2 WHERE kosten_der_behandlung < ( SELECT avg(kosten_der_behandlung) FROM behandlungen )	dog_kennels
SELECT T1.datum_der_behandlung , T2.vorname FROM behandlungen AS T1 JOIN berufe AS T2 ON T1.berufs_id = T2.berufs_id	dog_kennels
SELECT T1.datum_der_behandlung , T2.vorname FROM behandlungen AS T1 JOIN berufe AS T2 ON T1.berufs_id = T2.berufs_id	dog_kennels
SELECT T1.kosten_der_behandlung , T2.beschreibung_der_behandlungsart FROM behandlungen AS T1 JOIN behandlungsarten AS T2 ON T1.behandlungsart_code = T2.behandlungsart_code	dog_kennels
SELECT T1.kosten_der_behandlung , T2.beschreibung_der_behandlungsart FROM behandlungen AS T1 JOIN behandlungsarten AS T2 ON T1.behandlungsart_code = T2.behandlungsart_code	dog_kennels
SELECT T1.vorname , T1.nachname , T2.größencode FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id	dog_kennels
SELECT T1.vorname , T1.nachname , T2.größencode FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id	dog_kennels
SELECT T1.vorname , T2.name FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id	dog_kennels
SELECT T1.vorname , T2.name FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id	dog_kennels
SELECT T1.name , T2.datum_der_behandlung FROM hunde AS T1 JOIN behandlungen AS T2 ON T1.hund_id = T2.hund_id WHERE T1.rasse_code = ( SELECT rasse_code FROM hunde GROUP BY rasse_code ORDER BY count(*) ASC LIMIT 1 )	dog_kennels
SELECT T1.name , T2.datum_der_behandlung FROM hunde AS T1 JOIN behandlungen AS T2 ON T1.hund_id = T2.hund_id WHERE T1.rasse_code = ( SELECT rasse_code FROM hunde GROUP BY rasse_code ORDER BY count(*) ASC LIMIT 1 )	dog_kennels
SELECT T1.vorname , T2.name FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id WHERE T1.bundesland = 'Virginia'	dog_kennels
SELECT T1.vorname , T2.name FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id WHERE T1.bundesland = 'Virginia'	dog_kennels
SELECT DISTINCT T1.datum_der_ankunft , T1.abreisedatum FROM hunde AS T1 JOIN behandlungen AS T2 ON T1.hund_id = T2.hund_id	dog_kennels
SELECT DISTINCT T1.datum_der_ankunft , T1.abreisedatum FROM hunde AS T1 JOIN behandlungen AS T2 ON T1.hund_id = T2.hund_id	dog_kennels
SELECT T1.nachname FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id WHERE T2.alter = ( SELECT max(alter) FROM hunde )	dog_kennels
SELECT T1.nachname FROM besitzer AS T1 JOIN hunde AS T2 ON T1.besitzer_id = T2.besitzer_id WHERE T2.alter = ( SELECT max(alter) FROM hunde )	dog_kennels
SELECT e_mail_adresse FROM berufe WHERE bundesland = 'Hawaii' OR bundesland = 'Wisconsin'	dog_kennels
SELECT e_mail_adresse FROM berufe WHERE bundesland = 'Hawaii' OR bundesland = 'Wisconsin'	dog_kennels
SELECT datum_der_ankunft , abreisedatum FROM hunde	dog_kennels
SELECT datum_der_ankunft , abreisedatum FROM hunde	dog_kennels
SELECT count(DISTINCT hund_id) FROM behandlungen	dog_kennels
SELECT count(DISTINCT hund_id) FROM behandlungen	dog_kennels
SELECT count(DISTINCT berufs_id) FROM behandlungen	dog_kennels
SELECT count(DISTINCT berufs_id) FROM behandlungen	dog_kennels
SELECT rollencode , straße , stadt , bundesland FROM berufe WHERE stadt LIKE '%West%'	dog_kennels
SELECT rollencode , straße , stadt , bundesland FROM berufe WHERE stadt LIKE '%West%'	dog_kennels
SELECT vorname , nachname , e_mail_adresse FROM besitzer WHERE bundesland LIKE '%North%'	dog_kennels
SELECT vorname , nachname , e_mail_adresse FROM besitzer WHERE bundesland LIKE '%North%'	dog_kennels
SELECT count(*) FROM hunde WHERE alter < ( SELECT avg(alter) FROM hunde )	dog_kennels
SELECT count(*) FROM hunde WHERE alter < ( SELECT avg(alter) FROM hunde )	dog_kennels
SELECT kosten_der_behandlung FROM behandlungen ORDER BY datum_der_behandlung DESC LIMIT 1	dog_kennels
SELECT kosten_der_behandlung FROM behandlungen ORDER BY datum_der_behandlung DESC LIMIT 1	dog_kennels
SELECT count(*) FROM hunde WHERE hund_id NOT IN ( SELECT hund_id FROM behandlungen )	dog_kennels
select count(*) from hunde where hund_id not in ( select hund_id from behandlungen )	dog_kennels
SELECT count(*) FROM besitzer WHERE besitzer_id NOT IN ( SELECT besitzer_id FROM hunde )	dog_kennels
SELECT count(*) FROM besitzer WHERE besitzer_id NOT IN ( SELECT besitzer_id FROM hunde )	dog_kennels
SELECT count(*) FROM berufe WHERE berufs_id NOT IN ( SELECT berufs_id FROM behandlungen )	dog_kennels
SELECT count(*) FROM berufe WHERE berufs_id NOT IN ( SELECT berufs_id FROM behandlungen )	dog_kennels
SELECT name , alter , gewicht FROM hunde WHERE ausgesetzt_ja_oder_nein = 1	dog_kennels
SELECT name , alter , gewicht FROM hunde WHERE ausgesetzt_ja_oder_nein = 1	dog_kennels
SELECT avg(alter) FROM hunde	dog_kennels
SELECT avg(alter) FROM hunde	dog_kennels
SELECT max(alter) FROM hunde	dog_kennels
SELECT max(alter) FROM hunde	dog_kennels
SELECT gebührenart , gebührenbetrag FROM gebühren	dog_kennels
SELECT gebührenart , gebührenbetrag FROM gebühren	dog_kennels
SELECT max(gebührenbetrag) FROM gebühren	dog_kennels
SELECT max(gebührenbetrag) FROM gebühren	dog_kennels
SELECT e_mail_adresse , handynummer , telefon_zu_hause FROM berufe	dog_kennels
SELECT e_mail_adresse , handynummer , telefon_zu_hause FROM berufe	dog_kennels
SELECT DISTINCT rasse_code , größencode FROM hunde	dog_kennels
SELECT DISTINCT rasse_code , größencode FROM hunde	dog_kennels
SELECT DISTINCT T1.vorname , T3.beschreibung_der_behandlungsart FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id JOIN behandlungsarten AS T3 ON T2.behandlungsart_code = T3.behandlungsart_code	dog_kennels
SELECT DISTINCT T1.vorname , T3.beschreibung_der_behandlungsart FROM berufe AS T1 JOIN behandlungen AS T2 ON T1.berufs_id = T2.berufs_id JOIN behandlungsarten AS T3 ON T2.behandlungsart_code = T3.behandlungsart_code	dog_kennels
SELECT count(*) FROM sänger	singer
SELECT count(*) FROM sänger	singer
SELECT name FROM sänger ORDER BY nettovermögen_millionen ASC	singer
SELECT name FROM sänger ORDER BY nettovermögen_millionen ASC	singer
SELECT geburtsjahr , staatsangehörigkeit FROM sänger	singer
SELECT geburtsjahr , staatsangehörigkeit FROM sänger	singer
SELECT name FROM sänger WHERE staatsangehörigkeit != "France"	singer
SELECT name FROM sänger WHERE staatsangehörigkeit != "France"	singer
SELECT name FROM sänger WHERE geburtsjahr = 1948 OR geburtsjahr = 1949	singer
SELECT name FROM sänger WHERE geburtsjahr = 1948 OR geburtsjahr = 1949	singer
SELECT name FROM sänger ORDER BY nettovermögen_millionen DESC LIMIT 1	singer
SELECT name FROM sänger ORDER BY nettovermögen_millionen DESC LIMIT 1	singer
SELECT staatsangehörigkeit , COUNT(*) FROM sänger GROUP BY staatsangehörigkeit	singer
SELECT staatsangehörigkeit , COUNT(*) FROM sänger GROUP BY staatsangehörigkeit	singer
SELECT staatsangehörigkeit FROM sänger GROUP BY staatsangehörigkeit ORDER BY COUNT(*) DESC LIMIT 1	singer
select staatsangehörigkeit from sänger group by staatsangehörigkeit order by count(*) desc limit 1	singer
SELECT staatsangehörigkeit , max(nettovermögen_millionen) FROM sänger GROUP BY staatsangehörigkeit	singer
SELECT staatsangehörigkeit , max(nettovermögen_millionen) FROM sänger GROUP BY staatsangehörigkeit	singer
SELECT T2.titel , T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id	singer
SELECT T2.titel , T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id	singer
SELECT DISTINCT T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id WHERE T2.verkauf > 300000	singer
SELECT DISTINCT T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id WHERE T2.verkauf > 300000	singer
SELECT T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T1.name HAVING COUNT(*) > 1	singer
SELECT T1.name FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T1.name HAVING COUNT(*) > 1	singer
SELECT T1.name , sum(T2.verkauf) FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T1.name	singer
SELECT T1.name , sum(T2.verkauf) FROM sänger AS T1 JOIN song AS T2 ON T1.sänger_id = T2.sänger_id GROUP BY T1.name	singer
SELECT name FROM sänger WHERE sänger_id NOT IN (SELECT sänger_id FROM song)	singer
SELECT name FROM sänger WHERE sänger_id NOT IN (SELECT sänger_id FROM song)	singer
SELECT staatsangehörigkeit FROM sänger WHERE geburtsjahr < 1945 INTERSECT SELECT staatsangehörigkeit FROM sänger WHERE geburtsjahr > 1955	singer
SELECT staatsangehörigkeit FROM sänger WHERE geburtsjahr < 1945 INTERSECT SELECT staatsangehörigkeit FROM sänger WHERE geburtsjahr > 1955	singer
SELECT count(*) FROM andere_verfügbare_eigenschaften	real_estate_properties
SELECT T2.merkmalstyp_name FROM andere_verfügbare_eigenschaften AS T1 JOIN referenz_merkmalstypen AS T2 ON T1.merkmalstyp_code = T2.merkmalstyp_code WHERE T1.merkmalsname = "AirCon"	real_estate_properties
SELECT T2.eigenschaftsart_beschreibung FROM eigenschaften AS T1 JOIN referenz_eigenschaftstypen AS T2 ON T1.eigenschaftsart_code = T2.eigenschaftsart_code GROUP BY T1.eigenschaftsart_code	real_estate_properties
SELECT immobilienname FROM eigenschaften WHERE eigenschaftsart_code = "House" UNION SELECT immobilienname FROM eigenschaften WHERE eigenschaftsart_code = "Apartment" AND anzahl_der_zimmer > 1	real_estate_properties
