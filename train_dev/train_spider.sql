SELECT count(*) FROM kopf WHERE alter > 56	department_management
SELECT name , geburtsland , alter FROM kopf ORDER BY alter	department_management
SELECT erstellung , name , budget_in_milliarden FROM abteilung	department_management
SELECT max(budget_in_milliarden) , min(budget_in_milliarden) FROM abteilung	department_management
SELECT avg(anzahl_der_mitarbeiter) FROM abteilung WHERE rang BETWEEN 10 AND 15	department_management
SELECT name FROM kopf WHERE geburtsland != 'California'	department_management
SELECT DISTINCT T1.erstellung FROM abteilung AS T1 JOIN verwaltung AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN kopf AS T3 ON T2.leiter_id = T3.leiter_id WHERE T3.geburtsland = 'Alabama'	department_management
SELECT geburtsland FROM kopf GROUP BY geburtsland HAVING count(*) >= 3	department_management
SELECT erstellung FROM abteilung GROUP BY erstellung ORDER BY count(*) DESC LIMIT 1	department_management
SELECT T1.name , T1.anzahl_der_mitarbeiter FROM abteilung AS T1 JOIN verwaltung AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T2.aushilfstätigkeit = 'Yes'	department_management
SELECT count(DISTINCT aushilfstätigkeit) FROM verwaltung	department_management
SELECT count(*) FROM abteilung WHERE abteilung_id NOT IN (SELECT abteilung_id FROM verwaltung);	department_management
SELECT DISTINCT T1.alter FROM verwaltung AS T2 JOIN kopf AS T1 ON T1.leiter_id = T2.leiter_id WHERE T2.aushilfstätigkeit = 'Yes'	department_management
SELECT T3.geburtsland FROM abteilung AS T1 JOIN verwaltung AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN kopf AS T3 ON T2.leiter_id = T3.leiter_id WHERE T1.name = 'Treasury' INTERSECT SELECT T3.geburtsland FROM abteilung AS T1 JOIN verwaltung AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN kopf AS T3 ON T2.leiter_id = T3.leiter_id WHERE T1.name = 'Homeland Security'	department_management
SELECT T1.abteilung_id , T1.name , count(*) FROM verwaltung AS T2 JOIN abteilung AS T1 ON T1.abteilung_id = T2.abteilung_id GROUP BY T1.abteilung_id HAVING count(*) > 1	department_management
SELECT leiter_id , name FROM kopf WHERE name LIKE '%Ha%'	department_management
SELECT count(*) FROM bauernhof	farm
SELECT count(*) FROM bauernhof	farm
SELECT pferde_gesamt FROM bauernhof ORDER BY pferde_gesamt ASC	farm
SELECT pferde_gesamt FROM bauernhof ORDER BY pferde_gesamt ASC	farm
SELECT gastgeber FROM bauernhof_wettbewerb WHERE thema != 'Aliens'	farm
SELECT gastgeber FROM bauernhof_wettbewerb WHERE thema != 'Aliens'	farm
SELECT thema FROM bauernhof_wettbewerb ORDER BY jahr ASC	farm
SELECT thema FROM bauernhof_wettbewerb ORDER BY jahr ASC	farm
SELECT avg(arbeitspferde) FROM bauernhof WHERE pferde_gesamt > 5000	farm
SELECT avg(arbeitspferde) FROM bauernhof WHERE pferde_gesamt > 5000	farm
SELECT max(kühe) , min(kühe) FROM bauernhof	farm
SELECT max(kühe) , min(kühe) FROM bauernhof	farm
SELECT count(DISTINCT status) FROM stadt	farm
SELECT count(DISTINCT status) FROM stadt	farm
SELECT offizieller_name FROM stadt ORDER BY bevölkerung DESC	farm
SELECT offizieller_name FROM stadt ORDER BY bevölkerung DESC	farm
SELECT offizieller_name , status FROM stadt ORDER BY bevölkerung DESC LIMIT 1	farm
SELECT offizieller_name , status FROM stadt ORDER BY bevölkerung DESC LIMIT 1	farm
SELECT T2.jahr , T1.offizieller_name FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id	farm
SELECT T2.jahr , T1.offizieller_name FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id	farm
SELECT T1.offizieller_name FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id GROUP BY T2.gastgeberstadt_id HAVING COUNT(*) > 1	farm
SELECT T1.offizieller_name FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id GROUP BY T2.gastgeberstadt_id HAVING COUNT(*) > 1	farm
SELECT T1.status FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id GROUP BY T2.gastgeberstadt_id ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T1.status FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id GROUP BY T2.gastgeberstadt_id ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T2.thema FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id WHERE T1.bevölkerung > 1000	farm
SELECT T2.thema FROM stadt AS T1 JOIN bauernhof_wettbewerb AS T2 ON T1.stadt_id = T2.gastgeberstadt_id WHERE T1.bevölkerung > 1000	farm
SELECT status , avg(bevölkerung) FROM stadt GROUP BY status	farm
SELECT status , avg(bevölkerung) FROM stadt GROUP BY status	farm
SELECT status FROM stadt GROUP BY status ORDER BY COUNT(*) ASC	farm
SELECT status FROM stadt GROUP BY status ORDER BY COUNT(*) ASC	farm
SELECT status FROM stadt GROUP BY status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT status FROM stadt GROUP BY status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT offizieller_name FROM stadt WHERE stadt_id NOT IN (SELECT gastgeberstadt_id FROM bauernhof_wettbewerb)	farm
SELECT offizieller_name FROM stadt WHERE stadt_id NOT IN (SELECT gastgeberstadt_id FROM bauernhof_wettbewerb)	farm
SELECT status FROM stadt WHERE bevölkerung > 1500 INTERSECT SELECT status FROM stadt WHERE bevölkerung < 500	farm
SELECT status FROM stadt WHERE bevölkerung > 1500 INTERSECT SELECT status FROM stadt WHERE bevölkerung < 500	farm
SELECT offizieller_name FROM stadt WHERE bevölkerung > 1500 OR bevölkerung < 500	farm
SELECT offizieller_name FROM stadt WHERE bevölkerung > 1500 OR bevölkerung < 500	farm
SELECT volkszählungsrang FROM stadt WHERE status != "Village"	farm
SELECT volkszählungsrang FROM stadt WHERE status != "Village"	farm
SELECT T1.kursname FROM kurse AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kurs_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.kursname FROM kurse AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kurs_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT student_id FROM kursanmeldungen_von_studenten GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT student_id FROM kursanmeldungen_von_studenten GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT T2.vorname , T2.nachname FROM kandidaten AS T1 JOIN leute AS T2 ON T1.kandidaten_id = T2.person_id	student_assessment
SELECT T2.vorname , T2.nachname FROM kandidaten AS T1 JOIN leute AS T2 ON T1.kandidaten_id = T2.person_id	student_assessment
SELECT student_id FROM studenten WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM studenten WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT T1.student_id , T2.kursname FROM kursanmeldungen_von_studenten AS T1 JOIN kurse AS T2 ON T1.kurs_id = T2.kurs_id	student_assessment
SELECT T2.student_details FROM kursanmeldungen_von_studenten AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT T2.student_details FROM kursanmeldungen_von_studenten AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT count(*) FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "English"	student_assessment
SELECT count(*) FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "English"	student_assessment
SELECT count(*) FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.student_id = 171	student_assessment
SELECT count(*) FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.student_id = 171	student_assessment
SELECT T2.kandidaten_id FROM leute AS T1 JOIN kandidaten AS T2 ON T1.person_id = T2.kandidaten_id WHERE T1.e_mail_adresse = "stanley.monahan@example.org"	student_assessment
SELECT T2.kandidaten_id FROM leute AS T1 JOIN kandidaten AS T2 ON T1.person_id = T2.kandidaten_id WHERE T1.e_mail_adresse = "stanley.monahan@example.org"	student_assessment
SELECT kandidaten_id FROM bewerberbewertungen ORDER BY bewertungsdatum DESC LIMIT 1	student_assessment
SELECT kandidaten_id FROM bewerberbewertungen ORDER BY bewertungsdatum DESC LIMIT 1	student_assessment
SELECT T1.student_details FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_details FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_id , count(*) FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T1.student_id , count(*) FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T3.kursname , count(*) FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id JOIN kurse AS T3 ON T2.kurs_id = T3.kurs_id GROUP BY T2.kurs_id	student_assessment
SELECT T3.kursname , count(*) FROM studenten AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.student_id = T2.student_id JOIN kurse AS T3 ON T2.kurs_id = T3.kurs_id GROUP BY T2.kurs_id	student_assessment
SELECT kandidaten_id FROM bewerberbewertungen WHERE beurteilungsergebnis_code = "Pass"	student_assessment
SELECT kandidaten_id FROM bewerberbewertungen WHERE beurteilungsergebnis_code = "Pass"	student_assessment
SELECT T3.handynummer FROM kandidaten AS T1 JOIN bewerberbewertungen AS T2 ON T1.kandidaten_id = T2.kandidaten_id JOIN leute AS T3 ON T1.kandidaten_id = T3.person_id WHERE T2.beurteilungsergebnis_code = "Fail"	student_assessment
SELECT T3.handynummer FROM kandidaten AS T1 JOIN bewerberbewertungen AS T2 ON T1.kandidaten_id = T2.kandidaten_id JOIN leute AS T3 ON T1.kandidaten_id = T3.person_id WHERE T2.beurteilungsergebnis_code = "Fail"	student_assessment
SELECT student_id FROM student_course_attendance WHERE kurs_id = 301	student_assessment
SELECT student_id FROM student_course_attendance WHERE kurs_id = 301	student_assessment
SELECT student_id FROM student_course_attendance WHERE kurs_id = 301 ORDER BY datum_der_anwesenheit DESC LIMIT 1	student_assessment
SELECT student_id FROM student_course_attendance WHERE kurs_id = 301 ORDER BY datum_der_anwesenheit DESC LIMIT 1	student_assessment
SELECT DISTINCT T1.ort FROM adressen AS T1 JOIN personen_adressen AS T2 ON T1.adresse_id = T2.adresse_id	student_assessment
SELECT DISTINCT T1.ort FROM adressen AS T1 JOIN personen_adressen AS T2 ON T1.adresse_id = T2.adresse_id	student_assessment
SELECT DISTINCT T1.ort FROM adressen AS T1 JOIN personen_adressen AS T2 ON T1.adresse_id = T2.adresse_id JOIN studenten AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT DISTINCT T1.ort FROM adressen AS T1 JOIN personen_adressen AS T2 ON T1.adresse_id = T2.adresse_id JOIN studenten AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT kursname FROM kurse ORDER BY kursname	student_assessment
SELECT kursname FROM kurse ORDER BY kursname	student_assessment
SELECT vorname FROM leute ORDER BY vorname	student_assessment
SELECT vorname FROM leute ORDER BY vorname	student_assessment
SELECT student_id FROM kursanmeldungen_von_studenten UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM kursanmeldungen_von_studenten UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT kurs_id FROM kursanmeldungen_von_studenten WHERE student_id = 121 UNION SELECT kurs_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT kurs_id FROM kursanmeldungen_von_studenten WHERE student_id = 121 UNION SELECT kurs_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT * FROM kursanmeldungen_von_studenten WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT * FROM kursanmeldungen_von_studenten WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT T2.student_id FROM kurse AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM kurse AS T1 JOIN kursanmeldungen_von_studenten AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "statistics" ORDER BY T2.datum_der_anwesenheit	student_assessment
SELECT T2.student_id FROM kurse AS T1 JOIN student_course_attendance AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "statistics" ORDER BY T2.datum_der_anwesenheit	student_assessment
SELECT datum FROM wetter WHERE max_temperatur_f > 85	bike_1
SELECT datum FROM wetter WHERE max_temperatur_f > 85	bike_1
SELECT name FROM station WHERE breitengrad < 37.5	bike_1
SELECT name FROM station WHERE breitengrad < 37.5	bike_1
SELECT stadt , max(breitengrad) FROM station GROUP BY stadt	bike_1
SELECT stadt , max(breitengrad) FROM station GROUP BY stadt	bike_1
SELECT name_der_startstation , name_der_endstation FROM reise ORDER BY id LIMIT 3	bike_1
SELECT name_der_startstation , name_der_endstation FROM reise ORDER BY id LIMIT 3	bike_1
SELECT avg(breitengrad) , avg(längengrad) FROM station WHERE stadt = "San Jose"	bike_1
SELECT avg(breitengrad) , avg(längengrad) FROM station WHERE stadt = "San Jose"	bike_1
SELECT id FROM reise ORDER BY dauer LIMIT 1	bike_1
SELECT id FROM reise ORDER BY dauer LIMIT 1	bike_1
SELECT sum(dauer) , max(dauer) FROM reise WHERE fahrrad_id = 636	bike_1
SELECT sum(dauer) , max(dauer) FROM reise WHERE fahrrad_id = 636	bike_1
SELECT postleitzahl , avg(mittlere_temperatur_f) FROM wetter WHERE datum LIKE "8/%" GROUP BY postleitzahl	bike_1
SELECT postleitzahl , avg(mittlere_temperatur_f) FROM wetter WHERE datum LIKE "8/%" GROUP BY postleitzahl	bike_1
SELECT count(DISTINCT fahrrad_id) FROM reise	bike_1
SELECT count(DISTINCT fahrrad_id) FROM reise	bike_1
SELECT count(DISTINCT stadt) FROM station	bike_1
SELECT count(DISTINCT stadt) FROM station	bike_1
SELECT COUNT(*) FROM station WHERE stadt = "Mountain View"	bike_1
SELECT COUNT(*) FROM station WHERE stadt = "Mountain View"	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.fahrräder_verfügbar = 7	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.fahrräder_verfügbar = 7	bike_1
SELECT name_der_startstation , startstationsnummer FROM reise WHERE startdatum LIKE "8/%" GROUP BY name_der_startstation ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT name_der_startstation , startstationsnummer FROM reise WHERE startdatum LIKE "8/%" GROUP BY name_der_startstation ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT fahrrad_id FROM reise WHERE postleitzahl = 94002 GROUP BY fahrrad_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT fahrrad_id FROM reise WHERE postleitzahl = 94002 GROUP BY fahrrad_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT COUNT(*) FROM wetter WHERE mittlere_feuchte > 50 AND mittlere_sichtweite_meilen > 8	bike_1
SELECT COUNT(*) FROM wetter WHERE mittlere_feuchte > 50 AND mittlere_sichtweite_meilen > 8	bike_1
SELECT T1.breitengrad , T1.längengrad , T1.stadt FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer ORDER BY T2.dauer LIMIT 1	bike_1
SELECT T1.breitengrad , T1.längengrad , T1.stadt FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer ORDER BY T2.dauer LIMIT 1	bike_1
SELECT id FROM station WHERE stadt = "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(fahrräder_verfügbar) > 10	bike_1
SELECT id FROM station WHERE stadt = "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(fahrräder_verfügbar) > 10	bike_1
SELECT T1.name , T1.id FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(T2.fahrräder_verfügbar) > 14 UNION SELECT name , id FROM station WHERE installationsdatum LIKE "12/%"	bike_1
SELECT T1.name , T1.id FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(T2.fahrräder_verfügbar) > 14 UNION SELECT name , id FROM station WHERE installationsdatum LIKE "12/%"	bike_1
SELECT wolkenbedeckung FROM wetter WHERE postleitzahl = 94107 GROUP BY wolkenbedeckung ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT wolkenbedeckung FROM wetter WHERE postleitzahl = 94107 GROUP BY wolkenbedeckung ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl ORDER BY avg(mittlerer_luftdruck_auf_meereshöhe_in_zoll) LIMIT 1	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl ORDER BY avg(mittlerer_luftdruck_auf_meereshöhe_in_zoll) LIMIT 1	bike_1
SELECT avg(fahrräder_verfügbar) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE stadt = "Palo Alto")	bike_1
SELECT avg(fahrräder_verfügbar) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE stadt = "Palo Alto")	bike_1
SELECT avg(längengrad) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(fahrräder_verfügbar) > 10)	bike_1
SELECT avg(längengrad) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(fahrräder_verfügbar) > 10)	bike_1
SELECT datum , postleitzahl FROM wetter WHERE max_temperatur_f >= 80	bike_1
SELECT datum , postleitzahl FROM wetter WHERE max_temperatur_f >= 80	bike_1
SELECT T1.id FROM reise AS T1 JOIN wetter AS T2 ON T1.postleitzahl = T2.postleitzahl GROUP BY T2.postleitzahl HAVING avg(T2.mittlere_temperatur_f) > 60	bike_1
SELECT T1.id FROM reise AS T1 JOIN wetter AS T2 ON T1.postleitzahl = T2.postleitzahl GROUP BY T2.postleitzahl HAVING avg(T2.mittlere_temperatur_f) > 60	bike_1
SELECT postleitzahl , count(*) FROM wetter WHERE maximale_windgeschwindigkeit_mph >= 25 GROUP BY postleitzahl	bike_1
SELECT postleitzahl , count(*) FROM wetter WHERE maximale_windgeschwindigkeit_mph >= 25 GROUP BY postleitzahl	bike_1
SELECT datum , postleitzahl FROM wetter WHERE min_taupunkt_f < (SELECT min(min_taupunkt_f) FROM wetter WHERE postleitzahl = 94107)	bike_1
SELECT datum , postleitzahl FROM wetter WHERE min_taupunkt_f < (SELECT min(min_taupunkt_f) FROM wetter WHERE postleitzahl = 94107)	bike_1
SELECT T1.id , T2.installationsdatum FROM reise AS T1 JOIN station AS T2 ON T1.endstationsnummer = T2.id	bike_1
SELECT T1.id , T2.installationsdatum FROM reise AS T1 JOIN station AS T2 ON T1.endstationsnummer = T2.id	bike_1
SELECT T1.id FROM reise AS T1 JOIN station AS T2 ON T1.startstationsnummer = T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT T1.id FROM reise AS T1 JOIN station AS T2 ON T1.startstationsnummer = T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT count(*) FROM reise AS T1 JOIN station AS T2 ON T1.endstationsnummer = T2.id WHERE T2.stadt != "San Francisco"	bike_1
SELECT count(*) FROM reise AS T1 JOIN station AS T2 ON T1.endstationsnummer = T2.id WHERE T2.stadt != "San Francisco"	bike_1
SELECT datum FROM wetter WHERE postleitzahl = 94107 AND ereignisse != "Fog" AND ereignisse != "Rain"	bike_1
SELECT datum FROM wetter WHERE postleitzahl = 94107 AND ereignisse != "Fog" AND ereignisse != "Rain"	bike_1
SELECT id FROM station WHERE breitengrad > 37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(fahrräder_verfügbar) < 7	bike_1
SELECT id FROM station WHERE breitengrad > 37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(fahrräder_verfügbar) < 7	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(fahrräder_verfügbar) > 10 EXCEPT SELECT name FROM station WHERE stadt = "San Jose"	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(fahrräder_verfügbar) > 10 EXCEPT SELECT name FROM station WHERE stadt = "San Jose"	bike_1
SELECT name , breitengrad , stadt FROM station ORDER BY breitengrad LIMIT 1	bike_1
SELECT name , breitengrad , stadt FROM station ORDER BY breitengrad LIMIT 1	bike_1
SELECT datum , mittlere_temperatur_f , mittlere_feuchte FROM wetter ORDER BY maximale_böengeschwindigkeit_mph DESC LIMIT 3	bike_1
SELECT datum , mittlere_temperatur_f , mittlere_feuchte FROM wetter ORDER BY maximale_böengeschwindigkeit_mph DESC LIMIT 3	bike_1
SELECT stadt , COUNT(*) FROM station GROUP BY stadt HAVING COUNT(*) >= 15	bike_1
SELECT stadt , COUNT(*) FROM station GROUP BY stadt HAVING COUNT(*) >= 15	bike_1
SELECT startstationsnummer , name_der_startstation FROM reise GROUP BY name_der_startstation HAVING COUNT(*) >= 200	bike_1
SELECT startstationsnummer , name_der_startstation FROM reise GROUP BY name_der_startstation HAVING COUNT(*) >= 200	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl HAVING avg(mittlere_sichtweite_meilen) < 10	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl HAVING avg(mittlere_sichtweite_meilen) < 10	bike_1
SELECT stadt FROM station GROUP BY stadt ORDER BY max(breitengrad) DESC	bike_1
SELECT stadt FROM station GROUP BY stadt ORDER BY max(breitengrad) DESC	bike_1
SELECT datum , wolkenbedeckung FROM wetter ORDER BY wolkenbedeckung DESC LIMIT 5	bike_1
SELECT datum , wolkenbedeckung FROM wetter ORDER BY wolkenbedeckung DESC LIMIT 5	bike_1
SELECT id , dauer FROM reise ORDER BY dauer DESC LIMIT 3	bike_1
SELECT id , dauer FROM reise ORDER BY dauer DESC LIMIT 3	bike_1
SELECT T1.name , T1.längengrad , avg(T2.dauer) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer GROUP BY T2.startstationsnummer	bike_1
SELECT T1.name , T1.längengrad , avg(T2.dauer) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer GROUP BY T2.startstationsnummer	bike_1
SELECT T1.name , T1.breitengrad , min(T2.dauer) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.endstationsnummer GROUP BY T2.endstationsnummer	bike_1
SELECT T1.name , T1.breitengrad , min(T2.dauer) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.endstationsnummer GROUP BY T2.endstationsnummer	bike_1
SELECT DISTINCT name_der_startstation FROM reise WHERE dauer < 100	bike_1
SELECT DISTINCT name_der_startstation FROM reise WHERE dauer < 100	bike_1
SELECT DISTINCT postleitzahl FROM wetter EXCEPT SELECT DISTINCT postleitzahl FROM wetter WHERE maximaler_taupunkt_f >= 70	bike_1
SELECT DISTINCT postleitzahl FROM wetter EXCEPT SELECT DISTINCT postleitzahl FROM wetter WHERE maximaler_taupunkt_f >= 70	bike_1
SELECT id FROM reise WHERE dauer >= (SELECT avg(dauer) FROM reise WHERE postleitzahl = 94103)	bike_1
SELECT id FROM reise WHERE dauer >= (SELECT avg(dauer) FROM reise WHERE postleitzahl = 94103)	bike_1
SELECT datum FROM wetter WHERE mittlerer_luftdruck_auf_meereshöhe_in_zoll BETWEEN 30.3 AND 31	bike_1
SELECT datum FROM wetter WHERE mittlerer_luftdruck_auf_meereshöhe_in_zoll BETWEEN 30.3 AND 31	bike_1
SELECT datum , max_temperatur_f - mindesttemperatur_f FROM wetter ORDER BY max_temperatur_f - mindesttemperatur_f LIMIT 1	bike_1
SELECT datum , max_temperatur_f - mindesttemperatur_f FROM wetter ORDER BY max_temperatur_f - mindesttemperatur_f LIMIT 1	bike_1
SELECT DISTINCT T1.id , T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.fahrräder_verfügbar > 12	bike_1
SELECT DISTINCT T1.id , T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.fahrräder_verfügbar > 12	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl HAVING avg(mittlere_feuchte) < 70 INTERSECT SELECT postleitzahl FROM reise GROUP BY postleitzahl HAVING count(*) >= 100	bike_1
SELECT postleitzahl FROM wetter GROUP BY postleitzahl HAVING avg(mittlere_feuchte) < 70 INTERSECT SELECT postleitzahl FROM reise GROUP BY postleitzahl HAVING count(*) >= 100	bike_1
SELECT name FROM station WHERE stadt = "Palo Alto" EXCEPT SELECT name_der_endstation FROM reise GROUP BY name_der_endstation HAVING count(*) > 100	bike_1
SELECT name FROM station WHERE stadt = "Palo Alto" EXCEPT SELECT name_der_endstation FROM reise GROUP BY name_der_endstation HAVING count(*) > 100	bike_1
SELECT count(*) FROM station AS T1 JOIN reise AS T2 JOIN station AS T3 JOIN reise AS T4 ON T1.id = T2.startstationsnummer AND T2.id = T4.id AND T3.id = T4.endstationsnummer WHERE T1.stadt = "Mountain View" AND T3.stadt = "Palo Alto"	bike_1
SELECT count(*) FROM station AS T1 JOIN reise AS T2 JOIN station AS T3 JOIN reise AS T4 ON T1.id = T2.startstationsnummer AND T2.id = T4.id AND T3.id = T4.endstationsnummer WHERE T1.stadt = "Mountain View" AND T3.stadt = "Palo Alto"	bike_1
SELECT avg(T1.breitengrad) , avg(T1.längengrad) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer	bike_1
SELECT avg(T1.breitengrad) , avg(T1.längengrad) FROM station AS T1 JOIN reise AS T2 ON T1.id = T2.startstationsnummer	bike_1
SELECT count(*) FROM buch	book_2
SELECT autor FROM buch ORDER BY autor ASC	book_2
SELECT titel FROM buch ORDER BY ausgaben ASC	book_2
SELECT titel FROM buch WHERE autor != "Elaine Lee"	book_2
SELECT titel , ausgaben FROM buch	book_2
SELECT veröffentlichungsdatum FROM publikation ORDER BY preis DESC	book_2
SELECT DISTINCT verlag FROM publikation WHERE preis > 5000000	book_2
SELECT verlag FROM publikation ORDER BY preis DESC LIMIT 1	book_2
SELECT veröffentlichungsdatum FROM publikation ORDER BY preis ASC LIMIT 3	book_2
SELECT T1.titel , T2.veröffentlichungsdatum FROM buch AS T1 JOIN publikation AS T2 ON T1.buch_id = T2.buch_id	book_2
SELECT T1.autor FROM buch AS T1 JOIN publikation AS T2 ON T1.buch_id = T2.buch_id WHERE T2.preis > 4000000	book_2
SELECT T1.titel FROM buch AS T1 JOIN publikation AS T2 ON T1.buch_id = T2.buch_id ORDER BY T2.preis DESC	book_2
SELECT verlag FROM publikation GROUP BY verlag HAVING COUNT(*) > 1	book_2
SELECT verlag , COUNT(*) FROM publikation GROUP BY verlag	book_2
SELECT veröffentlichungsdatum FROM publikation GROUP BY veröffentlichungsdatum ORDER BY COUNT(*) DESC LIMIT 1	book_2
SELECT autor FROM buch GROUP BY autor HAVING COUNT(*) > 1	book_2
SELECT titel FROM buch WHERE buch_id NOT IN (SELECT buch_id FROM publikation)	book_2
SELECT verlag FROM publikation WHERE preis > 10000000 INTERSECT SELECT verlag FROM publikation WHERE preis < 5000000	book_2
SELECT COUNT (DISTINCT veröffentlichungsdatum) FROM publikation	book_2
SELECT COUNT (DISTINCT veröffentlichungsdatum) FROM publikation	book_2
SELECT preis FROM publikation WHERE verlag = "Person" OR verlag = "Wiley"	book_2
SELECT count(*) FROM schauspieler	musical
SELECT count(*) FROM schauspieler	musical
SELECT name FROM schauspieler ORDER BY name ASC	musical
SELECT name FROM schauspieler ORDER BY name ASC	musical
SELECT charakter , dauer FROM schauspieler	musical
SELECT charakter , dauer FROM schauspieler	musical
SELECT name FROM schauspieler WHERE alter != 20	musical
SELECT name FROM schauspieler WHERE alter != 20	musical
SELECT charakter FROM schauspieler ORDER BY alter DESC	musical
SELECT charakter FROM schauspieler ORDER BY alter DESC	musical
SELECT dauer FROM schauspieler ORDER BY alter DESC LIMIT 1	musical
SELECT dauer FROM schauspieler ORDER BY alter DESC LIMIT 1	musical
SELECT name FROM musik WHERE nominierter = "Bob Fosse"	musical
SELECT name FROM musik WHERE nominierter = "Bob Fosse"	musical
SELECT DISTINCT nominierter FROM musik WHERE preis != "Tony Award"	musical
SELECT DISTINCT nominierter FROM musik WHERE preis != "Tony Award"	musical
SELECT T1.name , T2.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id	musical
SELECT T1.name , T2.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id	musical
SELECT T1.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id WHERE T2.name = "The Phantom of the Opera"	musical
SELECT T1.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id WHERE T2.name = "The Phantom of the Opera"	musical
SELECT T1.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id ORDER BY T2.jahr DESC	musical
SELECT T1.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id ORDER BY T2.jahr DESC	musical
SELECT T2.name , COUNT(*) FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id GROUP BY T1.musical_id	musical
SELECT T2.name , COUNT(*) FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id GROUP BY T1.musical_id	musical
SELECT T2.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id GROUP BY T1.musical_id HAVING COUNT(*) >= 3	musical
SELECT T2.name FROM schauspieler AS T1 JOIN musik AS T2 ON T1.musical_id = T2.musical_id GROUP BY T1.musical_id HAVING COUNT(*) >= 3	musical
SELECT nominierter , COUNT(*) FROM musik GROUP BY nominierter	musical
SELECT nominierter , COUNT(*) FROM musik GROUP BY nominierter	musical
SELECT nominierter FROM musik GROUP BY nominierter ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT nominierter FROM musik GROUP BY nominierter ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT ergebnis FROM musik GROUP BY ergebnis ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT ergebnis FROM musik GROUP BY ergebnis ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT nominierter FROM musik GROUP BY nominierter HAVING COUNT(*) > 2	musical
SELECT nominierter FROM musik GROUP BY nominierter HAVING COUNT(*) > 2	musical
SELECT name FROM musik WHERE musical_id NOT IN (SELECT musical_id FROM schauspieler)	musical
SELECT name FROM musik WHERE musical_id NOT IN (SELECT musical_id FROM schauspieler)	musical
SELECT nominierter FROM musik WHERE preis = "Tony Award" INTERSECT SELECT nominierter FROM musik WHERE preis = "Drama Desk Award"	musical
SELECT nominierter FROM musik WHERE preis = "Tony Award" INTERSECT SELECT nominierter FROM musik WHERE preis = "Drama Desk Award"	musical
SELECT nominierter FROM musik WHERE preis = "Tony Award" OR preis = "Cleavant Derricks"	musical
SELECT nominierter FROM musik WHERE preis = "Tony Award" OR preis = "Cleavant Derricks"	musical
SELECT email FROM benutzerprofile WHERE name = 'Mary'	twitter_1
SELECT partition_id FROM benutzerprofile WHERE name = 'Iron Man'	twitter_1
SELECT count(*) FROM benutzerprofile	twitter_1
SELECT count(*) FROM follows	twitter_1
SELECT count(*) FROM follows GROUP BY user_id	twitter_1
SELECT count(*) FROM tweets	twitter_1
SELECT count(DISTINCT user_id) FROM tweets	twitter_1
SELECT name , email FROM benutzerprofile WHERE name LIKE '%Swift%'	twitter_1
SELECT name FROM benutzerprofile WHERE email LIKE '%superstar%' OR email LIKE '%edu%'	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT name , email FROM benutzerprofile WHERE follower > 1000	twitter_1
SELECT T1.name FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id HAVING count(*) > (SELECT count(*) FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.user_id WHERE T1.name = 'Tyler Swift')	twitter_1
SELECT T1.name , T1.email FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id HAVING count(*) > 1	twitter_1
SELECT T1.name FROM benutzerprofile AS T1 JOIN tweets AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id HAVING count(*) > 1	twitter_1
SELECT T2.user_id FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.follower_id WHERE T1.name = "Mary" INTERSECT SELECT T2.user_id FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.follower_id WHERE T1.name = "Susan"	twitter_1
SELECT T2.user_id FROM benutzerprofile AS T1 JOIN follows AS T2 ON T1.uid = T2.follower_id WHERE T1.name = "Mary" OR T1.name = "Susan"	twitter_1
SELECT name FROM benutzerprofile ORDER BY follower DESC LIMIT 1	twitter_1
SELECT name , email FROM benutzerprofile ORDER BY follower LIMIT 1	twitter_1
SELECT name , follower FROM benutzerprofile ORDER BY follower DESC	twitter_1
SELECT name FROM benutzerprofile ORDER BY follower DESC LIMIT 5	twitter_1
SELECT text FROM tweets ORDER BY create_date	twitter_1
SELECT T1.name , count(*) FROM benutzerprofile AS T1 JOIN tweets AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id	twitter_1
SELECT T1.name , T1.partition_id FROM benutzerprofile AS T1 JOIN tweets AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id HAVING count(*) < 2	twitter_1
SELECT T1.name , count(*) FROM benutzerprofile AS T1 JOIN tweets AS T2 ON T1.uid = T2.user_id GROUP BY T2.user_id HAVING count(*) > 1	twitter_1
SELECT avg(follower) FROM benutzerprofile WHERE uid NOT IN (SELECT user_id FROM tweets)	twitter_1
SELECT avg(follower) FROM benutzerprofile WHERE uid IN (SELECT user_id FROM tweets)	twitter_1
SELECT max(follower) , sum(follower) FROM benutzerprofile	twitter_1
SELECT distinct(katalogeintragsname) FROM kataloginhalt	product_catalog
SELECT distinct(katalogeintragsname) FROM kataloginhalt	product_catalog
SELECT attribut_datentyp FROM attributdefinitionen GROUP BY attribut_datentyp HAVING count(*) > 3	product_catalog
SELECT attribut_datentyp FROM attributdefinitionen GROUP BY attribut_datentyp HAVING count(*) > 3	product_catalog
SELECT attribut_datentyp FROM attributdefinitionen WHERE attribut_name = "Green"	product_catalog
SELECT attribut_datentyp FROM attributdefinitionen WHERE attribut_name = "Green"	product_catalog
SELECT katalogebene_name , katalogebenen_nummer FROM katalogstruktur WHERE katalogebenen_nummer BETWEEN 5 AND 10	product_catalog
SELECT katalogebene_name , katalogebenen_nummer FROM katalogstruktur WHERE katalogebenen_nummer BETWEEN 5 AND 10	product_catalog
SELECT distinct(katalog_herausgeber) FROM kataloge WHERE katalog_herausgeber LIKE "%Murray%"	product_catalog
SELECT distinct(katalog_herausgeber) FROM kataloge WHERE katalog_herausgeber LIKE "%Murray%"	product_catalog
SELECT katalog_herausgeber FROM kataloge GROUP BY katalog_herausgeber ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT katalog_herausgeber FROM kataloge GROUP BY katalog_herausgeber ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT t1.katalogname , t1.datum_der_veröffentlichung FROM kataloge AS t1 JOIN katalogstruktur AS t2 ON t1.katalog_id = t2.katalog_id WHERE katalogebenen_nummer > 5	product_catalog
SELECT t1.katalogname , t1.datum_der_veröffentlichung FROM kataloge AS t1 JOIN katalogstruktur AS t2 ON t1.katalog_id = t2.katalog_id WHERE katalogebenen_nummer > 5	product_catalog
SELECT t1.katalogeintragsname FROM kataloginhalt AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.katalogeintrags_id = t2.katalogeintrags_id WHERE t2.attributwert = (SELECT attributwert FROM kataloginhalt_zusätzliche_attribute GROUP BY attributwert ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT t1.katalogeintragsname FROM kataloginhalt AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.katalogeintrags_id = t2.katalogeintrags_id WHERE t2.attributwert = (SELECT attributwert FROM kataloginhalt_zusätzliche_attribute GROUP BY attributwert ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY preis_in_dollar DESC LIMIT 1	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY preis_in_dollar DESC LIMIT 1	product_catalog
SELECT t2.katalogebene_name FROM kataloginhalt AS t1 JOIN katalogstruktur AS t2 ON t1.katalogebenen_nummer = t2.katalogebenen_nummer ORDER BY t1.preis_in_dollar LIMIT 1	product_catalog
SELECT t2.katalogebene_name FROM kataloginhalt AS t1 JOIN katalogstruktur AS t2 ON t1.katalogebenen_nummer = t2.katalogebenen_nummer ORDER BY t1.preis_in_dollar LIMIT 1	product_catalog
SELECT avg(preis_in_euro) , min(preis_in_euro) FROM kataloginhalt	product_catalog
SELECT avg(preis_in_euro) , min(preis_in_euro) FROM kataloginhalt	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY höhe DESC LIMIT 1	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY höhe DESC LIMIT 1	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY kapazität ASC LIMIT 1	product_catalog
SELECT katalogeintragsname FROM kataloginhalt ORDER BY kapazität ASC LIMIT 1	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE produktbestandsnummer LIKE "2%"	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE produktbestandsnummer LIKE "2%"	product_catalog
SELECT t1.katalogeintragsname FROM kataloginhalt AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.katalogeintrags_id = t2.katalogeintrags_id WHERE t2.katalogebenen_nummer = "8"	product_catalog
SELECT t1.katalogeintragsname FROM kataloginhalt AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.katalogeintrags_id = t2.katalogeintrags_id WHERE t2.katalogebenen_nummer = "8"	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE länge < 3 OR breite > 5	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE länge < 3 OR breite > 5	product_catalog
SELECT t1.attribut_name , t1.attribut_id FROM attributdefinitionen AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.attribut_id = t2.attribut_id WHERE t2.attributwert = 0	product_catalog
SELECT t1.attribut_name , t1.attribut_id FROM attributdefinitionen AS t1 JOIN kataloginhalt_zusätzliche_attribute AS t2 ON t1.attribut_id = t2.attribut_id WHERE t2.attributwert = 0	product_catalog
SELECT katalogeintragsname , kapazität FROM kataloginhalt WHERE preis_in_dollar > 700	product_catalog
SELECT katalogeintragsname , kapazität FROM kataloginhalt WHERE preis_in_dollar > 700	product_catalog
SELECT datum_der_letzten_überarbeitung FROM kataloge GROUP BY datum_der_letzten_überarbeitung HAVING count(*) > 1	product_catalog
SELECT datum_der_letzten_überarbeitung FROM kataloge GROUP BY datum_der_letzten_überarbeitung HAVING count(*) > 1	product_catalog
SELECT count(*) FROM kataloginhalt	product_catalog
SELECT count(*) FROM kataloginhalt	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE nächster_eintrag_id > 8	product_catalog
SELECT katalogeintragsname FROM kataloginhalt WHERE nächster_eintrag_id > 8	product_catalog
SELECT count(*) FROM flugzeug	flight_1
SELECT count(*) FROM flugzeug	flight_1
SELECT name , entfernung FROM flugzeug	flight_1
SELECT name , entfernung FROM flugzeug	flight_1
SELECT airline_id FROM flugzeug WHERE entfernung > 1000	flight_1
SELECT airline_id FROM flugzeug WHERE entfernung > 1000	flight_1
SELECT count(*) FROM flugzeug WHERE entfernung BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM flugzeug WHERE entfernung BETWEEN 1000 AND 5000	flight_1
SELECT name , entfernung FROM flugzeug WHERE airline_id = 12	flight_1
SELECT name , entfernung FROM flugzeug WHERE airline_id = 12	flight_1
SELECT min(entfernung) , avg(entfernung) , max(entfernung) FROM flugzeug	flight_1
SELECT min(entfernung) , avg(entfernung) , max(entfernung) FROM flugzeug	flight_1
SELECT airline_id , name FROM flugzeug ORDER BY entfernung DESC LIMIT 1	flight_1
SELECT airline_id , name FROM flugzeug ORDER BY entfernung DESC LIMIT 1	flight_1
SELECT name FROM flugzeug ORDER BY entfernung LIMIT 3	flight_1
SELECT name FROM flugzeug ORDER BY entfernung LIMIT 3	flight_1
SELECT name FROM flugzeug WHERE entfernung > (SELECT avg(entfernung) FROM flugzeug)	flight_1
SELECT name FROM flugzeug WHERE entfernung > (SELECT avg(entfernung) FROM flugzeug)	flight_1
SELECT count(*) FROM mitarbeiter	flight_1
SELECT count(*) FROM mitarbeiter	flight_1
SELECT name , gehalt FROM mitarbeiter ORDER BY gehalt	flight_1
SELECT name , gehalt FROM mitarbeiter ORDER BY gehalt	flight_1
SELECT mitarbeiter_id FROM mitarbeiter WHERE gehalt > 100000	flight_1
SELECT mitarbeiter_id FROM mitarbeiter WHERE gehalt > 100000	flight_1
SELECT count(*) FROM mitarbeiter WHERE gehalt BETWEEN 100000 AND 200000	flight_1
SELECT count(*) FROM mitarbeiter WHERE gehalt BETWEEN 100000 AND 200000	flight_1
SELECT name , gehalt FROM mitarbeiter WHERE mitarbeiter_id = 242518965	flight_1
SELECT name , gehalt FROM mitarbeiter WHERE mitarbeiter_id = 242518965	flight_1
SELECT avg(gehalt) , max(gehalt) FROM mitarbeiter	flight_1
SELECT avg(gehalt) , max(gehalt) FROM mitarbeiter	flight_1
SELECT mitarbeiter_id , name FROM mitarbeiter ORDER BY gehalt DESC LIMIT 1	flight_1
SELECT mitarbeiter_id , name FROM mitarbeiter ORDER BY gehalt DESC LIMIT 1	flight_1
SELECT name FROM mitarbeiter ORDER BY gehalt ASC LIMIT 3	flight_1
SELECT name FROM mitarbeiter ORDER BY gehalt ASC LIMIT 3	flight_1
SELECT name FROM mitarbeiter WHERE gehalt > (SELECT avg(gehalt) FROM mitarbeiter)	flight_1
SELECT name FROM mitarbeiter WHERE gehalt > (SELECT avg(gehalt) FROM mitarbeiter)	flight_1
SELECT mitarbeiter_id , gehalt FROM mitarbeiter WHERE name = 'Mark Young'	flight_1
SELECT mitarbeiter_id , gehalt FROM mitarbeiter WHERE name = 'Mark Young'	flight_1
SELECT count(*) FROM flug	flight_1
SELECT count(*) FROM flug	flight_1
SELECT flugnummer , herkunft , zielort FROM flug ORDER BY herkunft	flight_1
SELECT flugnummer , herkunft , zielort FROM flug ORDER BY herkunft	flight_1
SELECT flugnummer FROM flug WHERE herkunft = "Los Angeles"	flight_1
SELECT flugnummer FROM flug WHERE herkunft = "Los Angeles"	flight_1
SELECT herkunft FROM flug WHERE zielort = "Honolulu"	flight_1
SELECT herkunft FROM flug WHERE zielort = "Honolulu"	flight_1
SELECT abflugdatum , ankunftsdatum FROM flug WHERE herkunft = "Los Angeles" AND zielort = "Honolulu"	flight_1
SELECT abflugdatum , ankunftsdatum FROM flug WHERE herkunft = "Los Angeles" AND zielort = "Honolulu"	flight_1
SELECT flugnummer FROM flug WHERE entfernung > 2000	flight_1
SELECT flugnummer FROM flug WHERE entfernung > 2000	flight_1
SELECT avg(preis) FROM flug WHERE herkunft = "Los Angeles" AND zielort = "Honolulu"	flight_1
SELECT avg(preis) FROM flug WHERE herkunft = "Los Angeles" AND zielort = "Honolulu"	flight_1
SELECT herkunft , zielort FROM flug WHERE preis > 300	flight_1
SELECT herkunft , zielort FROM flug WHERE preis > 300	flight_1
SELECT flugnummer , entfernung FROM flug ORDER BY preis DESC LIMIT 1	flight_1
SELECT flugnummer , entfernung FROM flug ORDER BY preis DESC LIMIT 1	flight_1
SELECT flugnummer FROM flug ORDER BY entfernung ASC LIMIT 3	flight_1
SELECT flugnummer FROM flug ORDER BY entfernung ASC LIMIT 3	flight_1
SELECT avg(entfernung) , avg(preis) FROM flug WHERE herkunft = "Los Angeles"	flight_1
SELECT avg(entfernung) , avg(preis) FROM flug WHERE herkunft = "Los Angeles"	flight_1
SELECT herkunft , count(*) FROM flug GROUP BY herkunft	flight_1
SELECT herkunft , count(*) FROM flug GROUP BY herkunft	flight_1
SELECT zielort , count(*) FROM flug GROUP BY zielort	flight_1
SELECT zielort , count(*) FROM flug GROUP BY zielort	flight_1
SELECT herkunft FROM flug GROUP BY herkunft ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT herkunft FROM flug GROUP BY herkunft ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT zielort FROM flug GROUP BY zielort ORDER BY count(*) LIMIT 1	flight_1
SELECT zielort FROM flug GROUP BY zielort ORDER BY count(*) LIMIT 1	flight_1
SELECT T2.name FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id WHERE T1.flugnummer = 99	flight_1
SELECT T2.name FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id WHERE T1.flugnummer = 99	flight_1
SELECT T1.flugnummer FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id WHERE T2.name = "Airbus A340-300"	flight_1
SELECT T1.flugnummer FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id WHERE T2.name = "Airbus A340-300"	flight_1
SELECT T2.name , count(*) FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.airline_id	flight_1
SELECT T2.name , count(*) FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.airline_id	flight_1
SELECT T2.name FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.airline_id HAVING count(*) >= 2	flight_1
SELECT T2.name FROM flug AS T1 JOIN flugzeug AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.airline_id HAVING count(*) >= 2	flight_1
SELECT count(DISTINCT mitarbeiter_id) FROM bescheinigung	flight_1
SELECT count(DISTINCT mitarbeiter_id) FROM bescheinigung	flight_1
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT mitarbeiter_id FROM bescheinigung	flight_1
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT mitarbeiter_id FROM bescheinigung	flight_1
SELECT T3.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T1.name = "John Williams"	flight_1
SELECT T3.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T1.name = "John Williams"	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800"	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800"	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800" INTERSECT SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Airbus A340-300"	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800" INTERSECT SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Airbus A340-300"	flight_1
SELECT name FROM mitarbeiter EXCEPT SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800"	flight_1
SELECT name FROM mitarbeiter EXCEPT SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.name = "Boeing 737-800"	flight_1
SELECT T2.name FROM bescheinigung AS T1 JOIN flugzeug AS T2 ON T2.airline_id = T1.airline_id GROUP BY T1.airline_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM bescheinigung AS T1 JOIN flugzeug AS T2 ON T2.airline_id = T1.airline_id GROUP BY T1.airline_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM bescheinigung AS T1 JOIN flugzeug AS T2 ON T2.airline_id = T1.airline_id WHERE T2.entfernung > 5000 GROUP BY T1.airline_id ORDER BY count(*) >= 5	flight_1
SELECT T2.name FROM bescheinigung AS T1 JOIN flugzeug AS T2 ON T2.airline_id = T1.airline_id WHERE T2.entfernung > 5000 GROUP BY T1.airline_id ORDER BY count(*) >= 5	flight_1
SELECT T1.name , T1.gehalt FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name , T1.gehalt FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.entfernung > 5000 GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM mitarbeiter AS T1 JOIN bescheinigung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN flugzeug AS T3 ON T3.airline_id = T2.airline_id WHERE T3.entfernung > 5000 GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT count(DISTINCT allergie_name) FROM allergietyp	allergy_1
SELECT count(DISTINCT allergie_name) FROM allergietyp	allergy_1
SELECT count(DISTINCT allergietyp) FROM allergietyp	allergy_1
SELECT count(DISTINCT allergietyp) FROM allergietyp	allergy_1
SELECT DISTINCT allergietyp FROM allergietyp	allergy_1
SELECT DISTINCT allergietyp FROM allergietyp	allergy_1
SELECT allergie_name , allergietyp FROM allergietyp	allergy_1
SELECT allergie_name , allergietyp FROM allergietyp	allergy_1
SELECT DISTINCT allergie_name FROM allergietyp WHERE allergietyp = "food"	allergy_1
SELECT DISTINCT allergie_name FROM allergietyp WHERE allergietyp = "food"	allergy_1
SELECT allergietyp FROM allergietyp WHERE allergie_name = "Cat"	allergy_1
SELECT allergietyp FROM allergietyp WHERE allergie_name = "Cat"	allergy_1
SELECT count(*) FROM allergietyp WHERE allergietyp = "animal"	allergy_1
SELECT count(*) FROM allergietyp WHERE allergietyp = "animal"	allergy_1
SELECT allergietyp , count(*) FROM allergietyp GROUP BY allergietyp	allergy_1
SELECT allergietyp , count(*) FROM allergietyp GROUP BY allergietyp	allergy_1
SELECT allergietyp FROM allergietyp GROUP BY allergietyp ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergietyp FROM allergietyp GROUP BY allergietyp ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergietyp FROM allergietyp GROUP BY allergietyp ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT allergietyp FROM allergietyp GROUP BY allergietyp ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT count(*) FROM schüler	allergy_1
SELECT count(*) FROM schüler	allergy_1
SELECT vorname , nachname FROM schüler	allergy_1
SELECT vorname , nachname FROM schüler	allergy_1
SELECT count(DISTINCT berater) FROM schüler	allergy_1
SELECT count(DISTINCT berater) FROM schüler	allergy_1
SELECT DISTINCT hauptfach FROM schüler	allergy_1
SELECT DISTINCT hauptfach FROM schüler	allergy_1
SELECT DISTINCT stadtcode FROM schüler	allergy_1
SELECT DISTINCT stadtcode FROM schüler	allergy_1
SELECT vorname , nachname , alter FROM schüler WHERE geschlecht = 'F'	allergy_1
SELECT vorname , nachname , alter FROM schüler WHERE geschlecht = 'F'	allergy_1
SELECT stuid FROM schüler WHERE geschlecht = 'M'	allergy_1
SELECT stuid FROM schüler WHERE geschlecht = 'M'	allergy_1
SELECT count(*) FROM schüler WHERE alter = 18	allergy_1
SELECT count(*) FROM schüler WHERE alter = 18	allergy_1
SELECT stuid FROM schüler WHERE alter > 20	allergy_1
SELECT stuid FROM schüler WHERE alter > 20	allergy_1
SELECT stadtcode FROM schüler WHERE nachname = "Kim"	allergy_1
SELECT stadtcode FROM schüler WHERE nachname = "Kim"	allergy_1
SELECT berater FROM schüler WHERE stuid = 1004	allergy_1
SELECT berater FROM schüler WHERE stuid = 1004	allergy_1
SELECT count(*) FROM schüler WHERE stadtcode = "HKG" OR stadtcode = "CHI"	allergy_1
SELECT count(*) FROM schüler WHERE stadtcode = "HKG" OR stadtcode = "CHI"	allergy_1
SELECT min(alter) , avg(alter) , max(alter) FROM schüler	allergy_1
SELECT min(alter) , avg(alter) , max(alter) FROM schüler	allergy_1
SELECT nachname FROM schüler WHERE alter = (SELECT min(alter) FROM schüler)	allergy_1
SELECT nachname FROM schüler WHERE alter = (SELECT min(alter) FROM schüler)	allergy_1
SELECT stuid FROM schüler WHERE alter = (SELECT max(alter) FROM schüler)	allergy_1
SELECT stuid FROM schüler WHERE alter = (SELECT max(alter) FROM schüler)	allergy_1
SELECT hauptfach , count(*) FROM schüler GROUP BY hauptfach	allergy_1
SELECT hauptfach , count(*) FROM schüler GROUP BY hauptfach	allergy_1
SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT alter , count(*) FROM schüler GROUP BY alter	allergy_1
SELECT alter , count(*) FROM schüler GROUP BY alter	allergy_1
SELECT avg(alter) , geschlecht FROM schüler GROUP BY geschlecht	allergy_1
SELECT avg(alter) , geschlecht FROM schüler GROUP BY geschlecht	allergy_1
SELECT stadtcode , count(*) FROM schüler GROUP BY stadtcode	allergy_1
SELECT stadtcode , count(*) FROM schüler GROUP BY stadtcode	allergy_1
SELECT berater , count(*) FROM schüler GROUP BY berater	allergy_1
SELECT berater , count(*) FROM schüler GROUP BY berater	allergy_1
SELECT berater FROM schüler GROUP BY berater ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT berater FROM schüler GROUP BY berater ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT count(*) FROM hat_allergie WHERE allergy = "Cat"	allergy_1
SELECT count(*) FROM hat_allergie WHERE allergy = "Cat"	allergy_1
SELECT stuid FROM hat_allergie GROUP BY stuid HAVING count(*) >= 2	allergy_1
SELECT stuid FROM hat_allergie GROUP BY stuid HAVING count(*) >= 2	allergy_1
SELECT stuid FROM schüler EXCEPT SELECT stuid FROM hat_allergie	allergy_1
SELECT stuid FROM schüler EXCEPT SELECT stuid FROM hat_allergie	allergy_1
SELECT count(*) FROM hat_allergie AS T1 JOIN schüler AS T2 ON T1.stuid = T2.stuid WHERE T2.geschlecht = "F" AND T1.allergy = "Milk" OR T1.allergy = "Eggs"	allergy_1
SELECT count(*) FROM hat_allergie AS T1 JOIN schüler AS T2 ON T1.stuid = T2.stuid WHERE T2.geschlecht = "F" AND T1.allergy = "Milk" OR T1.allergy = "Eggs"	allergy_1
SELECT count(*) FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food"	allergy_1
SELECT count(*) FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food"	allergy_1
SELECT allergy FROM hat_allergie GROUP BY allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergy FROM hat_allergie GROUP BY allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergy , count(*) FROM hat_allergie GROUP BY allergy	allergy_1
SELECT allergy , count(*) FROM hat_allergie GROUP BY allergy	allergy_1
SELECT T2.allergietyp , count(*) FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name GROUP BY T2.allergietyp	allergy_1
SELECT T2.allergietyp , count(*) FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name GROUP BY T2.allergietyp	allergy_1
SELECT nachname , alter FROM schüler WHERE stuid IN (SELECT stuid FROM hat_allergie WHERE allergy = "Milk" INTERSECT SELECT stuid FROM hat_allergie WHERE allergy = "Cat")	allergy_1
SELECT nachname , alter FROM schüler WHERE stuid IN (SELECT stuid FROM hat_allergie WHERE allergy = "Milk" INTERSECT SELECT stuid FROM hat_allergie WHERE allergy = "Cat")	allergy_1
SELECT T1.allergie_name , T1.allergietyp FROM allergietyp AS T1 JOIN hat_allergie AS T2 ON T1.allergie_name = T2.allergy JOIN schüler AS T3 ON T3.stuid = T2.stuid WHERE T3.vorname = "Lisa" ORDER BY T1.allergie_name	allergy_1
SELECT T1.allergie_name , T1.allergietyp FROM allergietyp AS T1 JOIN hat_allergie AS T2 ON T1.allergie_name = T2.allergy JOIN schüler AS T3 ON T3.stuid = T2.stuid WHERE T3.vorname = "Lisa" ORDER BY T1.allergie_name	allergy_1
SELECT vorname , geschlecht FROM schüler WHERE stuid IN (SELECT stuid FROM hat_allergie WHERE allergy = "Milk" EXCEPT SELECT stuid FROM hat_allergie WHERE allergy = "Cat")	allergy_1
SELECT vorname , geschlecht FROM schüler WHERE stuid IN (SELECT stuid FROM hat_allergie WHERE allergy = "Milk" EXCEPT SELECT stuid FROM hat_allergie WHERE allergy = "Cat")	allergy_1
SELECT avg(alter) FROM schüler WHERE stuid IN ( SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food" INTERSECT SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "animal")	allergy_1
SELECT avg(alter) FROM schüler WHERE stuid IN ( SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food" INTERSECT SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "animal")	allergy_1
SELECT vorname , nachname FROM schüler WHERE stuid NOT IN (SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food")	allergy_1
SELECT vorname , nachname FROM schüler WHERE stuid NOT IN (SELECT T1.stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food")	allergy_1
SELECT count(*) FROM schüler WHERE geschlecht = "M" AND stuid IN (SELECT stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food")	allergy_1
SELECT count(*) FROM schüler WHERE geschlecht = "M" AND stuid IN (SELECT stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food")	allergy_1
SELECT DISTINCT T1.vorname , T1.stadtcode FROM schüler AS T1 JOIN hat_allergie AS T2 ON T1.stuid = T2.stuid WHERE T2.allergy = "Milk" OR T2.allergy = "Cat"	allergy_1
SELECT DISTINCT T1.vorname , T1.stadtcode FROM schüler AS T1 JOIN hat_allergie AS T2 ON T1.stuid = T2.stuid WHERE T2.allergy = "Milk" OR T2.allergy = "Cat"	allergy_1
SELECT count(*) FROM schüler WHERE alter > 18 AND stuid NOT IN ( SELECT stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food" OR T2.allergietyp = "animal")	allergy_1
SELECT count(*) FROM schüler WHERE alter > 18 AND stuid NOT IN ( SELECT stuid FROM hat_allergie AS T1 JOIN allergietyp AS T2 ON T1.allergy = T2.allergie_name WHERE T2.allergietyp = "food" OR T2.allergietyp = "animal")	allergy_1
SELECT vorname , hauptfach FROM schüler WHERE stuid NOT IN (SELECT stuid FROM hat_allergie WHERE allergy = "Soy")	allergy_1
SELECT vorname , hauptfach FROM schüler WHERE stuid NOT IN (SELECT stuid FROM hat_allergie WHERE allergy = "Soy")	allergy_1
SELECT count(*) FROM redakteur	journal_committee
SELECT name FROM redakteur ORDER BY alter ASC	journal_committee
SELECT name , alter FROM redakteur	journal_committee
SELECT name FROM redakteur WHERE alter > 25	journal_committee
SELECT name FROM redakteur WHERE alter = 24 OR alter = 25	journal_committee
SELECT name FROM redakteur ORDER BY alter ASC LIMIT 1	journal_committee
SELECT alter , COUNT(*) FROM redakteur GROUP BY alter	journal_committee
SELECT alter FROM redakteur GROUP BY alter ORDER BY COUNT(*) DESC LIMIT 1	journal_committee
SELECT DISTINCT thema FROM journal	journal_committee
SELECT T2.name , T3.thema FROM zeitschriftenausschuss AS T1 JOIN redakteur AS T2 ON T1.redakteur_id = T2.redakteur_id JOIN journal AS T3 ON T1.journal_id = T3.journal_id	journal_committee
SELECT T2.name , T3.thema FROM zeitschriftenausschuss AS T1 JOIN redakteur AS T2 ON T1.redakteur_id = T2.redakteur_id JOIN journal AS T3 ON T1.journal_id = T3.journal_id	journal_committee
SELECT T2.name , T2.alter , T3.thema FROM zeitschriftenausschuss AS T1 JOIN redakteur AS T2 ON T1.redakteur_id = T2.redakteur_id JOIN journal AS T3 ON T1.journal_id = T3.journal_id ORDER BY T3.thema ASC	journal_committee
SELECT T2.name FROM zeitschriftenausschuss AS T1 JOIN redakteur AS T2 ON T1.redakteur_id = T2.redakteur_id JOIN journal AS T3 ON T1.journal_id = T3.journal_id WHERE T3.umsatz > 3000	journal_committee
SELECT T1.redakteur_id , T1.name , COUNT(*) FROM redakteur AS T1 JOIN zeitschriftenausschuss AS T2 ON T1.redakteur_id = T2.redakteur_id GROUP BY T1.redakteur_id	journal_committee
SELECT T1.name FROM redakteur AS T1 JOIN zeitschriftenausschuss AS T2 ON T1.redakteur_id = T2.redakteur_id GROUP BY T1.name HAVING COUNT(*) >= 2	journal_committee
SELECT name FROM redakteur WHERE redakteur_id NOT IN (SELECT redakteur_id FROM zeitschriftenausschuss)	journal_committee
SELECT datum , thema , umsatz FROM journal EXCEPT SELECT T1.datum , T1.thema , T1.umsatz FROM journal AS T1 JOIN zeitschriftenausschuss AS T2 ON T1.journal_id = T2.journal_id	journal_committee
SELECT avg(T1.umsatz) FROM journal AS T1 JOIN zeitschriftenausschuss AS T2 ON T1.journal_id = T2.journal_id WHERE T2.arbeitstyp = 'Photo'	journal_committee
SELECT count(*) FROM konten	customers_card_transactions
SELECT count(*) FROM konten	customers_card_transactions
SELECT konto_id , kunden_id , kontobezeichnung FROM konten	customers_card_transactions
SELECT konto_id , kunden_id , kontobezeichnung FROM konten	customers_card_transactions
SELECT andere_kontodaten FROM konten WHERE kontobezeichnung = "338"	customers_card_transactions
SELECT andere_kontodaten FROM konten WHERE kontobezeichnung = "338"	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T2.kunde_telefon FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kontobezeichnung = "162"	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T2.kunde_telefon FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kontobezeichnung = "162"	customers_card_transactions
SELECT count(*) FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Art" AND T2.nachname_des_kunden = "Turcotte"	customers_card_transactions
SELECT count(*) FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Art" AND T2.nachname_des_kunden = "Turcotte"	customers_card_transactions
SELECT kunden_id , count(*) FROM konten GROUP BY kunden_id	customers_card_transactions
SELECT kunden_id , count(*) FROM konten GROUP BY kunden_id	customers_card_transactions
SELECT kunden_id , count(*) FROM konten GROUP BY kunden_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT kunden_id , count(*) FROM konten GROUP BY kunden_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T1.kunden_id FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T1.kunden_id FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT count(*) FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM konten)	customers_card_transactions
SELECT count(*) FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM konten)	customers_card_transactions
SELECT vorname_des_kunden , nachname_des_kunden FROM kunden EXCEPT SELECT T1.vorname_des_kunden , T1.nachname_des_kunden FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_card_transactions
SELECT vorname_des_kunden , nachname_des_kunden FROM kunden EXCEPT SELECT T1.vorname_des_kunden , T1.nachname_des_kunden FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_card_transactions
SELECT DISTINCT T1.vorname_des_kunden , T1.nachname_des_kunden FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_card_transactions
SELECT DISTINCT T1.vorname_des_kunden , T1.nachname_des_kunden FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_card_transactions
SELECT count(DISTINCT kunden_id) FROM konten	customers_card_transactions
SELECT count(DISTINCT kunden_id) FROM konten	customers_card_transactions
SELECT count(*) FROM kunden	customers_card_transactions
SELECT count(*) FROM kunden	customers_card_transactions
SELECT kunden_id , vorname_des_kunden , nachname_des_kunden , kunde_telefon FROM kunden	customers_card_transactions
SELECT kunden_id , vorname_des_kunden , nachname_des_kunden , kunde_telefon FROM kunden	customers_card_transactions
SELECT kunde_telefon , kunden_e_mail FROM kunden WHERE vorname_des_kunden = "Aniyah" AND nachname_des_kunden = "Feest"	customers_card_transactions
SELECT kunde_telefon , kunden_e_mail FROM kunden WHERE vorname_des_kunden = "Aniyah" AND nachname_des_kunden = "Feest"	customers_card_transactions
SELECT count(*) FROM kundenkarten	customers_card_transactions
SELECT count(*) FROM kundenkarten	customers_card_transactions
SELECT karte_id , kunden_id , kartenartentyp_code , kartennummer FROM kundenkarten	customers_card_transactions
SELECT karte_id , kunden_id , kartenartentyp_code , kartennummer FROM kundenkarten	customers_card_transactions
SELECT datum_gültig_von , datum_gültig_bis FROM kundenkarten WHERE kartennummer = "4560596484842"	customers_card_transactions
SELECT datum_gültig_von , datum_gültig_bis FROM kundenkarten WHERE kartennummer = "4560596484842"	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T2.kunde_telefon FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kartennummer = "4560596484842"	customers_card_transactions
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden , T2.kunde_telefon FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kartennummer = "4560596484842"	customers_card_transactions
SELECT count(*) FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Art" AND T2.nachname_des_kunden = "Turcotte"	customers_card_transactions
SELECT count(*) FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Art" AND T2.nachname_des_kunden = "Turcotte"	customers_card_transactions
SELECT count(*) FROM kundenkarten WHERE kartenartentyp_code = "Debit"	customers_card_transactions
SELECT count(*) FROM kundenkarten WHERE kartenartentyp_code = "Debit"	customers_card_transactions
SELECT count(*) FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Blanche" AND T2.nachname_des_kunden = "Huels" AND T1.kartenartentyp_code = "Credit"	customers_card_transactions
SELECT count(*) FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Blanche" AND T2.nachname_des_kunden = "Huels" AND T1.kartenartentyp_code = "Credit"	customers_card_transactions
SELECT kunden_id , count(*) FROM kundenkarten GROUP BY kunden_id	customers_card_transactions
SELECT kunden_id , count(*) FROM kundenkarten GROUP BY kunden_id	customers_card_transactions
SELECT kunden_id , count(*) FROM kundenkarten GROUP BY kunden_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT kunden_id , count(*) FROM kundenkarten GROUP BY kunden_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2	customers_card_transactions
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2	customers_card_transactions
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT kartenartentyp_code , count(*) FROM kundenkarten GROUP BY kartenartentyp_code	customers_card_transactions
SELECT kartenartentyp_code , count(*) FROM kundenkarten GROUP BY kartenartentyp_code	customers_card_transactions
SELECT kartenartentyp_code FROM kundenkarten GROUP BY kartenartentyp_code ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT kartenartentyp_code FROM kundenkarten GROUP BY kartenartentyp_code ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT kartenartentyp_code FROM kundenkarten GROUP BY kartenartentyp_code HAVING count(*) >= 5	customers_card_transactions
SELECT kartenartentyp_code FROM kundenkarten GROUP BY kartenartentyp_code HAVING count(*) >= 5	customers_card_transactions
SELECT kartenartentyp_code , count(DISTINCT kunden_id) FROM kundenkarten GROUP BY kartenartentyp_code	customers_card_transactions
SELECT kartenartentyp_code , count(DISTINCT kunden_id) FROM kundenkarten GROUP BY kartenartentyp_code	customers_card_transactions
SELECT kunden_id , vorname_des_kunden FROM kunden EXCEPT SELECT T1.kunden_id , T2.vorname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE kartenartentyp_code = "Credit"	customers_card_transactions
SELECT kunden_id , vorname_des_kunden FROM kunden EXCEPT SELECT T1.kunden_id , T2.vorname_des_kunden FROM kundenkarten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE kartenartentyp_code = "Credit"	customers_card_transactions
SELECT DISTINCT kartenartentyp_code FROM kundenkarten	customers_card_transactions
SELECT DISTINCT kartenartentyp_code FROM kundenkarten	customers_card_transactions
SELECT count(DISTINCT kartenartentyp_code) FROM kundenkarten	customers_card_transactions
SELECT count(DISTINCT kartenartentyp_code) FROM kundenkarten	customers_card_transactions
SELECT DISTINCT transaktionsart FROM finanztransaktionen	customers_card_transactions
SELECT DISTINCT transaktionsart FROM finanztransaktionen	customers_card_transactions
SELECT count(DISTINCT transaktionsart) FROM finanztransaktionen	customers_card_transactions
SELECT count(DISTINCT transaktionsart) FROM finanztransaktionen	customers_card_transactions
SELECT avg(transaktionsbetrag) , sum(transaktionsbetrag) FROM finanztransaktionen	customers_card_transactions
SELECT avg(transaktionsbetrag) , sum(transaktionsbetrag) FROM finanztransaktionen	customers_card_transactions
SELECT T2.kartenartentyp_code , count(*) FROM finanztransaktionen AS T1 JOIN kundenkarten AS T2 ON T1.karte_id = T2.karte_id GROUP BY T2.kartenartentyp_code	customers_card_transactions
SELECT T2.kartenartentyp_code , count(*) FROM finanztransaktionen AS T1 JOIN kundenkarten AS T2 ON T1.karte_id = T2.karte_id GROUP BY T2.kartenartentyp_code	customers_card_transactions
SELECT transaktionsart , count(*) FROM finanztransaktionen GROUP BY transaktionsart	customers_card_transactions
SELECT transaktionsart , count(*) FROM finanztransaktionen GROUP BY transaktionsart	customers_card_transactions
SELECT transaktionsart FROM finanztransaktionen GROUP BY transaktionsart ORDER BY sum(transaktionsbetrag) DESC LIMIT 1	customers_card_transactions
SELECT transaktionsart FROM finanztransaktionen GROUP BY transaktionsart ORDER BY sum(transaktionsbetrag) DESC LIMIT 1	customers_card_transactions
SELECT konto_id , count(*) FROM finanztransaktionen GROUP BY konto_id	customers_card_transactions
SELECT konto_id , count(*) FROM finanztransaktionen GROUP BY konto_id	customers_card_transactions
SELECT count(*) FROM strecke	race_track
SELECT count(*) FROM strecke	race_track
SELECT name , ort FROM strecke	race_track
SELECT name , ort FROM strecke	race_track
SELECT name , sitzplätze FROM strecke WHERE eröffnungsjahr > 2000 ORDER BY sitzplätze	race_track
SELECT name , sitzplätze FROM strecke WHERE eröffnungsjahr > 2000 ORDER BY sitzplätze	race_track
SELECT name , ort , sitzplätze FROM strecke ORDER BY eröffnungsjahr DESC LIMIT 1	race_track
SELECT name , ort , sitzplätze FROM strecke ORDER BY eröffnungsjahr DESC LIMIT 1	race_track
SELECT min(sitzplätze) , max(sitzplätze) , avg(sitzplätze) FROM strecke	race_track
SELECT min(sitzplätze) , max(sitzplätze) , avg(sitzplätze) FROM strecke	race_track
SELECT name , ort , eröffnungsjahr FROM strecke WHERE sitzplätze > (SELECT avg(sitzplätze) FROM strecke)	race_track
SELECT name , ort , eröffnungsjahr FROM strecke WHERE sitzplätze > (SELECT avg(sitzplätze) FROM strecke)	race_track
SELECT DISTINCT ort FROM strecke	race_track
SELECT DISTINCT ort FROM strecke	race_track
SELECT count(*) FROM rennen	race_track
SELECT count(*) FROM rennen	race_track
SELECT DISTINCT klasse FROM rennen	race_track
SELECT DISTINCT klasse FROM rennen	race_track
SELECT name , klasse , datum FROM rennen	race_track
SELECT name , klasse , datum FROM rennen	race_track
SELECT klasse , count(*) FROM rennen GROUP BY klasse	race_track
SELECT klasse , count(*) FROM rennen GROUP BY klasse	race_track
SELECT klasse FROM rennen GROUP BY klasse ORDER BY count(*) DESC LIMIT 1	race_track
SELECT klasse FROM rennen GROUP BY klasse ORDER BY count(*) DESC LIMIT 1	race_track
SELECT klasse FROM rennen GROUP BY klasse HAVING count(*) >= 2	race_track
SELECT klasse FROM rennen GROUP BY klasse HAVING count(*) >= 2	race_track
SELECT name FROM strecke EXCEPT SELECT T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id WHERE T1.klasse = 'GT'	race_track
SELECT name FROM strecke EXCEPT SELECT T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id WHERE T1.klasse = 'GT'	race_track
SELECT name FROM strecke WHERE spur_id NOT IN (SELECT spur_id FROM rennen)	race_track
SELECT name FROM strecke WHERE spur_id NOT IN (SELECT spur_id FROM rennen)	race_track
SELECT eröffnungsjahr FROM strecke WHERE sitzplätze BETWEEN 4000 AND 5000	race_track
SELECT eröffnungsjahr FROM strecke WHERE sitzplätze BETWEEN 4000 AND 5000	race_track
SELECT T2.name , count(*) FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id	race_track
SELECT T2.name , count(*) FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id	race_track
SELECT T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T1.name , T1.datum , T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id	race_track
SELECT T1.name , T1.datum , T2.name FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id	race_track
SELECT T2.name , T2.ort FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id HAVING count(*) = 1	race_track
SELECT T2.name , T2.ort FROM rennen AS T1 JOIN strecke AS T2 ON T1.spur_id = T2.spur_id GROUP BY T1.spur_id HAVING count(*) = 1	race_track
SELECT ort FROM strecke WHERE sitzplätze > 90000 INTERSECT SELECT ort FROM strecke WHERE sitzplätze < 70000	race_track
SELECT ort FROM strecke WHERE sitzplätze > 90000 INTERSECT SELECT ort FROM strecke WHERE sitzplätze < 70000	race_track
SELECT count(*) FROM mitglied WHERE mitgliedsausweis = 'Black'	coffee_shop
SELECT count(*) , adresse FROM mitglied GROUP BY adresse	coffee_shop
SELECT name FROM mitglied WHERE adresse = 'Harford' OR adresse = 'Waterbury'	coffee_shop
SELECT name , mitglied_id FROM mitglied WHERE mitgliedsausweis = 'Black' OR alter < 30	coffee_shop
SELECT zeitpunkt_des_erwerbs , alter , adresse FROM mitglied ORDER BY zeitpunkt_des_erwerbs	coffee_shop
SELECT mitgliedsausweis FROM mitglied GROUP BY mitgliedsausweis HAVING count(*) > 5	coffee_shop
SELECT adresse FROM mitglied WHERE alter < 30 INTERSECT SELECT adresse FROM mitglied WHERE alter > 40	coffee_shop
SELECT mitgliedsausweis FROM mitglied WHERE adresse = 'Hartford' INTERSECT SELECT mitgliedsausweis FROM mitglied WHERE adresse = 'Waterbury'	coffee_shop
SELECT count(*) FROM mitglied WHERE adresse != 'Hartford'	coffee_shop
SELECT adresse FROM mitglied EXCEPT SELECT adresse FROM mitglied WHERE mitgliedsausweis = 'Black'	coffee_shop
SELECT adresse FROM shop ORDER BY jahr_der_eröffnung	coffee_shop
SELECT avg(anzahl_der_mitarbeiter) , avg(punkte) FROM shop	coffee_shop
SELECT shop_id , adresse FROM shop WHERE punkte < (SELECT avg(punkte) FROM shop)	coffee_shop
SELECT adresse , anzahl_der_mitarbeiter FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM glückliche_stunde)	coffee_shop
SELECT t1.adresse , t1.shop_id FROM shop AS t1 JOIN glückliche_stunde AS t2 ON t1.shop_id = t2.shop_id WHERE monat = 'May'	coffee_shop
SELECT shop_id , count(*) FROM glückliche_stunde GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT monat FROM glückliche_stunde GROUP BY monat ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT monat FROM glückliche_stunde GROUP BY monat HAVING count(*) > 2	coffee_shop
SELECT kundentelefon FROM verfügbare_richtlinien	insurance_fnol
SELECT kundentelefon FROM verfügbare_richtlinien	insurance_fnol
SELECT kundentelefon FROM verfügbare_richtlinien WHERE policy_type_code = "Life Insurance"	insurance_fnol
SELECT kundentelefon FROM verfügbare_richtlinien WHERE policy_type_code = "Life Insurance"	insurance_fnol
SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT kundentelefon FROM verfügbare_richtlinien WHERE policy_type_code = (SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT kundentelefon FROM verfügbare_richtlinien WHERE policy_type_code = (SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code HAVING count(*) > 4	insurance_fnol
SELECT policy_type_code FROM verfügbare_richtlinien GROUP BY policy_type_code HAVING count(*) > 4	insurance_fnol
SELECT sum(abrechnungsbetrag) , avg(abrechnungsbetrag) FROM abrechnungen	insurance_fnol
SELECT sum(abrechnungsbetrag) , avg(abrechnungsbetrag) FROM abrechnungen	insurance_fnol
SELECT t2.dienstname FROM erstmeldung_eines_schadens AS t1 JOIN dienstleistungen AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 2	insurance_fnol
SELECT t2.dienstname FROM erstmeldung_eines_schadens AS t1 JOIN dienstleistungen AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 2	insurance_fnol
SELECT t1.effective_date FROM ansprüche AS t1 JOIN abrechnungen AS t2 ON t1.claim_id = t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.abrechnungsbetrag) DESC LIMIT 1	insurance_fnol
SELECT t1.effective_date FROM ansprüche AS t1 JOIN abrechnungen AS t2 ON t1.claim_id = t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.abrechnungsbetrag) DESC LIMIT 1	insurance_fnol
SELECT count(*) FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Dayana Robel"	insurance_fnol
SELECT count(*) FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Dayana Robel"	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kundenname ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kundenname ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id JOIN verfügbare_richtlinien AS t3 ON t2.policy_id = t3.policy_id WHERE t1.kundenname = "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id JOIN verfügbare_richtlinien AS t3 ON t2.policy_id = t3.policy_id WHERE t1.kundenname = "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id JOIN verfügbare_richtlinien AS t3 ON t2.policy_id = t3.policy_id WHERE t1.kundenname = (SELECT t1.kundenname FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kundenname ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id JOIN verfügbare_richtlinien AS t3 ON t2.policy_id = t3.policy_id WHERE t1.kundenname = (SELECT t1.kundenname FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kundenname ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT dienstname FROM dienstleistungen ORDER BY dienstname	insurance_fnol
SELECT dienstname FROM dienstleistungen ORDER BY dienstname	insurance_fnol
SELECT count(*) FROM dienstleistungen	insurance_fnol
SELECT count(*) FROM dienstleistungen	insurance_fnol
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id	insurance_fnol
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "Close a policy" OR t3.dienstname = "Upgrade a policy"	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "Close a policy" OR t3.dienstname = "Upgrade a policy"	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "Close a policy" INTERSECT SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "New policy application"	insurance_fnol
SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "Close a policy" INTERSECT SELECT t1.kundenname FROM kunden AS t1 JOIN erstmeldung_eines_schadens AS t2 ON t1.kunden_id = t2.kunden_id JOIN dienstleistungen AS t3 ON t2.service_id = t3.service_id WHERE t3.dienstname = "New policy application"	insurance_fnol
SELECT kunden_id FROM kunden WHERE kundenname LIKE "%Diana%"	insurance_fnol
SELECT kunden_id FROM kunden WHERE kundenname LIKE "%Diana%"	insurance_fnol
SELECT max(abrechnungsbetrag) , min(abrechnungsbetrag) FROM abrechnungen	insurance_fnol
SELECT max(abrechnungsbetrag) , min(abrechnungsbetrag) FROM abrechnungen	insurance_fnol
SELECT kunden_id , kundenname FROM kunden ORDER BY kunden_id ASC	insurance_fnol
SELECT kunden_id , kundenname FROM kunden ORDER BY kunden_id ASC	insurance_fnol
SELECT t2.datum_eröffnet , t2.datum_geschlossen FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname LIKE "%Diana%"	insurance_fnol
SELECT t2.datum_eröffnet , t2.datum_geschlossen FROM kunden AS t1 JOIN kundenpolicen AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname LIKE "%Diana%"	insurance_fnol
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name , ort FROM enzyme	medicine_enzyme_interaction
SELECT name , ort FROM enzyme	medicine_enzyme_interaction
SELECT max(omim) FROM enzyme	medicine_enzyme_interaction
SELECT max(omim) FROM enzyme	medicine_enzyme_interaction
SELECT produkt , chromosom , porphyria FROM enzyme WHERE ort = 'Cytosol'	medicine_enzyme_interaction
SELECT produkt , chromosom , porphyria FROM enzyme WHERE ort = 'Cytosol'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE produkt != 'Heme'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE produkt != 'Heme'	medicine_enzyme_interaction
SELECT name , handelsname FROM medizin WHERE fda_zugelassen = 'Yes'	medicine_enzyme_interaction
SELECT name , handelsname FROM medizin WHERE fda_zugelassen = 'Yes'	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T1.id = T2.enzym_id JOIN medizin AS T3 ON T2.medikament_id = T3.id WHERE T3.name = 'Amisulpride' AND T2.interaktionstyp = 'inhibitor'	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T1.id = T2.enzym_id JOIN medizin AS T3 ON T2.medikament_id = T3.id WHERE T3.name = 'Amisulpride' AND T2.interaktionstyp = 'inhibitor'	medicine_enzyme_interaction
SELECT T1.id , T1.name FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id HAVING count(*) >= 2	medicine_enzyme_interaction
SELECT T1.id , T1.name FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id HAVING count(*) >= 2	medicine_enzyme_interaction
SELECT T1.id , T1.name , T1.fda_zugelassen FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id , T1.name , T1.fda_zugelassen FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id , T1.name FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T1.id = T2.enzym_id WHERE T2.interaktionstyp = 'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.id , T1.name FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T1.id = T2.enzym_id WHERE T2.interaktionstyp = 'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.interaktionstyp FROM medizin_enzym_interaktion AS T1 JOIN medizin AS T2 ON T1.medikament_id = T2.id JOIN enzyme AS T3 ON T1.enzym_id = T3.id WHERE T3.name = 'ALA synthase' AND T2.name = 'Aripiprazole'	medicine_enzyme_interaction
SELECT T1.interaktionstyp FROM medizin_enzym_interaktion AS T1 JOIN medizin AS T2 ON T1.medikament_id = T2.id JOIN enzyme AS T3 ON T1.enzym_id = T3.id WHERE T3.name = 'ALA synthase' AND T2.name = 'Aripiprazole'	medicine_enzyme_interaction
SELECT interaktionstyp , count(*) FROM medizin_enzym_interaktion GROUP BY interaktionstyp ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT interaktionstyp , count(*) FROM medizin_enzym_interaktion GROUP BY interaktionstyp ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT count(*) FROM medizin WHERE fda_zugelassen = 'No'	medicine_enzyme_interaction
SELECT count(*) FROM medizin WHERE fda_zugelassen = 'No'	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzym_id FROM medizin_enzym_interaktion );	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzym_id FROM medizin_enzym_interaktion );	medicine_enzyme_interaction
SELECT T1.id , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id HAVING COUNT(*) >= 3	medicine_enzyme_interaction
SELECT T1.id , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id GROUP BY T1.id HAVING COUNT(*) >= 3	medicine_enzyme_interaction
SELECT DISTINCT T1.name , T1.ort , T1.produkt FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.enzym_id = T1.id WHERE T2.interaktionstyp = 'inhibitor'	medicine_enzyme_interaction
SELECT DISTINCT T1.name , T1.ort , T1.produkt FROM enzyme AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.enzym_id = T1.id WHERE T2.interaktionstyp = 'inhibitor'	medicine_enzyme_interaction
SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id WHERE interaktionstyp = 'inhibitor' INTERSECT SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id WHERE interaktionstyp = 'activitor'	medicine_enzyme_interaction
SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id WHERE interaktionstyp = 'inhibitor' INTERSECT SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id WHERE interaktionstyp = 'activitor'	medicine_enzyme_interaction
SELECT name , handelsname FROM medizin EXCEPT SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id JOIN enzyme AS T3 ON T3.id = T2.enzym_id WHERE T3.produkt = 'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT name , handelsname FROM medizin EXCEPT SELECT T1.name , T1.handelsname FROM medizin AS T1 JOIN medizin_enzym_interaktion AS T2 ON T2.medikament_id = T1.id JOIN enzyme AS T3 ON T3.id = T2.enzym_id WHERE T3.produkt = 'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT count(DISTINCT fda_zugelassen) FROM medizin	medicine_enzyme_interaction
SELECT count(DISTINCT fda_zugelassen) FROM medizin	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT handelsname , count(*) FROM medizin GROUP BY handelsname	medicine_enzyme_interaction
SELECT handelsname , count(*) FROM medizin GROUP BY handelsname	medicine_enzyme_interaction
SELECT schule , spitzname FROM universität ORDER BY gegründet	university_basketball
SELECT schule , spitzname FROM universität ORDER BY gegründet	university_basketball
SELECT schule , standort FROM universität WHERE zugehörigkeit = 'Public'	university_basketball
SELECT schule , standort FROM universität WHERE zugehörigkeit = 'Public'	university_basketball
SELECT gegründet FROM universität ORDER BY einschreibung DESC LIMIT 1	university_basketball
SELECT gegründet FROM universität ORDER BY einschreibung DESC LIMIT 1	university_basketball
SELECT gegründet FROM universität WHERE zugehörigkeit != 'Public' ORDER BY gegründet DESC LIMIT 1	university_basketball
SELECT gegründet FROM universität WHERE zugehörigkeit != 'Public' ORDER BY gegründet DESC LIMIT 1	university_basketball
SELECT count(DISTINCT schule_id) FROM basketballspiel	university_basketball
SELECT count(DISTINCT schule_id) FROM basketballspiel	university_basketball
SELECT acc_prozent FROM basketballspiel ORDER BY acc_prozent DESC LIMIT 1	university_basketball
SELECT acc_prozent FROM basketballspiel ORDER BY acc_prozent DESC LIMIT 1	university_basketball
SELECT t1.hauptkonferenz FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id ORDER BY t2.acc_prozent LIMIT 1	university_basketball
SELECT t1.hauptkonferenz FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id ORDER BY t2.acc_prozent LIMIT 1	university_basketball
SELECT t2.mannschaftsname , t2.acc_regular_season FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id ORDER BY t1.gegründet LIMIT 1	university_basketball
SELECT t2.mannschaftsname , t2.acc_regular_season FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id ORDER BY t1.gegründet LIMIT 1	university_basketball
SELECT t2.alle_spiele , t1.standort FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id WHERE mannschaftsname = 'Clemson'	university_basketball
SELECT t2.alle_spiele , t1.standort FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id WHERE mannschaftsname = 'Clemson'	university_basketball
SELECT avg(einschreibung) FROM universität WHERE gegründet < 1850	university_basketball
SELECT avg(einschreibung) FROM universität WHERE gegründet < 1850	university_basketball
SELECT einschreibung , hauptkonferenz FROM universität ORDER BY gegründet LIMIT 1	university_basketball
SELECT einschreibung , hauptkonferenz FROM universität ORDER BY gegründet LIMIT 1	university_basketball
SELECT sum(einschreibung) , min(einschreibung) FROM universität	university_basketball
SELECT sum(einschreibung) , min(einschreibung) FROM universität	university_basketball
SELECT sum(einschreibung) , zugehörigkeit FROM universität GROUP BY zugehörigkeit	university_basketball
SELECT sum(einschreibung) , zugehörigkeit FROM universität GROUP BY zugehörigkeit	university_basketball
SELECT count(*) FROM universität WHERE schule_id NOT IN (SELECT schule_id FROM basketballspiel)	university_basketball
SELECT count(*) FROM universität WHERE schule_id NOT IN (SELECT schule_id FROM basketballspiel)	university_basketball
SELECT schule FROM universität WHERE gegründet > 1850 OR zugehörigkeit = 'Public'	university_basketball
SELECT schule FROM universität WHERE gegründet > 1850 OR zugehörigkeit = 'Public'	university_basketball
SELECT count(DISTINCT zugehörigkeit) FROM universität	university_basketball
SELECT count(DISTINCT zugehörigkeit) FROM universität	university_basketball
SELECT count(*) FROM universität WHERE standort LIKE "%NY%"	university_basketball
SELECT count(*) FROM universität WHERE standort LIKE "%NY%"	university_basketball
SELECT t2.mannschaftsname FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id WHERE einschreibung < (SELECT avg(einschreibung) FROM universität)	university_basketball
SELECT t2.mannschaftsname FROM universität AS t1 JOIN basketballspiel AS t2 ON t1.schule_id = t2.schule_id WHERE einschreibung < (SELECT avg(einschreibung) FROM universität)	university_basketball
SELECT count(*) , zugehörigkeit FROM universität WHERE einschreibung > 20000 GROUP BY zugehörigkeit	university_basketball
SELECT count(*) , zugehörigkeit FROM universität WHERE einschreibung > 20000 GROUP BY zugehörigkeit	university_basketball
SELECT sum(einschreibung) , zugehörigkeit FROM universität WHERE gegründet > 1850 GROUP BY zugehörigkeit	university_basketball
SELECT sum(einschreibung) , zugehörigkeit FROM universität WHERE gegründet > 1850 GROUP BY zugehörigkeit	university_basketball
SELECT max(einschreibung) FROM universität	university_basketball
SELECT max(einschreibung) FROM universität	university_basketball
SELECT * FROM basketballspiel	university_basketball
SELECT * FROM basketballspiel	university_basketball
SELECT mannschaftsname FROM basketballspiel ORDER BY alle_heimspiele DESC	university_basketball
SELECT mannschaftsname FROM basketballspiel ORDER BY alle_heimspiele DESC	university_basketball
SELECT modellname FROM chip_modell WHERE einführungsjahr BETWEEN 2002 AND 2004;	phone_1
SELECT modellname , ram_mib FROM chip_modell ORDER BY ram_mib ASC LIMIT 1;	phone_1
SELECT chip_modell , bildschirm_modus FROM telefon WHERE hardware_modellname = "LG-P760";	phone_1
SELECT count(*) FROM telefon WHERE firmenname = "Nokia Corporation";	phone_1
SELECT max(T1.ram_mib) , min(T1.ram_mib) FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell WHERE T2.firmenname = "Nokia Corporation";	phone_1
SELECT avg(T1.rom_mib) FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell WHERE T2.firmenname = "Nokia Corporation";	phone_1
SELECT T2.hardware_modellname , T2.firmenname FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell WHERE T1.einführungsjahr = 2002 OR T1.ram_mib > 32;	phone_1
SELECT hardware_modellname , firmenname FROM telefon WHERE akkreditierungstyp LIKE 'Full';	phone_1
SELECT T1.zeichenzellen , T1.pixel , T1.hardware_farben FROM bildschirm_modus AS T1 JOIN telefon AS T2 ON T1.grafikmodus = T2.bildschirm_modus WHERE T2.hardware_modellname = "LG-P760";	phone_1
SELECT T2.hardware_modellname , T2.firmenname FROM bildschirm_modus AS T1 JOIN telefon AS T2 ON T1.grafikmodus = T2.bildschirm_modus WHERE T1.typ = "Graphics";	phone_1
SELECT firmenname , count(*) FROM telefon GROUP BY firmenname ORDER BY count(*) ASC LIMIT 1;	phone_1
SELECT firmenname FROM telefon GROUP BY firmenname HAVING count(*) > 1;	phone_1
SELECT max(verwendete_kb) , min(verwendete_kb) , avg(verwendete_kb) FROM bildschirm_modus;	phone_1
SELECT T2.hardware_modellname FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell WHERE T1.einführungsjahr = 2002 ORDER BY T1.ram_mib DESC LIMIT 1;	phone_1
SELECT T1.wifi , T3.typ FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell JOIN bildschirm_modus AS T3 ON T2.bildschirm_modus = T3.grafikmodus WHERE T2.hardware_modellname = "LG-P760";	phone_1
SELECT T2.hardware_modellname FROM chip_modell AS T1 JOIN telefon AS T2 ON T1.modellname = T2.chip_modell JOIN bildschirm_modus AS T3 ON T2.bildschirm_modus = T3.grafikmodus WHERE T3.typ = "Text" OR T1.ram_mib > 32;	phone_1
SELECT DISTINCT T2.hardware_modellname FROM bildschirm_modus AS T1 JOIN telefon AS T2 ON T1.grafikmodus = T2.bildschirm_modus WHERE T1.typ = "Graphics" OR t2.firmenname = "Nokia Corporation"	phone_1
SELECT DISTINCT T2.hardware_modellname FROM bildschirm_modus AS T1 JOIN telefon AS T2 ON T1.grafikmodus = T2.bildschirm_modus WHERE t2.firmenname = "Nokia Corporation" AND T1.typ != "Text";	phone_1
SELECT DISTINCT T2.hardware_modellname , T2.firmenname FROM bildschirm_modus AS T1 JOIN telefon AS T2 ON T1.grafikmodus = T2.bildschirm_modus WHERE T1.verwendete_kb BETWEEN 10 AND 15;	phone_1
SELECT akkreditierungstyp , count(*) FROM telefon GROUP BY akkreditierungstyp	phone_1
SELECT akkreditierungstyp , count(*) FROM telefon GROUP BY akkreditierungstyp	phone_1
SELECT akkreditierungsstufe FROM telefon GROUP BY akkreditierungsstufe HAVING count(*) > 3	phone_1
SELECT * FROM chip_modell	phone_1
SELECT count(*) FROM chip_modell WHERE wifi = 'No'	phone_1
SELECT count(*) FROM chip_modell WHERE wifi = 'No'	phone_1
SELECT modellname FROM chip_modell ORDER BY einführungsjahr	phone_1
SELECT avg(ram_mib) FROM chip_modell WHERE modellname NOT IN (SELECT chip_modell FROM telefon)	phone_1
SELECT modellname FROM chip_modell EXCEPT SELECT chip_modell FROM telefon WHERE akkreditierungstyp = 'Full'	phone_1
SELECT t1.pixel FROM bildschirm_modus AS t1 JOIN telefon AS t2 ON t1.grafikmodus = t2.bildschirm_modus WHERE t2.akkreditierungstyp = 'Provisional' INTERSECT SELECT t1.pixel FROM bildschirm_modus AS t1 JOIN telefon AS t2 ON t1.grafikmodus = t2.bildschirm_modus WHERE t2.akkreditierungstyp = 'Full'	phone_1
SELECT count(*) FROM land	match_season
SELECT count(*) FROM land	match_season
SELECT landesname , hauptstadt FROM land	match_season
SELECT landesname , hauptstadt FROM land	match_season
SELECT offizielle_muttersprache FROM land WHERE offizielle_muttersprache LIKE "%English%"	match_season
SELECT offizielle_muttersprache FROM land WHERE offizielle_muttersprache LIKE "%English%"	match_season
SELECT DISTINCT position FROM spielzeit	match_season
SELECT DISTINCT position FROM spielzeit	match_season
SELECT spieler FROM spielzeit WHERE hochschule = "UCLA"	match_season
SELECT spieler FROM spielzeit WHERE hochschule = "UCLA"	match_season
SELECT DISTINCT position FROM spielzeit WHERE hochschule = "UCLA" OR hochschule = "Duke"	match_season
SELECT DISTINCT position FROM spielzeit WHERE hochschule = "UCLA" OR hochschule = "Duke"	match_season
SELECT draft_pick_nummer , draftklasse FROM spielzeit WHERE position = "Defender"	match_season
SELECT draft_pick_nummer , draftklasse FROM spielzeit WHERE position = "Defender"	match_season
SELECT count(DISTINCT mannschaft) FROM spielzeit	match_season
SELECT count(DISTINCT mannschaft) FROM spielzeit	match_season
SELECT spieler , jahre_gespielt FROM spieler	match_season
SELECT spieler , jahre_gespielt FROM spieler	match_season
SELECT name FROM mannschaft	match_season
SELECT name FROM mannschaft	match_season
SELECT T2.saison , T2.spieler , T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land	match_season
SELECT T2.saison , T2.spieler , T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land	match_season
SELECT T2.spieler FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T1.landesname = "Indonesia"	match_season
SELECT T2.spieler FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T1.landesname = "Indonesia"	match_season
SELECT DISTINCT T2.position FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T1.hauptstadt = "Dublin"	match_season
SELECT DISTINCT T2.position FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T1.hauptstadt = "Dublin"	match_season
SELECT T1.offizielle_muttersprache FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.hochschule = "Maryland" OR T2.hochschule = "Duke"	match_season
SELECT T1.offizielle_muttersprache FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.hochschule = "Maryland" OR T2.hochschule = "Duke"	match_season
SELECT count(DISTINCT T1.offizielle_muttersprache) FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Defender"	match_season
SELECT count(DISTINCT T1.offizielle_muttersprache) FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Defender"	match_season
SELECT T1.saison , T1.spieler , T2.name FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id	match_season
SELECT T1.saison , T1.spieler , T2.name FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id	match_season
SELECT T1.position FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Ryley Goldner"	match_season
SELECT T1.position FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Ryley Goldner"	match_season
SELECT count(DISTINCT T1.hochschule) FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Columbus Crew"	match_season
SELECT count(DISTINCT T1.hochschule) FROM spielzeit AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Columbus Crew"	match_season
SELECT T1.spieler , T1.jahre_gespielt FROM spieler AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Columbus Crew"	match_season
SELECT T1.spieler , T1.jahre_gespielt FROM spieler AS T1 JOIN mannschaft AS T2 ON T1.mannschaft = T2.mannschaft_id WHERE T2.name = "Columbus Crew"	match_season
SELECT position , COUNT(*) FROM spielzeit GROUP BY position	match_season
SELECT position , COUNT(*) FROM spielzeit GROUP BY position	match_season
SELECT landesname , COUNT(*) FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land GROUP BY T1.landesname	match_season
SELECT landesname , COUNT(*) FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land GROUP BY T1.landesname	match_season
SELECT spieler FROM spielzeit ORDER BY hochschule ASC	match_season
SELECT spieler FROM spielzeit ORDER BY hochschule ASC	match_season
SELECT position FROM spielzeit GROUP BY position ORDER BY count(*) DESC LIMIT 1	match_season
SELECT position FROM spielzeit GROUP BY position ORDER BY count(*) DESC LIMIT 1	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule ORDER BY count(*) DESC LIMIT 3	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule ORDER BY count(*) DESC LIMIT 3	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule HAVING count(*) >= 2	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule HAVING count(*) >= 2	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule HAVING count(*) >= 2 ORDER BY hochschule DESC	match_season
SELECT hochschule FROM spielzeit GROUP BY hochschule HAVING count(*) >= 2 ORDER BY hochschule DESC	match_season
SELECT name FROM mannschaft WHERE mannschaft_id NOT IN (SELECT mannschaft FROM spielzeit)	match_season
SELECT name FROM mannschaft WHERE mannschaft_id NOT IN (SELECT mannschaft FROM spielzeit)	match_season
SELECT T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Forward" INTERSECT SELECT T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Defender"	match_season
SELECT T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Forward" INTERSECT SELECT T1.landesname FROM land AS T1 JOIN spielzeit AS T2 ON T1.land_id = T2.land WHERE T2.position = "Defender"	match_season
SELECT hochschule FROM spielzeit WHERE position = "Midfielder" INTERSECT SELECT hochschule FROM spielzeit WHERE position = "Defender"	match_season
SELECT hochschule FROM spielzeit WHERE position = "Midfielder" INTERSECT SELECT hochschule FROM spielzeit WHERE position = "Defender"	match_season
SELECT count(*) FROM bergsteiger	climbing
SELECT count(*) FROM bergsteiger	climbing
SELECT name FROM bergsteiger ORDER BY punkte DESC	climbing
SELECT name FROM bergsteiger ORDER BY punkte DESC	climbing
SELECT name FROM bergsteiger WHERE land != "Switzerland"	climbing
SELECT name FROM bergsteiger WHERE land != "Switzerland"	climbing
SELECT max(punkte) FROM bergsteiger WHERE land = "United Kingdom"	climbing
SELECT max(punkte) FROM bergsteiger WHERE land = "United Kingdom"	climbing
SELECT COUNT(DISTINCT land) FROM bergsteiger	climbing
SELECT COUNT(DISTINCT land) FROM bergsteiger	climbing
SELECT name FROM berg ORDER BY name ASC	climbing
SELECT name FROM berg ORDER BY name ASC	climbing
SELECT land FROM berg WHERE höhe > 5000	climbing
SELECT land FROM berg WHERE höhe > 5000	climbing
SELECT name FROM berg ORDER BY höhe DESC LIMIT 1	climbing
SELECT name FROM berg ORDER BY höhe DESC LIMIT 1	climbing
SELECT DISTINCT bereich FROM berg ORDER BY vorsprung DESC LIMIT 3	climbing
SELECT DISTINCT bereich FROM berg ORDER BY vorsprung DESC LIMIT 3	climbing
SELECT T1.name , T2.name FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id	climbing
SELECT T1.name , T2.name FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id	climbing
SELECT T1.name , T2.höhe FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id	climbing
SELECT T1.name , T2.höhe FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id	climbing
SELECT T2.höhe FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id ORDER BY T1.punkte DESC LIMIT 1	climbing
SELECT T2.höhe FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id ORDER BY T1.punkte DESC LIMIT 1	climbing
SELECT DISTINCT T2.name FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id WHERE T1.land = "West Germany"	climbing
SELECT DISTINCT T2.name FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id WHERE T1.land = "West Germany"	climbing
SELECT T1.zeit FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id WHERE T2.land = "Uganda"	climbing
SELECT T1.zeit FROM bergsteiger AS T1 JOIN berg AS T2 ON T1.berg_id = T2.berg_id WHERE T2.land = "Uganda"	climbing
SELECT land , COUNT(*) FROM bergsteiger GROUP BY land	climbing
SELECT land , COUNT(*) FROM bergsteiger GROUP BY land	climbing
SELECT land FROM berg GROUP BY land HAVING COUNT(*) > 1	climbing
SELECT land FROM berg GROUP BY land HAVING COUNT(*) > 1	climbing
SELECT name FROM berg WHERE berg_id NOT IN (SELECT berg_id FROM bergsteiger)	climbing
SELECT name FROM berg WHERE berg_id NOT IN (SELECT berg_id FROM bergsteiger)	climbing
SELECT land FROM berg WHERE höhe > 5600 INTERSECT SELECT land FROM berg WHERE höhe < 5200	climbing
SELECT land FROM berg WHERE höhe > 5600 INTERSECT SELECT land FROM berg WHERE höhe < 5200	climbing
SELECT bereich FROM berg GROUP BY bereich ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT bereich FROM berg GROUP BY bereich ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT name FROM berg WHERE höhe > 5000 OR vorsprung > 1000	climbing
SELECT name FROM berg WHERE höhe > 5000 OR vorsprung > 1000	climbing
SELECT count(*) FROM body_builder	body_builder
SELECT gesamt FROM body_builder ORDER BY gesamt ASC	body_builder
SELECT reißen , clean_jerk FROM body_builder ORDER BY reißen ASC	body_builder
SELECT avg(reißen) FROM body_builder	body_builder
SELECT clean_jerk FROM body_builder ORDER BY gesamt DESC LIMIT 1	body_builder
SELECT geburtsdatum FROM leute ORDER BY größe ASC	body_builder
SELECT T2.name FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id	body_builder
SELECT T2.name FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.gesamt > 300	body_builder
SELECT T2.name FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewicht DESC LIMIT 1	body_builder
SELECT T2.geburtsdatum , T2.geburtsort FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.gesamt DESC LIMIT 1	body_builder
SELECT T2.größe FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.gesamt < 315	body_builder
SELECT avg(T1.gesamt) FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T2.größe > 200	body_builder
SELECT T2.name FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.gesamt DESC	body_builder
SELECT geburtsort , COUNT(*) FROM leute GROUP BY geburtsort	body_builder
SELECT geburtsort FROM leute GROUP BY geburtsort ORDER BY COUNT(*) DESC LIMIT 1	body_builder
SELECT geburtsort FROM leute GROUP BY geburtsort HAVING COUNT(*) >= 2	body_builder
SELECT größe , gewicht FROM leute ORDER BY größe DESC	body_builder
SELECT * FROM body_builder	body_builder
SELECT name , geburtsort FROM leute EXCEPT SELECT T1.name , T1.geburtsort FROM leute AS T1 JOIN body_builder AS T2 ON T1.personen_id = T2.personen_id	body_builder
SELECT count(DISTINCT geburtsort) FROM leute	body_builder
SELECT count(*) FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM body_builder)	body_builder
SELECT T2.gewicht FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.reißen > 140 OR T2.größe > 200;	body_builder
SELECT T1.gesamt FROM body_builder AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T2.geburtsdatum LIKE "%January%";	body_builder
SELECT min(reißen) FROM body_builder	body_builder
SELECT count(*) FROM wahl	election_representative
SELECT stimmen FROM wahl ORDER BY stimmen DESC	election_representative
SELECT datum , stimmenanteil FROM wahl	election_representative
SELECT min(stimmenanteil) , max(stimmenanteil) FROM wahl	election_representative
SELECT name , partei FROM vertreter	election_representative
SELECT name FROM vertreter WHERE partei != "Republican"	election_representative
SELECT lebensdauer FROM vertreter WHERE bundesland = "New York" OR bundesland = "Indiana"	election_representative
SELECT T2.name , T1.datum FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id	election_representative
SELECT T2.name FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id WHERE stimmen > 10000	election_representative
SELECT T2.name FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id ORDER BY stimmen DESC	election_representative
SELECT T2.partei FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id ORDER BY stimmen ASC LIMIT 1	election_representative
SELECT T2.lebensdauer FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id ORDER BY stimmenanteil DESC	election_representative
SELECT avg(T1.stimmen) FROM wahl AS T1 JOIN vertreter AS T2 ON T1.vertreter_id = T2.vertreter_id WHERE T2.partei = "Republican"	election_representative
SELECT partei , COUNT(*) FROM vertreter GROUP BY partei	election_representative
SELECT partei , COUNT(*) FROM vertreter GROUP BY partei ORDER BY COUNT(*) DESC LIMIT 1	election_representative
SELECT partei FROM vertreter GROUP BY partei HAVING COUNT(*) >= 3	election_representative
SELECT bundesland FROM vertreter GROUP BY bundesland HAVING COUNT(*) >= 2	election_representative
SELECT name FROM vertreter WHERE vertreter_id NOT IN (SELECT vertreter_id FROM wahl)	election_representative
SELECT partei FROM vertreter WHERE bundesland = "New York" INTERSECT SELECT partei FROM vertreter WHERE bundesland = "Pennsylvania"	election_representative
SELECT count(DISTINCT partei) FROM vertreter	election_representative
SELECT count(*) FROM wohnungen_buchungen	apartment_rentals
SELECT count(*) FROM wohnungen_buchungen	apartment_rentals
SELECT buchungsstartdatum , buchungsenddatum FROM wohnungen_buchungen	apartment_rentals
SELECT buchungsstartdatum , buchungsenddatum FROM wohnungen_buchungen	apartment_rentals
SELECT DISTINCT gebäudebeschreibung FROM mehrfamilienhäuser	apartment_rentals
SELECT DISTINCT gebäudebeschreibung FROM mehrfamilienhäuser	apartment_rentals
SELECT gebäude_kurzname FROM mehrfamilienhäuser WHERE gebäudemanager = "Emma"	apartment_rentals
SELECT gebäude_kurzname FROM mehrfamilienhäuser WHERE gebäudemanager = "Emma"	apartment_rentals
SELECT adresse_des_gebäudes , gebäude_telefon FROM mehrfamilienhäuser WHERE gebäudemanager = "Brenden"	apartment_rentals
SELECT adresse_des_gebäudes , gebäude_telefon FROM mehrfamilienhäuser WHERE gebäudemanager = "Brenden"	apartment_rentals
SELECT gebäude_vollständiger_name FROM mehrfamilienhäuser WHERE gebäude_vollständiger_name LIKE "%court%"	apartment_rentals
SELECT gebäude_vollständiger_name FROM mehrfamilienhäuser WHERE gebäude_vollständiger_name LIKE "%court%"	apartment_rentals
SELECT min(anzahl_der_badezimmer) , max(anzahl_der_badezimmer) FROM wohnungen	apartment_rentals
SELECT min(anzahl_der_badezimmer) , max(anzahl_der_badezimmer) FROM wohnungen	apartment_rentals
SELECT avg(anzahl_der_schlafzimmer) FROM wohnungen	apartment_rentals
SELECT avg(anzahl_der_schlafzimmer) FROM wohnungen	apartment_rentals
SELECT wohnungsnummer , zimmeranzahl FROM wohnungen	apartment_rentals
SELECT wohnungsnummer , zimmeranzahl FROM wohnungen	apartment_rentals
SELECT avg(zimmeranzahl) FROM wohnungen WHERE wohnungstyp_code = "Studio"	apartment_rentals
SELECT avg(zimmeranzahl) FROM wohnungen WHERE wohnungstyp_code = "Studio"	apartment_rentals
SELECT wohnungsnummer FROM wohnungen WHERE wohnungstyp_code = "Flat"	apartment_rentals
SELECT wohnungsnummer FROM wohnungen WHERE wohnungstyp_code = "Flat"	apartment_rentals
SELECT gast_vorname , nachname_des_gastes FROM gäste	apartment_rentals
SELECT gast_vorname , nachname_des_gastes FROM gäste	apartment_rentals
SELECT geburtsdatum FROM gäste WHERE geschlechtscode = "Male"	apartment_rentals
SELECT geburtsdatum FROM gäste WHERE geschlechtscode = "Male"	apartment_rentals
SELECT T2.wohnungsnummer , T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id	apartment_rentals
SELECT T2.wohnungsnummer , T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.wohnungstyp_code = "Duplex"	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.wohnungstyp_code = "Duplex"	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.anzahl_der_schlafzimmer > 2	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.anzahl_der_schlafzimmer > 2	apartment_rentals
SELECT T1.buchungsstatuscode FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.wohnungsnummer = "Suite 634"	apartment_rentals
SELECT T1.buchungsstatuscode FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.wohnungsnummer = "Suite 634"	apartment_rentals
SELECT DISTINCT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Confirmed"	apartment_rentals
SELECT DISTINCT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Confirmed"	apartment_rentals
SELECT avg(zimmeranzahl) FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Provisional"	apartment_rentals
SELECT avg(zimmeranzahl) FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Provisional"	apartment_rentals
SELECT T2.gast_vorname , T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id	apartment_rentals
SELECT T2.gast_vorname , T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id WHERE T2.geschlechtscode = "Female"	apartment_rentals
SELECT T1.buchungsstartdatum , T1.buchungsstartdatum FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id WHERE T2.geschlechtscode = "Female"	apartment_rentals
SELECT T2.gast_vorname , T2.nachname_des_gastes FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id WHERE T1.buchungsstatuscode = "Confirmed"	apartment_rentals
SELECT T2.gast_vorname , T2.nachname_des_gastes FROM wohnungen_buchungen AS T1 JOIN gäste AS T2 ON T1.gast_id = T2.gast_id WHERE T1.buchungsstatuscode = "Confirmed"	apartment_rentals
SELECT T1.einrichtungscode FROM wohnungseinrichtungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.anzahl_der_schlafzimmer > 4	apartment_rentals
SELECT T1.einrichtungscode FROM wohnungseinrichtungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.anzahl_der_schlafzimmer > 4	apartment_rentals
SELECT sum(T2.zimmeranzahl) FROM wohnungseinrichtungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.einrichtungscode = "Gym"	apartment_rentals
SELECT sum(T2.zimmeranzahl) FROM wohnungseinrichtungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.einrichtungscode = "Gym"	apartment_rentals
SELECT sum(T2.zimmeranzahl) FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T1.gebäude_kurzname = "Columbus Square"	apartment_rentals
SELECT sum(T2.zimmeranzahl) FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T1.gebäude_kurzname = "Columbus Square"	apartment_rentals
SELECT T1.adresse_des_gebäudes FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T2.anzahl_der_badezimmer > 2	apartment_rentals
SELECT T1.adresse_des_gebäudes FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T2.anzahl_der_badezimmer > 2	apartment_rentals
SELECT T2.wohnungstyp_code , T2.wohnungsnummer FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T1.gebäudemanager = "Kyle"	apartment_rentals
SELECT T2.wohnungstyp_code , T2.wohnungsnummer FROM mehrfamilienhäuser AS T1 JOIN wohnungen AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T1.gebäudemanager = "Kyle"	apartment_rentals
SELECT buchungsstatuscode , COUNT(*) FROM wohnungen_buchungen GROUP BY buchungsstatuscode	apartment_rentals
SELECT buchungsstatuscode , COUNT(*) FROM wohnungen_buchungen GROUP BY buchungsstatuscode	apartment_rentals
SELECT wohnungsnummer FROM wohnungen ORDER BY zimmeranzahl ASC	apartment_rentals
SELECT wohnungsnummer FROM wohnungen ORDER BY zimmeranzahl ASC	apartment_rentals
SELECT wohnungsnummer FROM wohnungen ORDER BY anzahl_der_schlafzimmer DESC LIMIT 1	apartment_rentals
SELECT wohnungsnummer FROM wohnungen ORDER BY anzahl_der_schlafzimmer DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code , COUNT(*) FROM wohnungen GROUP BY wohnungstyp_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT wohnungstyp_code , COUNT(*) FROM wohnungen GROUP BY wohnungstyp_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen GROUP BY wohnungstyp_code ORDER BY avg(zimmeranzahl) DESC LIMIT 3	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen GROUP BY wohnungstyp_code ORDER BY avg(zimmeranzahl) DESC LIMIT 3	apartment_rentals
SELECT wohnungstyp_code , anzahl_der_badezimmer , anzahl_der_schlafzimmer FROM wohnungen GROUP BY wohnungstyp_code ORDER BY sum(zimmeranzahl) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code , anzahl_der_badezimmer , anzahl_der_schlafzimmer FROM wohnungen GROUP BY wohnungstyp_code ORDER BY sum(zimmeranzahl) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen GROUP BY wohnungstyp_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen GROUP BY wohnungstyp_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen WHERE anzahl_der_badezimmer > 1 GROUP BY wohnungstyp_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code FROM wohnungen WHERE anzahl_der_badezimmer > 1 GROUP BY wohnungstyp_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT wohnungstyp_code , max(zimmeranzahl) , min(zimmeranzahl) FROM wohnungen GROUP BY wohnungstyp_code	apartment_rentals
SELECT wohnungstyp_code , max(zimmeranzahl) , min(zimmeranzahl) FROM wohnungen GROUP BY wohnungstyp_code	apartment_rentals
SELECT geschlechtscode , COUNT(*) FROM gäste GROUP BY geschlechtscode ORDER BY COUNT(*) DESC	apartment_rentals
SELECT geschlechtscode , COUNT(*) FROM gäste GROUP BY geschlechtscode ORDER BY COUNT(*) DESC	apartment_rentals
SELECT count(*) FROM wohnungen WHERE wohnung_id NOT IN (SELECT wohnung_id FROM wohnungseinrichtungen)	apartment_rentals
SELECT count(*) FROM wohnungen WHERE wohnung_id NOT IN (SELECT wohnung_id FROM wohnungseinrichtungen)	apartment_rentals
SELECT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Confirmed" INTERSECT SELECT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Provisional"	apartment_rentals
SELECT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Confirmed" INTERSECT SELECT T2.wohnungsnummer FROM wohnungen_buchungen AS T1 JOIN wohnungen AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T1.buchungsstatuscode = "Provisional"	apartment_rentals
SELECT T1.wohnungsnummer FROM wohnungen AS T1 JOIN ansicht_einheit_status AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.verfügbar_ja_oder_nein = 0 INTERSECT SELECT T1.wohnungsnummer FROM wohnungen AS T1 JOIN ansicht_einheit_status AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.verfügbar_ja_oder_nein = 1	apartment_rentals
SELECT T1.wohnungsnummer FROM wohnungen AS T1 JOIN ansicht_einheit_status AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.verfügbar_ja_oder_nein = 0 INTERSECT SELECT T1.wohnungsnummer FROM wohnungen AS T1 JOIN ansicht_einheit_status AS T2 ON T1.wohnung_id = T2.wohnung_id WHERE T2.verfügbar_ja_oder_nein = 1	apartment_rentals
SELECT count(*) FROM spiel WHERE saison > 2007	game_injury
SELECT datum FROM spiel ORDER BY heimmannschaft DESC	game_injury
SELECT saison , heimmannschaft , auswärtsmannschaft FROM spiel	game_injury
SELECT max(heimspiele) , min(heimspiele) , avg(heimspiele) FROM stadion	game_injury
SELECT durchschnittliche_besucherzahl FROM stadion WHERE auslastung_in_prozent > 100	game_injury
SELECT spieler , anzahl_der_spiele , quelle FROM verletzung_unfall WHERE verletzung != 'Knee problem'	game_injury
SELECT T1.saison FROM spiel AS T1 JOIN verletzung_unfall AS T2 ON T1.id = T2.spiel_id WHERE T2.spieler = 'Walter Samuel'	game_injury
SELECT T1.id , T1.ergebnis , T1.datum FROM spiel AS T1 JOIN verletzung_unfall AS T2 ON T2.spiel_id = T1.id GROUP BY T1.id HAVING count(*) >= 2	game_injury
SELECT T1.id , T1.name FROM stadion AS T1 JOIN spiel AS T2 ON T1.id = T2.stadion_id JOIN verletzung_unfall AS T3 ON T2.id = T3.spiel_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.id , T1.name FROM stadion AS T1 JOIN spiel AS T2 ON T1.id = T2.stadion_id JOIN verletzung_unfall AS T3 ON T2.id = T3.spiel_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.saison , T2.name FROM spiel AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.id JOIN verletzung_unfall AS T3 ON T1.id = T3.spiel_id WHERE T3.verletzung = 'Foot injury' OR T3.verletzung = 'Knee problem'	game_injury
SELECT count(DISTINCT quelle) FROM verletzung_unfall	game_injury
SELECT count(*) FROM spiel WHERE id NOT IN ( SELECT spiel_id FROM verletzung_unfall )	game_injury
SELECT count(DISTINCT T1.verletzung) FROM verletzung_unfall AS T1 JOIN spiel AS T2 ON T1.spiel_id = T2.id WHERE T2.saison > 2010	game_injury
SELECT T2.name FROM spiel AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.id JOIN verletzung_unfall AS T3 ON T1.id = T3.spiel_id WHERE T3.spieler = 'Walter Samuel' INTERSECT SELECT T2.name FROM spiel AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.id JOIN verletzung_unfall AS T3 ON T1.id = T3.spiel_id WHERE T3.spieler = 'Thiago Motta'	game_injury
SELECT name , durchschnittliche_besucherzahl , gesamtzuschauerzahl FROM stadion EXCEPT SELECT T2.name , T2.durchschnittliche_besucherzahl , T2.gesamtzuschauerzahl FROM spiel AS T1 JOIN stadion AS T2 ON T1.stadion_id = T2.id JOIN verletzung_unfall AS T3 ON T1.id = T3.spiel_id	game_injury
SELECT name FROM stadion WHERE name LIKE "%Bank%"	game_injury
SELECT T1.id , count(*) FROM stadion AS T1 JOIN spiel AS T2 ON T1.id = T2.stadion_id GROUP BY T1.id	game_injury
SELECT T1.datum , T2.spieler FROM spiel AS T1 JOIN verletzung_unfall AS T2 ON T1.id = T2.spiel_id ORDER BY T1.saison DESC	game_injury
SELECT T1.name , T2.name FROM land AS T1 JOIN liga AS T2 ON T1.id = T2.land_id	soccer_1
SELECT count(*) FROM land AS T1 JOIN liga AS T2 ON T1.id = T2.land_id WHERE T1.name = "England"	soccer_1
SELECT avg(gewicht) FROM spieler	soccer_1
SELECT max(gewicht) , min(gewicht) FROM spieler	soccer_1
SELECT DISTINCT T1.spielername FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id WHERE T2.gesamtbewertung > ( SELECT avg(gesamtbewertung) FROM spielerattribute )	soccer_1
SELECT DISTINCT T1.spielername FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id WHERE T2.dribbeln = ( SELECT max(gesamtbewertung) FROM spielerattribute)	soccer_1
SELECT DISTINCT T1.spielername FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id WHERE T2.flanken > 90 AND T2.bevorzugter_fuß = "right"	soccer_1
SELECT DISTINCT T1.spielername FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id WHERE T2.bevorzugter_fuß = "left" AND T2.gesamtbewertung >= 85 AND T2.gesamtbewertung <= 90	soccer_1
SELECT bevorzugter_fuß , avg(gesamtbewertung) FROM spielerattribute GROUP BY bevorzugter_fuß	soccer_1
SELECT bevorzugter_fuß , count(*) FROM spielerattribute WHERE gesamtbewertung > 80 GROUP BY bevorzugter_fuß	soccer_1
SELECT spieler_api_id FROM spieler WHERE größe >= 180 INTERSECT SELECT spieler_api_id FROM spielerattribute WHERE gesamtbewertung > 85	soccer_1
SELECT spieler_api_id FROM spieler WHERE größe >= 180 AND größe <= 190 INTERSECT SELECT spieler_api_id FROM spielerattribute WHERE bevorzugter_fuß = "left"	soccer_1
SELECT DISTINCT T1.spielername FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id ORDER BY gesamtbewertung DESC LIMIT 3	soccer_1
SELECT DISTINCT T1.spielername , T1.geburtstag FROM spieler AS T1 JOIN spielerattribute AS T2 ON T1.spieler_api_id = T2.spieler_api_id ORDER BY potenzial DESC LIMIT 5	soccer_1
SELECT count(*) FROM leistung	performance_attendance
SELECT host FROM leistung ORDER BY anwesenheit ASC	performance_attendance
SELECT datum , ort FROM leistung	performance_attendance
SELECT anwesenheit FROM leistung WHERE ort = "TD Garden" OR ort = "Bell Centre"	performance_attendance
SELECT avg(anwesenheit) FROM leistung	performance_attendance
SELECT datum FROM leistung ORDER BY anwesenheit DESC LIMIT 1	performance_attendance
SELECT ort , COUNT(*) FROM leistung GROUP BY ort	performance_attendance
SELECT ort FROM leistung GROUP BY ort ORDER BY COUNT(*) DESC LIMIT 1	performance_attendance
SELECT ort FROM leistung GROUP BY ort HAVING COUNT(*) >= 2	performance_attendance
SELECT ort FROM leistung WHERE anwesenheit > 2000 INTERSECT SELECT ort FROM leistung WHERE anwesenheit < 1000	performance_attendance
SELECT T2.name , T3.ort FROM mitglied_anwesenheit AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id JOIN leistung AS T3 ON T1.leistung_id = T3.leistung_id	performance_attendance
SELECT T2.name , T3.ort FROM mitglied_anwesenheit AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id JOIN leistung AS T3 ON T1.leistung_id = T3.leistung_id ORDER BY T2.name ASC	performance_attendance
SELECT T3.datum FROM mitglied_anwesenheit AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id JOIN leistung AS T3 ON T1.leistung_id = T3.leistung_id WHERE T2.rolle = "Violin"	performance_attendance
SELECT T2.name , T3.datum FROM mitglied_anwesenheit AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id JOIN leistung AS T3 ON T1.leistung_id = T3.leistung_id ORDER BY T3.anwesenheit DESC	performance_attendance
SELECT name FROM mitglied WHERE mitglied_id NOT IN (SELECT mitglied_id FROM mitglied_anwesenheit)	performance_attendance
SELECT DISTINCT gebäude FROM klassenzimmer WHERE kapazität > 50	college_2
SELECT DISTINCT gebäude FROM klassenzimmer WHERE kapazität > 50	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude != 'Lamberton'	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude != 'Lamberton'	college_2
SELECT abteilungsname , gebäude FROM abteilung WHERE budget > (SELECT avg(budget) FROM abteilung)	college_2
SELECT abteilungsname , gebäude FROM abteilung WHERE budget > (SELECT avg(budget) FROM abteilung)	college_2
SELECT gebäude , raumnummer FROM klassenzimmer WHERE kapazität BETWEEN 50 AND 100	college_2
SELECT gebäude , raumnummer FROM klassenzimmer WHERE kapazität BETWEEN 50 AND 100	college_2
SELECT abteilungsname , gebäude FROM abteilung ORDER BY budget DESC LIMIT 1	college_2
SELECT abteilungsname , gebäude FROM abteilung ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE abteilungsname = 'History' ORDER BY total_credits DESC LIMIT 1	college_2
SELECT name FROM student WHERE abteilungsname = 'History' ORDER BY total_credits DESC LIMIT 1	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude = 'Lamberton'	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude = 'Lamberton'	college_2
SELECT count(DISTINCT student_id) FROM berater	college_2
SELECT count(DISTINCT student_id) FROM berater	college_2
SELECT count(DISTINCT abteilungsname) FROM kurs	college_2
SELECT count(DISTINCT abteilungsname) FROM kurs	college_2
SELECT count(DISTINCT kurs_id) FROM kurs WHERE abteilungsname = 'Physics'	college_2
SELECT count(DISTINCT kurs_id) FROM kurs WHERE abteilungsname = 'Physics'	college_2
SELECT T1.titel FROM kurs AS T1 JOIN voraussetzung AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING count(*) = 2	college_2
SELECT T1.titel FROM kurs AS T1 JOIN voraussetzung AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING count(*) = 2	college_2
SELECT T1.titel , T1.credits , T1.abteilungsname FROM kurs AS T1 JOIN voraussetzung AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING count(*) > 1	college_2
SELECT T1.titel , T1.credits , T1.abteilungsname FROM kurs AS T1 JOIN voraussetzung AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING count(*) > 1	college_2
SELECT count(*) FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT count(*) FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT titel FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT titel FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT COUNT (DISTINCT id) FROM lehrer	college_2
SELECT COUNT (DISTINCT id) FROM lehrer	college_2
SELECT sum(budget) FROM abteilung WHERE abteilungsname = 'Marketing' OR abteilungsname = 'Finance'	college_2
SELECT sum(budget) FROM abteilung WHERE abteilungsname = 'Marketing' OR abteilungsname = 'Finance'	college_2
SELECT abteilungsname FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT abteilungsname FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude = 'Lamberton' AND kapazität < 50	college_2
SELECT count(*) FROM klassenzimmer WHERE gebäude = 'Lamberton' AND kapazität < 50	college_2
SELECT abteilungsname , budget FROM abteilung WHERE budget > (SELECT avg(budget) FROM abteilung)	college_2
SELECT abteilungsname , budget FROM abteilung WHERE budget > (SELECT avg(budget) FROM abteilung)	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Statistics' ORDER BY gehalt LIMIT 1	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Statistics' ORDER BY gehalt LIMIT 1	college_2
SELECT titel FROM kurs WHERE abteilungsname = 'Statistics' INTERSECT SELECT titel FROM kurs WHERE abteilungsname = 'Psychology'	college_2
SELECT titel FROM kurs WHERE abteilungsname = 'Statistics' INTERSECT SELECT titel FROM kurs WHERE abteilungsname = 'Psychology'	college_2
SELECT titel FROM kurs WHERE abteilungsname = 'Statistics' EXCEPT SELECT titel FROM kurs WHERE abteilungsname = 'Psychology'	college_2
SELECT titel FROM kurs WHERE abteilungsname = 'Statistics' EXCEPT SELECT titel FROM kurs WHERE abteilungsname = 'Psychology'	college_2
SELECT id FROM lehrer WHERE semester = 'Fall' AND jahr = 2009 EXCEPT SELECT id FROM lehrer WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT id FROM lehrer WHERE semester = 'Fall' AND jahr = 2009 EXCEPT SELECT id FROM lehrer WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN nimmt_klassen AS T2 ON T1.id = T2.id WHERE jahr = 2009 OR jahr = 2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN nimmt_klassen AS T2 ON T1.id = T2.id WHERE jahr = 2009 OR jahr = 2010	college_2
SELECT abteilungsname FROM kurs GROUP BY abteilungsname ORDER BY count(*) DESC LIMIT 3	college_2
SELECT abteilungsname FROM kurs GROUP BY abteilungsname ORDER BY count(*) DESC LIMIT 3	college_2
SELECT abteilungsname FROM kurs GROUP BY abteilungsname ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT abteilungsname FROM kurs GROUP BY abteilungsname ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT titel FROM kurs ORDER BY titel , credits	college_2
SELECT titel FROM kurs ORDER BY titel , credits	college_2
SELECT abteilungsname FROM abteilung ORDER BY budget LIMIT 1	college_2
SELECT abteilungsname FROM abteilung ORDER BY budget LIMIT 1	college_2
SELECT abteilungsname , gebäude FROM abteilung ORDER BY budget DESC	college_2
SELECT abteilungsname , gebäude FROM abteilung ORDER BY budget DESC	college_2
SELECT name FROM instructor ORDER BY gehalt DESC LIMIT 1	college_2
SELECT name FROM instructor ORDER BY gehalt DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY gehalt	college_2
SELECT * FROM instructor ORDER BY gehalt	college_2
SELECT name , abteilungsname FROM student ORDER BY total_credits	college_2
SELECT name , abteilungsname FROM student ORDER BY total_credits	college_2
SELECT T1.titel , T3.name FROM kurs AS T1 JOIN lehrer AS T2 ON T1.kurs_id = T2.kurs_id JOIN instructor AS T3 ON T2.id = T3.id WHERE jahr = 2008 ORDER BY T1.titel	college_2
SELECT T1.titel , T3.name FROM kurs AS T1 JOIN lehrer AS T2 ON T1.kurs_id = T2.kurs_id JOIN instructor AS T3 ON T2.id = T3.id WHERE jahr = 2008 ORDER BY T1.titel	college_2
SELECT T1.name FROM instructor AS T1 JOIN berater AS T2 ON T1.id = T2.lehrer_id GROUP BY T2.lehrer_id HAVING count(*) > 1	college_2
SELECT T1.name FROM instructor AS T1 JOIN berater AS T2 ON T1.id = T2.lehrer_id GROUP BY T2.lehrer_id HAVING count(*) > 1	college_2
SELECT T1.name FROM student AS T1 JOIN berater AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1	college_2
SELECT T1.name FROM student AS T1 JOIN berater AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1	college_2
SELECT count(*) , gebäude FROM klassenzimmer WHERE kapazität > 50 GROUP BY gebäude	college_2
SELECT count(*) , gebäude FROM klassenzimmer WHERE kapazität > 50 GROUP BY gebäude	college_2
SELECT max(kapazität) , avg(kapazität) , gebäude FROM klassenzimmer GROUP BY gebäude	college_2
SELECT max(kapazität) , avg(kapazität) , gebäude FROM klassenzimmer GROUP BY gebäude	college_2
SELECT titel FROM kurs GROUP BY titel HAVING count(*) > 1	college_2
SELECT titel FROM kurs GROUP BY titel HAVING count(*) > 1	college_2
SELECT sum(credits) , abteilungsname FROM kurs GROUP BY abteilungsname	college_2
SELECT sum(credits) , abteilungsname FROM kurs GROUP BY abteilungsname	college_2
SELECT min(gehalt) , abteilungsname FROM instructor GROUP BY abteilungsname HAVING avg(gehalt) > (SELECT avg(gehalt) FROM instructor)	college_2
SELECT min(gehalt) , abteilungsname FROM instructor GROUP BY abteilungsname HAVING avg(gehalt) > (SELECT avg(gehalt) FROM instructor)	college_2
SELECT count(*) , semester , jahr FROM section GROUP BY semester , jahr	college_2
SELECT count(*) , semester , jahr FROM section GROUP BY semester , jahr	college_2
SELECT jahr FROM section GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	college_2
SELECT jahr FROM section GROUP BY jahr ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester , jahr FROM section GROUP BY semester , jahr ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester , jahr FROM section GROUP BY semester , jahr ORDER BY count(*) DESC LIMIT 1	college_2
SELECT abteilungsname FROM student GROUP BY abteilungsname ORDER BY count(*) DESC LIMIT 1	college_2
SELECT abteilungsname FROM student GROUP BY abteilungsname ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) , abteilungsname FROM student GROUP BY abteilungsname	college_2
SELECT count(*) , abteilungsname FROM student GROUP BY abteilungsname	college_2
SELECT semester , jahr FROM nimmt_klassen GROUP BY semester , jahr ORDER BY count(*) LIMIT 1	college_2
SELECT semester , jahr FROM nimmt_klassen GROUP BY semester , jahr ORDER BY count(*) LIMIT 1	college_2
SELECT lehrer_id FROM berater AS T1 JOIN student AS T2 ON T1.student_id = T2.id WHERE T2.abteilungsname = 'History'	college_2
SELECT lehrer_id FROM berater AS T1 JOIN student AS T2 ON T1.student_id = T2.id WHERE T2.abteilungsname = 'History'	college_2
SELECT T2.name , T2.gehalt FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'History'	college_2
SELECT T2.name , T2.gehalt FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'History'	college_2
SELECT kurs_id FROM kurs EXCEPT SELECT kurs_id FROM voraussetzung	college_2
SELECT kurs_id FROM kurs EXCEPT SELECT kurs_id FROM voraussetzung	college_2
SELECT titel FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT titel FROM kurs WHERE kurs_id NOT IN (SELECT kurs_id FROM voraussetzung)	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.voraussetzung_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.titel = 'International Finance')	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.voraussetzung_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.titel = 'International Finance')	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.kurs_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.voraussetzung_id = T2.kurs_id WHERE T2.titel = 'Differential Geometry')	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.kurs_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.voraussetzung_id = T2.kurs_id WHERE T2.titel = 'Differential Geometry')	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM nimmt_klassen WHERE semester = 'Fall' AND jahr = 2003)	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM nimmt_klassen WHERE semester = 'Fall' AND jahr = 2003)	college_2
SELECT T1.titel FROM kurs AS T1 JOIN section AS T2 ON T1.kurs_id = T2.kurs_id WHERE gebäude = 'Chandler' AND semester = 'Fall' AND jahr = 2010	college_2
SELECT T1.titel FROM kurs AS T1 JOIN section AS T2 ON T1.kurs_id = T2.kurs_id WHERE gebäude = 'Chandler' AND semester = 'Fall' AND jahr = 2010	college_2
SELECT T1.name FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id JOIN kurs AS T3 ON T2.kurs_id = T3.kurs_id WHERE T3.titel = 'C Programming'	college_2
SELECT T1.name FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id JOIN kurs AS T3 ON T2.kurs_id = T3.kurs_id WHERE T3.titel = 'C Programming'	college_2
SELECT T2.name , T2.gehalt FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'Math'	college_2
SELECT T2.name , T2.gehalt FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'Math'	college_2
SELECT T2.name FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'Math' ORDER BY T3.total_credits	college_2
SELECT T2.name FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id WHERE T3.abteilungsname = 'Math' ORDER BY T3.total_credits	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.voraussetzung_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.titel = 'Mobile Computing')	college_2
SELECT titel FROM kurs WHERE kurs_id IN (SELECT T1.voraussetzung_id FROM voraussetzung AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.titel = 'Mobile Computing')	college_2
SELECT T2.name FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id ORDER BY T3.total_credits DESC LIMIT 1	college_2
SELECT T2.name FROM berater AS T1 JOIN instructor AS T2 ON T1.lehrer_id = T2.id JOIN student AS T3 ON T1.student_id = T3.id ORDER BY T3.total_credits DESC LIMIT 1	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM lehrer)	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM lehrer)	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM lehrer	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM lehrer	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM lehrer WHERE semester = 'Spring')	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM lehrer WHERE semester = 'Spring')	college_2
SELECT abteilungsname FROM instructor GROUP BY abteilungsname ORDER BY avg(gehalt) DESC LIMIT 1	college_2
SELECT abteilungsname FROM instructor GROUP BY abteilungsname ORDER BY avg(gehalt) DESC LIMIT 1	college_2
SELECT avg(T1.gehalt) , count(*) FROM instructor AS T1 JOIN abteilung AS T2 ON T1.abteilungsname = T2.abteilungsname ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT avg(T1.gehalt) , count(*) FROM instructor AS T1 JOIN abteilung AS T2 ON T1.abteilungsname = T2.abteilungsname ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT T3.titel , T3.credits FROM klassenzimmer AS T1 JOIN section AS T2 ON T1.gebäude = T2.gebäude AND T1.raumnummer = T2.raumnummer JOIN kurs AS T3 ON T2.kurs_id = T3.kurs_id WHERE T1.kapazität = (SELECT max(kapazität) FROM klassenzimmer)	college_2
SELECT T3.titel , T3.credits FROM klassenzimmer AS T1 JOIN section AS T2 ON T1.gebäude = T2.gebäude AND T1.raumnummer = T2.raumnummer JOIN kurs AS T3 ON T2.kurs_id = T3.kurs_id WHERE T1.kapazität = (SELECT max(kapazität) FROM klassenzimmer)	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM nimmt_klassen AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.abteilungsname = 'Biology')	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM nimmt_klassen AS T1 JOIN kurs AS T2 ON T1.kurs_id = T2.kurs_id WHERE T2.abteilungsname = 'Biology')	college_2
SELECT count(DISTINCT T2.id) , count(DISTINCT T3.id) , T3.abteilungsname FROM abteilung AS T1 JOIN student AS T2 ON T1.abteilungsname = T2.abteilungsname JOIN instructor AS T3 ON T1.abteilungsname = T3.abteilungsname GROUP BY T3.abteilungsname	college_2
SELECT count(DISTINCT T2.id) , count(DISTINCT T3.id) , T3.abteilungsname FROM abteilung AS T1 JOIN student AS T2 ON T1.abteilungsname = T2.abteilungsname JOIN instructor AS T3 ON T1.abteilungsname = T3.abteilungsname GROUP BY T3.abteilungsname	college_2
SELECT T1.name FROM student AS T1 JOIN nimmt_klassen AS T2 ON T1.id = T2.id WHERE T2.kurs_id IN (SELECT T4.voraussetzung_id FROM kurs AS T3 JOIN voraussetzung AS T4 ON T3.kurs_id = T4.kurs_id WHERE T3.titel = 'International Finance')	college_2
SELECT T1.name FROM student AS T1 JOIN nimmt_klassen AS T2 ON T1.id = T2.id WHERE T2.kurs_id IN (SELECT T4.voraussetzung_id FROM kurs AS T3 JOIN voraussetzung AS T4 ON T3.kurs_id = T4.kurs_id WHERE T3.titel = 'International Finance')	college_2
SELECT name , gehalt FROM instructor WHERE gehalt < (SELECT avg(gehalt) FROM instructor WHERE abteilungsname = 'Physics')	college_2
SELECT name , gehalt FROM instructor WHERE gehalt < (SELECT avg(gehalt) FROM instructor WHERE abteilungsname = 'Physics')	college_2
SELECT T3.name FROM kurs AS T1 JOIN nimmt_klassen AS T2 ON T1.kurs_id = T2.kurs_id JOIN student AS T3 ON T2.id = T3.id WHERE T1.abteilungsname = 'Statistics'	college_2
SELECT T3.name FROM kurs AS T1 JOIN nimmt_klassen AS T2 ON T1.kurs_id = T2.kurs_id JOIN student AS T3 ON T2.id = T3.id WHERE T1.abteilungsname = 'Statistics'	college_2
SELECT T2.gebäude , T2.raumnummer , T2.semester , T2.jahr FROM kurs AS T1 JOIN section AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.abteilungsname = 'Psychology' ORDER BY T1.titel	college_2
SELECT T2.gebäude , T2.raumnummer , T2.semester , T2.jahr FROM kurs AS T1 JOIN section AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.abteilungsname = 'Psychology' ORDER BY T1.titel	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Comp. Sci.' AND gehalt > 80000	college_2
SELECT name FROM instructor WHERE abteilungsname = 'Comp. Sci.' AND gehalt > 80000	college_2
SELECT name , kurs_id FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id	college_2
SELECT name , kurs_id FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id	college_2
SELECT name , kurs_id FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id WHERE T1.abteilungsname = 'Art'	college_2
SELECT name , kurs_id FROM instructor AS T1 JOIN lehrer AS T2 ON T1.id = T2.id WHERE T1.abteilungsname = 'Art'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM instructor ORDER BY name	college_2
SELECT DISTINCT name FROM instructor ORDER BY name	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 UNION SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 UNION SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 INTERSECT SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 INTERSECT SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 EXCEPT SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT kurs_id FROM section WHERE semester = 'Fall' AND jahr = 2009 EXCEPT SELECT kurs_id FROM section WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT DISTINCT gehalt FROM instructor WHERE gehalt < (SELECT max(gehalt) FROM instructor)	college_2
SELECT DISTINCT gehalt FROM instructor WHERE gehalt < (SELECT max(gehalt) FROM instructor)	college_2
SELECT COUNT (DISTINCT id) FROM lehrer WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT COUNT (DISTINCT id) FROM lehrer WHERE semester = 'Spring' AND jahr = 2010	college_2
SELECT abteilungsname , AVG (gehalt) FROM instructor GROUP BY abteilungsname HAVING AVG (gehalt) > 42000	college_2
SELECT abteilungsname , AVG (gehalt) FROM instructor GROUP BY abteilungsname HAVING AVG (gehalt) > 42000	college_2
SELECT name FROM instructor WHERE gehalt > (SELECT min(gehalt) FROM instructor WHERE abteilungsname = 'Biology')	college_2
SELECT name FROM instructor WHERE gehalt > (SELECT min(gehalt) FROM instructor WHERE abteilungsname = 'Biology')	college_2
SELECT name FROM instructor WHERE gehalt > (SELECT max(gehalt) FROM instructor WHERE abteilungsname = 'Biology')	college_2
SELECT name FROM instructor WHERE gehalt > (SELECT max(gehalt) FROM instructor WHERE abteilungsname = 'Biology')	college_2
SELECT count(*) FROM debatte	debate
SELECT veranstaltungsort FROM debatte ORDER BY anzahl_der_zuhörer ASC	debate
SELECT datum , veranstaltungsort FROM debatte	debate
SELECT datum FROM debatte WHERE anzahl_der_zuhörer > 150	debate
SELECT name FROM leute WHERE alter = 35 OR alter = 36	debate
SELECT partei FROM leute ORDER BY alter ASC LIMIT 1	debate
SELECT partei , COUNT(*) FROM leute GROUP BY partei	debate
SELECT partei FROM leute GROUP BY partei ORDER BY COUNT(*) DESC LIMIT 1	debate
SELECT DISTINCT veranstaltungsort FROM debatte	debate
SELECT T3.name , T2.datum , T2.veranstaltungsort FROM diskussionsteilnehmer AS T1 JOIN debatte AS T2 ON T1.debatte_id = T2.debatte_id JOIN leute AS T3 ON T1.zustimmend = T3.personen_id	debate
SELECT T3.name , T2.datum , T2.veranstaltungsort FROM diskussionsteilnehmer AS T1 JOIN debatte AS T2 ON T1.debatte_id = T2.debatte_id JOIN leute AS T3 ON T1.negativ = T3.personen_id ORDER BY T3.name ASC	debate
SELECT T3.name FROM diskussionsteilnehmer AS T1 JOIN debatte AS T2 ON T1.debatte_id = T2.debatte_id JOIN leute AS T3 ON T1.zustimmend = T3.personen_id WHERE T2.anzahl_der_zuhörer > 200	debate
SELECT T2.name , COUNT(*) FROM diskussionsteilnehmer AS T1 JOIN leute AS T2 ON T1.zustimmend = T2.personen_id GROUP BY T2.name	debate
SELECT T2.name FROM diskussionsteilnehmer AS T1 JOIN leute AS T2 ON T1.negativ = T2.personen_id GROUP BY T2.name HAVING COUNT(*) >= 2	debate
SELECT name FROM leute WHERE personen_id NOT IN (SELECT zustimmend FROM diskussionsteilnehmer)	debate
SELECT kundenangaben FROM kunden ORDER BY kundenangaben	insurance_and_eclaims
SELECT kundenangaben FROM kunden ORDER BY kundenangaben	insurance_and_eclaims
SELECT policy_type_code FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t2.kundenangaben = "Dayana Robel"	insurance_and_eclaims
SELECT policy_type_code FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t2.kundenangaben = "Dayana Robel"	insurance_and_eclaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*) > 2	insurance_and_eclaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*) > 2	insurance_and_eclaims
SELECT sum(erstattungsbetrag) , avg(erstattungsbetrag) FROM antragskopf	insurance_and_eclaims
SELECT sum(erstattungsbetrag) , avg(erstattungsbetrag) FROM antragskopf	insurance_and_eclaims
SELECT sum(t1.geforderter_betrag) FROM antragskopf AS t1 JOIN schadenunterlagen AS t2 ON t1.forderungskopf_id = t2.schaden_id WHERE t2.erstellungsdatum = (SELECT erstellungsdatum FROM schadenunterlagen ORDER BY erstellungsdatum LIMIT 1)	insurance_and_eclaims
SELECT sum(t1.geforderter_betrag) FROM antragskopf AS t1 JOIN schadenunterlagen AS t2 ON t1.forderungskopf_id = t2.schaden_id WHERE t2.erstellungsdatum = (SELECT erstellungsdatum FROM schadenunterlagen ORDER BY erstellungsdatum LIMIT 1)	insurance_and_eclaims
SELECT t3.kundenangaben FROM antragskopf AS t1 JOIN policies AS t2 ON t1.policen_id = t2.policen_id JOIN kunden AS t3 ON t2.kunden_id = t3.kunden_id WHERE t1.geforderter_betrag = (SELECT max(geforderter_betrag) FROM antragskopf)	insurance_and_eclaims
SELECT t3.kundenangaben FROM antragskopf AS t1 JOIN policies AS t2 ON t1.policen_id = t2.policen_id JOIN kunden AS t3 ON t2.kunden_id = t3.kunden_id WHERE t1.geforderter_betrag = (SELECT max(geforderter_betrag) FROM antragskopf)	insurance_and_eclaims
SELECT t3.kundenangaben FROM antragskopf AS t1 JOIN policies AS t2 ON t1.policen_id = t2.policen_id JOIN kunden AS t3 ON t2.kunden_id = t3.kunden_id WHERE t1.erstattungsbetrag = (SELECT min(erstattungsbetrag) FROM antragskopf)	insurance_and_eclaims
SELECT t3.kundenangaben FROM antragskopf AS t1 JOIN policies AS t2 ON t1.policen_id = t2.policen_id JOIN kunden AS t3 ON t2.kunden_id = t3.kunden_id WHERE t1.erstattungsbetrag = (SELECT min(erstattungsbetrag) FROM antragskopf)	insurance_and_eclaims
SELECT kundenangaben FROM kunden EXCEPT SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id	insurance_and_eclaims
SELECT kundenangaben FROM kunden EXCEPT SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id	insurance_and_eclaims
SELECT count(*) FROM stufen_der_schadenbearbeitung	insurance_and_eclaims
SELECT count(*) FROM stufen_der_schadenbearbeitung	insurance_and_eclaims
SELECT t2.bezeichnung_des_anspruchsstatus FROM antragsbearbeitung AS t1 JOIN stufen_der_schadenbearbeitung AS t2 ON t1.claim_stage_id = t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT t2.bezeichnung_des_anspruchsstatus FROM antragsbearbeitung AS t1 JOIN stufen_der_schadenbearbeitung AS t2 ON t1.claim_stage_id = t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT kundenangaben FROM kunden WHERE kundenangaben LIKE "%Diana%"	insurance_and_eclaims
SELECT kundenangaben FROM kunden WHERE kundenangaben LIKE "%Diana%"	insurance_and_eclaims
SELECT DISTINCT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.policy_type_code = "Deputy"	insurance_and_eclaims
SELECT DISTINCT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.policy_type_code = "Deputy"	insurance_and_eclaims
SELECT DISTINCT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.policy_type_code = "Deputy" OR t1.policy_type_code = "Uniform"	insurance_and_eclaims
SELECT DISTINCT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.policy_type_code = "Deputy" OR t1.policy_type_code = "Uniform"	insurance_and_eclaims
SELECT kundenangaben FROM kunden UNION SELECT personal_details FROM personal	insurance_and_eclaims
SELECT kundenangaben FROM kunden UNION SELECT personal_details FROM personal	insurance_and_eclaims
SELECT policy_type_code , count(*) FROM policies GROUP BY policy_type_code	insurance_and_eclaims
SELECT policy_type_code , count(*) FROM policies GROUP BY policy_type_code	insurance_and_eclaims
SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t2.kundenangaben ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t2.kundenangaben ORDER BY count(*) DESC LIMIT 1	insurance_and_eclaims
SELECT fallstatusbeschreibung FROM stufen_der_schadenbearbeitung WHERE bezeichnung_des_anspruchsstatus = "Open"	insurance_and_eclaims
SELECT fallstatusbeschreibung FROM stufen_der_schadenbearbeitung WHERE bezeichnung_des_anspruchsstatus = "Open"	insurance_and_eclaims
SELECT count(DISTINCT claim_outcome_code) FROM antragsbearbeitung	insurance_and_eclaims
SELECT count(DISTINCT claim_outcome_code) FROM antragsbearbeitung	insurance_and_eclaims
SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.start_date = (SELECT max(start_date) FROM policies)	insurance_and_eclaims
SELECT t2.kundenangaben FROM policies AS t1 JOIN kunden AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.start_date = (SELECT max(start_date) FROM policies)	insurance_and_eclaims
SELECT count(*) FROM konten	customers_and_invoices
SELECT count(*) FROM konten	customers_and_invoices
SELECT count(DISTINCT kunden_id) FROM konten	customers_and_invoices
SELECT count(DISTINCT kunden_id) FROM konten	customers_and_invoices
SELECT konto_id , datum_kontoeröffnung , kontobezeichnung , andere_kontodetails FROM konten	customers_and_invoices
SELECT konto_id , datum_kontoeröffnung , kontobezeichnung , andere_kontodetails FROM konten	customers_and_invoices
SELECT T1.konto_id , T1.datum_kontoeröffnung , T1.kontobezeichnung , T1.andere_kontodetails FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = 'Meaghan'	customers_and_invoices
SELECT T1.konto_id , T1.datum_kontoeröffnung , T1.kontobezeichnung , T1.andere_kontodetails FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = 'Meaghan'	customers_and_invoices
SELECT T1.kontobezeichnung , T1.andere_kontodetails FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Meaghan" AND T2.nachname_des_kunden = "Keeling"	customers_and_invoices
SELECT T1.kontobezeichnung , T1.andere_kontodetails FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname_des_kunden = "Meaghan" AND T2.nachname_des_kunden = "Keeling"	customers_and_invoices
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kontobezeichnung = "900"	customers_and_invoices
SELECT T2.vorname_des_kunden , T2.nachname_des_kunden FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kontobezeichnung = "900"	customers_and_invoices
SELECT count(*) FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM konten)	customers_and_invoices
SELECT count(*) FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM konten)	customers_and_invoices
SELECT DISTINCT T1.vorname_des_kunden , T1.nachname_des_kunden , T1.telefonnummer FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_and_invoices
SELECT DISTINCT T1.vorname_des_kunden , T1.nachname_des_kunden , T1.telefonnummer FROM kunden AS T1 JOIN konten AS T2 ON T1.kunden_id = T2.kunden_id	customers_and_invoices
SELECT kunden_id FROM kunden EXCEPT SELECT kunden_id FROM konten	customers_and_invoices
SELECT kunden_id FROM kunden EXCEPT SELECT kunden_id FROM konten	customers_and_invoices
SELECT count(*) , kunden_id FROM konten GROUP BY kunden_id	customers_and_invoices
SELECT count(*) , kunden_id FROM konten GROUP BY kunden_id	customers_and_invoices
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden , count(*) FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id	customers_and_invoices
SELECT T1.kunden_id , T2.vorname_des_kunden , T2.nachname_des_kunden , count(*) FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id	customers_and_invoices
SELECT T2.vorname_des_kunden , T1.kunden_id FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2	customers_and_invoices
SELECT T2.vorname_des_kunden , T1.kunden_id FROM konten AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2	customers_and_invoices
SELECT count(*) FROM kunden	customers_and_invoices
SELECT count(*) FROM kunden	customers_and_invoices
SELECT geschlecht , count(*) FROM kunden GROUP BY geschlecht	customers_and_invoices
SELECT geschlecht , count(*) FROM kunden GROUP BY geschlecht	customers_and_invoices
SELECT count(*) FROM finanztransaktionen	customers_and_invoices
SELECT count(*) FROM finanztransaktionen	customers_and_invoices
SELECT count(*) , konto_id FROM finanztransaktionen	customers_and_invoices
SELECT count(*) , konto_id FROM finanztransaktionen	customers_and_invoices
SELECT count(*) FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id WHERE T2.kontobezeichnung = "337"	customers_and_invoices
SELECT count(*) FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id WHERE T2.kontobezeichnung = "337"	customers_and_invoices
SELECT avg(transaktionsbetrag) , min(transaktionsbetrag) , max(transaktionsbetrag) , sum(transaktionsbetrag) FROM finanztransaktionen	customers_and_invoices
SELECT avg(transaktionsbetrag) , min(transaktionsbetrag) , max(transaktionsbetrag) , sum(transaktionsbetrag) FROM finanztransaktionen	customers_and_invoices
SELECT transaktions_id FROM finanztransaktionen WHERE transaktionsbetrag > (SELECT avg(transaktionsbetrag) FROM finanztransaktionen)	customers_and_invoices
SELECT transaktions_id FROM finanztransaktionen WHERE transaktionsbetrag > (SELECT avg(transaktionsbetrag) FROM finanztransaktionen)	customers_and_invoices
SELECT transaktionsart , sum(transaktionsbetrag) FROM finanztransaktionen GROUP BY transaktionsart	customers_and_invoices
SELECT transaktionsart , sum(transaktionsbetrag) FROM finanztransaktionen GROUP BY transaktionsart	customers_and_invoices
SELECT T2.kontobezeichnung , T1.konto_id , count(*) FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id GROUP BY T1.konto_id	customers_and_invoices
SELECT T2.kontobezeichnung , T1.konto_id , count(*) FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id GROUP BY T1.konto_id	customers_and_invoices
SELECT konto_id FROM finanztransaktionen GROUP BY konto_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT konto_id FROM finanztransaktionen GROUP BY konto_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.konto_id , T2.kontobezeichnung FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id GROUP BY T1.konto_id HAVING count(*) >= 4	customers_and_invoices
SELECT T1.konto_id , T2.kontobezeichnung FROM finanztransaktionen AS T1 JOIN konten AS T2 ON T1.konto_id = T2.konto_id GROUP BY T1.konto_id HAVING count(*) >= 4	customers_and_invoices
SELECT DISTINCT produktgröße FROM produkte	customers_and_invoices
SELECT DISTINCT produktgröße FROM produkte	customers_and_invoices
SELECT DISTINCT produktfarbe FROM produkte	customers_and_invoices
SELECT DISTINCT produktfarbe FROM produkte	customers_and_invoices
SELECT rechnungsnummer , count(*) FROM finanztransaktionen GROUP BY rechnungsnummer	customers_and_invoices
SELECT rechnungsnummer , count(*) FROM finanztransaktionen GROUP BY rechnungsnummer	customers_and_invoices
SELECT T2.rechnungsnummer , T2.rechnungsdatum FROM finanztransaktionen AS T1 JOIN rechnungen AS T2 ON T1.rechnungsnummer = T2.rechnungsnummer GROUP BY T1.rechnungsnummer ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T2.rechnungsnummer , T2.rechnungsdatum FROM finanztransaktionen AS T1 JOIN rechnungen AS T2 ON T1.rechnungsnummer = T2.rechnungsnummer GROUP BY T1.rechnungsnummer ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT count(*) FROM rechnungen	customers_and_invoices
SELECT count(*) FROM rechnungen	customers_and_invoices
SELECT T1.rechnungsdatum , T1.auftragsnummer , T2.auftragsdetails FROM rechnungen AS T1 JOIN bestellungen AS T2 ON T1.auftragsnummer = T2.auftragsnummer	customers_and_invoices
SELECT T1.rechnungsdatum , T1.auftragsnummer , T2.auftragsdetails FROM rechnungen AS T1 JOIN bestellungen AS T2 ON T1.auftragsnummer = T2.auftragsnummer	customers_and_invoices
SELECT auftragsnummer , count(*) FROM rechnungen GROUP BY auftragsnummer	customers_and_invoices
SELECT auftragsnummer , count(*) FROM rechnungen GROUP BY auftragsnummer	customers_and_invoices
SELECT T2.auftragsnummer , T2.auftragsdetails FROM rechnungen AS T1 JOIN bestellungen AS T2 ON T1.auftragsnummer = T2.auftragsnummer GROUP BY T2.auftragsnummer HAVING count(*) > 2	customers_and_invoices
SELECT T2.auftragsnummer , T2.auftragsdetails FROM rechnungen AS T1 JOIN bestellungen AS T2 ON T1.auftragsnummer = T2.auftragsnummer GROUP BY T2.auftragsnummer HAVING count(*) > 2	customers_and_invoices
SELECT T2.nachname_des_kunden , T1.kunden_id , T2.telefonnummer FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T2.nachname_des_kunden , T1.kunden_id , T2.telefonnummer FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT produktname FROM produkte EXCEPT SELECT T1.produktname FROM produkte AS T1 JOIN auftragspositionen AS T2 ON T1.produkt_id = T2.produkt_id	customers_and_invoices
SELECT produktname FROM produkte EXCEPT SELECT T1.produktname FROM produkte AS T1 JOIN auftragspositionen AS T2 ON T1.produkt_id = T2.produkt_id	customers_and_invoices
SELECT T2.produktname , sum(T1.produktmenge) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produktname	customers_and_invoices
SELECT T2.produktname , sum(T1.produktmenge) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produktname	customers_and_invoices
SELECT auftragsnummer , count(*) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT auftragsnummer , count(*) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT produkt_id , count(DISTINCT auftragsnummer) FROM auftragspositionen GROUP BY produkt_id	customers_and_invoices
SELECT produkt_id , count(DISTINCT auftragsnummer) FROM auftragspositionen GROUP BY produkt_id	customers_and_invoices
SELECT T2.produktname , count(*) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id JOIN bestellungen AS T3 ON T3.auftragsnummer = T1.auftragsnummer GROUP BY T2.produktname	customers_and_invoices
SELECT T2.produktname , count(*) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id JOIN bestellungen AS T3 ON T3.auftragsnummer = T1.auftragsnummer GROUP BY T2.produktname	customers_and_invoices
SELECT auftragsnummer , count(DISTINCT produkt_id) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT auftragsnummer , count(DISTINCT produkt_id) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT auftragsnummer , sum(produktmenge) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT auftragsnummer , sum(produktmenge) FROM auftragspositionen GROUP BY auftragsnummer	customers_and_invoices
SELECT count(*) FROM produkte WHERE produkt_id NOT IN ( SELECT produkt_id FROM auftragspositionen )	customers_and_invoices
SELECT count(*) FROM produkte WHERE produkt_id NOT IN ( SELECT produkt_id FROM auftragspositionen )	customers_and_invoices
SELECT count(*) FROM kirche WHERE eröffnungsdatum < 1850	wedding
SELECT name , eröffnungsdatum , organisiert_von FROM kirche	wedding
SELECT name FROM kirche ORDER BY eröffnungsdatum DESC	wedding
SELECT eröffnungsdatum FROM kirche GROUP BY eröffnungsdatum HAVING count(*) >= 2	wedding
SELECT organisiert_von , name FROM kirche WHERE eröffnungsdatum BETWEEN 1830 AND 1840	wedding
SELECT eröffnungsdatum , count(*) FROM kirche GROUP BY eröffnungsdatum	wedding
SELECT name , eröffnungsdatum FROM kirche ORDER BY eröffnungsdatum DESC LIMIT 3	wedding
SELECT count(*) FROM leute WHERE ist_männlich = 'F' AND alter > 30	wedding
SELECT land FROM leute WHERE alter < 25 INTERSECT SELECT land FROM leute WHERE alter > 30	wedding
SELECT min(alter) , max(alter) , avg(alter) FROM leute	wedding
SELECT name , land FROM leute WHERE alter < (SELECT avg(alter) FROM leute)	wedding
SELECT T2.name , T3.name FROM hochzeit AS T1 JOIN leute AS T2 ON T1.männer_id = T2.personen_id JOIN leute AS T3 ON T1.weibliche_id = T3.personen_id WHERE T1.jahr > 2014	wedding
SELECT name , alter FROM leute WHERE ist_männlich = 'T' AND personen_id NOT IN (SELECT männer_id FROM hochzeit)	wedding
SELECT name FROM kirche EXCEPT SELECT T1.name FROM kirche AS T1 JOIN hochzeit AS T2 ON T1.kirche_id = T2.kirche_id WHERE T2.jahr = 2015	wedding
SELECT T1.name FROM kirche AS T1 JOIN hochzeit AS T2 ON T1.kirche_id = T2.kirche_id GROUP BY T1.kirche_id HAVING count(*) >= 2	wedding
SELECT T2.name FROM hochzeit AS T1 JOIN leute AS T2 ON T1.weibliche_id = T2.personen_id WHERE T1.jahr = 2016 AND T2.ist_männlich = 'F' AND T2.land = 'Canada'	wedding
SELECT count(*) FROM hochzeit WHERE jahr = 2016	wedding
SELECT T4.name FROM hochzeit AS T1 JOIN leute AS T2 ON T1.männer_id = T2.personen_id JOIN leute AS T3 ON T1.weibliche_id = T3.personen_id JOIN kirche AS T4 ON T4.kirche_id = T1.kirche_id WHERE T2.alter > 30 OR T3.alter > 30	wedding
SELECT land , count(*) FROM leute GROUP BY land	wedding
SELECT COUNT (DISTINCT kirche_id) FROM hochzeit WHERE jahr = 2016	wedding
SELECT count(*) FROM künstler	theme_gallery
SELECT count(*) FROM künstler	theme_gallery
SELECT name , alter , land FROM künstler ORDER BY jahrgang	theme_gallery
SELECT name , alter , land FROM künstler ORDER BY jahrgang	theme_gallery
SELECT DISTINCT land FROM künstler	theme_gallery
SELECT DISTINCT land FROM künstler	theme_gallery
SELECT name , jahrgang FROM künstler WHERE land != 'United States'	theme_gallery
SELECT name , jahrgang FROM künstler WHERE land != 'United States'	theme_gallery
SELECT count(*) FROM künstler WHERE alter > 46 AND jahrgang > 1990	theme_gallery
SELECT count(*) FROM künstler WHERE alter > 46 AND jahrgang > 1990	theme_gallery
SELECT avg(alter) , min(alter) FROM künstler WHERE land = 'United States'	theme_gallery
SELECT avg(alter) , min(alter) FROM künstler WHERE land = 'United States'	theme_gallery
SELECT name FROM künstler ORDER BY jahrgang DESC LIMIT 1	theme_gallery
SELECT name FROM künstler ORDER BY jahrgang DESC LIMIT 1	theme_gallery
SELECT count(*) FROM ausstellung WHERE jahr >= 2005	theme_gallery
SELECT count(*) FROM ausstellung WHERE jahr >= 2005	theme_gallery
SELECT thema , jahr FROM ausstellung WHERE eintrittspreis < 15	theme_gallery
SELECT thema , jahr FROM ausstellung WHERE eintrittspreis < 15	theme_gallery
SELECT T2.name , count(*) FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id GROUP BY T1.künstler_id	theme_gallery
SELECT T2.name , count(*) FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id GROUP BY T1.künstler_id	theme_gallery
SELECT T2.name , T2.land FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id GROUP BY T1.künstler_id ORDER BY count(*) DESC LIMIT 1	theme_gallery
SELECT T2.name , T2.land FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id GROUP BY T1.künstler_id ORDER BY count(*) DESC LIMIT 1	theme_gallery
SELECT name FROM künstler WHERE künstler_id NOT IN (SELECT künstler_id FROM ausstellung)	theme_gallery
SELECT name FROM künstler WHERE künstler_id NOT IN (SELECT künstler_id FROM ausstellung)	theme_gallery
SELECT T1.thema , T2.name FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id WHERE T1.eintrittspreis > (SELECT avg(eintrittspreis) FROM ausstellung)	theme_gallery
SELECT T1.thema , T2.name FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id WHERE T1.eintrittspreis > (SELECT avg(eintrittspreis) FROM ausstellung)	theme_gallery
SELECT avg(eintrittspreis) , min(eintrittspreis) , max(eintrittspreis) FROM ausstellung WHERE jahr < 2009	theme_gallery
SELECT avg(eintrittspreis) , min(eintrittspreis) , max(eintrittspreis) FROM ausstellung WHERE jahr < 2009	theme_gallery
SELECT thema , jahr FROM ausstellung ORDER BY eintrittspreis DESC	theme_gallery
SELECT thema , jahr FROM ausstellung ORDER BY eintrittspreis DESC	theme_gallery
SELECT T2.thema , T1.datum , T1.teilnahme FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T2.jahr = 2004	theme_gallery
SELECT T2.thema , T1.datum , T1.teilnahme FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T2.jahr = 2004	theme_gallery
SELECT name FROM künstler EXCEPT SELECT T2.name FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id WHERE T1.jahr = 2004	theme_gallery
SELECT name FROM künstler EXCEPT SELECT T2.name FROM ausstellung AS T1 JOIN künstler AS T2 ON T1.künstler_id = T2.künstler_id WHERE T1.jahr = 2004	theme_gallery
SELECT T2.thema FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme < 100 INTERSECT SELECT T2.thema FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme > 500	theme_gallery
SELECT T2.thema FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme < 100 INTERSECT SELECT T2.thema FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme > 500	theme_gallery
SELECT count(*) FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme > 100 OR T2.eintrittspreis < 10	theme_gallery
SELECT count(*) FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id WHERE T1.teilnahme > 100 OR T2.eintrittspreis < 10	theme_gallery
SELECT T3.name FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id JOIN künstler AS T3 ON T3.künstler_id = T2.künstler_id GROUP BY T3.künstler_id HAVING avg(T1.teilnahme) > 200	theme_gallery
SELECT T3.name FROM ausstellungsdatensatz AS T1 JOIN ausstellung AS T2 ON T1.ausstellung_id = T2.ausstellung_id JOIN künstler AS T3 ON T3.künstler_id = T2.künstler_id GROUP BY T3.künstler_id HAVING avg(T1.teilnahme) > 200	theme_gallery
SELECT item_id FROM artikel WHERE titel = "orange"	epinions_1
SELECT * FROM artikel	epinions_1
SELECT count(*) FROM review	epinions_1
SELECT count(*) FROM useracct	epinions_1
SELECT avg(bewertung) , max(bewertung) FROM review	epinions_1
SELECT min(rang) FROM review	epinions_1
SELECT count(DISTINCT user_id) FROM review	epinions_1
SELECT count(DISTINCT item_id) FROM review	epinions_1
SELECT count(*) FROM artikel WHERE item_id NOT IN (SELECT item_id FROM review)	epinions_1
SELECT name FROM useracct WHERE user_id NOT IN (SELECT user_id FROM review)	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.bewertung = 10	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.bewertung > (SELECT avg(bewertung) FROM review)	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.bewertung < 5	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.bewertung > 8 INTERSECT SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.bewertung < 5	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id WHERE T2.rang > 3 INTERSECT SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id GROUP BY T2.item_id HAVING avg(T2.bewertung) > 5	epinions_1
SELECT T1.titel FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id GROUP BY T2.item_id ORDER BY avg(T2.bewertung) LIMIT 1	epinions_1
SELECT titel FROM artikel ORDER BY titel	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id ORDER BY count(*) DESC LIMIT 1	epinions_1
SELECT T1.titel , T1.item_id FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id GROUP BY T2.item_id ORDER BY avg(T2.bewertung) DESC LIMIT 1	epinions_1
SELECT T1.titel , T1.item_id FROM artikel AS T1 JOIN review AS T2 ON T1.item_id = T2.item_id GROUP BY T2.item_id ORDER BY avg(T2.rang) DESC LIMIT 1	epinions_1
SELECT T1.name , avg(T2.bewertung) FROM useracct AS T1 JOIN review AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id	epinions_1
SELECT T1.name , count(*) FROM useracct AS T1 JOIN review AS T2 ON T1.user_id = T2.user_id GROUP BY T2.user_id	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.user_id = T2.user_id ORDER BY T2.bewertung DESC LIMIT 1	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN vertrauen AS T2 ON T1.user_id = T2.quelle_benutzerkennung GROUP BY T2.quelle_benutzerkennung ORDER BY avg(vertrauen) DESC LIMIT 1	epinions_1
SELECT T1.name , avg(vertrauen) FROM useracct AS T1 JOIN vertrauen AS T2 ON T1.user_id = T2.ziel_benutzerkennung GROUP BY T2.ziel_benutzerkennung	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN vertrauen AS T2 ON T1.user_id = T2.ziel_benutzerkennung ORDER BY vertrauen LIMIT 1	epinions_1
SELECT titel FROM artikel WHERE item_id NOT IN (SELECT item_id FROM review)	epinions_1
SELECT name FROM useracct WHERE user_id NOT IN (SELECT user_id FROM review)	epinions_1
SELECT count(*) FROM useracct WHERE user_id NOT IN (SELECT user_id FROM review)	epinions_1
SELECT count(*) FROM artikel WHERE item_id NOT IN (SELECT item_id FROM review)	epinions_1
SELECT count(*) FROM spieler	riding_club
SELECT spielername FROM spieler ORDER BY stimmen ASC	riding_club
SELECT geschlecht , beruf FROM spieler	riding_club
SELECT spielername , wohnort FROM spieler WHERE beruf != "Researcher"	riding_club
SELECT sponsor_name FROM spieler WHERE wohnort = "Brandon" OR wohnort = "Birtle"	riding_club
SELECT spielername FROM spieler ORDER BY stimmen DESC LIMIT 1	riding_club
SELECT beruf , COUNT(*) FROM spieler GROUP BY beruf	riding_club
SELECT beruf FROM spieler GROUP BY beruf ORDER BY COUNT(*) DESC LIMIT 1	riding_club
SELECT wohnort FROM spieler GROUP BY wohnort HAVING COUNT(*) >= 2	riding_club
SELECT T3.spielername , T2.spielername FROM spieler_trainer AS T1 JOIN trainer AS T2 ON T1.trainer_id = T2.trainer_id JOIN spieler AS T3 ON T1.spieler_id = T3.spieler_id	riding_club
SELECT T3.spielername FROM spieler_trainer AS T1 JOIN trainer AS T2 ON T1.trainer_id = T2.trainer_id JOIN spieler AS T3 ON T1.spieler_id = T3.spieler_id WHERE T2.rang = 1	riding_club
SELECT T3.spielername , T3.geschlecht FROM spieler_trainer AS T1 JOIN trainer AS T2 ON T1.trainer_id = T2.trainer_id JOIN spieler AS T3 ON T1.spieler_id = T3.spieler_id WHERE T1.anfangsjahr > 2011	riding_club
SELECT T3.spielername , T2.spielername FROM spieler_trainer AS T1 JOIN trainer AS T2 ON T1.trainer_id = T2.trainer_id JOIN spieler AS T3 ON T1.spieler_id = T3.spieler_id ORDER BY T3.stimmen DESC	riding_club
SELECT spielername FROM spieler WHERE spieler_id NOT IN (SELECT spieler_id FROM spieler_trainer)	riding_club
SELECT wohnort FROM spieler WHERE geschlecht = "M" INTERSECT SELECT wohnort FROM spieler WHERE geschlecht = "F"	riding_club
SELECT T1.club_id , T1.vereinsname, count(*) FROM verein AS T1 JOIN trainer AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_id	riding_club
SELECT T1.club_id , T1.gold FROM spielergebnis AS T1 JOIN trainer AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_id ORDER BY count(*) DESC LIMIT 1	riding_club
SELECT count(*) FROM turner	gymnast
SELECT count(*) FROM turner	gymnast
SELECT gesamtpunkte FROM turner ORDER BY gesamtpunkte DESC	gymnast
SELECT gesamtpunkte FROM turner ORDER BY gesamtpunkte DESC	gymnast
SELECT gesamtpunkte FROM turner ORDER BY bodenübungspunkte DESC	gymnast
SELECT gesamtpunkte FROM turner ORDER BY bodenübungspunkte DESC	gymnast
SELECT avg(reck_punkte) FROM turner	gymnast
SELECT avg(reck_punkte) FROM turner	gymnast
SELECT name FROM leute ORDER BY name ASC	gymnast
SELECT name FROM leute ORDER BY name ASC	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id WHERE T2.heimatort != "Santo Domingo"	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id WHERE T2.heimatort != "Santo Domingo"	gymnast
SELECT alter FROM leute ORDER BY größe DESC LIMIT 1	gymnast
SELECT alter FROM leute ORDER BY größe DESC LIMIT 1	gymnast
SELECT name FROM leute ORDER BY alter DESC LIMIT 5	gymnast
SELECT name FROM leute ORDER BY alter DESC LIMIT 5	gymnast
SELECT T1.gesamtpunkte FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T2.alter ASC LIMIT 1	gymnast
SELECT T1.gesamtpunkte FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T2.alter ASC LIMIT 1	gymnast
SELECT avg(T2.alter) FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT avg(T2.alter) FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT DISTINCT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id WHERE T1.gesamtpunkte > 57.5	gymnast
SELECT DISTINCT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id WHERE T1.gesamtpunkte > 57.5	gymnast
SELECT T2.heimatort , COUNT(*) FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort	gymnast
SELECT T2.heimatort , COUNT(*) FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort	gymnast
SELECT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort ORDER BY COUNT(*) DESC LIMIT 1	gymnast
SELECT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort ORDER BY COUNT(*) DESC LIMIT 1	gymnast
SELECT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort HAVING COUNT(*) >= 2	gymnast
SELECT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id GROUP BY T2.heimatort HAVING COUNT(*) >= 2	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T2.größe ASC	gymnast
SELECT T2.name FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T2.größe ASC	gymnast
SELECT DISTINCT heimatort FROM leute EXCEPT SELECT DISTINCT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT DISTINCT heimatort FROM leute EXCEPT SELECT DISTINCT T2.heimatort FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id	gymnast
SELECT heimatort FROM leute WHERE alter > 23 INTERSECT SELECT heimatort FROM leute WHERE alter < 20	gymnast
SELECT heimatort FROM leute WHERE alter > 23 INTERSECT SELECT heimatort FROM leute WHERE alter < 20	gymnast
SELECT count(DISTINCT heimatort) FROM leute	gymnast
SELECT count(DISTINCT heimatort) FROM leute	gymnast
SELECT T2.alter FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T1.gesamtpunkte DESC	gymnast
SELECT T2.alter FROM turner AS T1 JOIN leute AS T2 ON T1.turner_id = T2.personen_id ORDER BY T1.gesamtpunkte DESC	gymnast
SELECT sum(T2.saldo) FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name != 'Brown'	small_bank_1
SELECT sum(T2.saldo) FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name != 'Brown'	small_bank_1
SELECT count(*) FROM konten	small_bank_1
SELECT count(*) FROM konten	small_bank_1
SELECT sum(saldo) FROM girokonto	small_bank_1
SELECT sum(saldo) FROM girokonto	small_bank_1
SELECT avg(saldo) FROM girokonto	small_bank_1
SELECT avg(saldo) FROM girokonto	small_bank_1
SELECT count(*) FROM ersparnisse WHERE saldo > (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT count(*) FROM ersparnisse WHERE saldo > (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT T1.kunden_id , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT max(saldo) FROM girokonto)	small_bank_1
SELECT T1.kunden_id , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT max(saldo) FROM girokonto)	small_bank_1
SELECT T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name LIKE '%ee%'	small_bank_1
SELECT T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name LIKE '%ee%'	small_bank_1
SELECT T2.saldo , T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T1.name = 'Brown'	small_bank_1
SELECT T2.saldo , T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T1.name = 'Brown'	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo > (SELECT avg(saldo) FROM girokonto) INTERSECT SELECT T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo > (SELECT avg(saldo) FROM girokonto) INTERSECT SELECT T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name IN (SELECT T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo > (SELECT avg(saldo) FROM ersparnisse))	small_bank_1
SELECT T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.name IN (SELECT T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo > (SELECT avg(saldo) FROM ersparnisse))	small_bank_1
SELECT name FROM konten ORDER BY name	small_bank_1
SELECT name FROM konten ORDER BY name	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo + T3.saldo LIMIT 1	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo + T3.saldo LIMIT 1	small_bank_1
SELECT T1.name , T2.saldo + T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.saldo > (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT T1.name , T2.saldo + T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.saldo > (SELECT avg(saldo) FROM ersparnisse)	small_bank_1
SELECT T1.name , T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T3.saldo LIMIT 1	small_bank_1
SELECT T1.name , T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T3.saldo LIMIT 1	small_bank_1
SELECT count(*) , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.name	small_bank_1
SELECT count(*) , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.name	small_bank_1
SELECT sum(T2.saldo) , T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.name	small_bank_1
SELECT sum(T2.saldo) , T1.name FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.name	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT avg(saldo) FROM girokonto)	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.saldo < (SELECT avg(saldo) FROM girokonto)	small_bank_1
SELECT T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo DESC LIMIT 1	small_bank_1
SELECT T3.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo DESC LIMIT 1	small_bank_1
SELECT T1.saldo + T2.saldo FROM girokonto AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T1.saldo + T2.saldo	small_bank_1
SELECT T1.saldo + T2.saldo FROM girokonto AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T1.saldo + T2.saldo	small_bank_1
SELECT T2.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T3.saldo LIMIT 1	small_bank_1
SELECT T2.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T3.saldo LIMIT 1	small_bank_1
SELECT T2.saldo , T3.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id	small_bank_1
SELECT T2.saldo , T3.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id	small_bank_1
SELECT T2.saldo , T3.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo + T3.saldo DESC	small_bank_1
SELECT T2.saldo , T3.saldo , T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id ORDER BY T2.saldo + T3.saldo DESC	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T2.saldo > T3.saldo	small_bank_1
SELECT T1.name FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T2.saldo > T3.saldo	small_bank_1
SELECT T1.name , T3.saldo + T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.saldo < T2.saldo	small_bank_1
SELECT T1.name , T3.saldo + T2.saldo FROM konten AS T1 JOIN girokonto AS T2 ON T1.kunden_id = T2.kunden_id JOIN ersparnisse AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.saldo < T2.saldo	small_bank_1
SELECT T1.name , T2.saldo FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T2.saldo DESC LIMIT 3	small_bank_1
SELECT T1.name , T2.saldo FROM konten AS T1 JOIN ersparnisse AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T2.saldo DESC LIMIT 3	small_bank_1
SELECT count(*) FROM browser WHERE marktanteil >= 5	browser_web
SELECT name FROM browser ORDER BY marktanteil DESC	browser_web
SELECT id , name , marktanteil FROM browser	browser_web
SELECT max(marktanteil) , min(marktanteil) , avg(marktanteil) FROM browser	browser_web
SELECT id , marktanteil FROM browser WHERE name = 'Safari'	browser_web
SELECT name , betriebssystem FROM web_client_beschleuniger WHERE verbindung != 'Broadband'	browser_web
SELECT T1.name FROM browser AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T1.id = T2.browser_id JOIN web_client_beschleuniger AS T3 ON T2.beschleuniger_id = T3.id WHERE T3.name = 'CProxy' AND T2.kompatibel_seit_jahr > 1998	browser_web
SELECT T1.id , T1.name FROM web_client_beschleuniger AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T2.beschleuniger_id = T1.id GROUP BY T1.id HAVING count(*) >= 2	browser_web
SELECT T1.id , T1.name FROM browser AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T1.id = T2.browser_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	browser_web
SELECT T1.kompatibel_seit_jahr FROM beschleuniger_kompatibler_browser AS T1 JOIN browser AS T2 ON T1.browser_id = T2.id JOIN web_client_beschleuniger AS T3 ON T1.beschleuniger_id = T3.id WHERE T3.name = 'CACHEbox' AND T2.name = 'Internet Explorer'	browser_web
SELECT count(DISTINCT client) FROM web_client_beschleuniger	browser_web
SELECT count(*) FROM web_client_beschleuniger WHERE id NOT IN ( SELECT beschleuniger_id FROM beschleuniger_kompatibler_browser );	browser_web
SELECT DISTINCT T1.name FROM web_client_beschleuniger AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T2.beschleuniger_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T3.marktanteil > 15;	browser_web
SELECT T3.name FROM web_client_beschleuniger AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T2.beschleuniger_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T1.name = 'CACHEbox' INTERSECT SELECT T3.name FROM web_client_beschleuniger AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T2.beschleuniger_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T1.name = 'Fasterfox'	browser_web
SELECT name , betriebssystem FROM web_client_beschleuniger EXCEPT SELECT T1.name , T1.betriebssystem FROM web_client_beschleuniger AS T1 JOIN beschleuniger_kompatibler_browser AS T2 ON T2.beschleuniger_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T3.name = 'Opera'	browser_web
SELECT name FROM web_client_beschleuniger WHERE name LIKE "%Opera%"	browser_web
SELECT betriebssystem , count(*) FROM web_client_beschleuniger GROUP BY betriebssystem	browser_web
SELECT T2.name , T3.name FROM beschleuniger_kompatibler_browser AS T1 JOIN browser AS T2 ON T1.browser_id = T2.id JOIN web_client_beschleuniger AS T3 ON T1.beschleuniger_id = T3.id ORDER BY T1.kompatibel_seit_jahr DESC	browser_web
SELECT count(*) FROM wrestler	wrestler
SELECT count(*) FROM wrestler	wrestler
SELECT name FROM wrestler ORDER BY tage_im_besitz DESC	wrestler
SELECT name FROM wrestler ORDER BY tage_im_besitz DESC	wrestler
SELECT name FROM wrestler ORDER BY tage_im_besitz ASC LIMIT 1	wrestler
SELECT name FROM wrestler ORDER BY tage_im_besitz ASC LIMIT 1	wrestler
SELECT DISTINCT herrschaft FROM wrestler WHERE ort != "Tokyo , Japan"	wrestler
SELECT DISTINCT herrschaft FROM wrestler WHERE ort != "Tokyo , Japan"	wrestler
SELECT name , ort FROM wrestler	wrestler
SELECT name , ort FROM wrestler	wrestler
SELECT ausscheidungsbewegung FROM ausscheidung WHERE team = "Team Orton"	wrestler
SELECT ausscheidungsbewegung FROM ausscheidung WHERE team = "Team Orton"	wrestler
SELECT T2.name , T1.ausscheidungsbewegung FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id	wrestler
SELECT T2.name , T1.ausscheidungsbewegung FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id	wrestler
SELECT T2.name , T1.team FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id ORDER BY T2.tage_im_besitz DESC	wrestler
SELECT T2.name , T1.team FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id ORDER BY T2.tage_im_besitz DESC	wrestler
SELECT T1.zeit FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id ORDER BY T2.tage_im_besitz DESC LIMIT 1	wrestler
SELECT T1.zeit FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id ORDER BY T2.tage_im_besitz DESC LIMIT 1	wrestler
SELECT T1.zeit FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id WHERE T2.tage_im_besitz > 50	wrestler
SELECT T1.zeit FROM ausscheidung AS T1 JOIN wrestler AS T2 ON T1.wrestler_id = T2.wrestler_id WHERE T2.tage_im_besitz > 50	wrestler
SELECT team , COUNT(*) FROM ausscheidung GROUP BY team	wrestler
SELECT team , COUNT(*) FROM ausscheidung GROUP BY team	wrestler
SELECT team FROM ausscheidung GROUP BY team HAVING COUNT(*) > 3	wrestler
SELECT team FROM ausscheidung GROUP BY team HAVING COUNT(*) > 3	wrestler
SELECT herrschaft , tage_im_besitz FROM wrestler	wrestler
SELECT herrschaft , tage_im_besitz FROM wrestler	wrestler
SELECT name FROM wrestler WHERE tage_im_besitz < 100	wrestler
SELECT name FROM wrestler WHERE tage_im_besitz < 100	wrestler
SELECT herrschaft FROM wrestler GROUP BY herrschaft ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT herrschaft FROM wrestler GROUP BY herrschaft ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT ort FROM wrestler GROUP BY ort HAVING COUNT(*) > 2	wrestler
SELECT ort FROM wrestler GROUP BY ort HAVING COUNT(*) > 2	wrestler
SELECT name FROM wrestler WHERE wrestler_id NOT IN (SELECT wrestler_id FROM ausscheidung)	wrestler
SELECT name FROM wrestler WHERE wrestler_id NOT IN (SELECT wrestler_id FROM ausscheidung)	wrestler
SELECT team FROM ausscheidung WHERE eliminiert_durch = "Orton" INTERSECT SELECT team FROM ausscheidung WHERE eliminiert_durch = "Benjamin"	wrestler
SELECT team FROM ausscheidung WHERE eliminiert_durch = "Orton" INTERSECT SELECT team FROM ausscheidung WHERE eliminiert_durch = "Benjamin"	wrestler
SELECT COUNT (DISTINCT team) FROM ausscheidung	wrestler
SELECT COUNT (DISTINCT team) FROM ausscheidung	wrestler
SELECT zeit FROM ausscheidung WHERE eliminiert_durch = "Punk" OR eliminiert_durch = "Orton"	wrestler
SELECT zeit FROM ausscheidung WHERE eliminiert_durch = "Punk" OR eliminiert_durch = "Orton"	wrestler
SELECT count(*) FROM schule	school_finance
SELECT count(*) FROM schule	school_finance
SELECT schulname FROM schule ORDER BY schulname	school_finance
SELECT schulname , standort , maskottchen FROM schule	school_finance
SELECT sum(einschreibezahlen) , avg(einschreibezahlen) FROM schule	school_finance
SELECT maskottchen FROM schule WHERE einschreibezahlen > (SELECT avg(einschreibezahlen) FROM schule)	school_finance
SELECT schulname FROM schule ORDER BY einschreibezahlen LIMIT 1	school_finance
SELECT avg(einschreibezahlen) , max(einschreibezahlen) , min(einschreibezahlen) FROM schule	school_finance
SELECT landkreis , count(*) , sum(einschreibezahlen) FROM schule GROUP BY landkreis	school_finance
SELECT count(DISTINCT T1.spendername) FROM stiftungsfonds AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T2.schulname = "Glenn"	school_finance
SELECT spendername , sum(betrag) FROM stiftungsfonds GROUP BY spendername ORDER BY sum(betrag) DESC	school_finance
SELECT schulname FROM schule WHERE schul_id NOT IN (SELECT schul_id FROM stiftungsfonds)	school_finance
SELECT T2.schulname FROM stiftungsfonds AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id GROUP BY T1.schul_id HAVING sum(T1.betrag) <= 10	school_finance
SELECT T1.spendername FROM stiftungsfonds AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T2.schulname = 'Glenn' INTERSECT SELECT T1.spendername FROM stiftungsfonds AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T2.schulname = 'Triton'	school_finance
SELECT spendername FROM stiftungsfonds EXCEPT SELECT spendername FROM stiftungsfonds WHERE betrag < 9	school_finance
SELECT betrag , spendername FROM stiftungsfonds ORDER BY betrag DESC LIMIT 1	school_finance
SELECT count(*) FROM haushalt WHERE budgetiert > 3000 AND jahr <= 2001	school_finance
SELECT count(*) FROM haushalt WHERE budgetiert > 3000 AND jahr <= 2001	school_finance
SELECT T2.schulname , T1.budgetiert , T1.investiert FROM haushalt AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T1.jahr >= 2002	school_finance
SELECT DISTINCT spendername FROM stiftungsfonds	school_finance
SELECT count(*) FROM haushalt WHERE budgetiert < investiert	school_finance
SELECT sum(T1.budgetiert) FROM haushalt AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T2.schulname = 'Glenn'	school_finance
SELECT T2.schulname FROM haushalt AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id JOIN stiftungsfonds AS T3 ON T2.schul_id = T3.schul_id GROUP BY T2.schulname HAVING sum(T1.budgetiert) > 100 OR sum(T3.betrag) > 10	school_finance
SELECT T2.schulname FROM stiftungsfonds AS T1 JOIN schule AS T2 ON T1.schul_id = T2.schul_id WHERE T1.betrag > 8.5 GROUP BY T1.schul_id HAVING count(*) > 1	school_finance
SELECT count(*) FROM (SELECT * FROM stiftungsfonds WHERE betrag > 8.5 GROUP BY schul_id HAVING count(*) > 1)	school_finance
SELECT T1.schulname , T1.maskottchen , T1.ihsaa_fußballklasse FROM schule AS T1 JOIN haushalt AS T2 ON T1.schul_id = T2.schul_id WHERE budgetiert > 6000 OR jahr < 2003 ORDER BY T2.gesamtbudget_in_prozent_investiert , T2.gesamtbudget_in_prozent_budgetiert	school_finance
SELECT count(*) FROM gebäude	protein_institute
SELECT name , straßenadresse , etagen FROM gebäude ORDER BY etagen	protein_institute
SELECT name FROM gebäude ORDER BY höhe_fuß DESC LIMIT 1	protein_institute
SELECT avg(etagen) , max(etagen) , min(etagen) FROM gebäude	protein_institute
SELECT count(*) FROM gebäude WHERE höhe_fuß > (SELECT avg(höhe_fuß) FROM gebäude) OR etagen > (SELECT avg(etagen) FROM gebäude)	protein_institute
SELECT name FROM gebäude WHERE höhe_fuß >= 200 AND etagen >= 20	protein_institute
SELECT einrichtung , standort FROM einrichtung WHERE gegründet > 1990 AND typ = 'Private'	protein_institute
SELECT typ , count(*) , sum(einschreibung) FROM einrichtung GROUP BY typ	protein_institute
SELECT typ FROM einrichtung GROUP BY typ ORDER BY count(*) DESC LIMIT 1	protein_institute
SELECT typ FROM einrichtung WHERE gegründet > 1990 AND einschreibung >= 1000	protein_institute
SELECT name FROM gebäude WHERE gebäude_id NOT IN (SELECT gebäude_id FROM einrichtung)	protein_institute
SELECT name FROM gebäude EXCEPT SELECT T1.name FROM gebäude AS T1 JOIN einrichtung AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T2.gegründet = 2003	protein_institute
SELECT T1.name , count(*) FROM gebäude AS T1 JOIN einrichtung AS T2 ON T1.gebäude_id = T2.gebäude_id GROUP BY T1.gebäude_id	protein_institute
SELECT T1.name , T1.höhe_fuß FROM gebäude AS T1 JOIN einrichtung AS T2 ON T1.gebäude_id = T2.gebäude_id WHERE T2.gegründet > 1880 GROUP BY T1.gebäude_id HAVING count(*) >= 2	protein_institute
SELECT DISTINCT typ FROM einrichtung	protein_institute
SELECT T1.einrichtung , count(*) FROM einrichtung AS T1 JOIN eiweiß AS T2 ON T1.institutions_id = T2.institutions_id GROUP BY T1.institutions_id	protein_institute
SELECT count(*) FROM einrichtung AS T1 JOIN eiweiß AS T2 ON T1.institutions_id = T2.institutions_id WHERE T1.gegründet > 1880 OR T1.typ = 'Private'	protein_institute
SELECT T2.name_des_proteins , T1.einrichtung FROM einrichtung AS T1 JOIN eiweiß AS T2 ON T1.institutions_id = T2.institutions_id	protein_institute
SELECT count(*) FROM einrichtung AS T1 JOIN eiweiß AS T2 ON T1.institutions_id = T2.institutions_id JOIN gebäude AS T3 ON T3.gebäude_id = T1.gebäude_id WHERE T3.etagen >= 20	protein_institute
SELECT count(*) FROM einrichtung WHERE institutions_id NOT IN (SELECT institutions_id FROM eiweiß)	protein_institute
SELECT standort FROM kino EXCEPT SELECT standort FROM kino WHERE kapazität > 800	cinema
SELECT standort FROM kino WHERE eröffnungsjahr = 2010 INTERSECT SELECT standort FROM kino WHERE eröffnungsjahr = 2011	cinema
SELECT count(*) FROM kino	cinema
SELECT count(*) FROM kino	cinema
SELECT name , eröffnungsjahr , kapazität FROM kino	cinema
SELECT name , standort FROM kino WHERE kapazität > (SELECT avg(kapazität) FROM kino)	cinema
SELECT DISTINCT standort FROM kino	cinema
SELECT DISTINCT standort FROM kino	cinema
SELECT name , eröffnungsjahr FROM kino ORDER BY eröffnungsjahr DESC	cinema
SELECT name , standort FROM kino ORDER BY kapazität DESC LIMIT 1	cinema
SELECT avg(kapazität) , min(kapazität) , max(kapazität) FROM kino WHERE eröffnungsjahr >= 2011	cinema
SELECT standort , count(*) FROM kino GROUP BY standort	cinema
SELECT standort FROM kino WHERE eröffnungsjahr >= 2010 GROUP BY standort ORDER BY count(*) DESC LIMIT 1	cinema
SELECT standort FROM kino WHERE kapazität > 300 GROUP BY standort HAVING count(*) >= 2	cinema
SELECT standort FROM kino WHERE kapazität > 300 GROUP BY standort HAVING count(*) >= 2	cinema
SELECT titel , regie FROM film	cinema
SELECT titel , regie FROM film	cinema
SELECT DISTINCT regie FROM film	cinema
SELECT DISTINCT regie FROM film	cinema
SELECT regie , count(*) FROM film GROUP BY regie	cinema
SELECT T2.name , sum(T1.vorstellungszeiten_pro_tag) FROM spielplan AS T1 JOIN kino AS T2 ON T1.kino_id = T2.kino_id GROUP BY T1.kino_id	cinema
SELECT T2.titel , max(T1.preis) FROM spielplan AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id	cinema
SELECT T2.titel , max(T1.preis) FROM spielplan AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id	cinema
SELECT T3.name , T2.titel , T1.datum , T1.preis FROM spielplan AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN kino AS T3 ON T1.kino_id = T3.kino_id	cinema
SELECT titel , regie FROM film WHERE film_id NOT IN (SELECT film_id FROM spielplan)	cinema
SELECT T2.regie FROM spielplan AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.regie ORDER BY sum(T1.vorstellungszeiten_pro_tag) DESC LIMIT 1	cinema
SELECT standort FROM kino WHERE kapazität > 300 GROUP BY standort HAVING count(*) > 1	cinema
SELECT standort FROM kino WHERE kapazität > 300 GROUP BY standort HAVING count(*) > 1	cinema
SELECT count(*) FROM film WHERE titel LIKE "%Dummy%"	cinema
SELECT count(*) FROM film WHERE titel LIKE "%Dummy%"	cinema
SELECT T1.guter_oder_schlechter_kunde FROM kunden AS T1 JOIN rabattgutscheine AS T2 ON T1.kupon_id = T2.kupon_id WHERE T2.gutscheinbetrag = 500	products_for_hire
SELECT T1.kunden_id , T1.vorname , count(*) FROM kunden AS T1 JOIN buchungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id	products_for_hire
SELECT kunden_id , sum(gezahlter_betrag) FROM zahlungen GROUP BY kunden_id ORDER BY sum(gezahlter_betrag) DESC LIMIT 1	products_for_hire
SELECT T1.buchungs_id , T1.erstattungsbetrag FROM buchungen AS T1 JOIN zahlungen AS T2 ON T1.buchungs_id = T2.buchungs_id GROUP BY T1.buchungs_id ORDER BY count(*) DESC LIMIT 1	products_for_hire
SELECT produkt_id FROM gebuchte_produkte GROUP BY produkt_id HAVING count(*) = 3	products_for_hire
SELECT T2.produktbeschreibung FROM gebuchte_produkte AS T1 JOIN mietartikel AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.gebuchter_betrag = 102.76	products_for_hire
SELECT T3.buchungsstartdatum , T3.buchungsenddatum FROM mietartikel AS T1 JOIN gebuchte_produkte AS T2 ON T1.produkt_id = T2.produkt_id JOIN buchungen AS T3 ON T2.buchungs_id = T3.buchungs_id WHERE T1.produktname = 'Book collection A'	products_for_hire
SELECT T2.produktname FROM ansicht_produktverfügbarkeit AS T1 JOIN mietartikel AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.verfügbar_ja_oder_nein = 1	products_for_hire
SELECT count(DISTINCT produkttyp_code) FROM mietartikel	products_for_hire
SELECT vorname , nachname , geschlecht FROM kunden WHERE guter_oder_schlechter_kunde = 'good' ORDER BY nachname	products_for_hire
SELECT avg(fälliger_betrag) FROM zahlungen	products_for_hire
SELECT max(gebuchte_anzahl) , min(gebuchte_anzahl) , avg(gebuchte_anzahl) FROM gebuchte_produkte	products_for_hire
SELECT DISTINCT zahlungsart_code FROM zahlungen	products_for_hire
SELECT tagesmietpreis FROM mietartikel WHERE produktname LIKE '%Book%'	products_for_hire
SELECT count(*) FROM mietartikel WHERE produkt_id NOT IN ( SELECT produkt_id FROM gebuchte_produkte WHERE gebuchter_betrag > 200 )	products_for_hire
SELECT T1.gutscheinbetrag FROM rabattgutscheine AS T1 JOIN kunden AS T2 ON T1.kupon_id = T2.kupon_id WHERE T2.guter_oder_schlechter_kunde = 'good' INTERSECT SELECT T1.gutscheinbetrag FROM rabattgutscheine AS T1 JOIN kunden AS T2 ON T1.kupon_id = T2.kupon_id WHERE T2.guter_oder_schlechter_kunde = 'bad'	products_for_hire
SELECT zahlungsdatum FROM zahlungen WHERE gezahlter_betrag > 300 OR zahlungsart_code = 'Check'	products_for_hire
SELECT produktname , produktbeschreibung FROM mietartikel WHERE produkttyp_code = 'Cutlery' AND tagesmietpreis < 20	products_for_hire
SELECT count(*) FROM telefon	phone_market
SELECT name FROM telefon ORDER BY preis ASC	phone_market
SELECT speicher_in_g , betreiber FROM telefon	phone_market
SELECT DISTINCT betreiber FROM telefon WHERE speicher_in_g > 32	phone_market
SELECT name FROM telefon WHERE betreiber = "Sprint" OR betreiber = "TMobile"	phone_market
SELECT betreiber FROM telefon ORDER BY preis DESC LIMIT 1	phone_market
SELECT betreiber , COUNT(*) FROM telefon GROUP BY betreiber	phone_market
SELECT betreiber FROM telefon GROUP BY betreiber ORDER BY COUNT(*) DESC LIMIT 1	phone_market
SELECT betreiber FROM telefon WHERE speicher_in_g < 32 INTERSECT SELECT betreiber FROM telefon WHERE speicher_in_g > 64	phone_market
SELECT T3.name , T2.bezirk FROM telefonmarkt AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id JOIN telefon AS T3 ON T1.telefon_nummer = T3.telefon_nummer	phone_market
SELECT T3.name , T2.bezirk FROM telefonmarkt AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id JOIN telefon AS T3 ON T1.telefon_nummer = T3.telefon_nummer ORDER BY T2.rang	phone_market
SELECT T3.name FROM telefonmarkt AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id JOIN telefon AS T3 ON T1.telefon_nummer = T3.telefon_nummer WHERE T2.anzahl_der_geschäfte > 50	phone_market
SELECT T2.name , sum(T1.num_of_stock) FROM telefonmarkt AS T1 JOIN telefon AS T2 ON T1.telefon_nummer = T2.telefon_nummer GROUP BY T2.name	phone_market
SELECT T2.name FROM telefonmarkt AS T1 JOIN telefon AS T2 ON T1.telefon_nummer = T2.telefon_nummer GROUP BY T2.name HAVING sum(T1.num_of_stock) >= 2000 ORDER BY sum(T1.num_of_stock) DESC	phone_market
SELECT name FROM telefon WHERE telefon_nummer NOT IN (SELECT telefon_nummer FROM telefonmarkt)	phone_market
SELECT count(*) FROM firma	gas_company
SELECT count(*) FROM firma	gas_company
SELECT firma , rang FROM firma ORDER BY umsatz_milliarden DESC	gas_company
SELECT firma , rang FROM firma ORDER BY umsatz_milliarden DESC	gas_company
SELECT firma , hauptbranche FROM firma WHERE hauptsitz != 'USA'	gas_company
SELECT firma , hauptbranche FROM firma WHERE hauptsitz != 'USA'	gas_company
SELECT firma , hauptsitz FROM firma ORDER BY marktwert DESC	gas_company
SELECT firma , hauptsitz FROM firma ORDER BY marktwert DESC	gas_company
SELECT min(marktwert) , max(marktwert) , avg(marktwert) FROM firma	gas_company
SELECT min(marktwert) , max(marktwert) , avg(marktwert) FROM firma	gas_company
SELECT DISTINCT hauptbranche FROM firma	gas_company
SELECT DISTINCT hauptbranche FROM firma	gas_company
SELECT hauptsitz , count(*) FROM firma GROUP BY hauptsitz	gas_company
SELECT hauptsitz , count(*) FROM firma GROUP BY hauptsitz	gas_company
SELECT hauptbranche , sum(marktwert) FROM firma GROUP BY hauptbranche	gas_company
SELECT hauptbranche , sum(marktwert) FROM firma GROUP BY hauptbranche	gas_company
SELECT hauptbranche , count(*) FROM firma GROUP BY hauptbranche ORDER BY sum(marktwert) DESC LIMIT 1	gas_company
SELECT hauptbranche , count(*) FROM firma GROUP BY hauptbranche ORDER BY sum(marktwert) DESC LIMIT 1	gas_company
SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking' GROUP BY hauptsitz HAVING count(*) >= 2	gas_company
SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking' GROUP BY hauptsitz HAVING count(*) >= 2	gas_company
SELECT station_id , standort , name_des_leiters FROM tankstelle ORDER BY offenes_jahr	gas_company
SELECT station_id , standort , name_des_leiters FROM tankstelle ORDER BY offenes_jahr	gas_company
SELECT count(*) FROM tankstelle WHERE offenes_jahr BETWEEN 2000 AND 2005	gas_company
SELECT count(*) FROM tankstelle WHERE offenes_jahr BETWEEN 2000 AND 2005	gas_company
SELECT standort , count(*) FROM tankstelle GROUP BY standort ORDER BY count(*)	gas_company
SELECT standort , count(*) FROM tankstelle GROUP BY standort ORDER BY count(*)	gas_company
SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking' INTERSECT SELECT hauptsitz FROM firma WHERE hauptbranche = 'Oil and gas'	gas_company
SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking' INTERSECT SELECT hauptsitz FROM firma WHERE hauptbranche = 'Oil and gas'	gas_company
SELECT hauptsitz FROM firma EXCEPT SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking'	gas_company
SELECT hauptsitz FROM firma EXCEPT SELECT hauptsitz FROM firma WHERE hauptbranche = 'Banking'	gas_company
SELECT T2.firma , count(*) FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id GROUP BY T1.firma_id	gas_company
SELECT T2.firma , count(*) FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id GROUP BY T1.firma_id	gas_company
SELECT firma , hauptbranche FROM firma WHERE firma_id NOT IN (SELECT firma_id FROM bahnhofsgesellschaft)	gas_company
SELECT firma , hauptbranche FROM firma WHERE firma_id NOT IN (SELECT firma_id FROM bahnhofsgesellschaft)	gas_company
SELECT T3.name_des_leiters FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id WHERE T2.firma = 'ExxonMobil'	gas_company
SELECT T3.name_des_leiters FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id WHERE T2.firma = 'ExxonMobil'	gas_company
SELECT T3.standort FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id WHERE T2.marktwert > 100	gas_company
SELECT T3.standort FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id WHERE T2.marktwert > 100	gas_company
SELECT name_des_leiters FROM tankstelle WHERE offenes_jahr > 2000 GROUP BY name_des_leiters ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT name_des_leiters FROM tankstelle WHERE offenes_jahr > 2000 GROUP BY name_des_leiters ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT standort FROM tankstelle ORDER BY offenes_jahr	gas_company
SELECT standort FROM tankstelle ORDER BY offenes_jahr	gas_company
SELECT rang , firma , marktwert FROM firma WHERE hauptbranche = 'Banking' ORDER BY umsatz_milliarden , gewinn_mrd	gas_company
SELECT rang , firma , marktwert FROM firma WHERE hauptbranche = 'Banking' ORDER BY umsatz_milliarden , gewinn_mrd	gas_company
SELECT T3.standort , T3.name_des_vertreters FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id ORDER BY T2.vermögen_in_milliardenhöhe DESC LIMIT 3	gas_company
SELECT T3.standort , T3.name_des_vertreters FROM bahnhofsgesellschaft AS T1 JOIN firma AS T2 ON T1.firma_id = T2.firma_id JOIN tankstelle AS T3 ON T1.station_id = T3.station_id ORDER BY T2.vermögen_in_milliardenhöhe DESC LIMIT 3	gas_company
SELECT count(*) FROM region	party_people
SELECT count(*) FROM region	party_people
SELECT DISTINCT region_name FROM region ORDER BY bezeichnung	party_people
SELECT DISTINCT region_name FROM region ORDER BY bezeichnung	party_people
SELECT count(DISTINCT parteiname) FROM party	party_people
SELECT count(DISTINCT parteiname) FROM party	party_people
SELECT minister , amtsantritt , aus_dem_amt_geschieden FROM party ORDER BY aus_dem_amt_geschieden	party_people
SELECT minister , amtsantritt , aus_dem_amt_geschieden FROM party ORDER BY aus_dem_amt_geschieden	party_people
SELECT minister FROM party WHERE amtsantritt > 1961 OR amtsantritt < 1959	party_people
SELECT minister FROM party WHERE amtsantritt > 1961 OR amtsantritt < 1959	party_people
SELECT minister FROM party WHERE parteiname != 'Progress Party'	party_people
SELECT minister FROM party WHERE parteiname != 'Progress Party'	party_people
SELECT minister , parteiname FROM party ORDER BY amtsantritt DESC	party_people
SELECT minister , parteiname FROM party ORDER BY amtsantritt DESC	party_people
SELECT minister FROM party ORDER BY aus_dem_amt_geschieden DESC LIMIT 1	party_people
SELECT minister FROM party ORDER BY aus_dem_amt_geschieden DESC LIMIT 1	party_people
SELECT T1.mitglied_name , T2.parteiname FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id	party_people
SELECT T1.mitglied_name , T2.parteiname FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id	party_people
SELECT T2.parteiname , count(*) FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id	party_people
SELECT T2.parteiname , count(*) FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id	party_people
SELECT T2.parteiname FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id ORDER BY count(*) DESC LIMIT 1	party_people
SELECT T2.parteiname FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id ORDER BY count(*) DESC LIMIT 1	party_people
SELECT T1.parteiname , T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id	party_people
SELECT T1.parteiname , T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id	party_people
SELECT parteiname FROM party WHERE partei_id NOT IN (SELECT partei_id FROM mitglied)	party_people
SELECT parteiname FROM party WHERE partei_id NOT IN (SELECT partei_id FROM mitglied)	party_people
SELECT mitglied_name FROM mitglied WHERE partei_id = 3 INTERSECT SELECT mitglied_name FROM mitglied WHERE partei_id = 1	party_people
SELECT mitglied_name FROM mitglied WHERE partei_id = 3 INTERSECT SELECT mitglied_name FROM mitglied WHERE partei_id = 1	party_people
SELECT T1.mitglied_name FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id WHERE T2.parteiname != "Progress Party"	party_people
SELECT T1.mitglied_name FROM mitglied AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id WHERE T2.parteiname != "Progress Party"	party_people
SELECT count(*) FROM parteiveranstaltungen	party_people
SELECT count(*) FROM parteiveranstaltungen	party_people
SELECT T2.parteiname , count(*) FROM parteiveranstaltungen AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id	party_people
SELECT T2.parteiname , count(*) FROM parteiveranstaltungen AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id	party_people
SELECT mitglied_name FROM mitglied EXCEPT SELECT T1.mitglied_name FROM mitglied AS T1 JOIN parteiveranstaltungen AS T2 ON T1.mitglied_id = T2.verantwortliches_mitglied_id	party_people
SELECT mitglied_name FROM mitglied EXCEPT SELECT T1.mitglied_name FROM mitglied AS T1 JOIN parteiveranstaltungen AS T2 ON T1.mitglied_id = T2.verantwortliches_mitglied_id	party_people
SELECT T2.parteiname FROM parteiveranstaltungen AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id HAVING count(*) >= 2	party_people
SELECT T2.parteiname FROM parteiveranstaltungen AS T1 JOIN party AS T2 ON T1.partei_id = T2.partei_id GROUP BY T1.partei_id HAVING count(*) >= 2	party_people
SELECT T1.mitglied_name FROM mitglied AS T1 JOIN parteiveranstaltungen AS T2 ON T1.mitglied_id = T2.verantwortliches_mitglied_id GROUP BY T2.verantwortliches_mitglied_id ORDER BY count(*) DESC LIMIT 1	party_people
SELECT T1.mitglied_name FROM mitglied AS T1 JOIN parteiveranstaltungen AS T2 ON T1.mitglied_id = T2.verantwortliches_mitglied_id GROUP BY T2.verantwortliches_mitglied_id ORDER BY count(*) DESC LIMIT 1	party_people
SELECT veranstaltungsname FROM parteiveranstaltungen GROUP BY veranstaltungsname HAVING count(*) > 2	party_people
SELECT veranstaltungsname FROM parteiveranstaltungen GROUP BY veranstaltungsname HAVING count(*) > 2	party_people
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.region_id = t2.region_id JOIN parteiveranstaltungen AS t3 ON t2.partei_id = t3.partei_id WHERE t1.region_name = "United Kingdom" AND t3.veranstaltungsname = "Annaual Meeting"	party_people
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.region_id = t2.region_id JOIN parteiveranstaltungen AS t3 ON t2.partei_id = t3.partei_id WHERE t1.region_name = "United Kingdom" AND t3.veranstaltungsname = "Annaual Meeting"	party_people
SELECT count(*) FROM pilot	pilot_record
SELECT pilot_name FROM pilot ORDER BY rang ASC	pilot_record
SELECT stellung , mannschaft FROM pilot	pilot_record
SELECT DISTINCT stellung FROM pilot WHERE alter > 30	pilot_record
SELECT pilot_name FROM pilot WHERE mannschaft = "Bradley" OR mannschaft = "Fordham"	pilot_record
SELECT beitrittsjahr FROM pilot ORDER BY rang ASC LIMIT 1	pilot_record
SELECT nationalität , COUNT(*) FROM pilot GROUP BY nationalität	pilot_record
SELECT nationalität FROM pilot GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	pilot_record
SELECT stellung FROM pilot WHERE beitrittsjahr < 2000 INTERSECT SELECT stellung FROM pilot WHERE beitrittsjahr > 2005	pilot_record
SELECT T3.pilot_name , T2.modell FROM pilot_record AS T1 JOIN flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN pilot AS T3 ON T1.pilot_id = T3.pilot_id	pilot_record
SELECT T3.pilot_name , T2.flottenreihe FROM pilot_record AS T1 JOIN flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN pilot AS T3 ON T1.pilot_id = T3.pilot_id ORDER BY T3.rang	pilot_record
SELECT T2.flottenreihe FROM pilot_record AS T1 JOIN flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN pilot AS T3 ON T1.pilot_id = T3.pilot_id WHERE T3.alter < 34	pilot_record
SELECT T2.pilot_name , COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_id = T2.pilot_id GROUP BY T2.pilot_name	pilot_record
SELECT T2.pilot_name , COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_id = T2.pilot_id GROUP BY T2.pilot_name HAVING COUNT(*) > 1	pilot_record
SELECT pilot_name FROM pilot WHERE pilot_id NOT IN (SELECT pilot_id FROM pilot_record)	pilot_record
SELECT dokumentenstatus_code FROM referenzbelegstatus;	cre_doc_control_systems
SELECT beschreibung_des_dokumentstatus FROM referenzbelegstatus WHERE dokumentenstatus_code = "working";	cre_doc_control_systems
SELECT dokumentenart_code FROM referenzbelegarten;	cre_doc_control_systems
SELECT dokumententyp_beschreibung FROM referenzbelegarten WHERE dokumentenart_code = "Paper";	cre_doc_control_systems
SELECT name_des_spediteurs FROM referenz_versandbeauftragte;	cre_doc_control_systems
SELECT spediteur_code FROM referenz_versandbeauftragte WHERE name_des_spediteurs = "UPS";	cre_doc_control_systems
SELECT rollencode FROM roles;	cre_doc_control_systems
SELECT rollenbeschreibung FROM roles WHERE rollencode = "ED";	cre_doc_control_systems
SELECT count(*) FROM mitarbeiter;	cre_doc_control_systems
SELECT T1.rollenbeschreibung FROM roles AS T1 JOIN mitarbeiter AS T2 ON T1.rollencode = T2.rollencode WHERE T2.mitarbeitername = "Koby";	cre_doc_control_systems
SELECT dokument_id , eingangsdatum FROM dokumente;	cre_doc_control_systems
SELECT T1.rollenbeschreibung , T2.rollencode , count(*) FROM roles AS T1 JOIN mitarbeiter AS T2 ON T1.rollencode = T2.rollencode GROUP BY T2.rollencode;	cre_doc_control_systems
SELECT roles.rollenbeschreibung , count(mitarbeiter.mitarbeiter_id) FROM roles JOIN mitarbeiter ON mitarbeiter.rollencode = roles.rollencode GROUP BY mitarbeiter.rollencode HAVING count(mitarbeiter.mitarbeiter_id) > 1;	cre_doc_control_systems
SELECT referenzbelegstatus.beschreibung_des_dokumentstatus FROM referenzbelegstatus JOIN dokumente ON dokumente.dokumentenstatus_code = referenzbelegstatus.dokumentenstatus_code WHERE dokumente.dokument_id = 1;	cre_doc_control_systems
SELECT count(*) FROM dokumente WHERE dokumentenstatus_code = "done";	cre_doc_control_systems
SELECT dokumentenart_code FROM dokumente WHERE dokument_id = 2;	cre_doc_control_systems
SELECT dokument_id FROM dokumente WHERE dokumentenstatus_code = "done" AND dokumentenart_code = "Paper";	cre_doc_control_systems
SELECT referenz_versandbeauftragte.name_des_spediteurs FROM referenz_versandbeauftragte JOIN dokumente ON dokumente.spediteur_code = referenz_versandbeauftragte.spediteur_code WHERE dokumente.dokument_id = 2;	cre_doc_control_systems
SELECT count(*) FROM referenz_versandbeauftragte JOIN dokumente ON dokumente.spediteur_code = referenz_versandbeauftragte.spediteur_code WHERE referenz_versandbeauftragte.name_des_spediteurs = "USPS";	cre_doc_control_systems
SELECT referenz_versandbeauftragte.name_des_spediteurs , count(dokumente.dokument_id) FROM referenz_versandbeauftragte JOIN dokumente ON dokumente.spediteur_code = referenz_versandbeauftragte.spediteur_code GROUP BY referenz_versandbeauftragte.spediteur_code ORDER BY count(dokumente.dokument_id) DESC LIMIT 1;	cre_doc_control_systems
SELECT eingangsdatum FROM dokumente WHERE dokument_id = 3;	cre_doc_control_systems
SELECT adressen.adressdaten FROM adressen JOIN gedruckte_dokumente ON gedruckte_dokumente.absenderadresse_id = adressen.adresse_id WHERE dokument_id = 4;	cre_doc_control_systems
SELECT absendedatum FROM gedruckte_dokumente WHERE dokument_id = 7;	cre_doc_control_systems
SELECT dokument_id FROM dokumente WHERE dokumentenstatus_code = "done" AND dokumentenart_code = "Paper" EXCEPT SELECT dokument_id FROM dokumente JOIN referenz_versandbeauftragte ON dokumente.spediteur_code = referenz_versandbeauftragte.spediteur_code WHERE referenz_versandbeauftragte.name_des_spediteurs = "USPS";	cre_doc_control_systems
SELECT dokument_id FROM dokumente WHERE dokumentenstatus_code = "done" AND dokumentenart_code = "Paper" INTERSECT SELECT dokument_id FROM dokumente JOIN referenz_versandbeauftragte ON dokumente.spediteur_code = referenz_versandbeauftragte.spediteur_code WHERE referenz_versandbeauftragte.name_des_spediteurs = "USPS";	cre_doc_control_systems
SELECT entwurfsdetails FROM belegentwürfe WHERE dokument_id = 7;	cre_doc_control_systems
SELECT count(*) FROM entwürfe_von_kopien WHERE dokument_id = 2;	cre_doc_control_systems
SELECT dokument_id , count(exemplarnummer) FROM entwürfe_von_kopien GROUP BY dokument_id ORDER BY count(exemplarnummer) DESC LIMIT 1;	cre_doc_control_systems
SELECT dokument_id , count(*) FROM entwürfe_von_kopien GROUP BY dokument_id HAVING count(*) > 1;	cre_doc_control_systems
SELECT mitarbeiter.mitarbeitername FROM mitarbeiter JOIN umlaufgeschichte ON umlaufgeschichte.mitarbeiter_id = mitarbeiter.mitarbeiter_id WHERE umlaufgeschichte.dokument_id = 1;	cre_doc_control_systems
SELECT mitarbeitername FROM mitarbeiter EXCEPT SELECT mitarbeiter.mitarbeitername FROM mitarbeiter JOIN umlaufgeschichte ON umlaufgeschichte.mitarbeiter_id = mitarbeiter.mitarbeiter_id	cre_doc_control_systems
SELECT mitarbeiter.mitarbeitername , count(*) FROM mitarbeiter JOIN umlaufgeschichte ON umlaufgeschichte.mitarbeiter_id = mitarbeiter.mitarbeiter_id GROUP BY umlaufgeschichte.dokument_id , umlaufgeschichte.entwurfsnummer , umlaufgeschichte.exemplarnummer ORDER BY count(*) DESC LIMIT 1;	cre_doc_control_systems
SELECT dokument_id , count(DISTINCT mitarbeiter_id) FROM umlaufgeschichte GROUP BY dokument_id;	cre_doc_control_systems
SELECT abteilungsname FROM abteilung ORDER BY anfangsdatum_des_vorgesetzten	company_1
SELECT abhängiger_name FROM abhängig WHERE beziehung = 'Spouse'	company_1
SELECT count(*) FROM abhängig WHERE geschlecht = 'F'	company_1
SELECT t1.abteilungsname FROM abteilung AS t1 JOIN abteilung_standorte AS t2 ON t1.abteilungsnummer = t2.abteilungsnummer WHERE t2.abteilungsstandort = 'Houston'	company_1
SELECT vorname , nachname FROM mitarbeiter WHERE gehalt > 30000	company_1
SELECT count(*) , geschlecht FROM mitarbeiter WHERE gehalt < 50000 GROUP BY geschlecht	company_1
SELECT vorname , nachname , anschrift FROM mitarbeiter ORDER BY geburtsdatum	company_1
SELECT T1.event_details FROM veranstaltungen AS T1 JOIN dienstleistungen AS T2 ON T1.service_id = T2.service_id WHERE T2.dienstleistungsart_code = 'Marriage'	local_govt_in_alabama
SELECT T1.event_id , T1.event_details FROM veranstaltungen AS T1 JOIN teilnehmer_an_veranstaltungen AS T2 ON T1.event_id = T2.event_id GROUP BY T1.event_id HAVING count(*) > 1	local_govt_in_alabama
SELECT T1.teilnehmer_id , T1.teilnehmer_typ_code , count(*) FROM teilnehmer AS T1 JOIN teilnehmer_an_veranstaltungen AS T2 ON T1.teilnehmer_id = T2.teilnehmer_id GROUP BY T1.teilnehmer_id	local_govt_in_alabama
SELECT teilnehmer_id , teilnehmer_typ_code , teilnehmer_details FROM teilnehmer	local_govt_in_alabama
SELECT count(*) FROM teilnehmer WHERE teilnehmer_typ_code = 'Organizer'	local_govt_in_alabama
SELECT dienstleistungsart_code FROM dienstleistungen ORDER BY dienstleistungsart_code	local_govt_in_alabama
SELECT service_id , event_details FROM veranstaltungen	local_govt_in_alabama
SELECT count(*) FROM teilnehmer AS T1 JOIN teilnehmer_an_veranstaltungen AS T2 ON T1.teilnehmer_id = T2.teilnehmer_id WHERE T1.teilnehmer_details LIKE '%Dr.%'	local_govt_in_alabama
SELECT teilnehmer_typ_code FROM teilnehmer GROUP BY teilnehmer_typ_code ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT T3.service_id , T4.dienstleistungsart_code FROM teilnehmer AS T1 JOIN teilnehmer_an_veranstaltungen AS T2 ON T1.teilnehmer_id = T2.teilnehmer_id JOIN veranstaltungen AS T3 ON T2.event_id = T3.event_id JOIN dienstleistungen AS T4 ON T3.service_id = T4.service_id GROUP BY T3.service_id ORDER BY count(*) ASC LIMIT 1	local_govt_in_alabama
SELECT event_id FROM teilnehmer_an_veranstaltungen GROUP BY event_id ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT event_id FROM veranstaltungen EXCEPT SELECT T1.event_id FROM teilnehmer_an_veranstaltungen AS T1 JOIN teilnehmer AS T2 ON T1.teilnehmer_id = T2.teilnehmer_id WHERE teilnehmer_details = 'Kenyatta Kuhn'	local_govt_in_alabama
SELECT T1.dienstleistungsart_code FROM dienstleistungen AS T1 JOIN veranstaltungen AS T2 ON T1.service_id = T2.service_id WHERE T2.event_details = 'Success' INTERSECT SELECT T1.dienstleistungsart_code FROM dienstleistungen AS T1 JOIN veranstaltungen AS T2 ON T1.service_id = T2.service_id WHERE T2.event_details = 'Fail'	local_govt_in_alabama
SELECT count(*) FROM veranstaltungen WHERE event_id NOT IN (SELECT event_id FROM teilnehmer_an_veranstaltungen)	local_govt_in_alabama
SELECT count(DISTINCT teilnehmer_id) FROM teilnehmer_an_veranstaltungen	local_govt_in_alabama
SELECT name FROM ethnien ORDER BY datum DESC LIMIT 1	formula_1
SELECT name FROM ethnien ORDER BY datum DESC LIMIT 1	formula_1
SELECT name , datum FROM ethnien ORDER BY datum DESC LIMIT 1	formula_1
SELECT name , datum FROM ethnien ORDER BY datum DESC LIMIT 1	formula_1
SELECT name FROM ethnien WHERE jahr = 2017	formula_1
SELECT name FROM ethnien WHERE jahr = 2017	formula_1
SELECT DISTINCT name FROM ethnien WHERE jahr BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT name FROM ethnien WHERE jahr BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.millisekunden < 93000	formula_1
SELECT DISTINCT T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.millisekunden < 93000	formula_1
SELECT DISTINCT T1.fahrer_id , T1.nationalität FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.millisekunden > 100000	formula_1
SELECT DISTINCT T1.fahrer_id , T1.nationalität FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.millisekunden > 100000	formula_1
SELECT T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id ORDER BY T2.millisekunden LIMIT 1	formula_1
SELECT T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id ORDER BY T2.millisekunden LIMIT 1	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id ORDER BY T2.millisekunden DESC LIMIT 1	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id ORDER BY T2.millisekunden DESC LIMIT 1	formula_1
SELECT T1.fahrer_id , T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE position = '1' GROUP BY T1.fahrer_id HAVING count(*) >= 2	formula_1
SELECT T1.fahrer_id , T1.vorname , T1.nachname FROM treiber AS T1 JOIN rundenzeiten AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE position = '1' GROUP BY T1.fahrer_id HAVING count(*) >= 2	formula_1
SELECT count(*) FROM ergebnisse AS T1 JOIN ethnien AS T2 ON T1.rennen_id = T2.rennen_id WHERE T2.name = "Australian Grand Prix" AND jahr = 2009	formula_1
SELECT count(*) FROM ergebnisse AS T1 JOIN ethnien AS T2 ON T1.rennen_id = T2.rennen_id WHERE T2.name = "Australian Grand Prix" AND jahr = 2009	formula_1
SELECT count(DISTINCT fahrer_id) FROM ergebnisse WHERE rennen_id NOT IN( SELECT rennen_id FROM ethnien WHERE jahr != 2009 )	formula_1
SELECT count(DISTINCT fahrer_id) FROM ergebnisse WHERE rennen_id NOT IN( SELECT rennen_id FROM ethnien WHERE jahr != 2009 )	formula_1
SELECT T2.name , T2.jahr FROM ergebnisse AS T1 JOIN ethnien AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T1.fahrer_id = T3.fahrer_id WHERE T3.vorname = "Lewis"	formula_1
SELECT T2.name , T2.jahr FROM ergebnisse AS T1 JOIN ethnien AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T1.fahrer_id = T3.fahrer_id WHERE T3.vorname = "Lewis"	formula_1
SELECT vorname , nachname FROM treiber WHERE nationalität = "German"	formula_1
SELECT vorname , nachname FROM treiber WHERE nationalität = "German"	formula_1
SELECT T2.fahrer_id , T3.vorname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.fahrer_id , T3.vorname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T2.fahrer_id , T3.vorname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.fahrer_id , T3.vorname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T3.vorname , T3.nachname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.vorname , T3.nachname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T3.vorname , T3.nachname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.vorname , T3.nachname FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id JOIN treiber AS T3 ON T2.fahrer_id = T3.fahrer_id WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT DISTINCT T1.vorname FROM treiber AS T1 JOIN fahrerstand AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.position = 1 AND T2.siege = 1	formula_1
SELECT DISTINCT T1.vorname FROM treiber AS T1 JOIN fahrerstand AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.position = 1 AND T2.siege = 1	formula_1
SELECT DISTINCT T1.vorname FROM treiber AS T1 JOIN fahrerstand AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.position = 1 AND T2.siege = 1 AND T2.punkte > 20	formula_1
SELECT DISTINCT T1.vorname FROM treiber AS T1 JOIN fahrerstand AS T2 ON T1.fahrer_id = T2.fahrer_id WHERE T2.position = 1 AND T2.siege = 1 AND T2.punkte > 20	formula_1
SELECT count(*) , nationalität FROM konstrukteure GROUP BY nationalität	formula_1
SELECT count(*) , nationalität FROM konstrukteure GROUP BY nationalität	formula_1
SELECT count(*) , konstrukteur_id FROM konstrukteur_standings GROUP BY konstrukteur_id	formula_1
SELECT count(*) , konstrukteur_id FROM konstrukteur_standings GROUP BY konstrukteur_id	formula_1
SELECT T1.name FROM ethnien AS T1 JOIN stromkreise AS T2 ON T1.rennstrecken_id = T2.rennstrecken_id WHERE T2.land = "Spain" AND T1.jahr > 2017	formula_1
SELECT T1.name FROM ethnien AS T1 JOIN stromkreise AS T2 ON T1.rennstrecken_id = T2.rennstrecken_id WHERE T2.land = "Spain" AND T1.jahr > 2017	formula_1
SELECT DISTINCT T1.name FROM ethnien AS T1 JOIN stromkreise AS T2 ON T1.rennstrecken_id = T2.rennstrecken_id WHERE T2.land = "Spain" AND T1.jahr > 2000	formula_1
SELECT DISTINCT T1.name FROM ethnien AS T1 JOIN stromkreise AS T2 ON T1.rennstrecken_id = T2.rennstrecken_id WHERE T2.land = "Spain" AND T1.jahr > 2000	formula_1
SELECT DISTINCT fahrer_id , stop FROM boxenstopps WHERE dauer < (SELECT max(dauer) FROM boxenstopps WHERE rennen_id = 841)	formula_1
SELECT DISTINCT fahrer_id , stop FROM boxenstopps WHERE dauer < (SELECT max(dauer) FROM boxenstopps WHERE rennen_id = 841)	formula_1
SELECT DISTINCT fahrer_id , stop FROM boxenstopps WHERE dauer > (SELECT min(dauer) FROM boxenstopps WHERE rennen_id = 841)	formula_1
SELECT DISTINCT fahrer_id , stop FROM boxenstopps WHERE dauer > (SELECT min(dauer) FROM boxenstopps WHERE rennen_id = 841)	formula_1
SELECT DISTINCT vorname FROM treiber ORDER BY vorname ASC	formula_1
SELECT DISTINCT vorname FROM treiber ORDER BY vorname ASC	formula_1
SELECT DISTINCT name FROM ethnien ORDER BY name DESC	formula_1
SELECT DISTINCT name FROM ethnien ORDER BY name DESC	formula_1
SELECT name FROM ethnien WHERE jahr BETWEEN 2009 AND 2011	formula_1
SELECT name FROM ethnien WHERE jahr BETWEEN 2009 AND 2011	formula_1
SELECT name FROM ethnien WHERE zeit > "12:00:00" OR zeit < "09:00:00"	formula_1
SELECT name FROM ethnien WHERE zeit > "12:00:00" OR zeit < "09:00:00"	formula_1
SELECT T1.vorname , T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN boxenstopps AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 8 UNION SELECT T1.vorname , T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 5	formula_1
SELECT T1.vorname , T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN boxenstopps AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 8 UNION SELECT T1.vorname , T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 5	formula_1
SELECT T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN boxenstopps AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) = 11 INTERSECT SELECT T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 5	formula_1
SELECT T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN boxenstopps AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) = 11 INTERSECT SELECT T1.nachname , T1.fahrer_id FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id GROUP BY T1.fahrer_id HAVING count(*) > 5	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id WHERE T3.jahr > 2010 GROUP BY T1.fahrer_id ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id WHERE T3.jahr > 2010 GROUP BY T1.fahrer_id ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT name FROM stromkreise WHERE land = "UK" OR land = "Malaysia"	formula_1
SELECT name FROM stromkreise WHERE land = "UK" OR land = "Malaysia"	formula_1
SELECT rennstrecken_id , ort FROM stromkreise WHERE land = "France" OR land = "Belgium"	formula_1
SELECT rennstrecken_id , ort FROM stromkreise WHERE land = "France" OR land = "Belgium"	formula_1
SELECT T1.name FROM konstrukteure AS T1 JOIN konstrukteur_standings AS T2 ON T1.konstrukteur_id = T2.konstrukteur_id WHERE T1.nationalität = "Japanese" AND T2.punkte > 5	formula_1
SELECT T1.name FROM konstrukteure AS T1 JOIN konstrukteur_standings AS T2 ON T1.konstrukteur_id = T2.konstrukteur_id WHERE T1.nationalität = "Japanese" AND T2.punkte > 5	formula_1
SELECT avg(T2.schnellste_rundengeschwindigkeit) FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT avg(T2.schnellste_rundengeschwindigkeit) FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.schnellste_rundengeschwindigkeit) FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.schnellste_rundengeschwindigkeit) FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT max(T2.schnellste_rundengeschwindigkeit) , T1.name , T1.jahr FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr > 2014 GROUP BY T1.name ORDER BY T1.jahr	formula_1
SELECT max(T2.schnellste_rundengeschwindigkeit) , T1.name , T1.jahr FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr > 2014 GROUP BY T1.name ORDER BY T1.jahr	formula_1
SELECT avg(T2.schnellste_rundengeschwindigkeit) , T1.name , T1.jahr FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr > 2014 GROUP BY T1.name ORDER BY T1.jahr	formula_1
SELECT avg(T2.schnellste_rundengeschwindigkeit) , T1.name , T1.jahr FROM ethnien AS T1 JOIN ergebnisse AS T2 ON T1.rennen_id = T2.rennen_id WHERE T1.jahr > 2014 GROUP BY T1.name ORDER BY T1.jahr	formula_1
SELECT T1.fahrer_id , T1.vorname , count(*) FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id HAVING count(*) >= 2	formula_1
SELECT T1.fahrer_id , T1.vorname , count(*) FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id HAVING count(*) >= 2	formula_1
SELECT T1.fahrer_id , count(*) FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id HAVING count(*) <= 30	formula_1
SELECT T1.fahrer_id , count(*) FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id HAVING count(*) <= 30	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.fahrer_id , T1.nachname FROM treiber AS T1 JOIN ergebnisse AS T2 ON T1.fahrer_id = T2.fahrer_id JOIN ethnien AS T3 ON T2.rennen_id = T3.rennen_id GROUP BY T1.fahrer_id ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT count(*) FROM techniker	machine_repair
SELECT count(*) FROM techniker	machine_repair
SELECT name FROM techniker ORDER BY alter ASC	machine_repair
SELECT name FROM techniker ORDER BY alter ASC	machine_repair
SELECT mannschaft , anfangsjahr FROM techniker	machine_repair
SELECT mannschaft , anfangsjahr FROM techniker	machine_repair
SELECT name FROM techniker WHERE mannschaft != "NYY"	machine_repair
SELECT name FROM techniker WHERE mannschaft != "NYY"	machine_repair
SELECT name FROM techniker WHERE alter = 36 OR alter = 37	machine_repair
SELECT name FROM techniker WHERE alter = 36 OR alter = 37	machine_repair
SELECT anfangsjahr FROM techniker ORDER BY alter DESC LIMIT 1	machine_repair
SELECT anfangsjahr FROM techniker ORDER BY alter DESC LIMIT 1	machine_repair
SELECT mannschaft , COUNT(*) FROM techniker GROUP BY mannschaft	machine_repair
SELECT mannschaft , COUNT(*) FROM techniker GROUP BY mannschaft	machine_repair
SELECT mannschaft FROM techniker GROUP BY mannschaft ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT mannschaft FROM techniker GROUP BY mannschaft ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT mannschaft FROM techniker GROUP BY mannschaft HAVING COUNT(*) >= 2	machine_repair
SELECT mannschaft FROM techniker GROUP BY mannschaft HAVING COUNT(*) >= 2	machine_repair
SELECT T3.name , T2.maschinenreihe FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id	machine_repair
SELECT T3.name , T2.maschinenreihe FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id	machine_repair
SELECT T3.name FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id ORDER BY T2.qualitätsrang	machine_repair
SELECT T3.name FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id ORDER BY T2.qualitätsrang	machine_repair
SELECT T3.name FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id WHERE T2.wertpunkte > 70	machine_repair
SELECT T3.name FROM reparaturauftrag AS T1 JOIN maschine AS T2 ON T1.maschine_id = T2.maschine_id JOIN techniker AS T3 ON T1.techniker_id = T3.techniker_id WHERE T2.wertpunkte > 70	machine_repair
SELECT T2.name , COUNT(*) FROM reparaturauftrag AS T1 JOIN techniker AS T2 ON T1.techniker_id = T2.techniker_id GROUP BY T2.name	machine_repair
SELECT T2.name , COUNT(*) FROM reparaturauftrag AS T1 JOIN techniker AS T2 ON T1.techniker_id = T2.techniker_id GROUP BY T2.name	machine_repair
SELECT name FROM techniker WHERE techniker_id NOT IN (SELECT techniker_id FROM reparaturauftrag)	machine_repair
SELECT name FROM techniker WHERE techniker_id NOT IN (SELECT techniker_id FROM reparaturauftrag)	machine_repair
SELECT anfangsjahr FROM techniker WHERE mannschaft = "CLE" INTERSECT SELECT anfangsjahr FROM techniker WHERE mannschaft = "CWS"	machine_repair
SELECT anfangsjahr FROM techniker WHERE mannschaft = "CLE" INTERSECT SELECT anfangsjahr FROM techniker WHERE mannschaft = "CWS"	machine_repair
SELECT count(*) FROM unternehmer	entrepreneur
SELECT count(*) FROM unternehmer	entrepreneur
SELECT unternehmen FROM unternehmer ORDER BY geld_beantragt DESC	entrepreneur
SELECT unternehmen FROM unternehmer ORDER BY geld_beantragt DESC	entrepreneur
SELECT unternehmen , investor FROM unternehmer	entrepreneur
SELECT unternehmen , investor FROM unternehmer	entrepreneur
SELECT avg(geld_beantragt) FROM unternehmer	entrepreneur
SELECT avg(geld_beantragt) FROM unternehmer	entrepreneur
SELECT name FROM leute ORDER BY gewicht ASC	entrepreneur
SELECT name FROM leute ORDER BY gewicht ASC	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.investor != "Rachel Elnaugh"	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.investor != "Rachel Elnaugh"	entrepreneur
SELECT gewicht FROM leute ORDER BY größe ASC LIMIT 1	entrepreneur
SELECT gewicht FROM leute ORDER BY größe ASC LIMIT 1	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewicht DESC LIMIT 1	entrepreneur
SELECT T2.name FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.gewicht DESC LIMIT 1	entrepreneur
SELECT sum(T1.geld_beantragt) FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T2.größe > 1.85	entrepreneur
SELECT sum(T1.geld_beantragt) FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T2.größe > 1.85	entrepreneur
SELECT T2.geburtsdatum FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.investor = "Simon Woodroffe" OR T1.investor = "Peter Jones"	entrepreneur
SELECT T2.geburtsdatum FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id WHERE T1.investor = "Simon Woodroffe" OR T1.investor = "Peter Jones"	entrepreneur
SELECT T2.gewicht FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.geld_beantragt DESC	entrepreneur
SELECT T2.gewicht FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.geld_beantragt DESC	entrepreneur
SELECT investor , COUNT(*) FROM unternehmer GROUP BY investor	entrepreneur
SELECT investor , COUNT(*) FROM unternehmer GROUP BY investor	entrepreneur
SELECT investor FROM unternehmer GROUP BY investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT investor FROM unternehmer GROUP BY investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT investor FROM unternehmer GROUP BY investor HAVING COUNT(*) >= 2	entrepreneur
SELECT investor FROM unternehmer GROUP BY investor HAVING COUNT(*) >= 2	entrepreneur
SELECT T2.name , T1.unternehmen FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.geld_beantragt	entrepreneur
SELECT T2.name , T1.unternehmen FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.geld_beantragt	entrepreneur
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM unternehmer)	entrepreneur
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM unternehmer)	entrepreneur
SELECT investor FROM unternehmer WHERE geld_beantragt > 140000 INTERSECT SELECT investor FROM unternehmer WHERE geld_beantragt < 120000	entrepreneur
SELECT investor FROM unternehmer WHERE geld_beantragt > 140000 INTERSECT SELECT investor FROM unternehmer WHERE geld_beantragt < 120000	entrepreneur
SELECT count(DISTINCT unternehmen) FROM unternehmer	entrepreneur
SELECT count(DISTINCT unternehmen) FROM unternehmer	entrepreneur
SELECT T1.unternehmen FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.größe DESC LIMIT 1	entrepreneur
SELECT T1.unternehmen FROM unternehmer AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.größe DESC LIMIT 1	entrepreneur
SELECT count(*) FROM täter	perpetrator
SELECT datum FROM täter ORDER BY getötet DESC	perpetrator
SELECT verletzt FROM täter ORDER BY verletzt ASC	perpetrator
SELECT avg(verletzt) FROM täter	perpetrator
SELECT ort FROM täter ORDER BY getötet DESC LIMIT 1	perpetrator
SELECT name FROM leute ORDER BY größe ASC	perpetrator
SELECT T1.name FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id	perpetrator
SELECT T1.name FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id WHERE T2.land != "China"	perpetrator
SELECT T1.name FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.gewicht DESC LIMIT 1	perpetrator
SELECT sum(T2.getötet) FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id WHERE T1.größe > 1.84	perpetrator
SELECT T1.name FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id WHERE T2.land = "China" OR T2.land = "Japan"	perpetrator
SELECT T1.größe FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.verletzt DESC	perpetrator
SELECT land , COUNT(*) FROM täter GROUP BY land	perpetrator
SELECT land , COUNT(*) FROM täter GROUP BY land ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
SELECT land , COUNT(*) FROM täter GROUP BY land HAVING COUNT(*) >= 2	perpetrator
SELECT T1.name FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id ORDER BY T2.jahr DESC	perpetrator
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM täter)	perpetrator
SELECT land FROM täter WHERE verletzt > 50 INTERSECT SELECT land FROM täter WHERE verletzt < 20	perpetrator
SELECT count(DISTINCT ort) FROM täter	perpetrator
SELECT T2.datum FROM leute AS T1 JOIN täter AS T2 ON T1.personen_id = T2.personen_id ORDER BY T1.größe DESC LIMIT 1	perpetrator
SELECT max(jahr) FROM täter;	perpetrator
SELECT campus FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE standort = "Chico"	csu_1
SELECT campus FROM campuses WHERE standort = "Chico"	csu_1
SELECT campus FROM campuses WHERE jahr = 1958	csu_1
SELECT campus FROM campuses WHERE jahr = 1958	csu_1
SELECT campus FROM campuses WHERE jahr < 1800	csu_1
SELECT campus FROM campuses WHERE jahr < 1800	csu_1
SELECT campus FROM campuses WHERE jahr >= 1935 AND jahr <= 1939	csu_1
SELECT campus FROM campuses WHERE jahr >= 1935 AND jahr <= 1939	csu_1
SELECT campus FROM campuses WHERE standort = "Northridge" AND landkreis = "Los Angeles" UNION SELECT campus FROM campuses WHERE standort = "San Francisco" AND landkreis = "San Francisco"	csu_1
SELECT campus FROM campuses WHERE standort = "Northridge" AND landkreis = "Los Angeles" UNION SELECT campus FROM campuses WHERE standort = "San Francisco" AND landkreis = "San Francisco"	csu_1
SELECT campusgebühr FROM campuses AS T1 JOIN csu_gebühren AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Jose State University" AND T2.jahr = 1996	csu_1
SELECT campusgebühr FROM campuses AS T1 JOIN csu_gebühren AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Jose State University" AND T2.jahr = 1996	csu_1
SELECT campusgebühr FROM campuses AS T1 JOIN csu_gebühren AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND T2.jahr = 1996	csu_1
SELECT campusgebühr FROM campuses AS T1 JOIN csu_gebühren AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND T2.jahr = 1996	csu_1
SELECT count(*) FROM csu_gebühren WHERE campusgebühr > (SELECT avg(campusgebühr) FROM csu_gebühren)	csu_1
SELECT count(*) FROM csu_gebühren WHERE campusgebühr > (SELECT avg(campusgebühr) FROM csu_gebühren)	csu_1
SELECT count(*) FROM csu_gebühren WHERE campusgebühr > (SELECT avg(campusgebühr) FROM csu_gebühren)	csu_1
SELECT count(*) FROM csu_gebühren WHERE campusgebühr > (SELECT avg(campusgebühr) FROM csu_gebühren)	csu_1
SELECT campus FROM campuses WHERE landkreis = "Los Angeles" AND jahr > 1950	csu_1
SELECT campus FROM campuses WHERE landkreis = "Los Angeles" AND jahr > 1950	csu_1
SELECT jahr FROM abschlüsse GROUP BY jahr ORDER BY sum(abschlüsse) DESC LIMIT 1	csu_1
SELECT jahr FROM abschlüsse GROUP BY jahr ORDER BY sum(abschlüsse) DESC LIMIT 1	csu_1
SELECT campus FROM abschlüsse GROUP BY campus ORDER BY sum(abschlüsse) DESC LIMIT 1	csu_1
SELECT campus FROM abschlüsse GROUP BY campus ORDER BY sum(abschlüsse) DESC LIMIT 1	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2003 ORDER BY T2.fakultät DESC LIMIT 1	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2003 ORDER BY T2.fakultät DESC LIMIT 1	csu_1
SELECT avg(campusgebühr) FROM csu_gebühren WHERE jahr = 1996	csu_1
SELECT avg(campusgebühr) FROM csu_gebühren WHERE jahr = 1996	csu_1
SELECT avg(campusgebühr) FROM csu_gebühren WHERE jahr = 2005	csu_1
SELECT avg(campusgebühr) FROM csu_gebühren WHERE jahr = 2005	csu_1
SELECT T1.campus , sum(T2.abschlüsse) FROM campuses AS T1 JOIN abschlüsse AS T2 ON T1.id = T2.campus WHERE T2.jahr >= 1998 AND T2.jahr <= 2002 GROUP BY T1.campus	csu_1
SELECT T1.campus , sum(T2.abschlüsse) FROM campuses AS T1 JOIN abschlüsse AS T2 ON T1.id = T2.campus WHERE T2.jahr >= 1998 AND T2.jahr <= 2002 GROUP BY T1.campus	csu_1
SELECT T1.campus , sum(T2.abschlüsse) FROM campuses AS T1 JOIN abschlüsse AS T2 ON T1.id = T2.campus WHERE T1.landkreis = "Orange" AND T2.jahr >= 2000 GROUP BY T1.campus	csu_1
SELECT T1.campus , sum(T2.abschlüsse) FROM campuses AS T1 JOIN abschlüsse AS T2 ON T1.id = T2.campus WHERE T1.landkreis = "Orange" AND T2.jahr >= 2000 GROUP BY T1.campus	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2002 AND fakultät > (SELECT max(fakultät) FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2002 AND T1.landkreis = "Orange")	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2002 AND fakultät > (SELECT max(fakultät) FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = T2.campus WHERE T2.jahr = 2002 AND T1.landkreis = "Orange")	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN einschreibungen AS t2 ON t1.id = t2.campus WHERE t2.jahr = 1956 AND totaleinschreibung_ay > 400 AND fte_ay > 200	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN einschreibungen AS t2 ON t1.id = t2.campus WHERE t2.jahr = 1956 AND totaleinschreibung_ay > 400 AND fte_ay > 200	csu_1
SELECT count(*) FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT count(*) FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE landkreis = "Los Angeles"	csu_1
SELECT abschlüsse FROM campuses AS T1 JOIN abschlüsse AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Jose State University" AND t2.jahr = 2000	csu_1
SELECT abschlüsse FROM campuses AS T1 JOIN abschlüsse AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Jose State University" AND t2.jahr = 2000	csu_1
SELECT abschlüsse FROM campuses AS T1 JOIN abschlüsse AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND t2.jahr = 2001	csu_1
SELECT abschlüsse FROM campuses AS T1 JOIN abschlüsse AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND t2.jahr = 2001	csu_1
SELECT sum(fakultät) FROM fakultät WHERE jahr = 2002	csu_1
SELECT sum(fakultät) FROM fakultät WHERE jahr = 2002	csu_1
SELECT fakultät FROM fakultät AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.jahr = 2002 AND T2.campus = "Long Beach State University"	csu_1
SELECT fakultät FROM fakultät AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.jahr = 2002 AND T2.campus = "Long Beach State University"	csu_1
SELECT fakultät FROM fakultät AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.jahr = 2004 AND T2.campus = "San Francisco State University"	csu_1
SELECT fakultät FROM fakultät AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.jahr = 2004 AND T2.campus = "San Francisco State University"	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN fakultät AS t2 ON t1.id = t2.campus WHERE t2.fakultät >= 600 AND t2.fakultät <= 1000 AND T1.jahr = 2004	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN fakultät AS t2 ON t1.id = t2.campus WHERE t2.fakultät >= 600 AND t2.fakultät <= 1000 AND T1.jahr = 2004	csu_1
SELECT T2.fakultät FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = t2.campus JOIN abschlüsse AS T3 ON T1.id = t3.campus AND t2.jahr = t3.jahr WHERE t2.jahr = 2002 ORDER BY t3.abschlüsse DESC LIMIT 1	csu_1
SELECT T2.fakultät FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = t2.campus JOIN abschlüsse AS T3 ON T1.id = t3.campus AND t2.jahr = t3.jahr WHERE t2.jahr = 2002 ORDER BY t3.abschlüsse DESC LIMIT 1	csu_1
SELECT T2.fakultät FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = t2.campus JOIN abschlüsse AS T3 ON T1.id = t3.campus AND t2.jahr = t3.jahr WHERE t2.jahr = 2001 ORDER BY t3.abschlüsse LIMIT 1	csu_1
SELECT T2.fakultät FROM campuses AS T1 JOIN fakultät AS T2 ON T1.id = t2.campus JOIN abschlüsse AS T3 ON T1.id = t3.campus AND t2.jahr = t3.jahr WHERE t2.jahr = 2001 ORDER BY t3.abschlüsse LIMIT 1	csu_1
SELECT sum(t1.undergraduate) FROM fachrichtung_einschreibungen AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.jahr = 2004 AND t2.campus = "San Jose State University"	csu_1
SELECT sum(t1.undergraduate) FROM fachrichtung_einschreibungen AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.jahr = 2004 AND t2.campus = "San Jose State University"	csu_1
SELECT sum(t1.absolvent) FROM fachrichtung_einschreibungen AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.jahr = 2004 AND t2.campus = "San Francisco State University"	csu_1
SELECT sum(t1.absolvent) FROM fachrichtung_einschreibungen AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.jahr = 2004 AND t2.campus = "San Francisco State University"	csu_1
SELECT t1.campusgebühr FROM csu_gebühren AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Francisco State University" AND t1.jahr = 2000	csu_1
SELECT t1.campusgebühr FROM csu_gebühren AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Francisco State University" AND t1.jahr = 2000	csu_1
SELECT t1.campusgebühr FROM csu_gebühren AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Jose State University" AND t1.jahr = 2000	csu_1
SELECT t1.campusgebühr FROM csu_gebühren AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Jose State University" AND t1.jahr = 2000	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM kandidat	candidate_poll
SELECT count(*) FROM kandidat	candidate_poll
SELECT umfragequelle FROM kandidat GROUP BY umfragequelle ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT umfragequelle FROM kandidat GROUP BY umfragequelle ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT unterstützungsquote FROM kandidat ORDER BY unterstützungsquote DESC LIMIT 3	candidate_poll
SELECT unterstützungsquote FROM kandidat ORDER BY unterstützungsquote DESC LIMIT 3	candidate_poll
SELECT kandidat_id FROM kandidat ORDER BY ablehnungsquote LIMIT 1	candidate_poll
SELECT kandidat_id FROM kandidat ORDER BY ablehnungsquote LIMIT 1	candidate_poll
SELECT unterstützungsquote , berücksichtigungsquote , ablehnungsquote FROM kandidat ORDER BY unsicherer_anteil	candidate_poll
SELECT unterstützungsquote , berücksichtigungsquote , ablehnungsquote FROM kandidat ORDER BY unsicherer_anteil	candidate_poll
SELECT umfragequelle FROM kandidat ORDER BY ablehnungsquote DESC LIMIT 1	candidate_poll
SELECT umfragequelle FROM kandidat ORDER BY ablehnungsquote DESC LIMIT 1	candidate_poll
SELECT name FROM leute ORDER BY geburtsdatum	candidate_poll
SELECT name FROM leute ORDER BY geburtsdatum	candidate_poll
SELECT avg(größe) , avg(gewicht) FROM leute WHERE geschlecht = 'M'	candidate_poll
SELECT avg(größe) , avg(gewicht) FROM leute WHERE geschlecht = 'M'	candidate_poll
SELECT name FROM leute WHERE größe > 200 OR größe < 190	candidate_poll
SELECT name FROM leute WHERE größe > 200 OR größe < 190	candidate_poll
SELECT avg(gewicht) , min(gewicht) , geschlecht FROM leute GROUP BY geschlecht	candidate_poll
SELECT avg(gewicht) , min(gewicht) , geschlecht FROM leute GROUP BY geschlecht	candidate_poll
SELECT t1.name , t1.geschlecht FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id ORDER BY t2.unterstützungsquote DESC LIMIT 1	candidate_poll
SELECT t1.name , t1.geschlecht FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id ORDER BY t2.unterstützungsquote DESC LIMIT 1	candidate_poll
SELECT t1.name , t1.geschlecht , min(ablehnungsquote) FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id GROUP BY t1.geschlecht	candidate_poll
SELECT t1.name , t1.geschlecht , min(ablehnungsquote) FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id GROUP BY t1.geschlecht	candidate_poll
SELECT t1.geschlecht FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id GROUP BY t1.geschlecht ORDER BY avg(t2.unsicherer_anteil) DESC LIMIT 1	candidate_poll
SELECT t1.geschlecht FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id GROUP BY t1.geschlecht ORDER BY avg(t2.unsicherer_anteil) DESC LIMIT 1	candidate_poll
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM kandidat)	candidate_poll
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM kandidat)	candidate_poll
SELECT t1.name FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id WHERE t2.unterstützungsquote < t2.ablehnungsquote	candidate_poll
SELECT t1.name FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id WHERE t2.unterstützungsquote < t2.ablehnungsquote	candidate_poll
SELECT count(*) , geschlecht FROM leute WHERE gewicht > 85 GROUP BY geschlecht	candidate_poll
SELECT count(*) , geschlecht FROM leute WHERE gewicht > 85 GROUP BY geschlecht	candidate_poll
SELECT max(unterstützungsquote) , min(berücksichtigungsquote) , min(ablehnungsquote) FROM kandidat	candidate_poll
SELECT max(unterstützungsquote) , min(berücksichtigungsquote) , min(ablehnungsquote) FROM kandidat	candidate_poll
SELECT t1.name FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id WHERE t1.geschlecht = 'F' ORDER BY t1.name	candidate_poll
SELECT t1.name FROM leute AS t1 JOIN kandidat AS t2 ON t1.personen_id = t2.personen_id WHERE t1.geschlecht = 'F' ORDER BY t1.name	candidate_poll
SELECT name FROM leute WHERE größe < (SELECT avg(größe) FROM leute)	candidate_poll
SELECT name FROM leute WHERE größe < (SELECT avg(größe) FROM leute)	candidate_poll
SELECT * FROM leute	candidate_poll
SELECT * FROM leute	candidate_poll
SELECT titel FROM film WHERE regie = 'Steven Spielberg'	movie_1
SELECT titel FROM film WHERE regie = 'Steven Spielberg'	movie_1
SELECT titel FROM film WHERE regie = 'James Cameron' AND jahr > 2000	movie_1
SELECT titel FROM film WHERE regie = 'James Cameron' AND jahr > 2000	movie_1
SELECT count(*) FROM film WHERE jahr < 2000	movie_1
SELECT count(*) FROM film WHERE jahr < 2000	movie_1
SELECT regie FROM film WHERE titel = 'Avatar'	movie_1
SELECT regie FROM film WHERE titel = 'Avatar'	movie_1
SELECT count(*) FROM rezensent	movie_1
SELECT count(*) FROM rezensent	movie_1
SELECT rezensent_id FROM rezensent WHERE name LIKE "%Mike%"	movie_1
SELECT rezensent_id FROM rezensent WHERE name LIKE "%Mike%"	movie_1
SELECT rezensent_id FROM rezensent WHERE name = "Daniel Lewis"	movie_1
SELECT rezensent_id FROM rezensent WHERE name = "Daniel Lewis"	movie_1
SELECT count(*) FROM bewertung WHERE bewertung_sterne > 3	movie_1
SELECT count(*) FROM bewertung WHERE bewertung_sterne > 3	movie_1
SELECT max(bewertung_sterne) , min(bewertung_sterne) FROM bewertung	movie_1
SELECT max(bewertung_sterne) , min(bewertung_sterne) FROM bewertung	movie_1
SELECT DISTINCT jahr FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id WHERE T2.bewertung_sterne >= 4 ORDER BY T1.jahr	movie_1
SELECT DISTINCT jahr FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id WHERE T2.bewertung_sterne >= 4 ORDER BY T1.jahr	movie_1
SELECT T1.regie , T1.titel FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id WHERE T2.bewertung_sterne = 5	movie_1
SELECT T1.regie , T1.titel FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id WHERE T2.bewertung_sterne = 5	movie_1
SELECT T2.name , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id GROUP BY T2.name	movie_1
SELECT T2.name , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id GROUP BY T2.name	movie_1
SELECT titel FROM film WHERE film_id NOT IN (SELECT film_id FROM bewertung)	movie_1
SELECT titel FROM film WHERE film_id NOT IN (SELECT film_id FROM bewertung)	movie_1
SELECT DISTINCT name FROM rezensent AS T1 JOIN bewertung AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE bewertungsdatum = "null"	movie_1
SELECT DISTINCT name FROM rezensent AS T1 JOIN bewertung AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE bewertungsdatum = "null"	movie_1
SELECT avg(T1.bewertung_sterne) , T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = (SELECT min(jahr) FROM film)	movie_1
SELECT avg(T1.bewertung_sterne) , T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = (SELECT min(jahr) FROM film)	movie_1
SELECT titel FROM film WHERE jahr = (SELECT max(jahr) FROM film)	movie_1
SELECT titel FROM film WHERE jahr = (SELECT max(jahr) FROM film)	movie_1
SELECT max(T1.bewertung_sterne) , T2.jahr FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = (SELECT max(jahr) FROM film)	movie_1
SELECT max(T1.bewertung_sterne) , T2.jahr FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = (SELECT max(jahr) FROM film)	movie_1
SELECT titel FROM film WHERE jahr > (SELECT max(jahr) FROM film WHERE regie = "Steven Spielberg")	movie_1
SELECT titel FROM film WHERE jahr > (SELECT max(jahr) FROM film WHERE regie = "Steven Spielberg")	movie_1
SELECT T2.titel , T2.regie FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne > (SELECT avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.regie = "James Cameron")	movie_1
SELECT T2.titel , T2.regie FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne > (SELECT avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T2.regie = "James Cameron")	movie_1
SELECT T3.name , T2.titel , T1.bewertung_sterne , T1.bewertungsdatum FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id ORDER BY T3.name , T2.titel , T1.bewertung_sterne	movie_1
SELECT T3.name , T2.titel , T1.bewertung_sterne , T1.bewertungsdatum FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id ORDER BY T3.name , T2.titel , T1.bewertung_sterne	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id GROUP BY T1.rezensent_id HAVING COUNT(*) >= 3	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id GROUP BY T1.rezensent_id HAVING COUNT(*) >= 3	movie_1
SELECT DISTINCT T3.name FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T2.titel = 'Gone with the Wind'	movie_1
SELECT DISTINCT T3.name FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T2.titel = 'Gone with the Wind'	movie_1
SELECT DISTINCT T2.regie FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Sarah Martinez'	movie_1
SELECT DISTINCT T2.regie FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Sarah Martinez'	movie_1
SELECT DISTINCT T3.name , T2.titel , T1.bewertung_sterne FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T2.regie = T3.name	movie_1
SELECT DISTINCT T3.name , T2.titel , T1.bewertung_sterne FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T2.regie = T3.name	movie_1
SELECT name FROM rezensent UNION SELECT titel FROM film	movie_1
SELECT name FROM rezensent UNION SELECT titel FROM film	movie_1
SELECT DISTINCT titel FROM film EXCEPT SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Chris Jackson'	movie_1
SELECT DISTINCT titel FROM film EXCEPT SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Chris Jackson'	movie_1
SELECT T1.titel , T1.regie FROM film AS T1 JOIN film AS T2 ON T1.regie = T2.regie WHERE T1.titel != T2.titel ORDER BY T1.regie , T1.titel	movie_1
SELECT T1.titel , T1.regie FROM film AS T1 JOIN film AS T2 ON T1.regie = T2.regie WHERE T1.titel != T2.titel ORDER BY T1.regie , T1.titel	movie_1
SELECT T1.titel , T1.jahr FROM film AS T1 JOIN film AS T2 ON T1.regie = T2.regie WHERE T1.titel != T2.titel	movie_1
SELECT T1.titel , T1.jahr FROM film AS T1 JOIN film AS T2 ON T1.regie = T2.regie WHERE T1.titel != T2.titel	movie_1
SELECT regie FROM film GROUP BY regie HAVING count(*) = 1	movie_1
SELECT regie FROM film GROUP BY regie HAVING count(*) = 1	movie_1
SELECT regie FROM film WHERE regie != "null" GROUP BY regie HAVING count(*) = 1	movie_1
SELECT regie FROM film WHERE regie != "null" GROUP BY regie HAVING count(*) = 1	movie_1
SELECT count(*) , T1.regie FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id GROUP BY T1.regie	movie_1
SELECT count(*) , T1.regie FROM film AS T1 JOIN bewertung AS T2 ON T1.film_id = T2.film_id GROUP BY T1.regie	movie_1
SELECT T2.titel , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY avg(T1.bewertung_sterne) DESC LIMIT 1	movie_1
SELECT T2.titel , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY avg(T1.bewertung_sterne) DESC LIMIT 1	movie_1
SELECT T2.titel , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY avg(T1.bewertung_sterne) LIMIT 1	movie_1
SELECT T2.titel , avg(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY avg(T1.bewertung_sterne) LIMIT 1	movie_1
SELECT T2.titel , T2.jahr FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id ORDER BY T1.bewertung_sterne DESC LIMIT 3	movie_1
SELECT T2.titel , T2.jahr FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id ORDER BY T1.bewertung_sterne DESC LIMIT 3	movie_1
SELECT T2.titel , T1.bewertung_sterne , T2.regie , max(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE regie != "null" GROUP BY regie	movie_1
SELECT T2.titel , T1.bewertung_sterne , T2.regie , max(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE regie != "null" GROUP BY regie	movie_1
SELECT T2.titel , T1.rezensent_id , T1.bewertung_sterne , min(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.rezensent_id	movie_1
SELECT T2.titel , T1.rezensent_id , T1.bewertung_sterne , min(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.rezensent_id	movie_1
SELECT T2.titel , T1.bewertung_sterne , T2.regie , min(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.regie	movie_1
SELECT T2.titel , T1.bewertung_sterne , T2.regie , min(T1.bewertung_sterne) FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.regie	movie_1
SELECT T2.titel , T1.film_id FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	movie_1
SELECT T2.titel , T1.film_id FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	movie_1
SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne BETWEEN 3 AND 5	movie_1
SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne BETWEEN 3 AND 5	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne > 3	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne > 3	movie_1
SELECT film_id , avg(bewertung_sterne) FROM bewertung WHERE film_id NOT IN (SELECT T1.film_id FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T2.name = "Brittany Harris") GROUP BY film_id	movie_1
SELECT film_id , avg(bewertung_sterne) FROM bewertung WHERE film_id NOT IN (SELECT T1.film_id FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T2.name = "Brittany Harris") GROUP BY film_id	movie_1
SELECT film_id FROM bewertung EXCEPT SELECT T1.film_id FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T2.name = "Brittany Harris"	movie_1
SELECT film_id FROM bewertung EXCEPT SELECT T1.film_id FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T2.name = "Brittany Harris"	movie_1
SELECT film_id , avg(bewertung_sterne) FROM bewertung GROUP BY film_id HAVING count(*) >= 2	movie_1
SELECT film_id , avg(bewertung_sterne) FROM bewertung GROUP BY film_id HAVING count(*) >= 2	movie_1
SELECT rezensent_id FROM bewertung EXCEPT SELECT rezensent_id FROM bewertung WHERE bewertung_sterne = 4	movie_1
SELECT rezensent_id FROM bewertung EXCEPT SELECT rezensent_id FROM bewertung WHERE bewertung_sterne = 4	movie_1
SELECT rezensent_id FROM bewertung WHERE bewertung_sterne != 4	movie_1
SELECT rezensent_id FROM bewertung WHERE bewertung_sterne != 4	movie_1
SELECT DISTINCT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Brittany Harris' OR T2.jahr > 2000	movie_1
SELECT DISTINCT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN rezensent AS T3 ON T1.rezensent_id = T3.rezensent_id WHERE T3.name = 'Brittany Harris' OR T2.jahr > 2000	movie_1
SELECT titel FROM film WHERE regie = "James Cameron" OR jahr < 1980	movie_1
SELECT titel FROM film WHERE regie = "James Cameron" OR jahr < 1980	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne = 3 INTERSECT SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne = 4	movie_1
SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne = 3 INTERSECT SELECT T2.name FROM bewertung AS T1 JOIN rezensent AS T2 ON T1.rezensent_id = T2.rezensent_id WHERE T1.bewertung_sterne = 4	movie_1
SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne = 3 INTERSECT SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne = 4	movie_1
SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne = 3 INTERSECT SELECT T2.titel FROM bewertung AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id WHERE T1.bewertung_sterne = 4	movie_1
SELECT count(*) FROM landkreis_öffentliche_sicherheit	county_public_safety
SELECT count(*) FROM landkreis_öffentliche_sicherheit	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC	county_public_safety
SELECT DISTINCT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort != "East"	county_public_safety
SELECT DISTINCT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort != "East"	county_public_safety
SELECT min(kriminalitätsrate) , max(kriminalitätsrate) FROM landkreis_öffentliche_sicherheit	county_public_safety
SELECT min(kriminalitätsrate) , max(kriminalitätsrate) FROM landkreis_öffentliche_sicherheit	county_public_safety
SELECT kriminalitätsrate FROM landkreis_öffentliche_sicherheit ORDER BY polizeibeamte ASC	county_public_safety
SELECT kriminalitätsrate FROM landkreis_öffentliche_sicherheit ORDER BY polizeibeamte ASC	county_public_safety
SELECT name FROM stadt ORDER BY name ASC	county_public_safety
SELECT name FROM stadt ORDER BY name ASC	county_public_safety
SELECT hispanisch FROM stadt WHERE schwarz > 10	county_public_safety
SELECT hispanisch FROM stadt WHERE schwarz > 10	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC LIMIT 1	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC LIMIT 1	county_public_safety
SELECT name FROM stadt ORDER BY weiß DESC LIMIT 5	county_public_safety
SELECT name FROM stadt ORDER BY weiß DESC LIMIT 5	county_public_safety
SELECT T1.name , T2.name FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id	county_public_safety
SELECT T1.name , T2.name FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id	county_public_safety
SELECT T1.weiß , T2.kriminalitätsrate FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id	county_public_safety
SELECT T1.weiß , T2.kriminalitätsrate FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id	county_public_safety
SELECT name FROM stadt WHERE landkreis_id = (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit ORDER BY polizeibeamte DESC LIMIT 1)	county_public_safety
SELECT name FROM stadt WHERE landkreis_id = (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit ORDER BY polizeibeamte DESC LIMIT 1)	county_public_safety
SELECT count(*) FROM stadt WHERE landkreis_id IN (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit WHERE bevölkerung > 20000)	county_public_safety
SELECT count(*) FROM stadt WHERE landkreis_id IN (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit WHERE bevölkerung > 20000)	county_public_safety
SELECT T2.kriminalitätsrate FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id WHERE T1.weiß > 90	county_public_safety
SELECT T2.kriminalitätsrate FROM stadt AS T1 JOIN landkreis_öffentliche_sicherheit AS T2 ON T1.landkreis_id = T2.landkreis_id WHERE T1.weiß > 90	county_public_safety
SELECT polizeikräfte , COUNT(*) FROM landkreis_öffentliche_sicherheit GROUP BY polizeikräfte	county_public_safety
SELECT polizeikräfte , COUNT(*) FROM landkreis_öffentliche_sicherheit GROUP BY polizeikräfte	county_public_safety
SELECT standort FROM landkreis_öffentliche_sicherheit GROUP BY standort ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT standort FROM landkreis_öffentliche_sicherheit GROUP BY standort ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit WHERE landkreis_id NOT IN (SELECT landkreis_id FROM stadt)	county_public_safety
SELECT name FROM landkreis_öffentliche_sicherheit WHERE landkreis_id NOT IN (SELECT landkreis_id FROM stadt)	county_public_safety
SELECT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort = "East" INTERSECT SELECT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort = "West"	county_public_safety
SELECT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort = "East" INTERSECT SELECT polizeikräfte FROM landkreis_öffentliche_sicherheit WHERE standort = "West"	county_public_safety
SELECT name FROM stadt WHERE landkreis_id IN (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit WHERE kriminalitätsrate < 100)	county_public_safety
SELECT name FROM stadt WHERE landkreis_id IN (SELECT landkreis_id FROM landkreis_öffentliche_sicherheit WHERE kriminalitätsrate < 100)	county_public_safety
SELECT fallbelastung FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC	county_public_safety
SELECT fallbelastung FROM landkreis_öffentliche_sicherheit ORDER BY bevölkerung DESC	county_public_safety
SELECT zimmername FROM rooms WHERE grundpreis < 160 AND betten = 2 AND ausstattung = 'modern';	inn_1
SELECT zimmername FROM rooms WHERE grundpreis < 160 AND betten = 2 AND ausstattung = 'modern';	inn_1
SELECT zimmername , zimmer_id FROM rooms WHERE grundpreis > 160 AND maximale_belegung > 2;	inn_1
SELECT zimmername , zimmer_id FROM rooms WHERE grundpreis > 160 AND maximale_belegung > 2;	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT kinder FROM reservierungen WHERE vorname = "ROY" AND nachname = "SWEAZY";	inn_1
SELECT kinder FROM reservierungen WHERE vorname = "ROY" AND nachname = "SWEAZY";	inn_1
SELECT count(*) FROM reservierungen WHERE vorname = "ROY" AND nachname = "SWEAZY";	inn_1
SELECT count(*) FROM reservierungen WHERE vorname = "ROY" AND nachname = "SWEAZY";	inn_1
SELECT T2.zimmername , T1.tarif , T1.check_in , T1.check_out FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer ORDER BY T1.tarif DESC LIMIT 1;	inn_1
SELECT T2.zimmername , T1.tarif , T1.check_in , T1.check_out FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer ORDER BY T1.tarif DESC LIMIT 1;	inn_1
SELECT erwachsene FROM reservierungen WHERE check_in = "2010-10-23" AND vorname = "CONRAD" AND nachname = "SELBIG";	inn_1
SELECT erwachsene FROM reservierungen WHERE check_in = "2010-10-23" AND vorname = "CONRAD" AND nachname = "SELBIG";	inn_1
SELECT kinder FROM reservierungen WHERE check_in = "2010-09-21" AND vorname = "DAMIEN" AND nachname = "TRACHSEL";	inn_1
SELECT kinder FROM reservierungen WHERE check_in = "2010-09-21" AND vorname = "DAMIEN" AND nachname = "TRACHSEL";	inn_1
SELECT sum(betten) FROM rooms WHERE bettentyp = 'King';	inn_1
SELECT sum(betten) FROM rooms WHERE bettentyp = 'King';	inn_1
SELECT zimmername , ausstattung FROM rooms WHERE bettentyp = 'King' ORDER BY grundpreis;	inn_1
SELECT zimmername , ausstattung FROM rooms WHERE bettentyp = 'King' ORDER BY grundpreis;	inn_1
SELECT zimmername , grundpreis FROM rooms ORDER BY grundpreis ASC LIMIT 1;	inn_1
SELECT zimmername , grundpreis FROM rooms ORDER BY grundpreis ASC LIMIT 1;	inn_1
SELECT ausstattung FROM rooms WHERE zimmername = "Recluse and defiance";	inn_1
SELECT ausstattung FROM rooms WHERE zimmername = "Recluse and defiance";	inn_1
SELECT bettentyp , avg(grundpreis) FROM rooms GROUP BY bettentyp;	inn_1
SELECT bettentyp , avg(grundpreis) FROM rooms GROUP BY bettentyp;	inn_1
SELECT sum(maximale_belegung) FROM rooms WHERE ausstattung = 'modern';	inn_1
SELECT sum(maximale_belegung) FROM rooms WHERE ausstattung = 'modern';	inn_1
SELECT T2.ausstattung FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T2.ausstattung ORDER BY count(T2.ausstattung) ASC LIMIT 1;	inn_1
SELECT T2.ausstattung FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T2.ausstattung ORDER BY count(T2.ausstattung) ASC LIMIT 1;	inn_1
SELECT count(*) FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE T2.maximale_belegung = T1.erwachsene + T1.Kids;	inn_1
SELECT count(*) FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE T2.maximale_belegung = T1.erwachsene + T1.Kids;	inn_1
SELECT T1.vorname , T1.nachname FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE T1.tarif - T2.grundpreis > 0	inn_1
SELECT T1.vorname , T1.nachname FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE T1.tarif - T2.grundpreis > 0	inn_1
SELECT count(*) FROM rooms;	inn_1
SELECT count(*) FROM rooms;	inn_1
SELECT count(*) FROM rooms WHERE bettentyp = "King";	inn_1
SELECT count(*) FROM rooms WHERE bettentyp = "King";	inn_1
SELECT bettentyp , count(*) FROM rooms GROUP BY bettentyp;	inn_1
SELECT bettentyp , count(*) FROM rooms GROUP BY bettentyp;	inn_1
SELECT zimmername FROM rooms ORDER BY maximale_belegung DESC LIMIT 1;	inn_1
SELECT zimmername FROM rooms ORDER BY maximale_belegung DESC LIMIT 1;	inn_1
SELECT zimmer_id , zimmername FROM rooms ORDER BY grundpreis DESC LIMIT 1;	inn_1
SELECT zimmer_id , zimmername FROM rooms ORDER BY grundpreis DESC LIMIT 1;	inn_1
SELECT zimmername , bettentyp FROM rooms WHERE ausstattung = "traditional";	inn_1
SELECT zimmername , bettentyp FROM rooms WHERE ausstattung = "traditional";	inn_1
SELECT ausstattung , count(*) FROM rooms WHERE bettentyp = "King" GROUP BY ausstattung;	inn_1
SELECT ausstattung , count(*) FROM rooms WHERE bettentyp = "King" GROUP BY ausstattung;	inn_1
SELECT ausstattung , avg(grundpreis) , min(grundpreis) FROM rooms GROUP BY ausstattung;	inn_1
SELECT ausstattung , avg(grundpreis) , min(grundpreis) FROM rooms GROUP BY ausstattung;	inn_1
SELECT zimmername FROM rooms ORDER BY grundpreis;	inn_1
SELECT zimmername FROM rooms ORDER BY grundpreis;	inn_1
SELECT ausstattung , count(*) FROM rooms WHERE grundpreis > 120 GROUP BY ausstattung;	inn_1
SELECT ausstattung , count(*) FROM rooms WHERE grundpreis > 120 GROUP BY ausstattung;	inn_1
SELECT bettentyp , avg(grundpreis) FROM rooms GROUP BY bettentyp;	inn_1
SELECT bettentyp , avg(grundpreis) FROM rooms GROUP BY bettentyp;	inn_1
SELECT zimmername FROM rooms WHERE bettentyp = "King" OR bettentyp = "Queen";	inn_1
SELECT zimmername FROM rooms WHERE bettentyp = "King" OR bettentyp = "Queen";	inn_1
SELECT count(DISTINCT bettentyp) FROM rooms;	inn_1
SELECT count(DISTINCT bettentyp) FROM rooms;	inn_1
SELECT zimmer_id , zimmername FROM rooms ORDER BY grundpreis DESC LIMIT 3;	inn_1
SELECT zimmer_id , zimmername FROM rooms ORDER BY grundpreis DESC LIMIT 3;	inn_1
SELECT zimmername FROM rooms WHERE grundpreis > ( SELECT avg(grundpreis) FROM rooms );	inn_1
SELECT zimmername FROM rooms WHERE grundpreis > ( SELECT avg(grundpreis) FROM rooms );	inn_1
SELECT count(*) FROM rooms WHERE zimmer_id NOT IN (SELECT DISTINCT zimmer FROM reservierungen)	inn_1
SELECT count(*) FROM rooms WHERE zimmer_id NOT IN (SELECT DISTINCT zimmer FROM reservierungen)	inn_1
SELECT T2.zimmername , count(*) , T1.zimmer FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer	inn_1
SELECT T2.zimmername , count(*) , T1.zimmer FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer HAVING count(*) > 60	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id GROUP BY T1.zimmer HAVING count(*) > 60	inn_1
SELECT zimmername FROM rooms WHERE grundpreis BETWEEN 120 AND 150	inn_1
SELECT zimmername FROM rooms WHERE grundpreis BETWEEN 120 AND 150	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE vorname LIKE '%ROY%'	inn_1
SELECT T2.zimmername FROM reservierungen AS T1 JOIN rooms AS T2 ON T1.zimmer = T2.zimmer_id WHERE vorname LIKE '%ROY%'	inn_1
SELECT T1.cmi_details FROM kundenstammindex AS T1 JOIN cmi_querverweise AS T2 ON T1.kundenstamm_id = T2.kundenstamm_id WHERE T2.quellsystem_code = 'Tax'	local_govt_mdm
SELECT T1.cmi_cross_reference_id , T1.quellsystem_code FROM cmi_querverweise AS T1 JOIN gemeindesteuer AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_reference_id GROUP BY T1.cmi_cross_reference_id HAVING count(*) >= 1	local_govt_mdm
SELECT T2.cmi_cross_reference_id , T2.kundenstamm_id , count(*) FROM gewerbesteuer AS T1 JOIN cmi_querverweise AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_reference_id GROUP BY T2.cmi_cross_reference_id	local_govt_mdm
SELECT T1.quellsystem_code , T2.council_tax_id FROM cmi_querverweise AS T1 JOIN leistungsüberzahlungen AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_ref_id ORDER BY T2.council_tax_id	local_govt_mdm
SELECT T1.quellsystem_code , T1.kundenstamm_id , T2.council_tax_id FROM cmi_querverweise AS T1 JOIN bußgelder AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_reference_id	local_govt_mdm
SELECT T1.council_tax_id FROM mietrückstände AS T1 JOIN cmi_querverweise AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_reference_id JOIN kundenstammindex AS T3 ON T3.kundenstamm_id = T2.kundenstamm_id WHERE T3.cmi_details != 'Schmidt , Kertzmann and Lubowitz'	local_govt_mdm
SELECT T1.wahlregister_id FROM wählerverzeichnis AS T1 JOIN cmi_querverweise AS T2 ON T1.cmi_cross_reference_id = T2.cmi_cross_reference_id WHERE T2.quellsystem_code = 'Electoral' OR T2.quellsystem_code = 'Tax'	local_govt_mdm
SELECT count(DISTINCT quellsystem_code) FROM cmi_querverweise	local_govt_mdm
SELECT * FROM kundenstammindex ORDER BY cmi_details DESC	local_govt_mdm
SELECT council_tax_id , cmi_cross_reference_id FROM bußgelder	local_govt_mdm
SELECT count(*) FROM mietrückstände	local_govt_mdm
SELECT DISTINCT T2.quellsystem_code FROM kundenstammindex AS T1 JOIN cmi_querverweise AS T2 ON T1.kundenstamm_id = T2.kundenstamm_id WHERE T1.cmi_details = 'Gottlieb , Becker and Wyman'	local_govt_mdm
SELECT cmi_cross_reference_id FROM cmi_querverweise EXCEPT SELECT cmi_cross_reference_id FROM bußgelder	local_govt_mdm
SELECT DISTINCT quellsystem_code FROM cmi_querverweise WHERE quellsystem_code LIKE '%en%'	local_govt_mdm
SELECT count(*) FROM party	party_host
SELECT count(*) FROM party	party_host
SELECT party_thema FROM party ORDER BY anzahl_der_gastgeber ASC	party_host
SELECT party_thema FROM party ORDER BY anzahl_der_gastgeber ASC	party_host
SELECT party_thema , ort FROM party	party_host
SELECT party_thema , ort FROM party	party_host
SELECT erstes_jahr , letztes_jahr FROM party WHERE party_thema = "Spring" OR party_thema = "Teqnology"	party_host
SELECT erstes_jahr , letztes_jahr FROM party WHERE party_thema = "Spring" OR party_thema = "Teqnology"	party_host
SELECT avg(anzahl_der_gastgeber) FROM party	party_host
SELECT avg(anzahl_der_gastgeber) FROM party	party_host
SELECT ort FROM party ORDER BY anzahl_der_gastgeber DESC LIMIT 1	party_host
SELECT ort FROM party ORDER BY anzahl_der_gastgeber DESC LIMIT 1	party_host
SELECT nationalität , COUNT(*) FROM gastgeber GROUP BY nationalität	party_host
SELECT nationalität , COUNT(*) FROM gastgeber GROUP BY nationalität	party_host
SELECT nationalität FROM gastgeber GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT nationalität FROM gastgeber GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT nationalität FROM gastgeber WHERE alter > 45 INTERSECT SELECT nationalität FROM gastgeber WHERE alter < 35	party_host
SELECT nationalität FROM gastgeber WHERE alter > 45 INTERSECT SELECT nationalität FROM gastgeber WHERE alter < 35	party_host
SELECT T3.party_thema , T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id	party_host
SELECT T3.party_thema , T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id	party_host
SELECT T3.ort , T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id ORDER BY T2.alter	party_host
SELECT T3.ort , T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id ORDER BY T2.alter	party_host
SELECT T3.ort FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id WHERE T2.alter > 50	party_host
SELECT T3.ort FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id WHERE T2.alter > 50	party_host
SELECT T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id WHERE T3.anzahl_der_gastgeber > 20	party_host
SELECT T2.name FROM party_gastgeber AS T1 JOIN gastgeber AS T2 ON T1.host_id = T2.host_id JOIN party AS T3 ON T1.party_id = T3.party_id WHERE T3.anzahl_der_gastgeber > 20	party_host
SELECT name , nationalität FROM gastgeber ORDER BY alter DESC LIMIT 1	party_host
SELECT name , nationalität FROM gastgeber ORDER BY alter DESC LIMIT 1	party_host
SELECT name FROM gastgeber WHERE host_id NOT IN (SELECT host_id FROM party_gastgeber)	party_host
SELECT name FROM gastgeber WHERE host_id NOT IN (SELECT host_id FROM party_gastgeber)	party_host
SELECT count(*) FROM region	storm_record
SELECT count(*) FROM region	storm_record
SELECT region_code , region_name FROM region ORDER BY region_code	storm_record
SELECT region_code , region_name FROM region ORDER BY region_code	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT count(*) FROM sturm WHERE anzahl_todesfälle > 0	storm_record
SELECT count(*) FROM sturm WHERE anzahl_todesfälle > 0	storm_record
SELECT name , datum_aktiv , anzahl_todesfälle FROM sturm WHERE anzahl_todesfälle >= 1	storm_record
SELECT name , datum_aktiv , anzahl_todesfälle FROM sturm WHERE anzahl_todesfälle >= 1	storm_record
SELECT avg(schaden_millionen_usd) , max(schaden_millionen_usd) FROM sturm WHERE maximale_geschwindigkeit > 1000	storm_record
SELECT avg(schaden_millionen_usd) , max(schaden_millionen_usd) FROM sturm WHERE maximale_geschwindigkeit > 1000	storm_record
SELECT sum(anzahl_todesfälle) , sum(schaden_millionen_usd) FROM sturm WHERE maximale_geschwindigkeit > (SELECT avg(maximale_geschwindigkeit) FROM sturm)	storm_record
SELECT sum(anzahl_todesfälle) , sum(schaden_millionen_usd) FROM sturm WHERE maximale_geschwindigkeit > (SELECT avg(maximale_geschwindigkeit) FROM sturm)	storm_record
SELECT name , schaden_millionen_usd FROM sturm ORDER BY maximale_geschwindigkeit DESC	storm_record
SELECT name , schaden_millionen_usd FROM sturm ORDER BY maximale_geschwindigkeit DESC	storm_record
SELECT count(DISTINCT region_id) FROM betroffene_region	storm_record
SELECT count(DISTINCT region_id) FROM betroffene_region	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM betroffene_region)	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM betroffene_region)	storm_record
SELECT T1.region_name , count(*) FROM region AS T1 JOIN betroffene_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id	storm_record
SELECT T1.region_name , count(*) FROM region AS T1 JOIN betroffene_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id	storm_record
SELECT T1.name , count(*) FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id	storm_record
SELECT T1.name , count(*) FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id	storm_record
SELECT T1.name , T1.maximale_geschwindigkeit FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id ORDER BY count(*) DESC LIMIT 1	storm_record
SELECT T1.name , T1.maximale_geschwindigkeit FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id ORDER BY count(*) DESC LIMIT 1	storm_record
SELECT name FROM sturm WHERE sturm_id NOT IN (SELECT sturm_id FROM betroffene_region)	storm_record
SELECT name FROM sturm WHERE sturm_id NOT IN (SELECT sturm_id FROM betroffene_region)	storm_record
SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING sum(T2.anzahl_der_betroffenen_städte) >= 10	storm_record
SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING sum(T2.anzahl_der_betroffenen_städte) >= 10	storm_record
SELECT name FROM sturm EXCEPT SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING count(*) >= 2	storm_record
SELECT name FROM sturm EXCEPT SELECT T1.name FROM sturm AS T1 JOIN betroffene_region AS T2 ON T1.sturm_id = T2.sturm_id GROUP BY T1.sturm_id HAVING count(*) >= 2	storm_record
SELECT T2.region_name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T3.anzahl_todesfälle >= 10	storm_record
SELECT T2.region_name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T3.anzahl_todesfälle >= 10	storm_record
SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Denmark'	storm_record
SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Denmark'	storm_record
SELECT T1.region_name FROM region AS T1 JOIN betroffene_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) >= 2	storm_record
SELECT T1.region_name FROM region AS T1 JOIN betroffene_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) >= 2	storm_record
SELECT T2.region_name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id ORDER BY T3.anzahl_todesfälle DESC LIMIT 1	storm_record
SELECT T2.region_name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id ORDER BY T3.anzahl_todesfälle DESC LIMIT 1	storm_record
SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Afghanistan' INTERSECT SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Albania'	storm_record
SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Afghanistan' INTERSECT SELECT T3.name FROM betroffene_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN sturm AS T3 ON T1.sturm_id = T3.sturm_id WHERE T2.region_name = 'Albania'	storm_record
SELECT count(*) FROM landkreis	election
SELECT count(*) FROM landkreis	election
SELECT bezirksname , bevölkerung FROM landkreis	election
SELECT bezirksname , bevölkerung FROM landkreis	election
SELECT avg(bevölkerung) FROM landkreis	election
SELECT avg(bevölkerung) FROM landkreis	election
SELECT max(bevölkerung) , min(bevölkerung) FROM landkreis	election
SELECT max(bevölkerung) , min(bevölkerung) FROM landkreis	election
SELECT DISTINCT bezirk FROM wahl	election
SELECT DISTINCT bezirk FROM wahl	election
SELECT postleitzahl FROM landkreis WHERE bezirksname = "Howard"	election
SELECT postleitzahl FROM landkreis WHERE bezirksname = "Howard"	election
SELECT delegierte FROM wahl WHERE bezirk = 1	election
SELECT delegierte FROM wahl WHERE bezirk = 1	election
SELECT delegierte , ausschuss FROM wahl	election
SELECT delegierte , ausschuss FROM wahl	election
SELECT count(DISTINCT gouverneur) FROM partei	election
SELECT count(DISTINCT gouverneur) FROM partei	election
SELECT gouverneursleutnant , rechnungsprüfer FROM partei WHERE partei = "Democratic"	election
SELECT gouverneursleutnant , rechnungsprüfer FROM partei WHERE partei = "Democratic"	election
SELECT DISTINCT jahr FROM partei WHERE gouverneur = "Eliot Spitzer"	election
SELECT DISTINCT jahr FROM partei WHERE gouverneur = "Eliot Spitzer"	election
SELECT * FROM wahl	election
SELECT * FROM wahl	election
SELECT T2.delegierte , T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk	election
SELECT T2.delegierte , T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk	election
SELECT T2.delegierte FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T1.bevölkerung < 100000	election
SELECT T2.delegierte FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T1.bevölkerung < 100000	election
SELECT count(DISTINCT T2.delegierte) FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T1.bevölkerung > 50000	election
SELECT count(DISTINCT T2.delegierte) FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T1.bevölkerung > 50000	election
SELECT T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T2.ausschuss = "Appropriations"	election
SELECT T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk WHERE T2.ausschuss = "Appropriations"	election
SELECT T1.delegierte , T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id	election
SELECT T1.delegierte , T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id	election
SELECT T2.gouverneur FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.bezirk = 1	election
SELECT T2.gouverneur FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.bezirk = 1	election
SELECT T2.rechnungsprüfer FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.bezirk = 1 OR T1.bezirk = 2	election
SELECT T2.rechnungsprüfer FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.bezirk = 1 OR T1.bezirk = 2	election
SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Democratic"	election
SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Democratic"	election
SELECT T1.bezirksname , COUNT(*) FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk GROUP BY T1.bezirk_id	election
SELECT T1.bezirksname , COUNT(*) FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk GROUP BY T1.bezirk_id	election
SELECT T2.partei , COUNT(*) FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id GROUP BY T1.partei	election
SELECT T2.partei , COUNT(*) FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id GROUP BY T1.partei	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung ASC	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung ASC	election
SELECT bezirksname FROM landkreis ORDER BY bezirksname DESC	election
SELECT bezirksname FROM landkreis ORDER BY bezirksname DESC	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung DESC LIMIT 1	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung DESC LIMIT 1	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung ASC LIMIT 3	election
SELECT bezirksname FROM landkreis ORDER BY bevölkerung ASC LIMIT 3	election
SELECT T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk GROUP BY T1.bezirk_id HAVING COUNT(*) >= 2	election
SELECT T1.bezirksname FROM landkreis AS T1 JOIN wahl AS T2 ON T1.bezirk_id = T2.bezirk GROUP BY T1.bezirk_id HAVING COUNT(*) >= 2	election
SELECT partei FROM partei GROUP BY partei HAVING COUNT(*) >= 2	election
SELECT partei FROM partei GROUP BY partei HAVING COUNT(*) >= 2	election
SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id GROUP BY T1.partei ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id GROUP BY T1.partei ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT gouverneur FROM partei GROUP BY gouverneur ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT gouverneur FROM partei GROUP BY gouverneur ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT rechnungsprüfer , COUNT(*) FROM partei GROUP BY rechnungsprüfer ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT rechnungsprüfer , COUNT(*) FROM partei GROUP BY rechnungsprüfer ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT partei FROM partei WHERE partei_id NOT IN (SELECT partei FROM wahl)	election
SELECT partei FROM partei WHERE partei_id NOT IN (SELECT partei FROM wahl)	election
SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.ausschuss = "Appropriations" INTERSECT SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.ausschuss = "Economic Matters"	election
SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.ausschuss = "Appropriations" INTERSECT SELECT T2.partei FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T1.ausschuss = "Economic Matters"	election
SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Democratic" INTERSECT SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Liberal"	election
SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Democratic" INTERSECT SELECT T1.ausschuss FROM wahl AS T1 JOIN partei AS T2 ON T1.partei = T2.partei_id WHERE T2.partei = "Liberal"	election
SELECT count(*) FROM journalist	news_report
SELECT name FROM journalist ORDER BY arbeitsjahre ASC	news_report
SELECT nationalität , alter FROM journalist	news_report
SELECT name FROM journalist WHERE nationalität = "England" OR nationalität = "Wales"	news_report
SELECT avg(arbeitsjahre) FROM journalist	news_report
SELECT nationalität FROM journalist ORDER BY arbeitsjahre DESC LIMIT 1	news_report
SELECT nationalität , COUNT(*) FROM journalist GROUP BY nationalität	news_report
SELECT nationalität FROM journalist GROUP BY nationalität ORDER BY COUNT(*) DESC LIMIT 1	news_report
SELECT nationalität FROM journalist WHERE arbeitsjahre > 10 INTERSECT SELECT nationalität FROM journalist WHERE arbeitsjahre < 3	news_report
SELECT datum , name , ort FROM event ORDER BY veranstaltungsteilnahme DESC	news_report
SELECT T3.name , T2.datum FROM nachrichtenbericht AS T1 JOIN event AS T2 ON T1.ereignis_id = T2.ereignis_id JOIN journalist AS T3 ON T1.journalist_id = T3.journalist_id	news_report
SELECT T3.name , T2.name FROM nachrichtenbericht AS T1 JOIN event AS T2 ON T1.ereignis_id = T2.ereignis_id JOIN journalist AS T3 ON T1.journalist_id = T3.journalist_id ORDER BY T2.veranstaltungsteilnahme ASC	news_report
SELECT T3.name , COUNT(*) FROM nachrichtenbericht AS T1 JOIN event AS T2 ON T1.ereignis_id = T2.ereignis_id JOIN journalist AS T3 ON T1.journalist_id = T3.journalist_id GROUP BY T3.name	news_report
SELECT T3.name FROM nachrichtenbericht AS T1 JOIN event AS T2 ON T1.ereignis_id = T2.ereignis_id JOIN journalist AS T3 ON T1.journalist_id = T3.journalist_id GROUP BY T3.name HAVING COUNT(*) > 1	news_report
SELECT name FROM journalist WHERE journalist_id NOT IN (SELECT journalist_id FROM nachrichtenbericht)	news_report
SELECT avg(veranstaltungsteilnahme) , max(veranstaltungsteilnahme) FROM event	news_report
SELECT avg(t1.alter) , avg(arbeitsjahre) , t2.arbeitstyp FROM journalist AS t1 JOIN nachrichtenbericht AS t2 ON t1.journalist_id = t2.journalist_id GROUP BY t2.arbeitstyp	news_report
SELECT ort , name FROM event ORDER BY veranstaltungsteilnahme DESC LIMIT 2	news_report
SELECT restaurant_name FROM restaurant;	restaurant_1
SELECT adresse FROM restaurant WHERE restaurant_name = "Subway";	restaurant_1
SELECT bewertung FROM restaurant WHERE restaurant_name = "Subway";	restaurant_1
SELECT restaurant_typ_name FROM restaurant_typ;	restaurant_1
SELECT restaurant_typ_beschreibung FROM restaurant_typ WHERE restaurant_typ_name = "Sandwich";	restaurant_1
SELECT restaurant_name , bewertung FROM restaurant ORDER BY bewertung DESC LIMIT 1;	restaurant_1
SELECT alter FROM schüler WHERE vorname = "Linda" AND nachname = "Smith";	restaurant_1
SELECT geschlecht FROM schüler WHERE vorname = "Linda" AND nachname = "Smith";	restaurant_1
SELECT vorname , nachname FROM schüler WHERE hauptfach = 600;	restaurant_1
SELECT stadtcode FROM schüler WHERE vorname = "Linda" AND nachname = "Smith";	restaurant_1
SELECT count(*) FROM schüler WHERE berater = 1121;	restaurant_1
SELECT berater , count(*) FROM schüler GROUP BY berater ORDER BY count(berater) DESC LIMIT 1;	restaurant_1
SELECT hauptfach , count(*) FROM schüler GROUP BY hauptfach ORDER BY count(hauptfach) ASC LIMIT 1;	restaurant_1
SELECT hauptfach , count(*) FROM schüler GROUP BY hauptfach HAVING count(hauptfach) BETWEEN 2 AND 30;	restaurant_1
SELECT vorname , nachname FROM schüler WHERE alter > 18 AND hauptfach = 600;	restaurant_1
SELECT vorname , nachname FROM schüler WHERE alter > 18 AND hauptfach != 600 AND geschlecht = 'F';	restaurant_1
SELECT count(*) FROM restaurant JOIN art_des_restaurants ON restaurant.restaurant_id = art_des_restaurants.restaurant_id JOIN restaurant_typ ON art_des_restaurants.restaurant_typ_id = restaurant_typ.restaurant_typ_id GROUP BY art_des_restaurants.restaurant_typ_id HAVING restaurant_typ.restaurant_typ_name = 'Sandwich'	restaurant_1
SELECT sum(ausgegeben) FROM schüler JOIN besuche_restaurant ON schüler.student_id = besuche_restaurant.student_id WHERE schüler.vorname = "Linda" AND schüler.nachname = "Smith";	restaurant_1
SELECT count(*) FROM schüler JOIN besuche_restaurant ON schüler.student_id = besuche_restaurant.student_id JOIN restaurant ON besuche_restaurant.restaurant_id = restaurant.restaurant_id WHERE schüler.vorname = "Linda" AND schüler.nachname = "Smith" AND restaurant.restaurant_name = "Subway";	restaurant_1
SELECT zeit FROM schüler JOIN besuche_restaurant ON schüler.student_id = besuche_restaurant.student_id JOIN restaurant ON besuche_restaurant.restaurant_id = restaurant.restaurant_id WHERE schüler.vorname = "Linda" AND schüler.nachname = "Smith" AND restaurant.restaurant_name = "Subway";	restaurant_1
SELECT restaurant.restaurant_name , sum(besuche_restaurant.ausgegeben) FROM besuche_restaurant JOIN restaurant ON besuche_restaurant.restaurant_id = restaurant.restaurant_id GROUP BY restaurant.restaurant_id ORDER BY sum(besuche_restaurant.ausgegeben) ASC LIMIT 1;	restaurant_1
SELECT schüler.vorname , schüler.nachname FROM schüler JOIN besuche_restaurant ON schüler.student_id = besuche_restaurant.student_id GROUP BY schüler.student_id ORDER BY count(*) DESC LIMIT 1;	restaurant_1
SELECT actual_order_id FROM tatsächliche_bestellungen WHERE auftragsstatuscode = 'Success'	customer_deliveries
SELECT t1.produktname , t1.produktpreis FROM produkte AS t1 JOIN regelmäßig_bestellte_produkte AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t2.produkt_id ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT count(*) FROM kunden	customer_deliveries
SELECT count(DISTINCT zahlungsmethode) FROM kunden	customer_deliveries
SELECT lkw_details FROM lkw ORDER BY lkw_kennzeichen	customer_deliveries
SELECT produktname FROM produkte ORDER BY produktpreis DESC LIMIT 1	customer_deliveries
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.bundesland_provinz_landkreis = 'California'	customer_deliveries
SELECT kunden_e_mail , kundenname FROM kunden WHERE zahlungsmethode = 'Visa'	customer_deliveries
SELECT t1.kundenname , t1.kundentelefon FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.bundesland_provinz_landkreis = 'California'	customer_deliveries
SELECT bundesland_provinz_landkreis FROM adressen WHERE adresse_id NOT IN (SELECT adresse_des_mitarbeiters FROM mitarbeiter)	customer_deliveries
SELECT kundenname , kundentelefon , kunden_e_mail FROM kunden ORDER BY datum_wurde_kunde	customer_deliveries
SELECT kundenname FROM kunden ORDER BY datum_wurde_kunde LIMIT 5	customer_deliveries
SELECT zahlungsmethode FROM kunden GROUP BY zahlungsmethode ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT route_name FROM lieferwege ORDER BY route_name	customer_deliveries
SELECT t1.route_name FROM lieferwege AS t1 JOIN zustellroutenorte AS t2 ON t1.route_id = t2.route_id GROUP BY t1.route_id ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT t2.bundesland_provinz_landkreis , count(*) FROM kundenadressen AS t1 JOIN adressen AS t2 ON t1.adresse_id = t2.adresse_id GROUP BY t2.bundesland_provinz_landkreis	customer_deliveries
SELECT count(*) FROM autoren	icfp_1
SELECT count(*) FROM autoren	icfp_1
SELECT count(*) FROM institut	icfp_1
SELECT count(*) FROM institut	icfp_1
SELECT count(*) FROM beiträge	icfp_1
SELECT count(*) FROM beiträge	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Jeremy" AND t1.nachname = "Gibbons"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Jeremy" AND t1.nachname = "Gibbons"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Aaron" AND t1.nachname = "Turon"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Aaron" AND t1.nachname = "Turon"	icfp_1
SELECT count(*) FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Atsushi" AND t1.nachname = "Ohori"	icfp_1
SELECT count(*) FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Atsushi" AND t1.nachname = "Ohori"	icfp_1
SELECT DISTINCT t3.name FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t1.vorname = "Matthias" AND t1.nachname = "Blume"	icfp_1
SELECT DISTINCT t3.name FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t1.vorname = "Matthias" AND t1.nachname = "Blume"	icfp_1
SELECT DISTINCT t3.name FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t1.vorname = "Katsuhiro" AND t1.nachname = "Ueno"	icfp_1
SELECT DISTINCT t3.name FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t1.vorname = "Katsuhiro" AND t1.nachname = "Ueno"	icfp_1
SELECT DISTINCT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "University of Oxford"	icfp_1
SELECT DISTINCT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "University of Oxford"	icfp_1
SELECT DISTINCT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Google"	icfp_1
SELECT DISTINCT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Google"	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel = "Binders Unbound"	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel = "Binders Unbound"	icfp_1
SELECT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel = "Nameless , Painless"	icfp_1
SELECT t1.vorname , t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel = "Nameless , Painless"	icfp_1
SELECT DISTINCT t1.titel FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Indiana University"	icfp_1
SELECT DISTINCT t1.titel FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Indiana University"	icfp_1
SELECT DISTINCT t1.titel FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Google"	icfp_1
SELECT DISTINCT t1.titel FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Google"	icfp_1
SELECT count(DISTINCT t1.titel) FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Tokohu University"	icfp_1
SELECT count(DISTINCT t1.titel) FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "Tokohu University"	icfp_1
SELECT count(DISTINCT t1.titel) FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "University of Pennsylvania"	icfp_1
SELECT count(DISTINCT t1.titel) FROM beiträge AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.aufsatz_id = t2.aufsatz_id JOIN institut AS t3 ON t2.institution_id = t3.institution_id WHERE t3.name = "University of Pennsylvania"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Olin" AND t1.nachname = "Shivers"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Olin" AND t1.nachname = "Shivers"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Stephanie" AND t1.nachname = "Weirich"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t1.vorname = "Stephanie" AND t1.nachname = "Weirich"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id JOIN institut AS t4 ON t2.institution_id = t4.institution_id WHERE t4.land = "USA" AND t2.autorenzahl = 2 AND t1.nachname = "Turon"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id JOIN institut AS t4 ON t2.institution_id = t4.institution_id WHERE t4.land = "USA" AND t2.autorenzahl = 2 AND t1.nachname = "Turon"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id JOIN institut AS t4 ON t2.institution_id = t4.institution_id WHERE t4.land = "Japan" AND t2.autorenzahl = 1 AND t1.nachname = "Ohori"	icfp_1
SELECT t3.titel FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id JOIN institut AS t4 ON t2.institution_id = t4.institution_id WHERE t4.land = "Japan" AND t2.autorenzahl = 1 AND t1.nachname = "Ohori"	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.vorname , t1.nachname ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.vorname , t1.nachname ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.land FROM institut AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.institution_id = t2.institution_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.land ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.land FROM institut AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.institution_id = t2.institution_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.land ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.name FROM institut AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.institution_id = t2.institution_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT t1.name FROM institut AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.institution_id = t2.institution_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1	icfp_1
SELECT titel FROM beiträge WHERE titel LIKE "%ML%"	icfp_1
SELECT titel FROM beiträge WHERE titel LIKE "%ML%"	icfp_1
SELECT titel FROM beiträge WHERE titel LIKE "%Database%"	icfp_1
SELECT titel FROM beiträge WHERE titel LIKE "%Database%"	icfp_1
SELECT t1.vorname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel LIKE "%Functional%"	icfp_1
SELECT t1.vorname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel LIKE "%Functional%"	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel LIKE "%Monadic%"	icfp_1
SELECT t1.nachname FROM autoren AS t1 JOIN anzahl_der_autorenschaft AS t2 ON t1.autoren_id = t2.autoren_id JOIN beiträge AS t3 ON t2.aufsatz_id = t3.aufsatz_id WHERE t3.titel LIKE "%Monadic%"	icfp_1
SELECT t2.titel FROM anzahl_der_autorenschaft AS t1 JOIN beiträge AS t2 ON t1.aufsatz_id = t2.aufsatz_id WHERE t1.autorenzahl = (SELECT max(autorenzahl) FROM anzahl_der_autorenschaft)	icfp_1
SELECT t2.titel FROM anzahl_der_autorenschaft AS t1 JOIN beiträge AS t2 ON t1.aufsatz_id = t2.aufsatz_id WHERE t1.autorenzahl = (SELECT max(autorenzahl) FROM anzahl_der_autorenschaft)	icfp_1
SELECT vorname FROM autoren WHERE nachname = "Ueno"	icfp_1
SELECT vorname FROM autoren WHERE nachname = "Ueno"	icfp_1
SELECT nachname FROM autoren WHERE vorname = "Amal"	icfp_1
SELECT nachname FROM autoren WHERE vorname = "Amal"	icfp_1
SELECT vorname FROM autoren ORDER BY vorname	icfp_1
SELECT vorname FROM autoren ORDER BY vorname	icfp_1
SELECT nachname FROM autoren ORDER BY nachname	icfp_1
SELECT nachname FROM autoren ORDER BY nachname	icfp_1
SELECT vorname , nachname FROM autoren ORDER BY nachname	icfp_1
SELECT vorname , nachname FROM autoren ORDER BY nachname	icfp_1
SELECT count(DISTINCT nachname) FROM schauspieler	sakila_1
SELECT count(DISTINCT nachname) FROM schauspieler	sakila_1
SELECT vorname FROM schauspieler GROUP BY vorname ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT vorname FROM schauspieler GROUP BY vorname ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT vorname , nachname FROM schauspieler GROUP BY vorname , nachname ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT vorname , nachname FROM schauspieler GROUP BY vorname , nachname ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT bezirk FROM adresse GROUP BY bezirk HAVING count(*) >= 2	sakila_1
SELECT bezirk FROM adresse GROUP BY bezirk HAVING count(*) >= 2	sakila_1
SELECT telefon , postleitzahl FROM adresse WHERE adresse = '1031 Daugavpils Parkway'	sakila_1
SELECT telefon , postleitzahl FROM adresse WHERE adresse = '1031 Daugavpils Parkway'	sakila_1
SELECT T2.stadt , count(*) , T1.stadt_id FROM adresse AS T1 JOIN stadt AS T2 ON T1.stadt_id = T2.stadt_id GROUP BY T1.stadt_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.stadt , count(*) , T1.stadt_id FROM adresse AS T1 JOIN stadt AS T2 ON T1.stadt_id = T2.stadt_id GROUP BY T1.stadt_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(*) FROM adresse WHERE bezirk = 'California'	sakila_1
SELECT count(*) FROM adresse WHERE bezirk = 'California'	sakila_1
SELECT titel , film_id FROM film WHERE mietpreis = 0.99 INTERSECT SELECT T1.titel , T1.film_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id HAVING count(*) < 3	sakila_1
SELECT titel , film_id FROM film WHERE mietpreis = 0.99 INTERSECT SELECT T1.titel , T1.film_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id HAVING count(*) < 3	sakila_1
SELECT count(*) FROM stadt AS T1 JOIN land AS T2 ON T1.land_id = T2.land_id WHERE T2.land = 'Australia'	sakila_1
SELECT count(*) FROM stadt AS T1 JOIN land AS T2 ON T1.land_id = T2.land_id WHERE T2.land = 'Australia'	sakila_1
SELECT T2.land FROM stadt AS T1 JOIN land AS T2 ON T1.land_id = T2.land_id GROUP BY T2.land_id HAVING count(*) >= 3	sakila_1
SELECT T2.land FROM stadt AS T1 JOIN land AS T2 ON T1.land_id = T2.land_id GROUP BY T2.land_id HAVING count(*) >= 3	sakila_1
SELECT zahlungsdatum FROM zahlung WHERE betrag > 10 UNION SELECT T1.zahlungsdatum FROM zahlung AS T1 JOIN personal AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname = 'Elsa'	sakila_1
SELECT zahlungsdatum FROM zahlung WHERE betrag > 10 UNION SELECT T1.zahlungsdatum FROM zahlung AS T1 JOIN personal AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname = 'Elsa'	sakila_1
SELECT count(*) FROM kunde WHERE aktiv = '1'	sakila_1
SELECT count(*) FROM kunde WHERE aktiv = '1'	sakila_1
SELECT titel , mietpreis FROM film ORDER BY mietpreis DESC LIMIT 1	sakila_1
SELECT titel , mietpreis FROM film ORDER BY mietpreis DESC LIMIT 1	sakila_1
SELECT T2.titel , T2.film_id , T2.beschreibung FROM film_schauspieler AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.titel , T2.film_id , T2.beschreibung FROM film_schauspieler AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.vorname , T2.nachname , T2.schauspieler_id FROM film_schauspieler AS T1 JOIN schauspieler AS T2 ON T1.schauspieler_id = T2.schauspieler_id GROUP BY T2.schauspieler_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.vorname , T2.nachname , T2.schauspieler_id FROM film_schauspieler AS T1 JOIN schauspieler AS T2 ON T1.schauspieler_id = T2.schauspieler_id GROUP BY T2.schauspieler_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.vorname , T2.nachname FROM film_schauspieler AS T1 JOIN schauspieler AS T2 ON T1.schauspieler_id = T2.schauspieler_id GROUP BY T2.schauspieler_id HAVING count(*) > 30	sakila_1
SELECT T2.vorname , T2.nachname FROM film_schauspieler AS T1 JOIN schauspieler AS T2 ON T1.schauspieler_id = T2.schauspieler_id GROUP BY T2.schauspieler_id HAVING count(*) > 30	sakila_1
SELECT store_id FROM bestand GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM bestand GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT sum(betrag) FROM zahlung	sakila_1
SELECT sum(betrag) FROM zahlung	sakila_1
SELECT T1.vorname , T1.nachname , T1.kunden_id FROM kunde AS T1 JOIN zahlung AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY sum(betrag) ASC LIMIT 1	sakila_1
SELECT T1.vorname , T1.nachname , T1.kunden_id FROM kunde AS T1 JOIN zahlung AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY sum(betrag) ASC LIMIT 1	sakila_1
SELECT T1.name FROM kategorie AS T1 JOIN film_kategorie AS T2 ON T1.kategorie_id = T2.kategorie_id JOIN film AS T3 ON T2.film_id = T3.film_id WHERE T3.titel = 'HUNGER ROOF'	sakila_1
SELECT T1.name FROM kategorie AS T1 JOIN film_kategorie AS T2 ON T1.kategorie_id = T2.kategorie_id JOIN film AS T3 ON T2.film_id = T3.film_id WHERE T3.titel = 'HUNGER ROOF'	sakila_1
SELECT T2.name , T1.kategorie_id , count(*) FROM film_kategorie AS T1 JOIN kategorie AS T2 ON T1.kategorie_id = T2.kategorie_id GROUP BY T1.kategorie_id	sakila_1
SELECT T2.name , T1.kategorie_id , count(*) FROM film_kategorie AS T1 JOIN kategorie AS T2 ON T1.kategorie_id = T2.kategorie_id GROUP BY T1.kategorie_id	sakila_1
SELECT T1.titel , T1.film_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.titel , T1.film_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.titel , T2.inventar_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id JOIN verleih AS T3 ON T2.inventar_id = T3.inventar_id GROUP BY T2.inventar_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.titel , T2.inventar_id FROM film AS T1 JOIN bestand AS T2 ON T1.film_id = T2.film_id JOIN verleih AS T3 ON T2.inventar_id = T3.inventar_id GROUP BY T2.inventar_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT titel FROM film WHERE bewertung = 'R'	sakila_1
SELECT titel FROM film WHERE bewertung = 'R'	sakila_1
SELECT T2.adresse FROM store AS T1 JOIN adresse AS T2 ON T1.adresse_id = T2.adresse_id WHERE store_id = 1	sakila_1
SELECT T2.adresse FROM store AS T1 JOIN adresse AS T2 ON T1.adresse_id = T2.adresse_id WHERE store_id = 1	sakila_1
SELECT T1.vorname , T1.nachname , T1.mitarbeiter_id FROM personal AS T1 JOIN zahlung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T1.mitarbeiter_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT T1.vorname , T1.nachname , T1.mitarbeiter_id FROM personal AS T1 JOIN zahlung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T1.mitarbeiter_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT T2.name FROM film AS T1 JOIN sprache AS T2 ON T1.language_id = T2.language_id WHERE T1.titel = 'AIRPORT POLLOCK'	sakila_1
SELECT T2.name FROM film AS T1 JOIN sprache AS T2 ON T1.language_id = T2.language_id WHERE T1.titel = 'AIRPORT POLLOCK'	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(DISTINCT bewertung) FROM film	sakila_1
SELECT count(DISTINCT bewertung) FROM film	sakila_1
SELECT titel FROM film WHERE besondere_merkmale LIKE '%Deleted Scenes%'	sakila_1
SELECT titel FROM film WHERE besondere_merkmale LIKE '%Deleted Scenes%'	sakila_1
SELECT count(*) FROM bestand WHERE store_id = 1	sakila_1
SELECT count(*) FROM bestand WHERE store_id = 1	sakila_1
SELECT zahlungsdatum FROM zahlung ORDER BY zahlungsdatum ASC LIMIT 1	sakila_1
SELECT zahlungsdatum FROM zahlung ORDER BY zahlungsdatum ASC LIMIT 1	sakila_1
SELECT T2.adresse , T1.email FROM kunde AS T1 JOIN adresse AS T2 ON T2.adresse_id = T1.adresse_id WHERE T1.vorname = 'LINDA'	sakila_1
SELECT T2.adresse , T1.email FROM kunde AS T1 JOIN adresse AS T2 ON T2.adresse_id = T1.adresse_id WHERE T1.vorname = 'LINDA'	sakila_1
SELECT titel FROM film WHERE länge > 100 OR bewertung = 'PG' EXCEPT SELECT titel FROM film WHERE wiederbeschaffungskosten > 200	sakila_1
SELECT titel FROM film WHERE länge > 100 OR bewertung = 'PG' EXCEPT SELECT titel FROM film WHERE wiederbeschaffungskosten > 200	sakila_1
SELECT T1.vorname , T1.nachname FROM kunde AS T1 JOIN verleih AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T2.mietdatum ASC LIMIT 1	sakila_1
SELECT T1.vorname , T1.nachname FROM kunde AS T1 JOIN verleih AS T2 ON T1.kunden_id = T2.kunden_id ORDER BY T2.mietdatum ASC LIMIT 1	sakila_1
SELECT DISTINCT T1.vorname , T1.nachname FROM personal AS T1 JOIN verleih AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN kunde AS T3 ON T2.kunden_id = T3.kunden_id WHERE T3.vorname = 'APRIL' AND T3.nachname = 'BURNS'	sakila_1
SELECT DISTINCT T1.vorname , T1.nachname FROM personal AS T1 JOIN verleih AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id JOIN kunde AS T3 ON T2.kunden_id = T3.kunden_id WHERE T3.vorname = 'APRIL' AND T3.nachname = 'BURNS'	sakila_1
SELECT store_id FROM kunde GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM kunde GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT betrag FROM zahlung ORDER BY betrag DESC LIMIT 1	sakila_1
SELECT betrag FROM zahlung ORDER BY betrag DESC LIMIT 1	sakila_1
SELECT T2.adresse FROM personal AS T1 JOIN adresse AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.vorname = 'Elsa'	sakila_1
SELECT T2.adresse FROM personal AS T1 JOIN adresse AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.vorname = 'Elsa'	sakila_1
SELECT vorname FROM kunde WHERE kunden_id NOT IN( SELECT kunden_id FROM verleih WHERE mietdatum > '2005-08-23 02:06:01' )	sakila_1
SELECT vorname FROM kunde WHERE kunden_id NOT IN( SELECT kunden_id FROM verleih WHERE mietdatum > '2005-08-23 02:06:01' )	sakila_1
SELECT count(*) FROM bank	loan_1
SELECT count(*) FROM bank	loan_1
SELECT sum(anzahl_der_kunden) FROM bank	loan_1
SELECT sum(anzahl_der_kunden) FROM bank	loan_1
SELECT sum(anzahl_der_kunden) FROM bank WHERE stadt = 'New York City'	loan_1
SELECT sum(anzahl_der_kunden) FROM bank WHERE stadt = 'New York City'	loan_1
SELECT avg(anzahl_der_kunden) FROM bank WHERE bundesland = 'Utah'	loan_1
SELECT avg(anzahl_der_kunden) FROM bank WHERE bundesland = 'Utah'	loan_1
SELECT avg(anzahl_der_kunden) FROM bank	loan_1
SELECT avg(anzahl_der_kunden) FROM bank	loan_1
SELECT stadt , bundesland FROM bank WHERE bname = 'morningside'	loan_1
SELECT stadt , bundesland FROM bank WHERE bname = 'morningside'	loan_1
SELECT bname FROM bank WHERE bundesland = 'New York'	loan_1
SELECT bname FROM bank WHERE bundesland = 'New York'	loan_1
SELECT kundenname FROM kunde ORDER BY kontostand	loan_1
SELECT kundenname FROM kunde ORDER BY kontostand	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname ORDER BY sum(T2.betrag)	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname ORDER BY sum(T2.betrag)	loan_1
SELECT bundesland , kontoart , kreditwürdigkeit FROM kunde WHERE anzahl_der_kredite = 0	loan_1
SELECT bundesland , kontoart , kreditwürdigkeit FROM kunde WHERE anzahl_der_kredite = 0	loan_1
SELECT count(DISTINCT stadt) FROM bank	loan_1
SELECT count(DISTINCT stadt) FROM bank	loan_1
SELECT count(DISTINCT bundesland) FROM bank	loan_1
SELECT count(DISTINCT bundesland) FROM bank	loan_1
SELECT count(DISTINCT kontoart) FROM kunde	loan_1
SELECT count(DISTINCT kontoart) FROM kunde	loan_1
SELECT kundenname , kontostand FROM kunde WHERE kundenname LIKE '%a%'	loan_1
SELECT kundenname , kontostand FROM kunde WHERE kundenname LIKE '%a%'	loan_1
SELECT sum(kontostand) FROM kunde WHERE bundesland = 'Utah' OR bundesland = 'Texas'	loan_1
SELECT sum(kontostand) FROM kunde WHERE bundesland = 'Utah' OR bundesland = 'Texas'	loan_1
SELECT kundenname FROM kunde WHERE kontoart = 'saving' INTERSECT SELECT kundenname FROM kunde WHERE kontoart = 'checking'	loan_1
SELECT kundenname FROM kunde WHERE kontoart = 'saving' INTERSECT SELECT kundenname FROM kunde WHERE kontoart = 'checking'	loan_1
SELECT kundenname FROM kunde EXCEPT SELECT kundenname FROM kunde WHERE kontoart = 'saving'	loan_1
SELECT kundenname FROM kunde EXCEPT SELECT kundenname FROM kunde WHERE kontoart = 'saving'	loan_1
SELECT kundenname FROM kunde EXCEPT SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.darlehensart = 'Mortgages'	loan_1
SELECT kundenname FROM kunde EXCEPT SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.darlehensart = 'Mortgages'	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE darlehensart = 'Mortgages' INTERSECT SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE darlehensart = 'Auto'	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE darlehensart = 'Mortgages' INTERSECT SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE darlehensart = 'Auto'	loan_1
SELECT kundenname FROM kunde WHERE kreditwürdigkeit < (SELECT avg(kreditwürdigkeit) FROM kunde)	loan_1
SELECT kundenname FROM kunde WHERE kreditwürdigkeit < (SELECT avg(kreditwürdigkeit) FROM kunde)	loan_1
SELECT bname FROM bank ORDER BY anzahl_der_kunden DESC LIMIT 1	loan_1
SELECT bname FROM bank ORDER BY anzahl_der_kunden DESC LIMIT 1	loan_1
SELECT kundenname FROM kunde ORDER BY kreditwürdigkeit LIMIT 1	loan_1
SELECT kundenname FROM kunde ORDER BY kreditwürdigkeit LIMIT 1	loan_1
SELECT kundenname , kontoart , kontostand FROM kunde ORDER BY kreditwürdigkeit DESC LIMIT 1	loan_1
SELECT kundenname , kontoart , kontostand FROM kunde ORDER BY kreditwürdigkeit DESC LIMIT 1	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname ORDER BY sum(T2.betrag) DESC LIMIT 1	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname ORDER BY sum(T2.betrag) DESC LIMIT 1	loan_1
SELECT bundesland FROM bank GROUP BY bundesland ORDER BY sum(anzahl_der_kunden) DESC LIMIT 1	loan_1
SELECT bundesland FROM bank GROUP BY bundesland ORDER BY sum(anzahl_der_kunden) DESC LIMIT 1	loan_1
SELECT avg(kontostand) , kontoart FROM kunde WHERE kreditwürdigkeit < 50 GROUP BY kontoart	loan_1
SELECT avg(kontostand) , kontoart FROM kunde WHERE kreditwürdigkeit < 50 GROUP BY kontoart	loan_1
SELECT sum(kontostand) , bundesland FROM kunde WHERE kreditwürdigkeit > 100 GROUP BY bundesland	loan_1
SELECT sum(kontostand) , bundesland FROM kunde WHERE kreditwürdigkeit > 100 GROUP BY bundesland	loan_1
SELECT sum(betrag) , T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer GROUP BY T1.bname	loan_1
SELECT sum(betrag) , T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer GROUP BY T1.bname	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname HAVING count(*) > 1	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname HAVING count(*) > 1	loan_1
SELECT T1.kundenname , T1.kontoart FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname HAVING sum(T2.betrag) > 5000	loan_1
SELECT T1.kundenname , T1.kontoart FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kundenname HAVING sum(T2.betrag) > 5000	loan_1
SELECT T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer GROUP BY T1.bname ORDER BY sum(T2.betrag) DESC LIMIT 1	loan_1
SELECT T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer GROUP BY T1.bname ORDER BY sum(T2.betrag) DESC LIMIT 1	loan_1
SELECT T2.bname FROM kredit AS T1 JOIN bank AS T2 ON T1.filialnummer = T2.filialnummer JOIN kunde AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.kreditwürdigkeit < 100 GROUP BY T2.bname ORDER BY sum(T1.betrag) DESC LIMIT 1	loan_1
SELECT T2.bname FROM kredit AS T1 JOIN bank AS T2 ON T1.filialnummer = T2.filialnummer JOIN kunde AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.kreditwürdigkeit < 100 GROUP BY T2.bname ORDER BY sum(T1.betrag) DESC LIMIT 1	loan_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer	loan_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer	loan_1
SELECT DISTINCT T1.kundenname , T1.kreditwürdigkeit FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id	loan_1
SELECT DISTINCT T1.kundenname , T1.kreditwürdigkeit FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE betrag > 3000	loan_1
SELECT T1.kundenname FROM kunde AS T1 JOIN kredit AS T2 ON T1.kunden_id = T2.kunden_id WHERE betrag > 3000	loan_1
SELECT T1.bname , T1.stadt FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer WHERE T2.darlehensart = 'Business'	loan_1
SELECT T1.bname , T1.stadt FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer WHERE T2.darlehensart = 'Business'	loan_1
SELECT T2.bname FROM kredit AS T1 JOIN bank AS T2 ON T1.filialnummer = T2.filialnummer JOIN kunde AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.kreditwürdigkeit < 100	loan_1
SELECT T2.bname FROM kredit AS T1 JOIN bank AS T2 ON T1.filialnummer = T2.filialnummer JOIN kunde AS T3 ON T1.kunden_id = T3.kunden_id WHERE T3.kreditwürdigkeit < 100	loan_1
SELECT sum(T2.betrag) FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer WHERE T1.bundesland = 'New York'	loan_1
SELECT sum(T2.betrag) FROM bank AS T1 JOIN kredit AS T2 ON T1.filialnummer = T2.filialnummer WHERE T1.bundesland = 'New York'	loan_1
SELECT avg(kreditwürdigkeit) FROM kunde WHERE kunden_id IN (SELECT kunden_id FROM kredit)	loan_1
SELECT avg(kreditwürdigkeit) FROM kunde WHERE kunden_id IN (SELECT kunden_id FROM kredit)	loan_1
SELECT avg(kreditwürdigkeit) FROM kunde WHERE kunden_id NOT IN (SELECT kunden_id FROM kredit)	loan_1
SELECT avg(kreditwürdigkeit) FROM kunde WHERE kunden_id NOT IN (SELECT kunden_id FROM kredit)	loan_1
SELECT count(*) FROM beurteilungsnoten	behavior_monitoring
SELECT datum_der_noten FROM beurteilungsnoten	behavior_monitoring
SELECT count(*) FROM adressen WHERE postleitzahl = "197"	behavior_monitoring
SELECT count(DISTINCT vorfallstyp_code) FROM verhaltensvorfall	behavior_monitoring
SELECT DISTINCT nachsitztyp_code FROM nachsitzen	behavior_monitoring
SELECT datum_vorfallbeginn , datum_vorfall_ende FROM verhaltensvorfall WHERE vorfallstyp_code = "NOISE"	behavior_monitoring
SELECT nachsitzen_zusammenfassung FROM nachsitzen	behavior_monitoring
SELECT handynummer , e_mail_adresse FROM schüler	behavior_monitoring
SELECT e_mail_adresse FROM schüler WHERE vorname = "Emma" AND nachname = "Rohan"	behavior_monitoring
SELECT count(DISTINCT student_id) FROM schüler_beim_nachsitzen	behavior_monitoring
SELECT geschlecht FROM lehrer WHERE nachname = "Medhurst"	behavior_monitoring
SELECT vorfallstyp_beschreibung FROM referenz_vorfallstyp WHERE vorfallstyp_code = "VIOLENCE"	behavior_monitoring
SELECT max(monatliche_miete) , min(monatliche_miete) FROM studentenadressen	behavior_monitoring
SELECT vorname FROM lehrer WHERE e_mail_adresse LIKE '%man%'	behavior_monitoring
SELECT * FROM beurteilungsnoten ORDER BY datum_der_noten ASC	behavior_monitoring
SELECT stadt FROM adressen ORDER BY stadt	behavior_monitoring
SELECT vorname , nachname FROM lehrer ORDER BY nachname	behavior_monitoring
SELECT * FROM studentenadressen ORDER BY monatliche_miete DESC	behavior_monitoring
SELECT T1.student_id , T2.vorname FROM beurteilungsnoten AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.lehrer_id , T2.vorname FROM beurteilungsnoten AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id GROUP BY T1.lehrer_id ORDER BY count(*) DESC LIMIT 3	behavior_monitoring
SELECT T1.student_id , T2.nachname FROM verhaltensvorfall AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.lehrer_id , T2.nachname FROM nachsitzen AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id WHERE T1.nachsitztyp_code = "AFTER" GROUP BY T1.lehrer_id ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.student_id , T2.vorname FROM studentenadressen AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY AVG(monatliche_miete) DESC LIMIT 1	behavior_monitoring
SELECT T2.adresse_id , T1.stadt FROM adressen AS T1 JOIN studentenadressen AS T2 ON T1.adresse_id = T2.adresse_id GROUP BY T2.adresse_id ORDER BY AVG(monatliche_miete) DESC LIMIT 1	behavior_monitoring
SELECT T1.vorfallstyp_code , T2.vorfallstyp_beschreibung FROM verhaltensvorfall AS T1 JOIN referenz_vorfallstyp AS T2 ON T1.vorfallstyp_code = T2.vorfallstyp_code GROUP BY T1.vorfallstyp_code ORDER BY count(*) DESC LIMIT 1	behavior_monitoring
SELECT T1.nachsitztyp_code , T2.gewahrsamsartbeschreibung FROM nachsitzen AS T1 JOIN verweisart AS T2 ON T1.nachsitztyp_code = T2.nachsitztyp_code GROUP BY T1.nachsitztyp_code ORDER BY count(*) ASC LIMIT 1	behavior_monitoring
SELECT T1.datum_der_noten FROM beurteilungsnoten AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id WHERE T2.vorname = "Fanny"	behavior_monitoring
SELECT T1.notentext FROM beurteilungsnoten AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id WHERE T2.nachname = "Schuster"	behavior_monitoring
SELECT T1.datum_vorfallbeginn , datum_vorfall_ende FROM verhaltensvorfall AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id WHERE T2.nachname = "Fahey"	behavior_monitoring
SELECT T1.datetime_detention_start , datetime_detention_end FROM nachsitzen AS T1 JOIN lehrer AS T2 ON T1.lehrer_id = T2.lehrer_id WHERE T2.nachname = "Schultz"	behavior_monitoring
SELECT T2.adresse_id , T1.postleitzahl FROM adressen AS T1 JOIN studentenadressen AS T2 ON T1.adresse_id = T2.adresse_id ORDER BY monatliche_miete DESC LIMIT 1	behavior_monitoring
SELECT T2.handynummer FROM studentenadressen AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id ORDER BY T1.monatliche_miete ASC LIMIT 1	behavior_monitoring
SELECT T2.monatliche_miete FROM adressen AS T1 JOIN studentenadressen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.bundesland_provinz_landkreis = "Texas"	behavior_monitoring
SELECT T2.vorname , T2.nachname FROM adressen AS T1 JOIN schüler AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.bundesland_provinz_landkreis = "Wisconsin"	behavior_monitoring
SELECT T1.zeile_1 , avg(T2.monatliche_miete) FROM adressen AS T1 JOIN studentenadressen AS T2 ON T1.adresse_id = T2.adresse_id GROUP BY T2.adresse_id	behavior_monitoring
SELECT T1.postleitzahl FROM adressen AS T1 JOIN lehrer AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.vorname = "Lyla"	behavior_monitoring
SELECT T2.e_mail_adresse FROM adressen AS T1 JOIN lehrer AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.postleitzahl = "918"	behavior_monitoring
SELECT count(*) FROM schüler WHERE student_id NOT IN ( SELECT student_id FROM verhaltensvorfall )	behavior_monitoring
SELECT nachname FROM lehrer EXCEPT SELECT T1.nachname FROM lehrer AS T1 JOIN nachsitzen AS T2 ON T1.lehrer_id = T2.lehrer_id	behavior_monitoring
SELECT T1.zeile_1 FROM adressen AS T1 JOIN schüler AS T2 ON T1.adresse_id = T2.adresse_id INTERSECT SELECT T1.zeile_1 FROM adressen AS T1 JOIN lehrer AS T2 ON T1.adresse_id = T2.adresse_id	behavior_monitoring
SELECT T1.asset_id , T1.anlage_details FROM vermögenswerte AS T1 JOIN anlageteile AS T2 ON T1.asset_id = T2.asset_id GROUP BY T1.asset_id HAVING count(*) = 2 INTERSECT SELECT T1.asset_id , T1.anlage_details FROM vermögenswerte AS T1 JOIN fehlerprotokoll AS T2 ON T1.asset_id = T2.asset_id GROUP BY T1.asset_id HAVING count(*) < 2	assets_maintenance
SELECT count(*) , T1.wartungsvertrag_id FROM wartungsverträge AS T1 JOIN vermögenswerte AS T2 ON T1.wartungsvertrag_id = T2.wartungsvertrag_id GROUP BY T1.wartungsvertrag_id	assets_maintenance
SELECT count(*) , T1.firma_id FROM drittfirmen AS T1 JOIN vermögenswerte AS T2 ON T1.firma_id = T2.lieferantenfirma_id GROUP BY T1.firma_id	assets_maintenance
SELECT T1.firma_id , T1.firmenname FROM drittfirmen AS T1 JOIN wartungstechniker AS T2 ON T1.firma_id = T2.firma_id GROUP BY T1.firma_id HAVING count(*) >= 2 UNION SELECT T3.firma_id , T3.firmenname FROM drittfirmen AS T3 JOIN wartungsverträge AS T4 ON T3.firma_id = T4.wartungsvertrag_firma_id GROUP BY T3.firma_id HAVING count(*) >= 2	assets_maintenance
SELECT T1.name_des_mitarbeiters , T1.personal_id FROM personal AS T1 JOIN fehlerprotokoll AS T2 ON T1.personal_id = T2.aufgezeichnet_durch_personal_id EXCEPT SELECT T3.name_des_mitarbeiters , T3.personal_id FROM personal AS T3 JOIN ingenieurbesuche AS T4 ON T3.personal_id = T4.kontaktperson_id	assets_maintenance
SELECT T1.ingenieur_id , T1.vorname , T1.nachname FROM wartungstechniker AS T1 JOIN ingenieurbesuche AS T2 GROUP BY T1.ingenieur_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.teilname , T1.teil_id FROM teile AS T1 JOIN bauteilfehler AS T2 ON T1.teil_id = T2.teil_id GROUP BY T1.teil_id HAVING count(*) > 2	assets_maintenance
SELECT T1.vorname , T1.nachname , T1.sonstige_angaben , T3.beschreibung_der_fertigkeit FROM wartungstechniker AS T1 JOIN ingenieurkenntnisse AS T2 ON T1.ingenieur_id = T2.ingenieur_id JOIN fähigkeiten AS T3 ON T2.fähigkeit_id = T3.fähigkeit_id	assets_maintenance
SELECT T1.fehlerkurzname , T3.beschreibung_der_fertigkeit FROM bauteilfehler AS T1 JOIN für_die_reparatur_erforderliche_fähigkeiten AS T2 ON T1.teil_fehler_id = T2.teil_fehler_id JOIN fähigkeiten AS T3 ON T2.fähigkeit_id = T3.fähigkeit_id	assets_maintenance
SELECT T1.teilname , count(*) FROM teile AS T1 JOIN anlageteile AS T2 ON T1.teil_id = T2.teil_id GROUP BY T1.teilname	assets_maintenance
SELECT T1.fehlerbeschreibung , T2.fehlerstatus FROM fehlerprotokoll AS T1 JOIN fehlerprotokollteile AS T2 ON T1.fehlerprotokolleintrag_id = T2.fehlerprotokolleintrag_id	assets_maintenance
SELECT count(*) , T1.fehlerprotokolleintrag_id FROM fehlerprotokoll AS T1 JOIN ingenieurbesuche AS T2 ON T1.fehlerprotokolleintrag_id = T2.fehlerprotokolleintrag_id GROUP BY T1.fehlerprotokolleintrag_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT nachname FROM wartungstechniker	assets_maintenance
SELECT DISTINCT fehlerstatus FROM fehlerprotokollteile	assets_maintenance
SELECT vorname , nachname FROM wartungstechniker WHERE ingenieur_id NOT IN (SELECT ingenieur_id FROM ingenieurbesuche)	assets_maintenance
SELECT asset_id , anlage_details , anlagenmarke , anlagenmodell FROM vermögenswerte	assets_maintenance
SELECT datum_des_erwerbs_der_anlage FROM vermögenswerte ORDER BY datum_des_erwerbs_der_anlage ASC LIMIT 1	assets_maintenance
SELECT T1.teil_id , T1.teilname FROM teile AS T1 JOIN bauteilfehler AS T2 ON T1.teil_id = T2.teil_id JOIN für_die_reparatur_erforderliche_fähigkeiten AS T3 ON T2.teil_fehler_id = T3.teil_fehler_id GROUP BY T1.teil_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.teilname FROM teile AS T1 JOIN bauteilfehler AS T2 ON T1.teil_id = T2.teil_id GROUP BY T1.teilname ORDER BY count(*) ASC LIMIT 1	assets_maintenance
SELECT T1.ingenieur_id , T1.vorname , T1.nachname FROM wartungstechniker AS T1 JOIN ingenieurbesuche AS T2 ON T1.ingenieur_id = T2.ingenieur_id GROUP BY T1.ingenieur_id ORDER BY count(*) ASC LIMIT 1	assets_maintenance
SELECT T1.name_des_mitarbeiters , T3.vorname , T3.nachname FROM personal AS T1 JOIN ingenieurbesuche AS T2 ON T1.personal_id = T2.kontaktperson_id JOIN wartungstechniker AS T3 ON T2.ingenieur_id = T3.ingenieur_id	assets_maintenance
SELECT T1.fehlerprotokolleintrag_id , T1.fehlerbeschreibung , T1.störungsprotokolleintrag_datumszeit FROM fehlerprotokoll AS T1 JOIN fehlerprotokollteile AS T2 ON T1.fehlerprotokolleintrag_id = T2.fehlerprotokolleintrag_id GROUP BY T1.fehlerprotokolleintrag_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.fähigkeit_id , T1.beschreibung_der_fertigkeit FROM fähigkeiten AS T1 JOIN für_die_reparatur_erforderliche_fähigkeiten AS T2 ON T1.fähigkeit_id = T2.fähigkeit_id GROUP BY T1.fähigkeit_id ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT DISTINCT anlagenmodell FROM vermögenswerte	assets_maintenance
SELECT anlagenmarke , anlagenmodell , anlage_details FROM vermögenswerte ORDER BY datum_des_anlagenabgangs ASC	assets_maintenance
SELECT teil_id , anrechenbarer_betrag FROM teile ORDER BY anrechenbarer_betrag ASC LIMIT 1	assets_maintenance
SELECT T1.firmenname FROM drittfirmen AS T1 JOIN wartungsverträge AS T2 ON T1.firma_id = T2.wartungsvertrag_firma_id ORDER BY T2.vertragsstartdatum ASC LIMIT 1	assets_maintenance
SELECT geschlecht FROM personal GROUP BY geschlecht ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT T1.name_des_mitarbeiters , count(*) FROM personal AS T1 JOIN ingenieurbesuche AS T2 ON T1.personal_id = T2.kontaktperson_id GROUP BY T1.name_des_mitarbeiters	assets_maintenance
SELECT anlagenmodell FROM vermögenswerte WHERE asset_id NOT IN (SELECT asset_id FROM fehlerprotokoll)	assets_maintenance
SELECT gemeinde , dienste FROM station	station_weather
SELECT zugnummer , name FROM zug ORDER BY zeit	station_weather
SELECT zeit , zugnummer FROM zug WHERE zielort = 'Chennai' ORDER BY zeit	station_weather
SELECT count(*) FROM zug WHERE name LIKE "%Express%"	station_weather
SELECT zugnummer , zeit FROM zug WHERE herkunft = 'Chennai' AND zielort = 'Guruvayur'	station_weather
SELECT herkunft , count(*) FROM zug GROUP BY herkunft	station_weather
SELECT t1.name FROM zug AS t1 JOIN route AS t2 ON t1.id = t2.zugkennung GROUP BY t2.zugkennung ORDER BY count(*) DESC LIMIT 1	station_weather
SELECT count(*) , t1.netzname , t1.dienste FROM station AS t1 JOIN route AS t2 ON t1.id = t2.station_id GROUP BY t2.station_id	station_weather
SELECT avg(hohe_temperatur) , wochentag FROM wochenwetter GROUP BY wochentag	station_weather
SELECT max(t1.niedrige_temperatur) , avg(t1.niederschlag) FROM wochenwetter AS t1 JOIN station AS t2 ON t1.station_id = t2.id WHERE t2.netzname = "Amersham"	station_weather
SELECT t3.name , t3.zeit FROM station AS t1 JOIN route AS t2 ON t1.id = t2.station_id JOIN zug AS t3 ON t2.zugkennung = t3.id WHERE t1.gemeinde = "Chiltern"	station_weather
SELECT count(DISTINCT dienste) FROM station	station_weather
SELECT t2.id , t2.gemeinde FROM wochenwetter AS t1 JOIN station AS t2 ON t1.station_id = t2.id GROUP BY t1.station_id ORDER BY avg(hohe_temperatur) DESC LIMIT 1	station_weather
SELECT t2.id , t2.gemeinde FROM wochenwetter AS t1 JOIN station AS t2 ON t1.station_id = t2.id GROUP BY t1.station_id HAVING max(t1.niederschlag) > 50	station_weather
SELECT min(niedrige_temperatur) , max(windgeschwindigkeit_mph) FROM wochenwetter	station_weather
SELECT herkunft FROM zug GROUP BY herkunft HAVING count(*) > 1	station_weather
SELECT count(*) FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE abteilungsname = "Accounting"	college_1
SELECT count(*) FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE abteilungsname = "Accounting"	college_1
SELECT count(DISTINCT professor_mitarbeiternummer) FROM klasse WHERE kurs_code = "ACCT-211"	college_1
SELECT count(DISTINCT professor_mitarbeiternummer) FROM klasse WHERE kurs_code = "ACCT-211"	college_1
SELECT T3.vorname_des_mitarbeiters , T3.nachname_des_mitarbeiters FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode JOIN mitarbeiter AS T3 ON T1.mitarbeiternummer = T3.mitarbeiternummer WHERE abteilungsname = "Biology"	college_1
SELECT T3.vorname_des_mitarbeiters , T3.nachname_des_mitarbeiters FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode JOIN mitarbeiter AS T3 ON T1.mitarbeiternummer = T3.mitarbeiternummer WHERE abteilungsname = "Biology"	college_1
SELECT DISTINCT T1.vorname_des_mitarbeiters , T1.geburtsdatum_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = "ACCT-211"	college_1
SELECT DISTINCT T1.vorname_des_mitarbeiters , T1.geburtsdatum_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = "ACCT-211"	college_1
SELECT count(*) FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE T1.nachname_des_mitarbeiters = 'Graztevski'	college_1
SELECT count(*) FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE T1.nachname_des_mitarbeiters = 'Graztevski'	college_1
SELECT schulcode FROM abteilung WHERE abteilungsname = "Accounting"	college_1
SELECT schulcode FROM abteilung WHERE abteilungsname = "Accounting"	college_1
SELECT kurs_credit , kursbeschreibung FROM kurs WHERE kurs_code = 'CIS-220'	college_1
SELECT kurs_credit , kursbeschreibung FROM kurs WHERE kurs_code = 'CIS-220'	college_1
SELECT adresse_der_abteilung FROM abteilung WHERE abteilungsname = 'History'	college_1
SELECT adresse_der_abteilung FROM abteilung WHERE abteilungsname = 'History'	college_1
SELECT count(DISTINCT adresse_der_abteilung) FROM abteilung WHERE schulcode = 'BUS'	college_1
SELECT count(DISTINCT adresse_der_abteilung) FROM abteilung WHERE schulcode = 'BUS'	college_1
SELECT count(DISTINCT adresse_der_abteilung) , schulcode FROM abteilung GROUP BY schulcode	college_1
SELECT count(DISTINCT adresse_der_abteilung) , schulcode FROM abteilung GROUP BY schulcode	college_1
SELECT kurs_credit , kursbeschreibung FROM kurs WHERE kurs_code = 'QM-261'	college_1
SELECT kurs_credit , kursbeschreibung FROM kurs WHERE kurs_code = 'QM-261'	college_1
SELECT count(DISTINCT abteilungsname) , schulcode FROM abteilung GROUP BY schulcode	college_1
SELECT count(DISTINCT abteilungsname) , schulcode FROM abteilung GROUP BY schulcode	college_1
SELECT count(DISTINCT abteilungsname) , schulcode FROM abteilung GROUP BY schulcode HAVING count(DISTINCT abteilungsname) < 5	college_1
SELECT count(DISTINCT abteilungsname) , schulcode FROM abteilung GROUP BY schulcode HAVING count(DISTINCT abteilungsname) < 5	college_1
SELECT count(*) , kurs_code FROM klasse GROUP BY kurs_code	college_1
SELECT count(*) , kurs_code FROM klasse GROUP BY kurs_code	college_1
SELECT sum(kurs_credit) , abteilungscode FROM kurs GROUP BY abteilungscode	college_1
SELECT sum(kurs_credit) , abteilungscode FROM kurs GROUP BY abteilungscode	college_1
SELECT count(*) , klassenraum FROM klasse GROUP BY klassenraum HAVING count(*) >= 2	college_1
SELECT count(*) , klassenraum FROM klasse GROUP BY klassenraum HAVING count(*) >= 2	college_1
SELECT count(*) , abteilungscode FROM klasse AS T1 JOIN kurs AS T2 ON T1.kurs_code = T2.kurs_code GROUP BY abteilungscode	college_1
SELECT count(*) , abteilungscode FROM klasse AS T1 JOIN kurs AS T2 ON T1.kurs_code = T2.kurs_code GROUP BY abteilungscode	college_1
SELECT count(*) , T3.schulcode FROM klasse AS T1 JOIN kurs AS T2 ON T1.kurs_code = T2.kurs_code JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode GROUP BY T3.schulcode	college_1
SELECT count(*) , T3.schulcode FROM klasse AS T1 JOIN kurs AS T2 ON T1.kurs_code = T2.kurs_code JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode GROUP BY T3.schulcode	college_1
SELECT count(*) , T1.schulcode FROM abteilung AS T1 JOIN professor AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.schulcode	college_1
SELECT count(*) , T1.schulcode FROM abteilung AS T1 JOIN professor AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.schulcode	college_1
SELECT angestellter_stellencode , count(*) FROM mitarbeiter GROUP BY angestellter_stellencode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT angestellter_stellencode , count(*) FROM mitarbeiter GROUP BY angestellter_stellencode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T1.schulcode FROM abteilung AS T1 JOIN professor AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.schulcode ORDER BY count(*) LIMIT 1	college_1
SELECT T1.schulcode FROM abteilung AS T1 JOIN professor AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.schulcode ORDER BY count(*) LIMIT 1	college_1
SELECT count(*) , abteilungscode FROM professor WHERE professor_high_degree = 'Ph.D.' GROUP BY abteilungscode	college_1
SELECT count(*) , abteilungscode FROM professor WHERE professor_high_degree = 'Ph.D.' GROUP BY abteilungscode	college_1
SELECT count(*) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT count(*) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT sum(belegte_unterrichtsstunden) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT sum(belegte_unterrichtsstunden) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT max(student_gpa) , avg(student_gpa) , min(student_gpa) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT max(student_gpa) , avg(student_gpa) , min(student_gpa) , abteilungscode FROM student GROUP BY abteilungscode	college_1
SELECT T2.abteilungsname , avg(T1.student_gpa) FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY avg(T1.student_gpa) DESC LIMIT 1	college_1
SELECT T2.abteilungsname , avg(T1.student_gpa) FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY avg(T1.student_gpa) DESC LIMIT 1	college_1
SELECT count(DISTINCT schulcode) FROM abteilung	college_1
SELECT count(DISTINCT schulcode) FROM abteilung	college_1
SELECT count(DISTINCT klassencode) FROM klasse	college_1
SELECT count(DISTINCT klassencode) FROM klasse	college_1
SELECT count(DISTINCT kurs_code) FROM klasse	college_1
SELECT count(DISTINCT kurs_code) FROM klasse	college_1
SELECT count(DISTINCT abteilungsname) FROM abteilung	college_1
SELECT count(DISTINCT abteilungsname) FROM abteilung	college_1
SELECT count(*) FROM abteilung AS T1 JOIN kurs AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE abteilungsname = "Computer Info. Systems"	college_1
SELECT count(*) FROM abteilung AS T1 JOIN kurs AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE abteilungsname = "Computer Info. Systems"	college_1
SELECT count(DISTINCT klasse_abschnitt) FROM klasse WHERE kurs_code = 'ACCT-211'	college_1
SELECT count(DISTINCT klasse_abschnitt) FROM klasse WHERE kurs_code = 'ACCT-211'	college_1
SELECT sum(T1.kurs_credit) , T1.abteilungscode FROM kurs AS T1 JOIN klasse AS T2 ON T1.kurs_code = T2.kurs_code GROUP BY T1.abteilungscode	college_1
SELECT sum(T1.kurs_credit) , T1.abteilungscode FROM kurs AS T1 JOIN klasse AS T2 ON T1.kurs_code = T2.kurs_code GROUP BY T1.abteilungscode	college_1
SELECT T3.abteilungsname FROM kurs AS T1 JOIN klasse AS T2 ON T1.kurs_code = T2.kurs_code JOIN abteilung AS T3 ON T1.abteilungscode = T3.abteilungscode GROUP BY T1.abteilungscode ORDER BY sum(T1.kurs_credit) DESC LIMIT 1	college_1
SELECT T3.abteilungsname FROM kurs AS T1 JOIN klasse AS T2 ON T1.kurs_code = T2.kurs_code JOIN abteilung AS T3 ON T1.abteilungscode = T3.abteilungscode GROUP BY T1.abteilungscode ORDER BY sum(T1.kurs_credit) DESC LIMIT 1	college_1
SELECT count(*) FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode WHERE T1.kurs_code = 'ACCT-211'	college_1
SELECT count(*) FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode WHERE T1.kurs_code = 'ACCT-211'	college_1
SELECT T3.schüler_vorname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T2.schülernummer = T3.studentennummer WHERE T1.kurs_code = 'ACCT-211'	college_1
SELECT T3.schüler_vorname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T2.schülernummer = T3.studentennummer WHERE T1.kurs_code = 'ACCT-211'	college_1
SELECT T3.schüler_vorname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T2.schülernummer = T3.studentennummer WHERE T1.kurs_code = 'ACCT-211' AND T2.einschreibungsnote = 'C'	college_1
SELECT T3.schüler_vorname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T2.schülernummer = T3.studentennummer WHERE T1.kurs_code = 'ACCT-211' AND T2.einschreibungsnote = 'C'	college_1
SELECT count(*) FROM mitarbeiter	college_1
SELECT count(*) FROM mitarbeiter	college_1
SELECT count(*) FROM professor WHERE professor_high_degree = 'Ph.D.'	college_1
SELECT count(*) FROM professor WHERE professor_high_degree = 'Ph.D.'	college_1
SELECT count(*) FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN abteilung AS T4 ON T3.abteilungscode = T4.abteilungscode WHERE T4.abteilungsname = 'Accounting'	college_1
SELECT count(*) FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN abteilung AS T4 ON T3.abteilungscode = T4.abteilungscode WHERE T4.abteilungsname = 'Accounting'	college_1
SELECT T4.abteilungsname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN abteilung AS T4 ON T3.abteilungscode = T4.abteilungscode GROUP BY T3.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T4.abteilungsname FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN abteilung AS T4 ON T3.abteilungscode = T4.abteilungscode GROUP BY T3.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT abteilungsname FROM abteilung ORDER BY abteilungsname	college_1
SELECT abteilungsname FROM abteilung ORDER BY abteilungsname	college_1
SELECT klassencode FROM klasse WHERE klassenraum = 'KLR209'	college_1
SELECT klassencode FROM klasse WHERE klassenraum = 'KLR209'	college_1
SELECT vorname_des_mitarbeiters FROM mitarbeiter WHERE angestellter_stellencode = 'PROF' ORDER BY geburtsdatum_des_mitarbeiters	college_1
SELECT vorname_des_mitarbeiters FROM mitarbeiter WHERE angestellter_stellencode = 'PROF' ORDER BY geburtsdatum_des_mitarbeiters	college_1
SELECT T2.vorname_des_mitarbeiters , T1.professor_office FROM professor AS T1 JOIN mitarbeiter AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer ORDER BY T2.vorname_des_mitarbeiters	college_1
SELECT T2.vorname_des_mitarbeiters , T1.professor_office FROM professor AS T1 JOIN mitarbeiter AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer ORDER BY T2.vorname_des_mitarbeiters	college_1
SELECT vorname_des_mitarbeiters , nachname_des_mitarbeiters FROM mitarbeiter ORDER BY geburtsdatum_des_mitarbeiters LIMIT 1	college_1
SELECT vorname_des_mitarbeiters , nachname_des_mitarbeiters FROM mitarbeiter ORDER BY geburtsdatum_des_mitarbeiters LIMIT 1	college_1
SELECT schüler_vorname , nachname_des_schülers , student_gpa FROM student WHERE student_gpa > 3 ORDER BY geburtsdatum_des_schülers DESC LIMIT 1	college_1
SELECT schüler_vorname , nachname_des_schülers , student_gpa FROM student WHERE student_gpa > 3 ORDER BY geburtsdatum_des_schülers DESC LIMIT 1	college_1
SELECT DISTINCT schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE einschreibungsnote = 'C'	college_1
SELECT DISTINCT schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE einschreibungsnote = 'C'	college_1
SELECT T2.abteilungsname FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) LIMIT 1	college_1
SELECT T2.abteilungsname FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) LIMIT 1	college_1
SELECT T2.abteilungsname , T1.abteilungscode FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T1.professor_high_degree = 'Ph.D.' GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.abteilungsname , T1.abteilungscode FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T1.professor_high_degree = 'Ph.D.' GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT vorname_des_mitarbeiters FROM mitarbeiter WHERE angestellter_stellencode = 'PROF' EXCEPT SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer	college_1
SELECT vorname_des_mitarbeiters FROM mitarbeiter WHERE angestellter_stellencode = 'PROF' EXCEPT SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer	college_1
SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History' EXCEPT SELECT T4.vorname_des_mitarbeiters FROM mitarbeiter AS T4 JOIN klasse AS T5 ON T4.mitarbeiternummer = T5.professor_mitarbeiternummer	college_1
SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History' EXCEPT SELECT T4.vorname_des_mitarbeiters FROM mitarbeiter AS T4 JOIN klasse AS T5 ON T4.mitarbeiternummer = T5.professor_mitarbeiternummer	college_1
SELECT T1.nachname_des_mitarbeiters , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History'	college_1
SELECT T1.nachname_des_mitarbeiters , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History'	college_1
SELECT T3.abteilungsname , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T1.nachname_des_mitarbeiters = 'Heffington'	college_1
SELECT T3.abteilungsname , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T2.abteilungscode = T3.abteilungscode WHERE T1.nachname_des_mitarbeiters = 'Heffington'	college_1
SELECT T1.nachname_des_mitarbeiters , T1.einstellungsdatum_des_mitarbeiters FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer WHERE T2.professor_office = 'DRE 102'	college_1
SELECT T1.nachname_des_mitarbeiters , T1.einstellungsdatum_des_mitarbeiters FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer WHERE T2.professor_office = 'DRE 102'	college_1
SELECT T1.kurs_code FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T3.studentennummer = T2.schülernummer WHERE T3.nachname_des_schülers = 'Smithson'	college_1
SELECT T1.kurs_code FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T3.studentennummer = T2.schülernummer WHERE T3.nachname_des_schülers = 'Smithson'	college_1
SELECT T4.kursbeschreibung , T4.kurs_credit FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T3.studentennummer = T2.schülernummer JOIN kurs AS T4 ON T4.kurs_code = T1.kurs_code WHERE T3.nachname_des_schülers = 'Smithson'	college_1
SELECT T4.kursbeschreibung , T4.kurs_credit FROM klasse AS T1 JOIN einschreiben AS T2 ON T1.klassencode = T2.klassencode JOIN student AS T3 ON T3.studentennummer = T2.schülernummer JOIN kurs AS T4 ON T4.kurs_code = T1.kurs_code WHERE T3.nachname_des_schülers = 'Smithson'	college_1
SELECT count(*) FROM professor WHERE professor_high_degree = 'Ph.D.' OR professor_high_degree = 'MA'	college_1
SELECT count(*) FROM professor WHERE professor_high_degree = 'Ph.D.' OR professor_high_degree = 'MA'	college_1
SELECT count(*) FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T2.abteilungsname = 'Accounting' OR T2.abteilungsname = 'Biology'	college_1
SELECT count(*) FROM professor AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T2.abteilungsname = 'Accounting' OR T2.abteilungsname = 'Biology'	college_1
SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = 'CIS-220' INTERSECT SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = 'QM-261'	college_1
SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = 'CIS-220' INTERSECT SELECT T1.vorname_des_mitarbeiters FROM mitarbeiter AS T1 JOIN klasse AS T2 ON T1.mitarbeiternummer = T2.professor_mitarbeiternummer WHERE kurs_code = 'QM-261'	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code JOIN abteilung AS T5 ON T5.abteilungscode = T4.abteilungscode WHERE T5.abteilungsname = 'Accounting' INTERSECT SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code JOIN abteilung AS T5 ON T5.abteilungscode = T4.abteilungscode WHERE T5.abteilungsname = 'Computer Info. Systems'	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code JOIN abteilung AS T5 ON T5.abteilungscode = T4.abteilungscode WHERE T5.abteilungsname = 'Accounting' INTERSECT SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code JOIN abteilung AS T5 ON T5.abteilungscode = T4.abteilungscode WHERE T5.abteilungsname = 'Computer Info. Systems'	college_1
SELECT avg(T2.student_gpa) FROM einschreiben AS T1 JOIN student AS T2 ON T1.schülernummer = T2.studentennummer JOIN klasse AS T3 ON T1.klassencode = T3.klassencode WHERE T3.kurs_code = 'ACCT-211'	college_1
SELECT avg(T2.student_gpa) FROM einschreiben AS T1 JOIN student AS T2 ON T1.schülernummer = T2.studentennummer JOIN klasse AS T3 ON T1.klassencode = T3.klassencode WHERE T3.kurs_code = 'ACCT-211'	college_1
SELECT student_gpa , student_phone , schüler_vorname FROM student ORDER BY student_gpa DESC LIMIT 5	college_1
SELECT student_gpa , student_phone , schüler_vorname FROM student ORDER BY student_gpa DESC LIMIT 5	college_1
SELECT T2.abteilungsname FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode ORDER BY student_gpa LIMIT 1	college_1
SELECT T2.abteilungsname FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode ORDER BY student_gpa LIMIT 1	college_1
SELECT schüler_vorname , student_gpa FROM student WHERE student_gpa < (SELECT avg(student_gpa) FROM student)	college_1
SELECT schüler_vorname , student_gpa FROM student WHERE student_gpa < (SELECT avg(student_gpa) FROM student)	college_1
SELECT T2.abteilungsname , T2.adresse_der_abteilung FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.abteilungsname , T2.adresse_der_abteilung FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.abteilungsname , T2.adresse_der_abteilung , count(*) FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 3	college_1
SELECT T2.abteilungsname , T2.adresse_der_abteilung , count(*) FROM student AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode GROUP BY T1.abteilungscode ORDER BY count(*) DESC LIMIT 3	college_1
SELECT T1.vorname_des_mitarbeiters , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T3.abteilungscode = T2.abteilungscode WHERE T3.abteilungsname = 'History' AND T2.professor_high_degree = 'Ph.D.'	college_1
SELECT T1.vorname_des_mitarbeiters , T2.professor_office FROM mitarbeiter AS T1 JOIN professor AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T3.abteilungscode = T2.abteilungscode WHERE T3.abteilungsname = 'History' AND T2.professor_high_degree = 'Ph.D.'	college_1
SELECT T2.vorname_des_mitarbeiters , T1.kurs_code FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer	college_1
SELECT T2.vorname_des_mitarbeiters , T1.kurs_code FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer	college_1
SELECT T2.vorname_des_mitarbeiters , T3.kursbeschreibung FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code	college_1
SELECT T2.vorname_des_mitarbeiters , T3.kursbeschreibung FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code	college_1
SELECT T2.vorname_des_mitarbeiters , T4.professor_office , T3.kursbeschreibung FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN professor AS T4 ON T2.mitarbeiternummer = T4.mitarbeiternummer	college_1
SELECT T2.vorname_des_mitarbeiters , T4.professor_office , T3.kursbeschreibung FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN professor AS T4 ON T2.mitarbeiternummer = T4.mitarbeiternummer	college_1
SELECT T2.vorname_des_mitarbeiters , T4.professor_office , T3.kursbeschreibung , T5.abteilungsname FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN professor AS T4 ON T2.mitarbeiternummer = T4.mitarbeiternummer JOIN abteilung AS T5 ON T4.abteilungscode = T5.abteilungscode	college_1
SELECT T2.vorname_des_mitarbeiters , T4.professor_office , T3.kursbeschreibung , T5.abteilungsname FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN kurs AS T3 ON T1.kurs_code = T3.kurs_code JOIN professor AS T4 ON T2.mitarbeiternummer = T4.mitarbeiternummer JOIN abteilung AS T5 ON T4.abteilungscode = T5.abteilungscode	college_1
SELECT T1.schüler_vorname , T1.nachname_des_schülers , T4.kursbeschreibung FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code	college_1
SELECT T1.schüler_vorname , T1.nachname_des_schülers , T4.kursbeschreibung FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode JOIN kurs AS T4 ON T3.kurs_code = T4.kurs_code	college_1
SELECT T1.schüler_vorname , T1.nachname_des_schülers FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE T2.einschreibungsnote = 'C' OR T2.einschreibungsnote = 'A'	college_1
SELECT T1.schüler_vorname , T1.nachname_des_schülers FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE T2.einschreibungsnote = 'C' OR T2.einschreibungsnote = 'A'	college_1
SELECT T2.vorname_des_mitarbeiters , T1.klassenraum FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN professor AS T3 ON T2.mitarbeiternummer = T3.mitarbeiternummer JOIN abteilung AS T4 ON T4.abteilungscode = T3.abteilungscode WHERE T4.abteilungsname = 'Accounting'	college_1
SELECT T2.vorname_des_mitarbeiters , T1.klassenraum FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN professor AS T3 ON T2.mitarbeiternummer = T3.mitarbeiternummer JOIN abteilung AS T4 ON T4.abteilungscode = T3.abteilungscode WHERE T4.abteilungsname = 'Accounting'	college_1
SELECT DISTINCT T2.vorname_des_mitarbeiters , T3.professor_high_degree FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN professor AS T3 ON T2.mitarbeiternummer = T3.mitarbeiternummer JOIN abteilung AS T4 ON T4.abteilungscode = T3.abteilungscode WHERE T4.abteilungsname = 'Computer Info. Systems'	college_1
SELECT DISTINCT T2.vorname_des_mitarbeiters , T3.professor_high_degree FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer JOIN professor AS T3 ON T2.mitarbeiternummer = T3.mitarbeiternummer JOIN abteilung AS T4 ON T4.abteilungscode = T3.abteilungscode WHERE T4.abteilungsname = 'Computer Info. Systems'	college_1
SELECT T1.nachname_des_schülers FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE T2.einschreibungsnote = 'A' AND T2.klassencode = 10018	college_1
SELECT T1.nachname_des_schülers FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer WHERE T2.einschreibungsnote = 'A' AND T2.klassencode = 10018	college_1
SELECT T2.vorname_des_mitarbeiters , T1.professor_office FROM professor AS T1 JOIN mitarbeiter AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T1.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History' AND T1.professor_high_degree != 'Ph.D.'	college_1
SELECT T2.vorname_des_mitarbeiters , T1.professor_office FROM professor AS T1 JOIN mitarbeiter AS T2 ON T1.mitarbeiternummer = T2.mitarbeiternummer JOIN abteilung AS T3 ON T1.abteilungscode = T3.abteilungscode WHERE T3.abteilungsname = 'History' AND T1.professor_high_degree != 'Ph.D.'	college_1
SELECT T2.vorname_des_mitarbeiters FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer GROUP BY T1.professor_mitarbeiternummer HAVING count(*) > 1	college_1
SELECT T2.vorname_des_mitarbeiters FROM klasse AS T1 JOIN mitarbeiter AS T2 ON T1.professor_mitarbeiternummer = T2.mitarbeiternummer GROUP BY T1.professor_mitarbeiternummer HAVING count(*) > 1	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer GROUP BY T2.schülernummer HAVING count(*) = 1	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer GROUP BY T2.schülernummer HAVING count(*) = 1	college_1
SELECT T2.abteilungsname FROM kurs AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T1.kursbeschreibung LIKE '%Statistics%'	college_1
SELECT T2.abteilungsname FROM kurs AS T1 JOIN abteilung AS T2 ON T1.abteilungscode = T2.abteilungscode WHERE T1.kursbeschreibung LIKE '%Statistics%'	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode WHERE T3.kurs_code = 'ACCT-211' AND T1.nachname_des_schülers LIKE 'S%'	college_1
SELECT T1.schüler_vorname FROM student AS T1 JOIN einschreiben AS T2 ON T1.studentennummer = T2.schülernummer JOIN klasse AS T3 ON T2.klassencode = T3.klassencode WHERE T3.kurs_code = 'ACCT-211' AND T1.nachname_des_schülers LIKE 'S%'	college_1
SELECT count(*) FROM verein	sports_competition
SELECT count(*) FROM verein	sports_competition
SELECT DISTINCT region FROM verein ORDER BY region ASC	sports_competition
SELECT DISTINCT region FROM verein ORDER BY region ASC	sports_competition
SELECT avg(gold) FROM vereinsrang	sports_competition
SELECT avg(gold) FROM vereinsrang	sports_competition
SELECT wettbewerbstyp , land FROM wettbewerb	sports_competition
SELECT wettbewerbstyp , land FROM wettbewerb	sports_competition
SELECT DISTINCT jahr FROM wettbewerb WHERE wettbewerbstyp != "Tournament"	sports_competition
SELECT DISTINCT jahr FROM wettbewerb WHERE wettbewerbstyp != "Tournament"	sports_competition
SELECT max(silber) , min(silber) FROM vereinsrang	sports_competition
SELECT max(silber) , min(silber) FROM vereinsrang	sports_competition
SELECT count(*) FROM vereinsrang WHERE gesamt < 10	sports_competition
SELECT count(*) FROM vereinsrang WHERE gesamt < 10	sports_competition
SELECT name FROM verein ORDER BY startjahr ASC	sports_competition
SELECT name FROM verein ORDER BY startjahr ASC	sports_competition
SELECT name FROM verein ORDER BY name DESC	sports_competition
SELECT name FROM verein ORDER BY name DESC	sports_competition
SELECT T1.name , T2.spieler_id FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id	sports_competition
SELECT T1.name , T2.spieler_id FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id	sports_competition
SELECT T1.name FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id WHERE T2.position = "Right Wing"	sports_competition
SELECT T1.name FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id WHERE T2.position = "Right Wing"	sports_competition
SELECT avg(T2.punkte) FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id WHERE T1.name = "AIB"	sports_competition
SELECT avg(T2.punkte) FROM verein AS T1 JOIN spieler AS T2 ON T1.verein_id = T2.verein_id WHERE T1.name = "AIB"	sports_competition
SELECT position , avg(punkte) FROM spieler GROUP BY position	sports_competition
SELECT position , avg(punkte) FROM spieler GROUP BY position	sports_competition
SELECT position FROM spieler GROUP BY name HAVING avg(punkte) >= 20	sports_competition
SELECT position FROM spieler GROUP BY name HAVING avg(punkte) >= 20	sports_competition
SELECT wettbewerbstyp , COUNT(*) FROM wettbewerb GROUP BY wettbewerbstyp	sports_competition
SELECT wettbewerbstyp , COUNT(*) FROM wettbewerb GROUP BY wettbewerbstyp	sports_competition
SELECT wettbewerbstyp FROM wettbewerb GROUP BY wettbewerbstyp ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT wettbewerbstyp FROM wettbewerb GROUP BY wettbewerbstyp ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT wettbewerbstyp FROM wettbewerb GROUP BY wettbewerbstyp HAVING COUNT(*) <= 5	sports_competition
SELECT wettbewerbstyp FROM wettbewerb GROUP BY wettbewerbstyp HAVING COUNT(*) <= 5	sports_competition
SELECT name FROM verein WHERE verein_id NOT IN (SELECT verein_id FROM spieler)	sports_competition
SELECT name FROM verein WHERE verein_id NOT IN (SELECT verein_id FROM spieler)	sports_competition
SELECT position FROM spieler WHERE punkte > 20 INTERSECT SELECT position FROM spieler WHERE punkte < 10	sports_competition
SELECT position FROM spieler WHERE punkte > 20 INTERSECT SELECT position FROM spieler WHERE punkte < 10	sports_competition
SELECT sum(punkte) FROM spieler	sports_competition
SELECT sum(punkte) FROM spieler	sports_competition
SELECT count(DISTINCT position) FROM spieler	sports_competition
SELECT count(DISTINCT position) FROM spieler	sports_competition
SELECT name FROM spieler WHERE punkte > (SELECT avg(punkte) FROM spieler)	sports_competition
SELECT name FROM spieler WHERE punkte > (SELECT avg(punkte) FROM spieler)	sports_competition
SELECT count(*) , position FROM spieler WHERE punkte < 30 GROUP BY position	sports_competition
SELECT count(*) , position FROM spieler WHERE punkte < 30 GROUP BY position	sports_competition
SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Tournament' GROUP BY land ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Tournament' GROUP BY land ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Friendly' INTERSECT SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Tournament'	sports_competition
SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Friendly' INTERSECT SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Tournament'	sports_competition
SELECT land FROM wettbewerb EXCEPT SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Friendly'	sports_competition
SELECT land FROM wettbewerb EXCEPT SELECT land FROM wettbewerb WHERE wettbewerbstyp = 'Friendly'	sports_competition
SELECT sum(num_of_component) FROM möbel	manufacturer
SELECT name , möbel_id FROM möbel ORDER BY marktpreis DESC LIMIT 1	manufacturer
SELECT sum(marktpreis) FROM möbel ORDER BY marktpreis DESC LIMIT 2	manufacturer
SELECT num_of_component , name FROM möbel WHERE num_of_component > 10	manufacturer
SELECT name , num_of_component FROM möbel ORDER BY marktpreis LIMIT 1	manufacturer
SELECT t1.name FROM möbel AS t1 JOIN möbel_hersteller AS t2 ON t1.möbel_id = t2.möbel_id WHERE t2.preis_in_dollar < (SELECT max(preis_in_dollar) FROM möbel_hersteller)	manufacturer
SELECT eröffnungsjahr , name FROM hersteller ORDER BY anzahl_der_geschäfte DESC LIMIT 1	manufacturer
SELECT avg(anzahl_der_fabriken) FROM hersteller WHERE anzahl_der_geschäfte > 20	manufacturer
SELECT name , hersteller_id FROM hersteller ORDER BY eröffnungsjahr	manufacturer
SELECT name , eröffnungsjahr FROM hersteller WHERE anzahl_der_geschäfte > 10 OR anzahl_der_fabriken < 10	manufacturer
SELECT max(anzahl_der_geschäfte) , avg(anzahl_der_fabriken) FROM hersteller WHERE eröffnungsjahr < 1990	manufacturer
SELECT t1.hersteller_id , t1.anzahl_der_geschäfte FROM hersteller AS t1 JOIN möbel_hersteller AS t2 ON t1.hersteller_id = t2.hersteller_id ORDER BY t2.preis_in_dollar DESC LIMIT 1	manufacturer
SELECT count(*) , t1.name FROM hersteller AS t1 JOIN möbel_hersteller AS t2 ON t1.hersteller_id = t2.hersteller_id GROUP BY t1.hersteller_id	manufacturer
SELECT t1.name , t2.preis_in_dollar FROM möbel AS t1 JOIN möbel_hersteller AS t2 ON t1.möbel_id = t2.möbel_id	manufacturer
SELECT marktpreis , name FROM möbel WHERE möbel_id NOT IN (SELECT möbel_id FROM möbel_hersteller)	manufacturer
SELECT t3.name FROM möbel AS t1 JOIN möbel_hersteller AS t2 ON t1.möbel_id = t2.möbel_id JOIN hersteller AS t3 ON t2.hersteller_id = t3.hersteller_id WHERE t1.num_of_component < 6 INTERSECT SELECT t3.name FROM möbel AS t1 JOIN möbel_hersteller AS t2 ON t1.möbel_id = t2.möbel_id JOIN hersteller AS t3 ON t2.hersteller_id = t3.hersteller_id WHERE t1.num_of_component > 10	manufacturer
SELECT T1.vorname , T2.abteilungsname FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id	hr_1
SELECT T1.vorname , T2.abteilungsname FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE gehalt < 6000	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE gehalt < 6000	hr_1
SELECT vorname , abteilung_id FROM mitarbeiter WHERE nachname = 'McEwen'	hr_1
SELECT vorname , abteilung_id FROM mitarbeiter WHERE nachname = 'McEwen'	hr_1
SELECT * FROM mitarbeiter WHERE abteilung_id = "null"	hr_1
SELECT * FROM mitarbeiter WHERE abteilung_id = "null"	hr_1
SELECT * FROM abteilungen WHERE abteilungsname = 'Marketing'	hr_1
SELECT * FROM abteilungen WHERE abteilungsname = 'Marketing'	hr_1
SELECT einstellungsdatum FROM mitarbeiter WHERE vorname NOT LIKE '%M%'	hr_1
SELECT einstellungsdatum FROM mitarbeiter WHERE vorname NOT LIKE '%M%'	hr_1
SELECT vorname , nachname , einstellungsdatum , gehalt , abteilung_id FROM mitarbeiter WHERE vorname NOT LIKE '%M%'	hr_1
SELECT vorname , nachname , einstellungsdatum , gehalt , abteilung_id FROM mitarbeiter WHERE vorname NOT LIKE '%M%'	hr_1
SELECT vorname , nachname , einstellungsdatum , gehalt , abteilung_id FROM mitarbeiter WHERE vorname NOT LIKE '%M%' ORDER BY abteilung_id	hr_1
SELECT vorname , nachname , einstellungsdatum , gehalt , abteilung_id FROM mitarbeiter WHERE vorname NOT LIKE '%M%' ORDER BY abteilung_id	hr_1
SELECT telefonnummer FROM mitarbeiter WHERE gehalt BETWEEN 8000 AND 12000	hr_1
SELECT telefonnummer FROM mitarbeiter WHERE gehalt BETWEEN 8000 AND 12000	hr_1
SELECT * FROM mitarbeiter WHERE gehalt BETWEEN 8000 AND 12000 AND provisions_pct != "null" OR abteilung_id != 40	hr_1
SELECT * FROM mitarbeiter WHERE gehalt BETWEEN 8000 AND 12000 AND provisions_pct != "null" OR abteilung_id != 40	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE provisions_pct = "null"	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE provisions_pct = "null"	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE vorname LIKE '%m'	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter WHERE vorname LIKE '%m'	hr_1
SELECT job_id , einstellungsdatum FROM mitarbeiter WHERE einstellungsdatum BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT job_id , einstellungsdatum FROM mitarbeiter WHERE einstellungsdatum BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT vorname , nachname FROM mitarbeiter WHERE abteilung_id = 70 OR abteilung_id = 90	hr_1
SELECT vorname , nachname FROM mitarbeiter WHERE abteilung_id = 70 OR abteilung_id = 90	hr_1
SELECT gehalt , manager_id FROM mitarbeiter WHERE manager_id != "null"	hr_1
SELECT gehalt , manager_id FROM mitarbeiter WHERE manager_id != "null"	hr_1
SELECT * FROM mitarbeiter WHERE einstellungsdatum < '2002-06-21'	hr_1
SELECT * FROM mitarbeiter WHERE einstellungsdatum < '2002-06-21'	hr_1
SELECT * FROM mitarbeiter WHERE vorname LIKE '%D%' OR vorname LIKE '%S%' ORDER BY gehalt DESC	hr_1
SELECT * FROM mitarbeiter WHERE vorname LIKE '%D%' OR vorname LIKE '%S%' ORDER BY gehalt DESC	hr_1
SELECT * FROM mitarbeiter WHERE einstellungsdatum > '1987-09-07'	hr_1
SELECT * FROM mitarbeiter WHERE einstellungsdatum > '1987-09-07'	hr_1
SELECT job_title FROM jobs WHERE min_gehalt > 9000	hr_1
SELECT job_title FROM jobs WHERE min_gehalt > 9000	hr_1
SELECT job_title , maximales_gehalt - min_gehalt FROM jobs WHERE maximales_gehalt BETWEEN 12000 AND 18000	hr_1
SELECT job_title , maximales_gehalt - min_gehalt FROM jobs WHERE maximales_gehalt BETWEEN 12000 AND 18000	hr_1
SELECT email FROM mitarbeiter WHERE provisions_pct = "null" AND gehalt BETWEEN 7000 AND 12000 AND abteilung_id = 50	hr_1
SELECT email FROM mitarbeiter WHERE provisions_pct = "null" AND gehalt BETWEEN 7000 AND 12000 AND abteilung_id = 50	hr_1
SELECT arbeitnehmer_id , MAX(end_date) FROM job_history GROUP BY arbeitnehmer_id	hr_1
SELECT arbeitnehmer_id , MAX(end_date) FROM job_history GROUP BY arbeitnehmer_id	hr_1
SELECT abteilung_id FROM mitarbeiter GROUP BY abteilung_id HAVING COUNT(provisions_pct) > 10	hr_1
SELECT abteilung_id FROM mitarbeiter GROUP BY abteilung_id HAVING COUNT(provisions_pct) > 10	hr_1
SELECT DISTINCT abteilung_id FROM mitarbeiter GROUP BY abteilung_id , manager_id HAVING COUNT(arbeitnehmer_id) >= 4	hr_1
SELECT DISTINCT abteilung_id FROM mitarbeiter GROUP BY abteilung_id , manager_id HAVING COUNT(arbeitnehmer_id) >= 4	hr_1
SELECT abteilung_id , AVG(gehalt) FROM mitarbeiter WHERE provisions_pct != "null" GROUP BY abteilung_id	hr_1
SELECT abteilung_id , AVG(gehalt) FROM mitarbeiter WHERE provisions_pct != "null" GROUP BY abteilung_id	hr_1
SELECT land_id , COUNT(*) FROM standorte GROUP BY land_id	hr_1
SELECT land_id , COUNT(*) FROM standorte GROUP BY land_id	hr_1
SELECT job_id FROM job_history WHERE end_date - startdatum > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT job_id FROM job_history WHERE end_date - startdatum > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT arbeitnehmer_id FROM job_history GROUP BY arbeitnehmer_id HAVING COUNT(*) >= 2	hr_1
SELECT arbeitnehmer_id FROM job_history GROUP BY arbeitnehmer_id HAVING COUNT(*) >= 2	hr_1
SELECT T1.arbeitnehmer_id , T4.land_name FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id JOIN länder AS T4 ON T3.land_id = T4.land_id	hr_1
SELECT T1.arbeitnehmer_id , T4.land_name FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id JOIN länder AS T4 ON T3.land_id = T4.land_id	hr_1
SELECT T2.abteilungsname , COUNT(*) FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id GROUP BY T2.abteilungsname	hr_1
SELECT T2.abteilungsname , COUNT(*) FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id GROUP BY T2.abteilungsname	hr_1
SELECT * FROM job_history AS T1 JOIN mitarbeiter AS T2 ON T1.arbeitnehmer_id = T2.arbeitnehmer_id WHERE T2.gehalt >= 12000	hr_1
SELECT * FROM job_history AS T1 JOIN mitarbeiter AS T2 ON T1.arbeitnehmer_id = T2.arbeitnehmer_id WHERE T2.gehalt >= 12000	hr_1
SELECT job_title , AVG(gehalt) FROM mitarbeiter AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id GROUP BY T2.job_title	hr_1
SELECT job_title , AVG(gehalt) FROM mitarbeiter AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id GROUP BY T2.job_title	hr_1
SELECT vorname , nachname FROM mitarbeiter WHERE gehalt > (SELECT gehalt FROM mitarbeiter WHERE arbeitnehmer_id = 163 )	hr_1
SELECT vorname , nachname FROM mitarbeiter WHERE gehalt > (SELECT gehalt FROM mitarbeiter WHERE arbeitnehmer_id = 163 )	hr_1
SELECT MIN(gehalt) , abteilung_id FROM mitarbeiter GROUP BY abteilung_id	hr_1
SELECT MIN(gehalt) , abteilung_id FROM mitarbeiter GROUP BY abteilung_id	hr_1
SELECT vorname , nachname , abteilung_id FROM mitarbeiter WHERE gehalt IN (SELECT MIN(gehalt) FROM mitarbeiter GROUP BY abteilung_id)	hr_1
SELECT vorname , nachname , abteilung_id FROM mitarbeiter WHERE gehalt IN (SELECT MIN(gehalt) FROM mitarbeiter GROUP BY abteilung_id)	hr_1
SELECT arbeitnehmer_id FROM mitarbeiter WHERE gehalt > (SELECT AVG(gehalt) FROM mitarbeiter)	hr_1
SELECT arbeitnehmer_id FROM mitarbeiter WHERE gehalt > (SELECT AVG(gehalt) FROM mitarbeiter)	hr_1
SELECT arbeitnehmer_id , gehalt FROM mitarbeiter WHERE manager_id = (SELECT arbeitnehmer_id FROM mitarbeiter WHERE vorname = 'Payam' )	hr_1
SELECT arbeitnehmer_id , gehalt FROM mitarbeiter WHERE manager_id = (SELECT arbeitnehmer_id FROM mitarbeiter WHERE vorname = 'Payam' )	hr_1
SELECT DISTINCT T2.abteilungsname FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id	hr_1
SELECT DISTINCT T2.abteilungsname FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id	hr_1
SELECT DISTINCT * FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T1.arbeitnehmer_id = T2.manager_id	hr_1
SELECT DISTINCT * FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T1.arbeitnehmer_id = T2.manager_id	hr_1
SELECT * FROM abteilungen WHERE abteilungsname = 'Marketing'	hr_1
SELECT * FROM abteilungen WHERE abteilungsname = 'Marketing'	hr_1
SELECT arbeitnehmer_id FROM job_history GROUP BY arbeitnehmer_id HAVING COUNT(*) >= 2	hr_1
SELECT arbeitnehmer_id FROM job_history GROUP BY arbeitnehmer_id HAVING COUNT(*) >= 2	hr_1
SELECT DISTINCT abteilung_id FROM mitarbeiter GROUP BY abteilung_id , manager_id HAVING COUNT(arbeitnehmer_id) >= 4	hr_1
SELECT DISTINCT abteilung_id FROM mitarbeiter GROUP BY abteilung_id , manager_id HAVING COUNT(arbeitnehmer_id) >= 4	hr_1
SELECT job_id FROM mitarbeiter GROUP BY job_id HAVING AVG(gehalt) > 8000	hr_1
SELECT job_id FROM mitarbeiter GROUP BY job_id HAVING AVG(gehalt) > 8000	hr_1
SELECT T1.arbeitnehmer_id , T2.job_title FROM mitarbeiter AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id WHERE T1.abteilung_id = 80	hr_1
SELECT T1.arbeitnehmer_id , T2.job_title FROM mitarbeiter AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id WHERE T1.abteilung_id = 80	hr_1
SELECT T1.vorname , T1.job_id FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T2.abteilungsname = 'Finance'	hr_1
SELECT T1.vorname , T1.job_id FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id WHERE T2.abteilungsname = 'Finance'	hr_1
SELECT * FROM mitarbeiter WHERE gehalt BETWEEN (SELECT MIN(gehalt) FROM mitarbeiter) AND 2500	hr_1
SELECT * FROM mitarbeiter WHERE gehalt BETWEEN (SELECT MIN(gehalt) FROM mitarbeiter) AND 2500	hr_1
SELECT * FROM mitarbeiter WHERE abteilung_id NOT IN (SELECT abteilung_id FROM abteilungen WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT * FROM mitarbeiter WHERE abteilung_id NOT IN (SELECT abteilung_id FROM abteilungen WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT vorname , nachname , einstellungsdatum FROM mitarbeiter WHERE abteilung_id = (SELECT abteilung_id FROM mitarbeiter WHERE vorname = "Clara")	hr_1
SELECT vorname , nachname , einstellungsdatum FROM mitarbeiter WHERE abteilung_id = (SELECT abteilung_id FROM mitarbeiter WHERE vorname = "Clara")	hr_1
SELECT vorname , nachname , einstellungsdatum FROM mitarbeiter WHERE abteilung_id = ( SELECT abteilung_id FROM mitarbeiter WHERE vorname = "Clara") AND vorname != "Clara"	hr_1
SELECT vorname , nachname , einstellungsdatum FROM mitarbeiter WHERE abteilung_id = ( SELECT abteilung_id FROM mitarbeiter WHERE vorname = "Clara") AND vorname != "Clara"	hr_1
SELECT arbeitnehmer_id , vorname , nachname FROM mitarbeiter WHERE abteilung_id IN ( SELECT abteilung_id FROM mitarbeiter WHERE vorname LIKE '%T%' )	hr_1
SELECT arbeitnehmer_id , vorname , nachname FROM mitarbeiter WHERE abteilung_id IN ( SELECT abteilung_id FROM mitarbeiter WHERE vorname LIKE '%T%' )	hr_1
SELECT arbeitnehmer_id , vorname , nachname , gehalt FROM mitarbeiter WHERE gehalt > ( SELECT AVG (gehalt) FROM mitarbeiter ) AND abteilung_id IN ( SELECT abteilung_id FROM mitarbeiter WHERE vorname LIKE '%J%')	hr_1
SELECT arbeitnehmer_id , vorname , nachname , gehalt FROM mitarbeiter WHERE gehalt > ( SELECT AVG (gehalt) FROM mitarbeiter ) AND abteilung_id IN ( SELECT abteilung_id FROM mitarbeiter WHERE vorname LIKE '%J%')	hr_1
SELECT arbeitnehmer_id , job_id FROM mitarbeiter WHERE gehalt < ( SELECT min(gehalt) FROM mitarbeiter WHERE job_id = 'MK_MAN' )	hr_1
SELECT arbeitnehmer_id , job_id FROM mitarbeiter WHERE gehalt < ( SELECT min(gehalt) FROM mitarbeiter WHERE job_id = 'MK_MAN' )	hr_1
SELECT arbeitnehmer_id , vorname , nachname , job_id FROM mitarbeiter WHERE gehalt > ( SELECT max(gehalt) FROM mitarbeiter WHERE job_id = 'PU_MAN' )	hr_1
SELECT arbeitnehmer_id , vorname , nachname , job_id FROM mitarbeiter WHERE gehalt > ( SELECT max(gehalt) FROM mitarbeiter WHERE job_id = 'PU_MAN' )	hr_1
SELECT abteilung_id , SUM(gehalt) FROM mitarbeiter GROUP BY abteilung_id HAVING count(*) >= 2	hr_1
SELECT abteilung_id , SUM(gehalt) FROM mitarbeiter GROUP BY abteilung_id HAVING count(*) >= 2	hr_1
SELECT * FROM mitarbeiter WHERE arbeitnehmer_id NOT IN (SELECT arbeitnehmer_id FROM job_history)	hr_1
SELECT * FROM mitarbeiter WHERE arbeitnehmer_id NOT IN (SELECT arbeitnehmer_id FROM job_history)	hr_1
SELECT vorname , nachname , gehalt , abteilung_id , MAX(gehalt) FROM mitarbeiter GROUP BY abteilung_id	hr_1
SELECT vorname , nachname , gehalt , abteilung_id , MAX(gehalt) FROM mitarbeiter GROUP BY abteilung_id	hr_1
SELECT T1.vorname , T1.nachname , T2.abteilungsname , T3.stadt , T3.bundesland_provinz FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id	hr_1
SELECT T1.vorname , T1.nachname , T2.abteilungsname , T3.stadt , T3.bundesland_provinz FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id	hr_1
SELECT T1.vorname , T1.nachname , T3.stadt FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id WHERE T1.vorname LIKE '%z%'	hr_1
SELECT T1.vorname , T1.nachname , T3.stadt FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id WHERE T1.vorname LIKE '%z%'	hr_1
SELECT T1.abteilungsname , T2.stadt , T2.bundesland_provinz FROM abteilungen AS T1 JOIN standorte AS T2 ON T2.ort_id = T1.ort_id	hr_1
SELECT T1.abteilungsname , T2.stadt , T2.bundesland_provinz FROM abteilungen AS T1 JOIN standorte AS T2 ON T2.ort_id = T1.ort_id	hr_1
SELECT T1.vorname , T1.nachname , T1.arbeitnehmer_id , T4.land_name FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id JOIN länder AS T4 ON T3.land_id = T4.land_id	hr_1
SELECT T1.vorname , T1.nachname , T1.arbeitnehmer_id , T4.land_name FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id JOIN länder AS T4 ON T3.land_id = T4.land_id	hr_1
SELECT abteilungsname , COUNT(*) FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id GROUP BY abteilungsname	hr_1
SELECT abteilungsname , COUNT(*) FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id GROUP BY abteilungsname	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id WHERE T3.stadt = 'London'	hr_1
SELECT vorname , nachname , gehalt FROM mitarbeiter AS T1 JOIN abteilungen AS T2 ON T1.abteilung_id = T2.abteilung_id JOIN standorte AS T3 ON T2.ort_id = T3.ort_id WHERE T3.stadt = 'London'	hr_1
SELECT songname , release_date FROM song ORDER BY release_date DESC LIMIT 1	music_1
SELECT songname , release_date FROM song ORDER BY release_date DESC LIMIT 1	music_1
SELECT song_id FROM files ORDER BY dauer DESC LIMIT 1	music_1
SELECT song_id FROM files ORDER BY dauer DESC LIMIT 1	music_1
SELECT songname FROM song WHERE sprachen = "english"	music_1
SELECT songname FROM song WHERE sprachen = "english"	music_1
SELECT song_id FROM files WHERE formate = "mp3"	music_1
SELECT song_id FROM files WHERE formate = "mp3"	music_1
SELECT DISTINCT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.bewertung > 9	music_1
SELECT DISTINCT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.bewertung > 9	music_1
SELECT DISTINCT T1.dateigröße , T1.formate FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T2.resolution < 800	music_1
SELECT DISTINCT T1.dateigröße , T1.formate FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T2.resolution < 800	music_1
SELECT T1.künstlername FROM song AS T1 JOIN files AS T2 ON T1.song_id = T2.song_id ORDER BY T2.dauer LIMIT 1	music_1
SELECT T1.künstlername FROM song AS T1 JOIN files AS T2 ON T1.song_id = T2.song_id ORDER BY T2.dauer LIMIT 1	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername ORDER BY T2.bewertung DESC LIMIT 3	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername ORDER BY T2.bewertung DESC LIMIT 3	music_1
SELECT count(*) FROM files WHERE dauer LIKE "4:%"	music_1
SELECT count(*) FROM files WHERE dauer LIKE "4:%"	music_1
SELECT count(*) FROM künstler WHERE land = "Bangladesh"	music_1
SELECT count(*) FROM künstler WHERE land = "Bangladesh"	music_1
SELECT avg(T2.bewertung) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T1.geschlecht = "Female"	music_1
SELECT avg(T2.bewertung) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T1.geschlecht = "Female"	music_1
SELECT formate FROM files GROUP BY formate ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT formate FROM files GROUP BY formate ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT künstlername FROM künstler WHERE land = "UK" INTERSECT SELECT künstlername FROM song WHERE sprachen = "english"	music_1
SELECT künstlername FROM künstler WHERE land = "UK" INTERSECT SELECT künstlername FROM song WHERE sprachen = "english"	music_1
SELECT song_id FROM files WHERE formate = "mp4" INTERSECT SELECT song_id FROM song WHERE resolution < 1000	music_1
SELECT song_id FROM files WHERE formate = "mp4" INTERSECT SELECT song_id FROM song WHERE resolution < 1000	music_1
SELECT T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T1.geschlecht = "Female" AND T2.sprachen = "bangla"	music_1
SELECT T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T1.geschlecht = "Female" AND T2.sprachen = "bangla"	music_1
SELECT avg(T1.dauer) FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.formate = "mp3" AND T2.resolution < 800	music_1
SELECT avg(T1.dauer) FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.formate = "mp3" AND T2.resolution < 800	music_1
SELECT count(*) , geschlecht FROM künstler GROUP BY geschlecht	music_1
SELECT count(*) , geschlecht FROM künstler GROUP BY geschlecht	music_1
SELECT avg(bewertung) , sprachen FROM song GROUP BY sprachen	music_1
SELECT avg(bewertung) , sprachen FROM song GROUP BY sprachen	music_1
SELECT T1.geschlecht , T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername ORDER BY T2.resolution LIMIT 1	music_1
SELECT T1.geschlecht , T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername ORDER BY T2.resolution LIMIT 1	music_1
SELECT count(*) , formate FROM files GROUP BY formate	music_1
SELECT count(*) , formate FROM files GROUP BY formate	music_1
SELECT DISTINCT songname FROM song WHERE resolution > (SELECT min(resolution) FROM song WHERE sprachen = "english")	music_1
SELECT DISTINCT songname FROM song WHERE resolution > (SELECT min(resolution) FROM song WHERE sprachen = "english")	music_1
SELECT songname FROM song WHERE bewertung < (SELECT max(bewertung) FROM song WHERE genre_is = "blues")	music_1
SELECT songname FROM song WHERE bewertung < (SELECT max(bewertung) FROM song WHERE genre_is = "blues")	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.songname LIKE "%love%"	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.songname LIKE "%love%"	music_1
SELECT T1.künstlername , T1.geschlecht FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.release_date LIKE "%Mar%"	music_1
SELECT T1.künstlername , T1.geschlecht FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.release_date LIKE "%Mar%"	music_1
SELECT genre_name , bewertung FROM genre ORDER BY genre_name	music_1
SELECT genre_name , bewertung FROM genre ORDER BY genre_name	music_1
SELECT songname FROM song ORDER BY resolution	music_1
SELECT songname FROM song ORDER BY resolution	music_1
SELECT song_id FROM files WHERE formate = "mp4" UNION SELECT song_id FROM song WHERE resolution > 720	music_1
SELECT song_id FROM files WHERE formate = "mp4" UNION SELECT song_id FROM song WHERE resolution > 720	music_1
SELECT T2.songname FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.dauer LIKE "4:%" UNION SELECT songname FROM song WHERE sprachen = "english"	music_1
SELECT T2.songname FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.dauer LIKE "4:%" UNION SELECT songname FROM song WHERE sprachen = "english"	music_1
SELECT sprachen FROM song GROUP BY sprachen ORDER BY count(*) DESC LIMIT 1	music_1
SELECT sprachen FROM song GROUP BY sprachen ORDER BY count(*) DESC LIMIT 1	music_1
SELECT künstlername FROM song WHERE resolution > 500 GROUP BY sprachen ORDER BY count(*) DESC LIMIT 1	music_1
SELECT künstlername FROM song WHERE resolution > 500 GROUP BY sprachen ORDER BY count(*) DESC LIMIT 1	music_1
SELECT künstlername FROM künstler WHERE land = "UK" AND geschlecht = "Male"	music_1
SELECT künstlername FROM künstler WHERE land = "UK" AND geschlecht = "Male"	music_1
SELECT songname FROM song WHERE genre_is = "modern" OR sprachen = "english"	music_1
SELECT songname FROM song WHERE genre_is = "modern" OR sprachen = "english"	music_1
SELECT T2.songname FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.formate = "mp3" INTERSECT SELECT songname FROM song WHERE resolution < 1000	music_1
SELECT T2.songname FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.formate = "mp3" INTERSECT SELECT songname FROM song WHERE resolution < 1000	music_1
SELECT künstlername FROM künstler WHERE land = "UK" INTERSECT SELECT T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "english"	music_1
SELECT künstlername FROM künstler WHERE land = "UK" INTERSECT SELECT T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "english"	music_1
SELECT avg(bewertung) , avg(resolution) FROM song WHERE sprachen = "bangla"	music_1
SELECT avg(bewertung) , avg(resolution) FROM song WHERE sprachen = "bangla"	music_1
SELECT max(T2.resolution) , min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.dauer LIKE "3:%"	music_1
SELECT max(T2.resolution) , min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.dauer LIKE "3:%"	music_1
SELECT max(T1.dauer) , max(T2.resolution) , T2.sprachen FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id GROUP BY T2.sprachen ORDER BY T2.sprachen	music_1
SELECT max(T1.dauer) , max(T2.resolution) , T2.sprachen FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id GROUP BY T2.sprachen ORDER BY T2.sprachen	music_1
SELECT min(T1.dauer) , min(T2.bewertung) , T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT min(T1.dauer) , min(T2.bewertung) , T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT T1.künstlername , count(*) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "english" GROUP BY T2.künstlername HAVING count(*) >= 1	music_1
SELECT T1.künstlername , count(*) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "english" GROUP BY T2.künstlername HAVING count(*) >= 1	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.resolution > 900 GROUP BY T2.künstlername HAVING count(*) >= 1	music_1
SELECT T1.künstlername , T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.resolution > 900 GROUP BY T2.künstlername HAVING count(*) >= 1	music_1
SELECT T1.künstlername , count(*) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername GROUP BY T2.künstlername ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.künstlername , count(*) FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername GROUP BY T2.künstlername ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername GROUP BY T2.künstlername ORDER BY count(*) LIMIT 1	music_1
SELECT T1.land FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername GROUP BY T2.künstlername ORDER BY count(*) LIMIT 1	music_1
SELECT songname FROM song WHERE bewertung < (SELECT min(bewertung) FROM song WHERE sprachen = 'english')	music_1
SELECT songname FROM song WHERE bewertung < (SELECT min(bewertung) FROM song WHERE sprachen = 'english')	music_1
SELECT song_id FROM song WHERE resolution > (SELECT max(resolution) FROM song WHERE bewertung < 8)	music_1
SELECT song_id FROM song WHERE resolution > (SELECT max(resolution) FROM song WHERE bewertung < 8)	music_1
SELECT song_id FROM song WHERE resolution > (SELECT avg(resolution) FROM song WHERE genre_is = "modern")	music_1
SELECT song_id FROM song WHERE resolution > (SELECT avg(resolution) FROM song WHERE genre_is = "modern")	music_1
SELECT T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "bangla" GROUP BY T2.künstlername ORDER BY count(*) DESC LIMIT 3	music_1
SELECT T1.künstlername FROM künstler AS T1 JOIN song AS T2 ON T1.künstlername = T2.künstlername WHERE T2.sprachen = "bangla" GROUP BY T2.künstlername ORDER BY count(*) DESC LIMIT 3	music_1
SELECT song_id , genre_is , künstlername FROM song WHERE sprachen = "english" ORDER BY bewertung	music_1
SELECT song_id , genre_is , künstlername FROM song WHERE sprachen = "english" ORDER BY bewertung	music_1
SELECT T1.dauer , T1.dateigröße , T1.formate FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T2.genre_is = "pop" ORDER BY T2.songname	music_1
SELECT T1.dauer , T1.dateigröße , T1.formate FROM files AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T2.genre_is = "pop" ORDER BY T2.songname	music_1
SELECT DISTINCT künstlername FROM song WHERE sprachen = "english" EXCEPT SELECT DISTINCT künstlername FROM song WHERE bewertung > 8	music_1
SELECT DISTINCT künstlername FROM song WHERE sprachen = "english" EXCEPT SELECT DISTINCT künstlername FROM song WHERE bewertung > 8	music_1
SELECT DISTINCT künstlername FROM künstler WHERE land = "Bangladesh" EXCEPT SELECT DISTINCT künstlername FROM song WHERE bewertung > 7	music_1
SELECT DISTINCT künstlername FROM künstler WHERE land = "Bangladesh" EXCEPT SELECT DISTINCT künstlername FROM song WHERE bewertung > 7	music_1
SELECT T1.name_voll , T1.college_id FROM hochschule AS T1 JOIN spielerschule AS T2 ON T1.college_id = T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_voll , T1.college_id FROM hochschule AS T1 JOIN spielerschule AS T2 ON T1.college_id = T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT avg(T1.gehalt) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings'	baseball_1
SELECT avg(T1.gehalt) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings'	baseball_1
SELECT name_vor , nachname FROM spieler AS T1 JOIN all_star AS T2 ON T1.spieler_id = T2.spieler_id WHERE jahr = 1998	baseball_1
SELECT name_vor , nachname FROM spieler AS T1 JOIN all_star AS T2 ON T1.spieler_id = T2.spieler_id WHERE jahr = 1998	baseball_1
SELECT T1.name_vor , T1.nachname , T1.spieler_id , count(*) FROM spieler AS T1 JOIN all_star AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spieler_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_vor , T1.nachname , T1.spieler_id , count(*) FROM spieler AS T1 JOIN all_star AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spieler_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT yearid , count(*) FROM ruhmeshalle GROUP BY yearid;	baseball_1
SELECT yearid , count(*) FROM ruhmeshalle GROUP BY yearid;	baseball_1
SELECT jahr , avg(anwesenheit) FROM heimspiel GROUP BY jahr;	baseball_1
SELECT jahr , avg(anwesenheit) FROM heimspiel GROUP BY jahr;	baseball_1
SELECT T2.team_id , T2.rang FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id WHERE T1.jahr = 2014 GROUP BY T1.team_id ORDER BY avg(T1.anwesenheit) DESC LIMIT 1;	baseball_1
SELECT T2.team_id , T2.rang FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id WHERE T1.jahr = 2014 GROUP BY T1.team_id ORDER BY avg(T1.anwesenheit) DESC LIMIT 1;	baseball_1
SELECT T1.name_vor , T1.nachname , T2.spieler_id FROM spieler AS T1 JOIN manager_prämie AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T2.spieler_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T1.name_vor , T1.nachname , T2.spieler_id FROM spieler AS T1 JOIN manager_prämie AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T2.spieler_id ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT count(*) FROM park WHERE staat = 'NY';	baseball_1
SELECT count(*) FROM park WHERE staat = 'NY';	baseball_1
SELECT T1.name_vor , T1.nachname , T1.spieler_id FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spieler_id ORDER BY count(*) DESC LIMIT 3;	baseball_1
SELECT T1.name_vor , T1.nachname , T1.spieler_id FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spieler_id ORDER BY count(*) DESC LIMIT 3;	baseball_1
SELECT geburtsland FROM spieler GROUP BY geburtsland ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT geburtsland FROM spieler GROUP BY geburtsland ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT name_vor , nachname FROM spieler WHERE todesjahr = '';	baseball_1
SELECT name_vor , nachname FROM spieler WHERE todesjahr = '';	baseball_1
SELECT count(*) FROM spieler WHERE geburtsland = 'USA' AND schläger = 'R';	baseball_1
SELECT count(*) FROM spieler WHERE geburtsland = 'USA' AND schläger = 'R';	baseball_1
SELECT avg(T1.größe) FROM spieler AS T1 JOIN spielerschule AS T2 ON T1.spieler_id = T2.spieler_id JOIN hochschule AS T3 ON T3.college_id = T2.college_id WHERE T3.name_voll = 'Yale University';	baseball_1
SELECT avg(T1.größe) FROM spieler AS T1 JOIN spielerschule AS T2 ON T1.spieler_id = T2.spieler_id JOIN hochschule AS T3 ON T3.college_id = T2.college_id WHERE T3.name_voll = 'Yale University';	baseball_1
SELECT T1.name , T1.team_id , max(T2.gehalt) FROM mannschaft AS T1 JOIN gehalt AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id;	baseball_1
SELECT T1.name , T1.team_id , max(T2.gehalt) FROM mannschaft AS T1 JOIN gehalt AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id;	baseball_1
SELECT T1.name , T1.team_id FROM mannschaft AS T1 JOIN gehalt AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.gehalt) ASC LIMIT 1;	baseball_1
SELECT T1.name , T1.team_id FROM mannschaft AS T1 JOIN gehalt AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.gehalt) ASC LIMIT 1;	baseball_1
SELECT T1.name_vor , T1.nachname FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 WHERE T2.jahr = 1960 INTERSECT SELECT T1.name_vor , T1.nachname FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 WHERE T2.jahr = 1961	baseball_1
SELECT T1.name_vor , T1.nachname FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 WHERE T2.jahr = 1960 INTERSECT SELECT T1.name_vor , T1.nachname FROM spieler AS T1 JOIN spieler_auszeichnung AS T2 WHERE T2.jahr = 1961	baseball_1
SELECT name_vor , nachname FROM spieler WHERE gewicht > 220 OR größe < 75	baseball_1
SELECT name_vor , nachname FROM spieler WHERE gewicht > 220 OR größe < 75	baseball_1
SELECT max(T1.siege) FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings';	baseball_1
SELECT max(T1.siege) FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings';	baseball_1
SELECT count(*) FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.mannschaftskennung_verlierer = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2009;	baseball_1
SELECT count(*) FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.mannschaftskennung_verlierer = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2009;	baseball_1
SELECT T2.name , T1.team_id_winner FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T1.jahr = 2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT T2.name , T1.team_id_winner FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T1.jahr = 2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;	baseball_1
SELECT count(*) , T1.jahr FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' GROUP BY T1.jahr	baseball_1
SELECT count(*) , T1.jahr FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' GROUP BY T1.jahr	baseball_1
SELECT count(*) FROM ( SELECT * FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' UNION SELECT * FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.mannschaftskennung_verlierer = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM ( SELECT * FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' UNION SELECT * FROM nachsaison AS T1 JOIN mannschaft AS T2 ON T1.mannschaftskennung_verlierer = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM nachsaison WHERE jahr = 1885 AND ties = 1;	baseball_1
SELECT count(*) FROM nachsaison WHERE jahr = 1885 AND ties = 1;	baseball_1
SELECT sum(T1.gehalt) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2010	baseball_1
SELECT sum(T1.gehalt) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2010	baseball_1
SELECT count(*) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2000	baseball_1
SELECT count(*) FROM gehalt AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr = 2000	baseball_1
SELECT gehalt FROM gehalt WHERE jahr = 2001 ORDER BY gehalt DESC LIMIT 3;	baseball_1
SELECT gehalt FROM gehalt WHERE jahr = 2001 ORDER BY gehalt DESC LIMIT 3;	baseball_1
SELECT gehalt FROM gehalt WHERE jahr = 2010 UNION SELECT gehalt FROM gehalt WHERE jahr = 2001	baseball_1
SELECT gehalt FROM gehalt WHERE jahr = 2010 UNION SELECT gehalt FROM gehalt WHERE jahr = 2001	baseball_1
SELECT yearid FROM ruhmeshalle GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT yearid FROM ruhmeshalle GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT count(*) FROM park WHERE stadt = 'Atlanta';	baseball_1
SELECT count(*) FROM park WHERE stadt = 'Atlanta';	baseball_1
SELECT count(*) FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 1907 AND T2.park_name = 'Columbia Park';	baseball_1
SELECT count(*) FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 1907 AND T2.park_name = 'Columbia Park';	baseball_1
SELECT count(*) FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 2000 AND T2.stadt = 'Atlanta';	baseball_1
SELECT count(*) FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 2000 AND T2.stadt = 'Atlanta';	baseball_1
SELECT sum(T1.anwesenheit) FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr BETWEEN 2000 AND 2010;	baseball_1
SELECT sum(T1.anwesenheit) FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr BETWEEN 2000 AND 2010;	baseball_1
SELECT sum(T1.gehalt) FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.name_vor = 'Len' AND T2.nachname = 'Barker' AND T1.jahr BETWEEN 1985 AND 1990;	baseball_1
SELECT sum(T1.gehalt) FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.name_vor = 'Len' AND T2.nachname = 'Barker' AND T1.jahr BETWEEN 1985 AND 1990;	baseball_1
SELECT T2.name_vor , T2.nachname FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id JOIN mannschaft AS T3 ON T3.team_id_br = T1.team_id WHERE T1.jahr = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_vor , T2.nachname FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id JOIN mannschaft AS T3 ON T3.team_id_br = T1.team_id WHERE T1.jahr = 2007 AND T3.name = 'Washington Nationals'	baseball_1
SELECT T2.name_vor , T2.nachname FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id JOIN mannschaft AS T3 ON T3.team_id_br = T1.team_id WHERE T1.jahr = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_vor , T2.nachname FROM gehalt AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id JOIN mannschaft AS T3 ON T3.team_id_br = T1.team_id WHERE T1.jahr = 2007 AND T3.name = 'Washington Nationals'	baseball_1
SELECT sum(T1.spiele) FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr BETWEEN 1990 AND 2000;	baseball_1
SELECT sum(T1.spiele) FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.jahr BETWEEN 1990 AND 2000;	baseball_1
SELECT T2.name FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T1.jahr = 1980 ORDER BY T1.anwesenheit ASC LIMIT 1;	baseball_1
SELECT T2.name FROM heimspiel AS T1 JOIN mannschaft AS T2 ON T1.team_id = T2.team_id_br WHERE T1.jahr = 1980 ORDER BY T1.anwesenheit ASC LIMIT 1;	baseball_1
SELECT staat FROM park GROUP BY staat HAVING count(*) > 2;	baseball_1
SELECT staat FROM park GROUP BY staat HAVING count(*) > 2;	baseball_1
SELECT count(*) FROM team_franchise WHERE aktiv = 'Y';	baseball_1
SELECT count(*) FROM team_franchise WHERE aktiv = 'Y';	baseball_1
SELECT stadt FROM park GROUP BY stadt HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT stadt FROM park GROUP BY stadt HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT T2.park_name FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 2008 ORDER BY T1.anwesenheit DESC LIMIT 1;	baseball_1
SELECT T2.park_name FROM heimspiel AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.jahr = 2008 ORDER BY T1.anwesenheit DESC LIMIT 1;	baseball_1
SELECT count(*) FROM kameraobjektiv WHERE brennweite_mm > 15	mountain_photos
SELECT marke , name FROM kameraobjektiv ORDER BY maximale_blende DESC	mountain_photos
SELECT id , farbe , name FROM fotos	mountain_photos
SELECT max(höhe) , avg(höhe) FROM berg	mountain_photos
SELECT avg(vorsprung) FROM berg WHERE land = 'Morocco'	mountain_photos
SELECT name , höhe , vorsprung FROM berg WHERE bereich != 'Aberdare Range'	mountain_photos
SELECT T1.id , T1.name FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id WHERE T1.höhe > 4000	mountain_photos
SELECT T1.id , T1.name FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id GROUP BY T1.id HAVING count(*) >= 2	mountain_photos
SELECT T2.name FROM fotos AS T1 JOIN kameraobjektiv AS T2 ON T1.kameraobjektiv_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	mountain_photos
SELECT T1.name FROM kameraobjektiv AS T1 JOIN fotos AS T2 ON T2.kameraobjektiv_id = T1.id WHERE T1.marke = 'Sigma' OR T1.marke = 'Olympus'	mountain_photos
SELECT count(DISTINCT marke) FROM kameraobjektiv	mountain_photos
SELECT count(*) FROM kameraobjektiv WHERE id NOT IN ( SELECT kameraobjektiv_id FROM fotos )	mountain_photos
SELECT count(DISTINCT T2.kameraobjektiv_id) FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id WHERE T1.land = 'Ethiopia'	mountain_photos
SELECT T3.marke FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id JOIN kameraobjektiv AS T3 ON T2.kameraobjektiv_id = T3.id WHERE T1.bereich = 'Toubkal Atlas' INTERSECT SELECT T3.marke FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id JOIN kameraobjektiv AS T3 ON T2.kameraobjektiv_id = T3.id WHERE T1.bereich = 'Lasta Massif'	mountain_photos
SELECT name , vorsprung FROM berg EXCEPT SELECT T1.name , T1.vorsprung FROM berg AS T1 JOIN fotos AS T2 ON T1.id = T2.berg_id JOIN kameraobjektiv AS T3 ON T2.kameraobjektiv_id = T3.id WHERE T3.marke = 'Sigma'	mountain_photos
SELECT name FROM kameraobjektiv WHERE name LIKE "%Digital%"	mountain_photos
SELECT T1.name , count(*) FROM kameraobjektiv AS T1 JOIN fotos AS T2 ON T1.id = T2.kameraobjektiv_id GROUP BY T1.id ORDER BY count(*)	mountain_photos
SELECT name FROM kanal WHERE besitzer != 'CCTV'	program_share
SELECT name FROM kanal WHERE besitzer != 'CCTV'	program_share
SELECT name FROM kanal ORDER BY bewertung_in_prozent DESC	program_share
SELECT name FROM kanal ORDER BY bewertung_in_prozent DESC	program_share
SELECT besitzer FROM kanal ORDER BY bewertung_in_prozent DESC LIMIT 1	program_share
SELECT besitzer FROM kanal ORDER BY bewertung_in_prozent DESC LIMIT 1	program_share
SELECT count(*) FROM programm	program_share
SELECT count(*) FROM programm	program_share
SELECT name FROM programm ORDER BY start	program_share
SELECT name FROM programm ORDER BY start	program_share
SELECT name , herkunft , besitzer FROM programm	program_share
SELECT name , herkunft , besitzer FROM programm	program_share
SELECT name FROM programm ORDER BY start DESC LIMIT 1	program_share
SELECT name FROM programm ORDER BY start DESC LIMIT 1	program_share
SELECT sum(anteil_in_prozent) FROM kanal WHERE besitzer = 'CCTV'	program_share
SELECT sum(anteil_in_prozent) FROM kanal WHERE besitzer = 'CCTV'	program_share
SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Morning'	program_share
SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Morning'	program_share
SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Morning' INTERSECT SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Night'	program_share
SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Morning' INTERSECT SELECT t1.name FROM kanal AS t1 JOIN broadcast AS t2 ON t1.kanal_id = t2.kanal_id WHERE t2.tageszeit = 'Night'	program_share
SELECT count(*) , tageszeit FROM broadcast GROUP BY tageszeit	program_share
SELECT count(*) , tageszeit FROM broadcast GROUP BY tageszeit	program_share
SELECT count(DISTINCT programm_id) FROM broadcast WHERE tageszeit = 'Night'	program_share
SELECT count(DISTINCT programm_id) FROM broadcast WHERE tageszeit = 'Night'	program_share
SELECT name FROM programm EXCEPT SELECT t1.name FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Morning"	program_share
SELECT name FROM programm EXCEPT SELECT t1.name FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Morning"	program_share
SELECT t1.besitzer FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Morning" INTERSECT SELECT t1.besitzer FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Night"	program_share
SELECT t1.besitzer FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Morning" INTERSECT SELECT t1.besitzer FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id WHERE t2.tageszeit = "Night"	program_share
SELECT herkunft FROM programm ORDER BY herkunft	program_share
SELECT herkunft FROM programm ORDER BY herkunft	program_share
SELECT count(DISTINCT besitzer) FROM kanal	program_share
SELECT count(DISTINCT besitzer) FROM kanal	program_share
SELECT name FROM programm WHERE herkunft != 'Beijing'	program_share
SELECT name FROM programm WHERE herkunft != 'Beijing'	program_share
SELECT name FROM kanal WHERE besitzer = 'CCTV' OR besitzer = 'HBS'	program_share
SELECT name FROM kanal WHERE besitzer = 'CCTV' OR besitzer = 'HBS'	program_share
SELECT sum(bewertung_in_prozent) , besitzer FROM kanal GROUP BY besitzer	program_share
SELECT sum(bewertung_in_prozent) , besitzer FROM kanal GROUP BY besitzer	program_share
SELECT t1.name FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id GROUP BY t2.programm_id ORDER BY count(*) DESC LIMIT 1	program_share
SELECT t1.name FROM programm AS t1 JOIN broadcast AS t2 ON t1.programm_id = t2.programm_id GROUP BY t2.programm_id ORDER BY count(*) DESC LIMIT 1	program_share
SELECT count(*) FROM kurse	e_learning
SELECT count(*) FROM kurse	e_learning
SELECT kursbeschreibung FROM kurse WHERE kursname = "database"	e_learning
SELECT kursbeschreibung FROM kurse WHERE kursname = "database"	e_learning
SELECT adresse_zeile_1 FROM kursautoren_und_tutoren WHERE persönlicher_name = "Cathrine"	e_learning
SELECT adresse_zeile_1 FROM kursautoren_und_tutoren WHERE persönlicher_name = "Cathrine"	e_learning
SELECT adresse_zeile_1 FROM kursautoren_und_tutoren	e_learning
SELECT adresse_zeile_1 FROM kursautoren_und_tutoren	e_learning
SELECT login_name , familienname FROM kursautoren_und_tutoren	e_learning
SELECT login_name , familienname FROM kursautoren_und_tutoren	e_learning
SELECT datum_der_einschreibung , datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT datum_der_einschreibung , datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT count(DISTINCT student_id) FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT count(DISTINCT student_id) FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT count(kurs_id) FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT count(kurs_id) FROM einschreibung_von_studenten_in_kurse	e_learning
SELECT datum_test_abgelegt FROM student_tests_taken WHERE testergebnis = "Pass"	e_learning
SELECT datum_test_abgelegt FROM student_tests_taken WHERE testergebnis = "Pass"	e_learning
SELECT count(*) FROM student_tests_taken WHERE testergebnis = "Fail"	e_learning
SELECT count(*) FROM student_tests_taken WHERE testergebnis = "Fail"	e_learning
SELECT login_name FROM studenten WHERE familienname = "Ward"	e_learning
SELECT login_name FROM studenten WHERE familienname = "Ward"	e_learning
SELECT datum_der_letzten_anmeldung FROM studenten WHERE familienname = "Jaskolski" OR familienname = "Langosh"	e_learning
SELECT datum_der_letzten_anmeldung FROM studenten WHERE familienname = "Jaskolski" OR familienname = "Langosh"	e_learning
SELECT COUNT(*) FROM studenten WHERE persönlicher_name LIKE "%son%"	e_learning
SELECT COUNT(*) FROM studenten WHERE persönlicher_name LIKE "%son%"	e_learning
SELECT fächername FROM fächer	e_learning
SELECT fächername FROM fächer	e_learning
SELECT * FROM kursautoren_und_tutoren ORDER BY persönlicher_name	e_learning
SELECT * FROM kursautoren_und_tutoren ORDER BY persönlicher_name	e_learning
SELECT persönlicher_name , familienname FROM studenten ORDER BY familienname	e_learning
SELECT persönlicher_name , familienname FROM studenten ORDER BY familienname	e_learning
SELECT testergebnis , COUNT(*) FROM student_tests_taken GROUP BY testergebnis ORDER BY COUNT(*) DESC	e_learning
SELECT testergebnis , COUNT(*) FROM student_tests_taken GROUP BY testergebnis ORDER BY COUNT(*) DESC	e_learning
SELECT T1.login_name FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T2.kursname = "advanced database"	e_learning
SELECT T1.login_name FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T2.kursname = "advanced database"	e_learning
SELECT T1.adresse_zeile_1 FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T2.kursname = "operating system" OR T2.kursname = "data structure"	e_learning
SELECT T1.adresse_zeile_1 FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T2.kursname = "operating system" OR T2.kursname = "data structure"	e_learning
SELECT T1.persönlicher_name , T1.familienname , T2.autor_id FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id GROUP BY T2.autor_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.persönlicher_name , T1.familienname , T2.autor_id FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id GROUP BY T2.autor_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.adresse_zeile_1 , T2.autor_id FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id GROUP BY T2.autor_id HAVING Count(*) >= 2	e_learning
SELECT T1.adresse_zeile_1 , T2.autor_id FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id GROUP BY T2.autor_id HAVING Count(*) >= 2	e_learning
SELECT T2.kursname FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T1.persönlicher_name = "Julio"	e_learning
SELECT T2.kursname FROM kursautoren_und_tutoren AS T1 JOIN kurse AS T2 ON T1.autor_id = T2.autor_id WHERE T1.persönlicher_name = "Julio"	e_learning
SELECT T1.kursname , T1.kursbeschreibung FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id WHERE T2.fächername = "Computer Science"	e_learning
SELECT T1.kursname , T1.kursbeschreibung FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id WHERE T2.fächername = "Computer Science"	e_learning
SELECT T1.fach_id , T2.fächername , COUNT(*) FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id GROUP BY T1.fach_id	e_learning
SELECT T1.fach_id , T2.fächername , COUNT(*) FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id GROUP BY T1.fach_id	e_learning
SELECT T1.fach_id , T2.fächername , COUNT(*) FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id GROUP BY T1.fach_id ORDER BY COUNT(*) ASC	e_learning
SELECT T1.fach_id , T2.fächername , COUNT(*) FROM kurse AS T1 JOIN fächer AS T2 ON T1.fach_id = T2.fach_id GROUP BY T1.fach_id ORDER BY COUNT(*) ASC	e_learning
SELECT T2.datum_der_einschreibung FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "Spanish"	e_learning
SELECT T2.datum_der_einschreibung FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id WHERE T1.kursname = "Spanish"	e_learning
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname HAVING COUNT(*) = 1	e_learning
SELECT T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname HAVING COUNT(*) = 1	e_learning
SELECT T1.kursbeschreibung , T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname HAVING COUNT(*) > 2	e_learning
SELECT T1.kursbeschreibung , T1.kursname FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname HAVING COUNT(*) > 2	e_learning
SELECT T1.kursname , COUNT(*) FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname	e_learning
SELECT T1.kursname , COUNT(*) FROM kurse AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T1.kursname	e_learning
SELECT T1.datum_der_einschreibung FROM einschreibung_von_studenten_in_kurse AS T1 JOIN student_tests_taken AS T2 ON T1.einschreibung_id = T2.einschreibung_id WHERE T2.testergebnis = "Pass"	e_learning
SELECT T1.datum_der_einschreibung FROM einschreibung_von_studenten_in_kurse AS T1 JOIN student_tests_taken AS T2 ON T1.einschreibung_id = T2.einschreibung_id WHERE T2.testergebnis = "Pass"	e_learning
SELECT T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN student_tests_taken AS T2 ON T1.einschreibung_id = T2.einschreibung_id WHERE T2.testergebnis = "Fail"	e_learning
SELECT T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN student_tests_taken AS T2 ON T1.einschreibung_id = T2.einschreibung_id WHERE T2.testergebnis = "Fail"	e_learning
SELECT T1.datum_der_einschreibung , T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id WHERE T2.persönlicher_name = "Karson"	e_learning
SELECT T1.datum_der_einschreibung , T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id WHERE T2.persönlicher_name = "Karson"	e_learning
SELECT T1.datum_der_einschreibung , T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id WHERE T2.familienname = "Zieme" AND T2.persönlicher_name = "Bernie"	e_learning
SELECT T1.datum_der_einschreibung , T1.datum_des_abschlusses FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id WHERE T2.familienname = "Zieme" AND T2.persönlicher_name = "Bernie"	e_learning
SELECT T1.student_id , T2.login_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.student_id , T2.login_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1	e_learning
SELECT T1.student_id , T2.persönlicher_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2	e_learning
SELECT T1.student_id , T2.persönlicher_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2	e_learning
SELECT T1.student_id , T2.mittlerer_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) <= 2	e_learning
SELECT T1.student_id , T2.mittlerer_name FROM einschreibung_von_studenten_in_kurse AS T1 JOIN studenten AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) <= 2	e_learning
SELECT persönlicher_name FROM studenten EXCEPT SELECT T1.persönlicher_name FROM studenten AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.student_id = T2.student_id	e_learning
SELECT persönlicher_name FROM studenten EXCEPT SELECT T1.persönlicher_name FROM studenten AS T1 JOIN einschreibung_von_studenten_in_kurse AS T2 ON T1.student_id = T2.student_id	e_learning
SELECT count(*) FROM studenten WHERE student_id NOT IN (SELECT student_id FROM einschreibung_von_studenten_in_kurse)	e_learning
SELECT count(*) FROM studenten WHERE student_id NOT IN (SELECT student_id FROM einschreibung_von_studenten_in_kurse)	e_learning
SELECT login_name FROM kursautoren_und_tutoren INTERSECT SELECT login_name FROM studenten	e_learning
SELECT login_name FROM kursautoren_und_tutoren INTERSECT SELECT login_name FROM studenten	e_learning
SELECT persönlicher_name FROM kursautoren_und_tutoren INTERSECT SELECT persönlicher_name FROM studenten	e_learning
SELECT persönlicher_name FROM kursautoren_und_tutoren INTERSECT SELECT persönlicher_name FROM studenten	e_learning
SELECT T1.datum_der_schadenmeldung , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer HAVING count(*) > 2 UNION SELECT T1.datum_der_schadenmeldung , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer WHERE T1.geforderter_betrag = ( SELECT max(geforderter_betrag) FROM ansprüche )	insurance_policies
SELECT T1.datum_der_schadenmeldung , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer HAVING count(*) > 2 UNION SELECT T1.datum_der_schadenmeldung , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer WHERE T1.geforderter_betrag = ( SELECT max(geforderter_betrag) FROM ansprüche )	insurance_policies
SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2 EXCEPT SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id JOIN ansprüche AS T3 ON T2.policy_id = T3.policy_id	insurance_policies
SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 2 EXCEPT SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id JOIN ansprüche AS T3 ON T2.policy_id = T3.policy_id	insurance_policies
SELECT zahlungsart_code , datum_der_zahlung , zahlungsbetrag FROM zahlungen ORDER BY datum_der_zahlung ASC	insurance_policies
SELECT zahlungsart_code , datum_der_zahlung , zahlungsbetrag FROM zahlungen ORDER BY datum_der_zahlung ASC	insurance_policies
SELECT erstattungsbetrag , geforderter_betrag FROM ansprüche ORDER BY geforderter_betrag DESC LIMIT 1	insurance_policies
SELECT erstattungsbetrag , geforderter_betrag FROM ansprüche ORDER BY geforderter_betrag DESC LIMIT 1	insurance_policies
SELECT erstattungsbetrag , geforderter_betrag FROM ansprüche ORDER BY erstattungsbetrag ASC LIMIT 1	insurance_policies
SELECT erstattungsbetrag , geforderter_betrag FROM ansprüche ORDER BY erstattungsbetrag ASC LIMIT 1	insurance_policies
SELECT datum_der_schadenmeldung , datum_schadenregulierung FROM ansprüche WHERE geforderter_betrag > ( SELECT avg(geforderter_betrag) FROM ansprüche )	insurance_policies
SELECT datum_der_schadenmeldung , datum_schadenregulierung FROM ansprüche WHERE geforderter_betrag > ( SELECT avg(geforderter_betrag) FROM ansprüche )	insurance_policies
SELECT datum_der_schadenmeldung FROM ansprüche WHERE erstattungsbetrag <= ( SELECT avg(erstattungsbetrag) FROM ansprüche )	insurance_policies
SELECT datum_der_schadenmeldung FROM ansprüche WHERE erstattungsbetrag <= ( SELECT avg(erstattungsbetrag) FROM ansprüche )	insurance_policies
SELECT T1.forderungsnummer , count(*) FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer	insurance_policies
SELECT T1.forderungsnummer , count(*) FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer	insurance_policies
SELECT T1.forderungsnummer , T1.datum_der_schadenmeldung , count(*) FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT T1.forderungsnummer , T1.datum_der_schadenmeldung , count(*) FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT count(*) , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer ORDER BY T1.datum_schadenregulierung DESC LIMIT 1	insurance_policies
SELECT count(*) , T1.forderungsnummer FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer ORDER BY T1.datum_schadenregulierung DESC LIMIT 1	insurance_policies
SELECT datum_der_schadenmeldung FROM ansprüche ORDER BY datum_der_schadenmeldung ASC LIMIT 1	insurance_policies
SELECT datum_der_schadenmeldung FROM ansprüche ORDER BY datum_der_schadenmeldung ASC LIMIT 1	insurance_policies
SELECT sum(erstattungsbetrag) FROM abrechnungen	insurance_policies
SELECT sum(erstattungsbetrag) FROM abrechnungen	insurance_policies
SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) > 1	insurance_policies
SELECT T1.kundenangaben , T1.kunden_id FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) > 1	insurance_policies
SELECT datum_der_schadenmeldung , datum_schadenregulierung FROM abrechnungen	insurance_policies
SELECT datum_der_schadenmeldung , datum_schadenregulierung FROM abrechnungen	insurance_policies
SELECT zahlungsart_code FROM zahlungen GROUP BY zahlungsart_code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT zahlungsart_code FROM zahlungen GROUP BY zahlungsart_code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT zahlungsart_code FROM zahlungen GROUP BY zahlungsart_code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT zahlungsart_code FROM zahlungen GROUP BY zahlungsart_code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT sum(zahlungsbetrag) FROM zahlungen	insurance_policies
SELECT sum(zahlungsbetrag) FROM zahlungen	insurance_policies
SELECT DISTINCT kundenangaben FROM kunden	insurance_policies
SELECT DISTINCT kundenangaben FROM kunden	insurance_policies
SELECT policy_type_code FROM kundenpolicen GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT policy_type_code FROM kundenpolicen GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT count(*) FROM abrechnungen	insurance_policies
SELECT count(*) FROM abrechnungen	insurance_policies
SELECT zahlung_id , datum_der_zahlung , zahlungsbetrag FROM zahlungen WHERE zahlungsart_code = 'Visa'	insurance_policies
SELECT zahlung_id , datum_der_zahlung , zahlungsbetrag FROM zahlungen WHERE zahlungsart_code = 'Visa'	insurance_policies
SELECT kundenangaben FROM kunden EXCEPT SELECT T1.kundenangaben FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id	insurance_policies
SELECT kundenangaben FROM kunden EXCEPT SELECT T1.kundenangaben FROM kunden AS T1 JOIN kundenpolicen AS T2 ON T1.kunden_id = T2.kunden_id	insurance_policies
SELECT T1.forderungsnummer , T1.datum_der_schadenmeldung , T1.datum_schadenregulierung FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer HAVING count(*) = 1	insurance_policies
SELECT T1.forderungsnummer , T1.datum_der_schadenmeldung , T1.datum_schadenregulierung FROM ansprüche AS T1 JOIN abrechnungen AS T2 ON T1.forderungsnummer = T2.forderungsnummer GROUP BY T1.forderungsnummer HAVING count(*) = 1	insurance_policies
SELECT sum(geforderter_betrag) FROM ansprüche	insurance_policies
SELECT sum(geforderter_betrag) FROM ansprüche	insurance_policies
SELECT name FROM abteilung GROUP BY abteilungsid ORDER BY count(abteilungsid) DESC LIMIT 1;	hospital_1
SELECT name FROM abteilung GROUP BY abteilungsid ORDER BY count(abteilungsid) DESC LIMIT 1;	hospital_1
SELECT head FROM abteilung GROUP BY abteilungsid ORDER BY count(abteilungsid) LIMIT 1;	hospital_1
SELECT head FROM abteilung GROUP BY abteilungsid ORDER BY count(abteilungsid) LIMIT 1;	hospital_1
SELECT T2.name , T2.position FROM abteilung AS T1 JOIN arzt AS T2 ON T1.head = T2.mitarbeiter_id GROUP BY abteilungsid ORDER BY count(abteilungsid) LIMIT 1;	hospital_1
SELECT T2.name , T2.position FROM abteilung AS T1 JOIN arzt AS T2 ON T1.head = T2.mitarbeiter_id GROUP BY abteilungsid ORDER BY count(abteilungsid) LIMIT 1;	hospital_1
SELECT name FROM termin AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn	hospital_1
SELECT name FROM termin AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn	hospital_1
SELECT name , telefon FROM termin AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn GROUP BY T1.patient HAVING count(*) > 1	hospital_1
SELECT name , telefon FROM termin AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn GROUP BY T1.patient HAVING count(*) > 1	hospital_1
SELECT termin_id FROM termin ORDER BY start DESC LIMIT 1	hospital_1
SELECT termin_id FROM termin ORDER BY start DESC LIMIT 1	hospital_1
SELECT T2.name FROM termin AS T1 JOIN arzt AS T2 ON T1.arzt = T2.mitarbeiter_id	hospital_1
SELECT T2.name FROM termin AS T1 JOIN arzt AS T2 ON T1.arzt = T2.mitarbeiter_id	hospital_1
SELECT name FROM arzt EXCEPT SELECT T2.name FROM termin AS T1 JOIN arzt AS T2 ON T1.arzt = T2.mitarbeiter_id	hospital_1
SELECT name FROM arzt EXCEPT SELECT T2.name FROM termin AS T1 JOIN arzt AS T2 ON T1.arzt = T2.mitarbeiter_id	hospital_1
SELECT T1.name , T3.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T2.primäre_zugehörigkeit = 1	hospital_1
SELECT T1.name , T3.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T2.primäre_zugehörigkeit = 1	hospital_1
SELECT T1.name FROM patient AS T1 JOIN termin AS T2 ON T1.ssn = T2.patient ORDER BY T2.start DESC LIMIT 1	hospital_1
SELECT T1.name FROM patient AS T1 JOIN termin AS T2 ON T1.ssn = T2.patient ORDER BY T2.start DESC LIMIT 1	hospital_1
SELECT count(patient) FROM aufenthalt WHERE zimmer = 112	hospital_1
SELECT count(patient) FROM aufenthalt WHERE zimmer = 112	hospital_1
SELECT count(T1.ssn) FROM patient AS T1 JOIN verschreibungspflichtig AS T2 ON T1.ssn = T2.patient JOIN arzt AS T3 ON T2.arzt = T3.mitarbeiter_id WHERE T3.name = "John Dorian"	hospital_1
SELECT count(T1.ssn) FROM patient AS T1 JOIN verschreibungspflichtig AS T2 ON T1.ssn = T2.patient JOIN arzt AS T3 ON T2.arzt = T3.mitarbeiter_id WHERE T3.name = "John Dorian"	hospital_1
SELECT T4.name FROM aufenthalt AS T1 JOIN patient AS T2 ON T1.Patient = T2.ssn JOIN verschreibungspflichtig AS T3 ON T3.patient = T2.ssn JOIN medikamente AS T4 ON T3.medikamente = T4.code WHERE zimmer = 111	hospital_1
SELECT T4.name FROM aufenthalt AS T1 JOIN patient AS T2 ON T1.Patient = T2.ssn JOIN verschreibungspflichtig AS T3 ON T3.patient = T2.ssn JOIN medikamente AS T4 ON T3.medikamente = T4.code WHERE zimmer = 111	hospital_1
SELECT patient FROM aufenthalt WHERE zimmer = 111 ORDER BY aufenthaltsbeginn DESC LIMIT 1	hospital_1
SELECT patient FROM aufenthalt WHERE zimmer = 111 ORDER BY aufenthaltsbeginn DESC LIMIT 1	hospital_1
SELECT T1.name FROM krankenschwester AS T1 JOIN termin AS T2 ON T1.mitarbeiter_id = T2.vorbereitende_krankenschwester GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	hospital_1
SELECT T1.name FROM krankenschwester AS T1 JOIN termin AS T2 ON T1.mitarbeiter_id = T2.vorbereitende_krankenschwester GROUP BY T1.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	hospital_1
SELECT T1.name , count(*) FROM arzt AS T1 JOIN patient AS T2 ON T1.mitarbeiter_id = T2.pcp GROUP BY T1.mitarbeiter_id	hospital_1
SELECT T1.name , count(*) FROM arzt AS T1 JOIN patient AS T2 ON T1.mitarbeiter_id = T2.pcp GROUP BY T1.mitarbeiter_id	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN patient AS T2 ON T1.mitarbeiter_id = T2.pcp GROUP BY T1.mitarbeiter_id HAVING count(*) > 1	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN patient AS T2 ON T1.mitarbeiter_id = T2.pcp GROUP BY T1.mitarbeiter_id HAVING count(*) > 1	hospital_1
SELECT count(*) , T1.block_floor FROM block AS T1 JOIN zimmer AS T2 ON T1.block_floor = T2.block_floor AND T1.block_code = T2.block_code GROUP BY T1.block_floor	hospital_1
SELECT count(*) , T1.block_floor FROM block AS T1 JOIN zimmer AS T2 ON T1.block_floor = T2.block_floor AND T1.block_code = T2.block_code GROUP BY T1.block_floor	hospital_1
SELECT count(*) , T1.block_code FROM block AS T1 JOIN zimmer AS T2 ON T1.block_floor = T2.block_floor AND T1.block_code = T2.block_code GROUP BY T1.block_code	hospital_1
SELECT count(*) , T1.block_code FROM block AS T1 JOIN zimmer AS T2 ON T1.block_floor = T2.block_floor AND T1.block_code = T2.block_code GROUP BY T1.block_code	hospital_1
SELECT DISTINCT block_code FROM zimmer WHERE nicht_verfügbar = 0	hospital_1
SELECT DISTINCT block_code FROM zimmer WHERE nicht_verfügbar = 0	hospital_1
SELECT count(DISTINCT zimmertyp) FROM zimmer	hospital_1
SELECT count(DISTINCT zimmertyp) FROM zimmer	hospital_1
SELECT DISTINCT T1.name FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN medikamente AS T3 ON T3.code = T2.medikamente WHERE T3.name = "Thesisin"	hospital_1
SELECT DISTINCT T1.name FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN medikamente AS T3 ON T3.code = T2.medikamente WHERE T3.name = "Thesisin"	hospital_1
SELECT DISTINCT T1.name , T1.position FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN medikamente AS T3 ON T3.code = T2.medikamente WHERE T3.marke = "X"	hospital_1
SELECT DISTINCT T1.name , T1.position FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN medikamente AS T3 ON T3.code = T2.medikamente WHERE T3.marke = "X"	hospital_1
SELECT count(*) , T1.name FROM medikamente AS T1 JOIN verschreibungspflichtig AS T2 ON T1.code = T2.medikamente GROUP BY T1.marke	hospital_1
SELECT count(*) , T1.name FROM medikamente AS T1 JOIN verschreibungspflichtig AS T2 ON T1.code = T2.medikamente GROUP BY T1.marke	hospital_1
SELECT name FROM arzt WHERE position LIKE '%senior%'	hospital_1
SELECT name FROM arzt WHERE position LIKE '%senior%'	hospital_1
SELECT patient FROM untersuchungen ORDER BY datum_unterzieht_sich LIMIT 1	hospital_1
SELECT patient FROM untersuchungen ORDER BY datum_unterzieht_sich LIMIT 1	hospital_1
SELECT DISTINCT T2.name FROM untersuchungen AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn JOIN aufenthalt AS T3 ON T1.aufenthalt = T3.aufenthalt_id WHERE T3.zimmer = 111	hospital_1
SELECT DISTINCT T2.name FROM untersuchungen AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn JOIN aufenthalt AS T3 ON T1.aufenthalt = T3.aufenthalt_id WHERE T3.zimmer = 111	hospital_1
SELECT DISTINCT name FROM krankenschwester ORDER BY name	hospital_1
SELECT DISTINCT name FROM krankenschwester ORDER BY name	hospital_1
SELECT DISTINCT T2.name FROM untersuchungen AS T1 JOIN krankenschwester AS T2 ON T1.assistierende_krankenschwester = T2.mitarbeiter_id	hospital_1
SELECT DISTINCT T2.name FROM untersuchungen AS T1 JOIN krankenschwester AS T2 ON T1.assistierende_krankenschwester = T2.mitarbeiter_id	hospital_1
SELECT DISTINCT name FROM medikamente ORDER BY name	hospital_1
SELECT DISTINCT name FROM medikamente ORDER BY name	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt ORDER BY T2.dosis DESC LIMIT 1	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN verschreibungspflichtig AS T2 ON T1.mitarbeiter_id = T2.arzt ORDER BY T2.dosis DESC LIMIT 1	hospital_1
SELECT arzt , abteilung FROM angegliedert_an WHERE primäre_zugehörigkeit = 1	hospital_1
SELECT arzt , abteilung FROM angegliedert_an WHERE primäre_zugehörigkeit = 1	hospital_1
SELECT DISTINCT T2.name FROM angegliedert_an AS T1 JOIN abteilung AS T2 ON T1.abteilung = T2.abteilungsid WHERE primäre_zugehörigkeit = 1	hospital_1
SELECT DISTINCT T2.name FROM angegliedert_an AS T1 JOIN abteilung AS T2 ON T1.abteilung = T2.abteilungsid WHERE primäre_zugehörigkeit = 1	hospital_1
SELECT krankenschwester FROM auf_abruf WHERE block_floor = 1 AND block_code = 1	hospital_1
SELECT krankenschwester FROM auf_abruf WHERE block_floor = 1 AND block_code = 1	hospital_1
SELECT MAX(kosten) , MIN(kosten) , AVG(kosten) FROM verfahren	hospital_1
SELECT MAX(kosten) , MIN(kosten) , AVG(kosten) FROM verfahren	hospital_1
SELECT name , kosten FROM verfahren ORDER BY kosten DESC	hospital_1
SELECT name , kosten FROM verfahren ORDER BY kosten DESC	hospital_1
SELECT name FROM verfahren ORDER BY kosten LIMIT 3	hospital_1
SELECT name FROM verfahren ORDER BY kosten LIMIT 3	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T3.kosten > 5000	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T3.kosten > 5000	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung ORDER BY T3.kosten DESC LIMIT 1	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung ORDER BY T3.kosten DESC LIMIT 1	hospital_1
SELECT avg(T3.kosten) FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT avg(T3.kosten) FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten > 1000 UNION SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten > 1000 UNION SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten > 1000 EXCEPT SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten > 1000 EXCEPT SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten < 5000 INTERSECT SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT name FROM verfahren WHERE kosten < 5000 INTERSECT SELECT T3.name FROM arzt AS T1 JOIN ausgebildet_in AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN verfahren AS T3 ON T3.code = T2.behandlung WHERE T1.name = "John Wen"	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Surgery' INTERSECT SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Psychiatry'	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Surgery' INTERSECT SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Psychiatry'	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Surgery' OR T3.name = 'Psychiatry'	hospital_1
SELECT T1.name FROM arzt AS T1 JOIN angegliedert_an AS T2 ON T1.mitarbeiter_id = T2.arzt JOIN abteilung AS T3 ON T2.abteilung = T3.abteilungsid WHERE T3.name = 'Surgery' OR T3.name = 'Psychiatry'	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN verschreibungspflichtig AS T2 ON T2.Patient = T1.ssn JOIN medikamente AS T3 ON T2.medikamente = T3.code WHERE T3.name = 'Procrastin-X'	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN verschreibungspflichtig AS T2 ON T2.Patient = T1.ssn JOIN medikamente AS T3 ON T2.medikamente = T3.code WHERE T3.name = 'Procrastin-X'	hospital_1
SELECT count(*) FROM patient WHERE ssn NOT IN ( SELECT T1.patient FROM verschreibungspflichtig AS T1 JOIN medikamente AS T2 ON T1.medikamente = T2.code WHERE T2.name = 'Procrastin-X' )	hospital_1
SELECT count(*) FROM patient WHERE ssn NOT IN ( SELECT T1.patient FROM verschreibungspflichtig AS T1 JOIN medikamente AS T2 ON T1.medikamente = T2.code WHERE T2.name = 'Procrastin-X' )	hospital_1
SELECT count(*) FROM termin	hospital_1
SELECT count(*) FROM termin	hospital_1
SELECT DISTINCT T1.name FROM krankenschwester AS T1 JOIN auf_abruf AS T2 ON T1.mitarbeiter_id = T2.krankenschwester	hospital_1
SELECT DISTINCT T1.name FROM krankenschwester AS T1 JOIN auf_abruf AS T2 ON T1.mitarbeiter_id = T2.krankenschwester	hospital_1
SELECT count(*) FROM schiff	ship_mission
SELECT count(*) FROM schiff	ship_mission
SELECT name FROM schiff ORDER BY tonnage ASC	ship_mission
SELECT name FROM schiff ORDER BY tonnage ASC	ship_mission
SELECT typ , nationalität FROM schiff	ship_mission
SELECT typ , nationalität FROM schiff	ship_mission
SELECT name FROM schiff WHERE nationalität != "United States"	ship_mission
SELECT name FROM schiff WHERE nationalität != "United States"	ship_mission
SELECT name FROM schiff WHERE nationalität = "United States" OR nationalität = "United Kingdom"	ship_mission
SELECT name FROM schiff WHERE nationalität = "United States" OR nationalität = "United Kingdom"	ship_mission
SELECT name FROM schiff ORDER BY tonnage DESC LIMIT 1	ship_mission
SELECT name FROM schiff ORDER BY tonnage DESC LIMIT 1	ship_mission
SELECT typ , COUNT(*) FROM schiff GROUP BY typ	ship_mission
SELECT typ , COUNT(*) FROM schiff GROUP BY typ	ship_mission
SELECT typ FROM schiff GROUP BY typ ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT typ FROM schiff GROUP BY typ ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT nationalität FROM schiff GROUP BY nationalität HAVING COUNT(*) > 2	ship_mission
SELECT nationalität FROM schiff GROUP BY nationalität HAVING COUNT(*) > 2	ship_mission
SELECT typ , avg(tonnage) FROM schiff GROUP BY typ	ship_mission
SELECT typ , avg(tonnage) FROM schiff GROUP BY typ	ship_mission
SELECT T1.code , T1.schicksal , T2.name FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id	ship_mission
SELECT T1.code , T1.schicksal , T2.name FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id	ship_mission
SELECT T2.name FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id WHERE T1.startjahr > 1928	ship_mission
SELECT T2.name FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id WHERE T1.startjahr > 1928	ship_mission
SELECT DISTINCT T1.schicksal FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id WHERE T2.nationalität = "United States"	ship_mission
SELECT DISTINCT T1.schicksal FROM mission AS T1 JOIN schiff AS T2 ON T1.schiffs_id = T2.schiffs_id WHERE T2.nationalität = "United States"	ship_mission
SELECT name FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM mission)	ship_mission
SELECT name FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM mission)	ship_mission
SELECT typ FROM schiff WHERE tonnage > 6000 INTERSECT SELECT typ FROM schiff WHERE tonnage < 4000	ship_mission
SELECT typ FROM schiff WHERE tonnage > 6000 INTERSECT SELECT typ FROM schiff WHERE tonnage < 4000	ship_mission
SELECT count(*) FROM liste	student_1
SELECT count(*) FROM liste	student_1
SELECT nachname FROM liste WHERE klassenzimmer = 111	student_1
SELECT nachname FROM liste WHERE klassenzimmer = 111	student_1
SELECT vorname FROM liste WHERE klassenzimmer = 108	student_1
SELECT vorname FROM liste WHERE klassenzimmer = 108	student_1
SELECT DISTINCT vorname FROM liste WHERE klassenzimmer = 107	student_1
SELECT DISTINCT vorname FROM liste WHERE klassenzimmer = 107	student_1
SELECT DISTINCT klassenzimmer , klasse FROM liste	student_1
SELECT DISTINCT klassenzimmer , klasse FROM liste	student_1
SELECT DISTINCT klasse FROM liste WHERE klassenzimmer = 103	student_1
SELECT DISTINCT klasse FROM liste WHERE klassenzimmer = 103	student_1
SELECT DISTINCT klasse FROM liste WHERE klassenzimmer = 105	student_1
SELECT DISTINCT klasse FROM liste WHERE klassenzimmer = 105	student_1
SELECT DISTINCT klassenzimmer FROM liste WHERE klasse = 4	student_1
SELECT DISTINCT klassenzimmer FROM liste WHERE klasse = 4	student_1
SELECT DISTINCT klassenzimmer FROM liste WHERE klasse = 5	student_1
SELECT DISTINCT klassenzimmer FROM liste WHERE klasse = 5	student_1
SELECT DISTINCT T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE klasse = 5	student_1
SELECT DISTINCT T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE klasse = 5	student_1
SELECT DISTINCT T2.vorname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE klasse = 1	student_1
SELECT DISTINCT T2.vorname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE klasse = 1	student_1
SELECT vorname FROM lehrer WHERE klassenzimmer = 110	student_1
SELECT vorname FROM lehrer WHERE klassenzimmer = 110	student_1
SELECT nachname FROM lehrer WHERE klassenzimmer = 109	student_1
SELECT nachname FROM lehrer WHERE klassenzimmer = 109	student_1
SELECT DISTINCT vorname , nachname FROM lehrer	student_1
SELECT DISTINCT vorname , nachname FROM lehrer	student_1
SELECT DISTINCT vorname , nachname FROM liste	student_1
SELECT DISTINCT vorname , nachname FROM liste	student_1
SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "OTHA" AND T2.nachname = "MOYER"	student_1
SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "OTHA" AND T2.nachname = "MOYER"	student_1
SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "MARROTTE" AND T2.nachname = "KIRK"	student_1
SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "MARROTTE" AND T2.nachname = "KIRK"	student_1
SELECT T2.vorname , T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "EVELINA" AND T1.nachname = "BROMLEY"	student_1
SELECT T2.vorname , T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "EVELINA" AND T1.nachname = "BROMLEY"	student_1
SELECT T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "GELL" AND T1.nachname = "TAMI"	student_1
SELECT T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "GELL" AND T1.nachname = "TAMI"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "LORIA" AND T2.nachname = "ONDERSMA"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "LORIA" AND T2.nachname = "ONDERSMA"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "KAWA" AND T2.nachname = "GORDON"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "KAWA" AND T2.nachname = "GORDON"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "TARRING" AND T2.nachname = "LEIA"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "TARRING" AND T2.nachname = "LEIA"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "CHRISSY" AND T1.nachname = "NABOZNY"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "CHRISSY" AND T1.nachname = "NABOZNY"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "MADLOCK" AND T1.nachname = "RAY"	student_1
SELECT count(*) FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.vorname = "MADLOCK" AND T1.nachname = "RAY"	student_1
SELECT DISTINCT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.klasse = 1 EXCEPT SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "OTHA" AND T2.nachname = "MOYER"	student_1
SELECT DISTINCT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.klasse = 1 EXCEPT SELECT T1.vorname , T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T2.vorname = "OTHA" AND T2.nachname = "MOYER"	student_1
SELECT DISTINCT T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.klasse = 3 AND T2.vorname != "COVIN" AND T2.nachname != "JEROME"	student_1
SELECT DISTINCT T1.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer WHERE T1.klasse = 3 AND T2.vorname != "COVIN" AND T2.nachname != "JEROME"	student_1
SELECT klasse , count(DISTINCT klassenzimmer) , count(*) FROM liste GROUP BY klasse	student_1
SELECT klasse , count(DISTINCT klassenzimmer) , count(*) FROM liste GROUP BY klasse	student_1
SELECT klassenzimmer , count(DISTINCT klasse) FROM liste GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(DISTINCT klasse) FROM liste GROUP BY klassenzimmer	student_1
SELECT klassenzimmer FROM liste GROUP BY klassenzimmer ORDER BY count(*) DESC LIMIT 1	student_1
SELECT klassenzimmer FROM liste GROUP BY klassenzimmer ORDER BY count(*) DESC LIMIT 1	student_1
SELECT klassenzimmer , count(*) FROM liste GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(*) FROM liste GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(*) FROM liste WHERE klasse = "0" GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(*) FROM liste WHERE klasse = "0" GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(*) FROM liste WHERE klasse = "4" GROUP BY klassenzimmer	student_1
SELECT klassenzimmer , count(*) FROM liste WHERE klasse = "4" GROUP BY klassenzimmer	student_1
SELECT T2.vorname , T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer GROUP BY T2.vorname , T2.nachname ORDER BY count(*) DESC LIMIT 1	student_1
SELECT T2.vorname , T2.nachname FROM liste AS T1 JOIN lehrer AS T2 ON T1.klassenzimmer = T2.klassenzimmer GROUP BY T2.vorname , T2.nachname ORDER BY count(*) DESC LIMIT 1	student_1
SELECT count(*) , klassenzimmer FROM liste GROUP BY klassenzimmer	student_1
SELECT count(*) , klassenzimmer FROM liste GROUP BY klassenzimmer	student_1
SELECT count(*) FROM unternehmen WHERE hauptsitz = 'USA'	company_employee
SELECT name FROM unternehmen ORDER BY umsatz_in_mrd ASC	company_employee
SELECT hauptsitz , branche FROM unternehmen	company_employee
SELECT name FROM unternehmen WHERE branche = "Banking" OR branche = "Retailing"	company_employee
SELECT max(marktwert_in_mrd) , min(marktwert_in_mrd) FROM unternehmen	company_employee
SELECT hauptsitz FROM unternehmen ORDER BY umsatz_in_mrd DESC LIMIT 1	company_employee
SELECT hauptsitz , COUNT(*) FROM unternehmen GROUP BY hauptsitz	company_employee
SELECT hauptsitz FROM unternehmen GROUP BY hauptsitz ORDER BY COUNT(*) DESC LIMIT 1	company_employee
SELECT hauptsitz FROM unternehmen GROUP BY hauptsitz HAVING COUNT(*) >= 2	company_employee
SELECT hauptsitz FROM unternehmen WHERE branche = "Banking" INTERSECT SELECT hauptsitz FROM unternehmen WHERE branche = "Oil and gas"	company_employee
SELECT T3.name , T2.name FROM beschäftigung AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id JOIN unternehmen AS T3 ON T1.firma_id = T3.firma_id	company_employee
SELECT T3.name , T2.name FROM beschäftigung AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id JOIN unternehmen AS T3 ON T1.firma_id = T3.firma_id ORDER BY T1.arbeitsjahr	company_employee
SELECT T2.name FROM beschäftigung AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id JOIN unternehmen AS T3 ON T1.firma_id = T3.firma_id WHERE T3.umsatz_in_mrd > 200	company_employee
SELECT T3.name , COUNT(*) FROM beschäftigung AS T1 JOIN leute AS T2 ON T1.personen_id = T2.personen_id JOIN unternehmen AS T3 ON T1.firma_id = T3.firma_id GROUP BY T3.name	company_employee
SELECT name FROM leute WHERE personen_id NOT IN (SELECT personen_id FROM beschäftigung)	company_employee
SELECT name FROM unternehmen WHERE umsatz_in_mrd > 200 ORDER BY umsatz_in_mrd , gewinn_in_mrd DESC	company_employee
SELECT count(*) FROM film	film_rank
SELECT count(*) FROM film	film_rank
SELECT DISTINCT regisseur FROM film	film_rank
SELECT DISTINCT regisseur FROM film	film_rank
SELECT avg(brutto_in_dollar) FROM film	film_rank
SELECT avg(brutto_in_dollar) FROM film	film_rank
SELECT niedrige_schätzung , hohe_schätzung FROM film_markt_schätzung	film_rank
SELECT niedrige_schätzung , hohe_schätzung FROM film_markt_schätzung	film_rank
SELECT typ FROM film_markt_schätzung WHERE jahr = 1995	film_rank
SELECT typ FROM film_markt_schätzung WHERE jahr = 1995	film_rank
SELECT max(anzahl_städte) , min(anzahl_städte) FROM markt	film_rank
SELECT max(anzahl_städte) , min(anzahl_städte) FROM markt	film_rank
SELECT count(*) FROM markt WHERE anzahl_städte < 300	film_rank
SELECT count(*) FROM markt WHERE anzahl_städte < 300	film_rank
SELECT land FROM markt ORDER BY land ASC	film_rank
SELECT land FROM markt ORDER BY land ASC	film_rank
SELECT land FROM markt ORDER BY anzahl_städte DESC	film_rank
SELECT land FROM markt ORDER BY anzahl_städte DESC	film_rank
SELECT T1.titel , T2.typ FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id	film_rank
SELECT T1.titel , T2.typ FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id	film_rank
SELECT DISTINCT T1.regisseur FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = 1995	film_rank
SELECT DISTINCT T1.regisseur FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id WHERE T2.jahr = 1995	film_rank
SELECT avg(T2.anzahl_städte) FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE T1.niedrige_schätzung > 10000	film_rank
SELECT avg(T2.anzahl_städte) FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE T1.niedrige_schätzung > 10000	film_rank
SELECT T2.land , T1.jahr FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id	film_rank
SELECT T2.land , T1.jahr FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id	film_rank
SELECT T1.jahr FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE T2.land = "Japan" ORDER BY T1.jahr DESC	film_rank
SELECT T1.jahr FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE T2.land = "Japan" ORDER BY T1.jahr DESC	film_rank
SELECT studio , COUNT(*) FROM film GROUP BY studio	film_rank
SELECT studio , COUNT(*) FROM film GROUP BY studio	film_rank
SELECT studio FROM film GROUP BY studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT studio FROM film GROUP BY studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT studio FROM film GROUP BY studio HAVING COUNT(*) >= 2	film_rank
SELECT studio FROM film GROUP BY studio HAVING COUNT(*) >= 2	film_rank
SELECT titel FROM film WHERE film_id NOT IN (SELECT film_id FROM film_markt_schätzung)	film_rank
SELECT titel FROM film WHERE film_id NOT IN (SELECT film_id FROM film_markt_schätzung)	film_rank
SELECT studio FROM film WHERE regisseur = "Nicholas Meyer" INTERSECT SELECT studio FROM film WHERE regisseur = "Walter Hill"	film_rank
SELECT studio FROM film WHERE regisseur = "Nicholas Meyer" INTERSECT SELECT studio FROM film WHERE regisseur = "Walter Hill"	film_rank
SELECT titel , studio FROM film WHERE studio LIKE "%Universal%"	film_rank
SELECT titel , studio FROM film WHERE studio LIKE "%Universal%"	film_rank
SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE regisseur = "Walter Hill"	film_rank
SELECT studio FROM film EXCEPT SELECT studio FROM film WHERE regisseur = "Walter Hill"	film_rank
SELECT studio FROM film GROUP BY studio HAVING avg(brutto_in_dollar) >= 4500000	film_rank
SELECT studio FROM film GROUP BY studio HAVING avg(brutto_in_dollar) >= 4500000	film_rank
SELECT t1.titel FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id ORDER BY hohe_schätzung DESC LIMIT 1	film_rank
SELECT t1.titel FROM film AS T1 JOIN film_markt_schätzung AS T2 ON T1.film_id = T2.film_id ORDER BY hohe_schätzung DESC LIMIT 1	film_rank
SELECT titel , regisseur FROM film WHERE film_id NOT IN (SELECT film_id FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE land = 'China')	film_rank
SELECT titel , regisseur FROM film WHERE film_id NOT IN (SELECT film_id FROM film_markt_schätzung AS T1 JOIN markt AS T2 ON T1.markt_id = T2.markt_id WHERE land = 'China')	film_rank
SELECT count(*) FROM referenzkalender	cre_doc_tracking_db
SELECT count(*) FROM referenzkalender	cre_doc_tracking_db
SELECT kalenderdatum , tageszahl FROM referenzkalender	cre_doc_tracking_db
SELECT kalenderdatum , tageszahl FROM referenzkalender	cre_doc_tracking_db
SELECT count(*) FROM referenzbelegarten	cre_doc_tracking_db
SELECT count(*) FROM referenzbelegarten	cre_doc_tracking_db
SELECT dokumentenart_code , dokumenttypname FROM referenzbelegarten	cre_doc_tracking_db
SELECT dokumentenart_code , dokumenttypname FROM referenzbelegarten	cre_doc_tracking_db
SELECT dokumenttypname , beschreibung_der_dokumentart FROM referenzbelegarten WHERE dokumentenart_code = "RV"	cre_doc_tracking_db
SELECT dokumenttypname , beschreibung_der_dokumentart FROM referenzbelegarten WHERE dokumentenart_code = "RV"	cre_doc_tracking_db
SELECT dokumentenart_code FROM referenzbelegarten WHERE dokumenttypname = "Paper"	cre_doc_tracking_db
SELECT dokumentenart_code FROM referenzbelegarten WHERE dokumenttypname = "Paper"	cre_doc_tracking_db
SELECT count(*) FROM alle_dokumente WHERE dokumentenart_code = "CV" OR dokumentenart_code = "BK"	cre_doc_tracking_db
SELECT count(*) FROM alle_dokumente WHERE dokumentenart_code = "CV" OR dokumentenart_code = "BK"	cre_doc_tracking_db
SELECT datum_gespeichert FROM alle_dokumente WHERE dokumentenname = "Marry CV"	cre_doc_tracking_db
SELECT datum_gespeichert FROM alle_dokumente WHERE dokumentenname = "Marry CV"	cre_doc_tracking_db
SELECT T2.tageszahl , T1.datum_gespeichert FROM alle_dokumente AS T1 JOIN referenzkalender AS T2 ON T1.datum_gespeichert = T2.kalenderdatum	cre_doc_tracking_db
SELECT T2.tageszahl , T1.datum_gespeichert FROM alle_dokumente AS T1 JOIN referenzkalender AS T2 ON T1.datum_gespeichert = T2.kalenderdatum	cre_doc_tracking_db
SELECT T2.dokumenttypname FROM alle_dokumente AS T1 JOIN referenzbelegarten AS T2 ON T1.dokumentenart_code = T2.dokumentenart_code WHERE T1.dokumentenname = "How to read a book"	cre_doc_tracking_db
SELECT T2.dokumenttypname FROM alle_dokumente AS T1 JOIN referenzbelegarten AS T2 ON T1.dokumentenart_code = T2.dokumentenart_code WHERE T1.dokumentenname = "How to read a book"	cre_doc_tracking_db
SELECT count(*) FROM referenzorte	cre_doc_tracking_db
SELECT count(*) FROM referenzorte	cre_doc_tracking_db
SELECT ort_code , ortsname FROM referenzorte	cre_doc_tracking_db
SELECT ort_code , ortsname FROM referenzorte	cre_doc_tracking_db
SELECT ortsname , ortsbeschreibung FROM referenzorte WHERE ort_code = "x"	cre_doc_tracking_db
SELECT ortsname , ortsbeschreibung FROM referenzorte WHERE ort_code = "x"	cre_doc_tracking_db
SELECT ort_code FROM referenzorte WHERE ortsname = "Canada"	cre_doc_tracking_db
SELECT ort_code FROM referenzorte WHERE ortsname = "Canada"	cre_doc_tracking_db
SELECT count(*) FROM rollen	cre_doc_tracking_db
SELECT count(*) FROM rollen	cre_doc_tracking_db
SELECT rollencode , rollenname , rollenbeschreibung FROM rollen	cre_doc_tracking_db
SELECT rollencode , rollenname , rollenbeschreibung FROM rollen	cre_doc_tracking_db
SELECT rollenname , rollenbeschreibung FROM rollen WHERE rollencode = "MG"	cre_doc_tracking_db
SELECT rollenname , rollenbeschreibung FROM rollen WHERE rollencode = "MG"	cre_doc_tracking_db
SELECT rollenbeschreibung FROM rollen WHERE rollenname = "Proof Reader"	cre_doc_tracking_db
SELECT rollenbeschreibung FROM rollen WHERE rollenname = "Proof Reader"	cre_doc_tracking_db
SELECT count(*) FROM mitarbeiter	cre_doc_tracking_db
SELECT count(*) FROM mitarbeiter	cre_doc_tracking_db
SELECT mitarbeitername , rollencode , geburtsdatum FROM mitarbeiter WHERE mitarbeitername = 'Armani'	cre_doc_tracking_db
SELECT mitarbeitername , rollencode , geburtsdatum FROM mitarbeiter WHERE mitarbeitername = 'Armani'	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter WHERE mitarbeitername = "Ebba"	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter WHERE mitarbeitername = "Ebba"	cre_doc_tracking_db
SELECT mitarbeitername FROM mitarbeiter WHERE rollencode = "HR"	cre_doc_tracking_db
SELECT mitarbeitername FROM mitarbeiter WHERE rollencode = "HR"	cre_doc_tracking_db
SELECT rollencode , count(*) FROM mitarbeiter GROUP BY rollencode	cre_doc_tracking_db
SELECT rollencode , count(*) FROM mitarbeiter GROUP BY rollencode	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode HAVING count(*) >= 3	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode HAVING count(*) >= 3	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode ORDER BY count(*) ASC LIMIT 1	cre_doc_tracking_db
SELECT rollencode FROM mitarbeiter GROUP BY rollencode ORDER BY count(*) ASC LIMIT 1	cre_doc_tracking_db
SELECT T2.rollenname , T2.rollenbeschreibung FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T1.mitarbeitername = "Ebba"	cre_doc_tracking_db
SELECT T2.rollenname , T2.rollenbeschreibung FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T1.mitarbeitername = "Ebba"	cre_doc_tracking_db
SELECT T1.mitarbeitername FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T2.rollenname = "Editor"	cre_doc_tracking_db
SELECT T1.mitarbeitername FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T2.rollenname = "Editor"	cre_doc_tracking_db
SELECT T1.mitarbeiter_id FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T2.rollenname = "Human Resource" OR T2.rollenname = "Manager"	cre_doc_tracking_db
SELECT T1.mitarbeiter_id FROM mitarbeiter AS T1 JOIN rollen AS T2 ON T1.rollencode = T2.rollencode WHERE T2.rollenname = "Human Resource" OR T2.rollenname = "Manager"	cre_doc_tracking_db
SELECT DISTINCT ort_code FROM belegstellen	cre_doc_tracking_db
SELECT DISTINCT ort_code FROM belegstellen	cre_doc_tracking_db
SELECT T3.ortsname FROM alle_dokumente AS T1 JOIN belegstellen AS T2 ON T1.dokument_id = T2.dokument_id JOIN referenzorte AS T3 ON T2.ort_code = T3.ort_code WHERE T1.dokumentenname = "Robin CV"	cre_doc_tracking_db
SELECT T3.ortsname FROM alle_dokumente AS T1 JOIN belegstellen AS T2 ON T1.dokument_id = T2.dokument_id JOIN referenzorte AS T3 ON T2.ort_code = T3.ort_code WHERE T1.dokumentenname = "Robin CV"	cre_doc_tracking_db
SELECT ort_code , datum_im_ort_von , datum_im_ort_bis FROM belegstellen	cre_doc_tracking_db
SELECT ort_code , datum_im_ort_von , datum_im_ort_bis FROM belegstellen	cre_doc_tracking_db
SELECT T1.datum_im_ort_von , T1.datum_im_ort_bis FROM belegstellen AS T1 JOIN alle_dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = "Robin CV"	cre_doc_tracking_db
SELECT T1.datum_im_ort_von , T1.datum_im_ort_bis FROM belegstellen AS T1 JOIN alle_dokumente AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.dokumentenname = "Robin CV"	cre_doc_tracking_db
SELECT ort_code , count(*) FROM belegstellen GROUP BY ort_code	cre_doc_tracking_db
SELECT ort_code , count(*) FROM belegstellen GROUP BY ort_code	cre_doc_tracking_db
SELECT ort_code FROM belegstellen GROUP BY ort_code ORDER BY count(*) DESC LIMIT 1	cre_doc_tracking_db
SELECT ort_code FROM belegstellen GROUP BY ort_code ORDER BY count(*) DESC LIMIT 1	cre_doc_tracking_db
SELECT ort_code FROM belegstellen GROUP BY ort_code HAVING count(*) >= 3	cre_doc_tracking_db
SELECT ort_code FROM belegstellen GROUP BY ort_code HAVING count(*) >= 3	cre_doc_tracking_db
SELECT T2.ortsname , T1.ort_code FROM belegstellen AS T1 JOIN referenzorte AS T2 ON T1.ort_code = T2.ort_code GROUP BY T1.ort_code ORDER BY count(*) ASC LIMIT 1	cre_doc_tracking_db
SELECT T2.ortsname , T1.ort_code FROM belegstellen AS T1 JOIN referenzorte AS T2 ON T1.ort_code = T2.ort_code GROUP BY T1.ort_code ORDER BY count(*) ASC LIMIT 1	cre_doc_tracking_db
SELECT T2.mitarbeitername , T3.mitarbeitername FROM zu_vernichtende_dokumente AS T1 JOIN mitarbeiter AS T2 ON T1.vernichtung_genehmigt_durch_mitarbeiter_id = T2.mitarbeiter_id JOIN mitarbeiter AS T3 ON T1.vernichtet_durch_mitarbeiter_id = T3.mitarbeiter_id;	cre_doc_tracking_db
SELECT T2.mitarbeitername , T3.mitarbeitername FROM zu_vernichtende_dokumente AS T1 JOIN mitarbeiter AS T2 ON T1.vernichtung_genehmigt_durch_mitarbeiter_id = T2.mitarbeiter_id JOIN mitarbeiter AS T3 ON T1.vernichtet_durch_mitarbeiter_id = T3.mitarbeiter_id;	cre_doc_tracking_db
SELECT vernichtung_genehmigt_durch_mitarbeiter_id , count(*) FROM zu_vernichtende_dokumente GROUP BY vernichtung_genehmigt_durch_mitarbeiter_id	cre_doc_tracking_db
SELECT vernichtung_genehmigt_durch_mitarbeiter_id , count(*) FROM zu_vernichtende_dokumente GROUP BY vernichtung_genehmigt_durch_mitarbeiter_id	cre_doc_tracking_db
SELECT vernichtet_durch_mitarbeiter_id , count(*) FROM zu_vernichtende_dokumente GROUP BY vernichtet_durch_mitarbeiter_id	cre_doc_tracking_db
SELECT vernichtet_durch_mitarbeiter_id , count(*) FROM zu_vernichtende_dokumente GROUP BY vernichtet_durch_mitarbeiter_id	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT DISTINCT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT DISTINCT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT DISTINCT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT DISTINCT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT mitarbeiter_id FROM mitarbeiter EXCEPT SELECT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente UNION SELECT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT vernichtet_durch_mitarbeiter_id FROM zu_vernichtende_dokumente UNION SELECT vernichtung_genehmigt_durch_mitarbeiter_id FROM zu_vernichtende_dokumente	cre_doc_tracking_db
SELECT count(*) FROM verein	club_1
SELECT count(*) FROM verein	club_1
SELECT vereinsname FROM verein	club_1
SELECT vereinsname FROM verein	club_1
SELECT count(*) FROM schüler	club_1
SELECT count(*) FROM schüler	club_1
SELECT DISTINCT vorname FROM schüler	club_1
SELECT DISTINCT vorname FROM schüler	club_1
SELECT t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises"	club_1
SELECT t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Tennis Club"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Tennis Club"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Pen and Paper Gaming"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Pen and Paper Gaming"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Linda" AND t3.nachname = "Smith"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Linda" AND t3.nachname = "Smith"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Tracy" AND t3.nachname = "Kim"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Tracy" AND t3.nachname = "Kim"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.geschlecht = "F"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.geschlecht = "F"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises" AND t3.geschlecht = "M"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises" AND t3.geschlecht = "M"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.hauptfach = "600"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.hauptfach = "600"	club_1
SELECT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.hauptfach = "600" GROUP BY t1.vereinsname ORDER BY count(*) DESC LIMIT 1	club_1
SELECT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.hauptfach = "600" GROUP BY t1.vereinsname ORDER BY count(*) DESC LIMIT 1	club_1
SELECT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.geschlecht = "F" GROUP BY t1.vereinsname ORDER BY count(*) DESC LIMIT 1	club_1
SELECT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.geschlecht = "F" GROUP BY t1.vereinsname ORDER BY count(*) DESC LIMIT 1	club_1
SELECT vereinsbeschreibung FROM verein WHERE vereinsname = "Tennis Club"	club_1
SELECT vereinsbeschreibung FROM verein WHERE vereinsname = "Tennis Club"	club_1
SELECT vereinsbeschreibung FROM verein WHERE vereinsname = "Pen and Paper Gaming"	club_1
SELECT vereinsbeschreibung FROM verein WHERE vereinsname = "Pen and Paper Gaming"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Tennis Club"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Tennis Club"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Pen and Paper Gaming"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Pen and Paper Gaming"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Hopkins Student Enterprises"	club_1
SELECT club_location FROM verein WHERE vereinsname = "Hopkins Student Enterprises"	club_1
SELECT vereinsname FROM verein WHERE club_location = "AKW"	club_1
SELECT vereinsname FROM verein WHERE club_location = "AKW"	club_1
SELECT count(*) FROM verein WHERE club_location = "HHH"	club_1
SELECT count(*) FROM verein WHERE club_location = "HHH"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t2.position = "President"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t2.position = "President"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises" AND t2.position = "CTO"	club_1
SELECT t3.vorname , t3.nachname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises" AND t2.position = "CTO"	club_1
SELECT count(DISTINCT t2.position) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT count(DISTINCT t2.position) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.alter > 18	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.alter > 18	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.alter < 18	club_1
SELECT count(*) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore" AND t3.alter < 18	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.stadtcode = "BAL"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.stadtcode = "BAL"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.stadtcode = "HOU"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.stadtcode = "HOU"	club_1
SELECT count(DISTINCT t1.vereinsname) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Eric" AND t3.nachname = "Tai"	club_1
SELECT count(DISTINCT t1.vereinsname) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Eric" AND t3.nachname = "Tai"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Davis" AND t3.nachname = "Steven"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.vorname = "Davis" AND t3.nachname = "Steven"	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.berater = 1121	club_1
SELECT DISTINCT t1.vereinsname FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t3.berater = 1121	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Bootup Baltimore"	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises"	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Hopkins Student Enterprises"	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Tennis Club"	club_1
SELECT avg(t3.alter) FROM verein AS t1 JOIN mitglied_eines_vereins AS t2 ON t1.club_id = t2.club_id JOIN schüler AS t3 ON t2.student_id = t3.student_id WHERE t1.vereinsname = "Tennis Club"	club_1
SELECT T1.grant_amount FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id WHERE T2.absendedatum < '1986-08-26 20:49:27' INTERSECT SELECT grant_amount FROM zuschüsse WHERE enddatum_der_förderung > '1989-03-16 18:27:16'	tracking_grants_for_research
SELECT T1.grant_amount FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id WHERE T2.absendedatum < '1986-08-26 20:49:27' INTERSECT SELECT grant_amount FROM zuschüsse WHERE enddatum_der_förderung > '1989-03-16 18:27:16'	tracking_grants_for_research
SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.ergebnis_code = 'Paper' INTERSECT SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.ergebnis_code = 'Patent'	tracking_grants_for_research
SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.ergebnis_code = 'Paper' INTERSECT SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.ergebnis_code = 'Patent'	tracking_grants_for_research
SELECT sum(grant_amount) FROM zuschüsse AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id JOIN organisationsarten AS T3 ON T2.organisationstyp = T3.organisationstyp WHERE T3.beschreibung_der_organisationsart = 'Research'	tracking_grants_for_research
SELECT sum(grant_amount) FROM zuschüsse AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id JOIN organisationsarten AS T3 ON T2.organisationstyp = T3.organisationstyp WHERE T3.beschreibung_der_organisationsart = 'Research'	tracking_grants_for_research
SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE projekt_id IN( SELECT projekt_id FROM projektmitarbeiter GROUP BY projekt_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE rollencode = 'leader'	tracking_grants_for_research
SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE projekt_id IN( SELECT projekt_id FROM projektmitarbeiter GROUP BY projekt_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE rollencode = 'leader'	tracking_grants_for_research
SELECT T2.organisation_id , T2.organisation_details FROM zuschüsse AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.grant_amount) > 6000	tracking_grants_for_research
SELECT T2.organisation_id , T2.organisation_details FROM zuschüsse AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.grant_amount) > 6000	tracking_grants_for_research
SELECT T1.organisationstyp , T1.organisation_id FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisationstyp , T1.organisation_id FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisationstyp FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisationstyp ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisationstyp FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisationstyp ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.absendedatum FROM dokumente AS T1 JOIN zuschüsse AS T2 ON T1.grant_id = T2.grant_id JOIN organisationen AS T3 ON T2.organisation_id = T3.organisation_id JOIN organisationsarten AS T4 ON T3.organisationstyp = T4.organisationstyp WHERE T2.grant_amount > 5000 AND T4.beschreibung_der_organisationsart = 'Research'	tracking_grants_for_research
SELECT T1.absendedatum FROM dokumente AS T1 JOIN zuschüsse AS T2 ON T1.grant_id = T2.grant_id JOIN organisationen AS T3 ON T2.organisation_id = T3.organisation_id JOIN organisationsarten AS T4 ON T3.organisationstyp = T4.organisationstyp WHERE T2.grant_amount > 5000 AND T4.beschreibung_der_organisationsart = 'Research'	tracking_grants_for_research
SELECT T1.datum_des_eingangs_der_antwort FROM dokumente AS T1 JOIN dokumenttypen AS T2 ON T1.dokumentenart_code = T2.dokumentenart_code JOIN zuschüsse AS T3 ON T1.grant_id = T3.grant_id WHERE T2.dokumentenbeschreibung = 'Regular' OR T3.grant_amount > 100	tracking_grants_for_research
SELECT T1.datum_des_eingangs_der_antwort FROM dokumente AS T1 JOIN dokumenttypen AS T2 ON T1.dokumentenart_code = T2.dokumentenart_code JOIN zuschüsse AS T3 ON T1.grant_id = T3.grant_id WHERE T2.dokumentenbeschreibung = 'Regular' OR T3.grant_amount > 100	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE projekt_id NOT IN ( SELECT projekt_id FROM projektmitarbeiter WHERE rollencode = 'researcher' )	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE projekt_id NOT IN ( SELECT projekt_id FROM projektmitarbeiter WHERE rollencode = 'researcher' )	tracking_grants_for_research
SELECT T1.aufgabendetails , T1.aufgaben_id , T2.projekt_id FROM aufgaben AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.projektdetails = 'omnis' UNION SELECT T1.aufgabendetails , T1.aufgaben_id , T2.projekt_id FROM aufgaben AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id JOIN projektergebnisse AS T3 ON T2.projekt_id = T3.projekt_id GROUP BY T2.projekt_id HAVING count(*) > 2	tracking_grants_for_research
SELECT T1.aufgabendetails , T1.aufgaben_id , T2.projekt_id FROM aufgaben AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.projektdetails = 'omnis' UNION SELECT T1.aufgabendetails , T1.aufgaben_id , T2.projekt_id FROM aufgaben AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id JOIN projektergebnisse AS T3 ON T2.projekt_id = T3.projekt_id GROUP BY T2.projekt_id HAVING count(*) > 2	tracking_grants_for_research
SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE rollencode = 'researcher'	tracking_grants_for_research
SELECT datum_von , datum_bis FROM projektmitarbeiter WHERE rollencode = 'researcher'	tracking_grants_for_research
SELECT count(DISTINCT rollencode) FROM projektmitarbeiter	tracking_grants_for_research
SELECT count(DISTINCT rollencode) FROM projektmitarbeiter	tracking_grants_for_research
SELECT sum(grant_amount) , organisation_id FROM zuschüsse GROUP BY organisation_id	tracking_grants_for_research
SELECT sum(grant_amount) , organisation_id FROM zuschüsse GROUP BY organisation_id	tracking_grants_for_research
SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id JOIN forschungsergebnisse AS T3 ON T2.ergebnis_code = T3.ergebnis_code WHERE T3.ergebnisbeschreibung LIKE '%Published%'	tracking_grants_for_research
SELECT T1.projektdetails FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id JOIN forschungsergebnisse AS T3 ON T2.ergebnis_code = T3.ergebnis_code WHERE T3.ergebnisbeschreibung LIKE '%Published%'	tracking_grants_for_research
SELECT T1.projekt_id , count(*) FROM projektmitarbeiter AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id ORDER BY count(*) ASC	tracking_grants_for_research
SELECT T1.projekt_id , count(*) FROM projektmitarbeiter AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id ORDER BY count(*) ASC	tracking_grants_for_research
SELECT rollenbeschreibung FROM personalrollen WHERE rollencode = 'researcher'	tracking_grants_for_research
SELECT rollenbeschreibung FROM personalrollen WHERE rollencode = 'researcher'	tracking_grants_for_research
SELECT datum_von FROM projektmitarbeiter ORDER BY datum_von ASC LIMIT 1	tracking_grants_for_research
SELECT datum_von FROM projektmitarbeiter ORDER BY datum_von ASC LIMIT 1	tracking_grants_for_research
SELECT T1.projektdetails , T1.projekt_id FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.projektdetails , T1.projekt_id FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE projekt_id NOT IN ( SELECT projekt_id FROM projektergebnisse )	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE projekt_id NOT IN ( SELECT projekt_id FROM projektergebnisse )	tracking_grants_for_research
SELECT T1.organisation_id , T1.organisationstyp , T1.organisation_details FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_id , T1.organisationstyp , T1.organisation_details FROM organisationen AS T1 JOIN forschungspersonal AS T2 ON T1.organisation_id = T2.arbeitgeber_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.rollenbeschreibung , T2.mitarbeiter_id FROM personalrollen AS T1 JOIN projektmitarbeiter AS T2 ON T1.rollencode = T2.rollencode JOIN projektergebnisse AS T3 ON T2.projekt_id = T3.projekt_id GROUP BY T2.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.rollenbeschreibung , T2.mitarbeiter_id FROM personalrollen AS T1 JOIN projektmitarbeiter AS T2 ON T1.rollencode = T2.rollencode JOIN projektergebnisse AS T3 ON T2.projekt_id = T3.projekt_id GROUP BY T2.mitarbeiter_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT dokumentenart_code FROM dokumenttypen WHERE dokumentenbeschreibung LIKE 'Initial%'	tracking_grants_for_research
SELECT dokumentenart_code FROM dokumenttypen WHERE dokumentenbeschreibung LIKE 'Initial%'	tracking_grants_for_research
SELECT T1.grant_start_date FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id JOIN dokumenttypen AS T3 ON T2.dokumentenart_code = T3.dokumentenart_code WHERE T3.dokumentenbeschreibung = 'Regular' INTERSECT SELECT T1.grant_start_date FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id JOIN dokumenttypen AS T3 ON T2.dokumentenart_code = T3.dokumentenart_code WHERE T3.dokumentenbeschreibung = 'Initial Application'	tracking_grants_for_research
SELECT T1.grant_start_date FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id JOIN dokumenttypen AS T3 ON T2.dokumentenart_code = T3.dokumentenart_code WHERE T3.dokumentenbeschreibung = 'Regular' INTERSECT SELECT T1.grant_start_date FROM zuschüsse AS T1 JOIN dokumente AS T2 ON T1.grant_id = T2.grant_id JOIN dokumenttypen AS T3 ON T2.dokumentenart_code = T3.dokumentenart_code WHERE T3.dokumentenbeschreibung = 'Initial Application'	tracking_grants_for_research
SELECT grant_id , count(*) FROM dokumente GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT grant_id , count(*) FROM dokumente GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.beschreibung_der_organisationsart FROM organisationsarten AS T1 JOIN organisationen AS T2 ON T1.organisationstyp = T2.organisationstyp WHERE T2.organisation_details = 'quo'	tracking_grants_for_research
SELECT T1.beschreibung_der_organisationsart FROM organisationsarten AS T1 JOIN organisationen AS T2 ON T1.organisationstyp = T2.organisationstyp WHERE T2.organisation_details = 'quo'	tracking_grants_for_research
SELECT organisation_details FROM organisationen AS T1 JOIN organisationsarten AS T2 ON T1.organisationstyp = T2.organisationstyp WHERE T2.beschreibung_der_organisationsart = 'Sponsor' ORDER BY organisation_details	tracking_grants_for_research
SELECT organisation_details FROM organisationen AS T1 JOIN organisationsarten AS T2 ON T1.organisationstyp = T2.organisationstyp WHERE T2.beschreibung_der_organisationsart = 'Sponsor' ORDER BY organisation_details	tracking_grants_for_research
SELECT count(*) FROM projektergebnisse WHERE ergebnis_code = 'Patent'	tracking_grants_for_research
SELECT count(*) FROM projektergebnisse WHERE ergebnis_code = 'Patent'	tracking_grants_for_research
SELECT count(*) FROM projektmitarbeiter WHERE rollencode = 'leader' OR datum_von < '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT count(*) FROM projektmitarbeiter WHERE rollencode = 'leader' OR datum_von < '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT datum_bis FROM projektmitarbeiter ORDER BY datum_bis DESC LIMIT 1	tracking_grants_for_research
SELECT datum_bis FROM projektmitarbeiter ORDER BY datum_bis DESC LIMIT 1	tracking_grants_for_research
SELECT T1.ergebnisbeschreibung FROM forschungsergebnisse AS T1 JOIN projektergebnisse AS T2 ON T1.ergebnis_code = T2.ergebnis_code JOIN projekte AS T3 ON T2.projekt_id = T3.projekt_id WHERE T3.projektdetails = 'sint'	tracking_grants_for_research
SELECT T1.ergebnisbeschreibung FROM forschungsergebnisse AS T1 JOIN projektergebnisse AS T2 ON T1.ergebnis_code = T2.ergebnis_code JOIN projekte AS T3 ON T2.projekt_id = T3.projekt_id WHERE T3.projektdetails = 'sint'	tracking_grants_for_research
SELECT T1.organisation_id , count(*) FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT T1.organisation_id , count(*) FROM projekte AS T1 JOIN projektergebnisse AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE organisation_id IN ( SELECT organisation_id FROM projekte GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT projektdetails FROM projekte WHERE organisation_id IN ( SELECT organisation_id FROM projekte GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT personal_details FROM forschungspersonal ORDER BY personal_details ASC	tracking_grants_for_research
SELECT personal_details FROM forschungspersonal ORDER BY personal_details ASC	tracking_grants_for_research
SELECT count(*) FROM aufgaben	tracking_grants_for_research
SELECT count(*) FROM aufgaben	tracking_grants_for_research
SELECT count(*) , T1.projektdetails FROM projekte AS T1 JOIN aufgaben AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id	tracking_grants_for_research
SELECT count(*) , T1.projektdetails FROM projekte AS T1 JOIN aufgaben AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id	tracking_grants_for_research
SELECT rollencode FROM projektmitarbeiter WHERE datum_von > '2003-04-19 15:06:20' AND datum_bis < '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT rollencode FROM projektmitarbeiter WHERE datum_von > '2003-04-19 15:06:20' AND datum_bis < '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT T1.ergebnisbeschreibung FROM forschungsergebnisse AS T1 JOIN projektergebnisse AS T2 ON T1.ergebnis_code = T2.ergebnis_code	tracking_grants_for_research
SELECT T1.ergebnisbeschreibung FROM forschungsergebnisse AS T1 JOIN projektergebnisse AS T2 ON T1.ergebnis_code = T2.ergebnis_code	tracking_grants_for_research
SELECT rollencode FROM projektmitarbeiter GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT rollencode FROM projektmitarbeiter GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT count(T2.freund) FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T1.name = 'Dan'	network_2
SELECT count(T2.freund) FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T1.name = 'Dan'	network_2
SELECT count(*) FROM person WHERE geschlecht = 'female'	network_2
SELECT count(*) FROM person WHERE geschlecht = 'female'	network_2
SELECT avg(alter) FROM person	network_2
SELECT avg(alter) FROM person	network_2
SELECT count(DISTINCT stadt) FROM person	network_2
SELECT count(DISTINCT stadt) FROM person	network_2
SELECT count(DISTINCT beruf) FROM person	network_2
SELECT count(DISTINCT beruf) FROM person	network_2
SELECT name FROM person WHERE alter = (SELECT max(alter) FROM person)	network_2
SELECT name FROM person WHERE alter = (SELECT max(alter) FROM person)	network_2
SELECT name FROM person WHERE beruf = 'student' AND alter = (SELECT max(alter) FROM person WHERE beruf = 'student' )	network_2
SELECT name FROM person WHERE beruf = 'student' AND alter = (SELECT max(alter) FROM person WHERE beruf = 'student' )	network_2
SELECT name FROM person WHERE geschlecht = 'male' AND alter = (SELECT min(alter) FROM person WHERE geschlecht = 'male' )	network_2
SELECT name FROM person WHERE geschlecht = 'male' AND alter = (SELECT min(alter) FROM person WHERE geschlecht = 'male' )	network_2
SELECT alter FROM person WHERE beruf = 'doctor' AND name = 'Zach'	network_2
SELECT alter FROM person WHERE beruf = 'doctor' AND name = 'Zach'	network_2
SELECT name FROM person WHERE alter < 30	network_2
SELECT name FROM person WHERE alter < 30	network_2
SELECT count(*) FROM person WHERE alter > 30 AND beruf = 'engineer'	network_2
SELECT count(*) FROM person WHERE alter > 30 AND beruf = 'engineer'	network_2
SELECT avg(alter) , geschlecht FROM person GROUP BY geschlecht	network_2
SELECT avg(alter) , geschlecht FROM person GROUP BY geschlecht	network_2
SELECT avg(alter) , beruf FROM person GROUP BY beruf	network_2
SELECT avg(alter) , beruf FROM person GROUP BY beruf	network_2
SELECT avg(alter) , beruf FROM person WHERE geschlecht = 'male' GROUP BY beruf	network_2
SELECT avg(alter) , beruf FROM person WHERE geschlecht = 'male' GROUP BY beruf	network_2
SELECT min(alter) , beruf FROM person GROUP BY beruf	network_2
SELECT min(alter) , beruf FROM person GROUP BY beruf	network_2
SELECT count(*) , geschlecht FROM person WHERE alter < 40 GROUP BY geschlecht	network_2
SELECT count(*) , geschlecht FROM person WHERE alter < 40 GROUP BY geschlecht	network_2
SELECT name FROM person WHERE alter > (SELECT min(alter) FROM person WHERE beruf = 'engineer') ORDER BY alter	network_2
SELECT name FROM person WHERE alter > (SELECT min(alter) FROM person WHERE beruf = 'engineer') ORDER BY alter	network_2
SELECT count(*) FROM person WHERE alter > (SELECT max(alter) FROM person WHERE beruf = 'engineer')	network_2
SELECT count(*) FROM person WHERE alter > (SELECT max(alter) FROM person WHERE beruf = 'engineer')	network_2
SELECT name , beruf FROM person ORDER BY name	network_2
SELECT name , beruf FROM person ORDER BY name	network_2
SELECT name FROM person ORDER BY alter DESC	network_2
SELECT name FROM person ORDER BY alter DESC	network_2
SELECT name FROM person WHERE geschlecht = 'male' ORDER BY alter	network_2
SELECT name FROM person WHERE geschlecht = 'male' ORDER BY alter	network_2
SELECT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Dan' INTERSECT SELECT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Alice'	network_2
SELECT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Dan' INTERSECT SELECT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Alice'	network_2
SELECT DISTINCT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Dan' OR T2.freund = 'Alice'	network_2
SELECT DISTINCT T1.name , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Dan' OR T2.freund = 'Alice'	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter > 40) INTERSECT SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter < 30)	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter > 40) INTERSECT SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter < 30)	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter > 40) EXCEPT SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter < 30)	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter > 40) EXCEPT SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund IN (SELECT name FROM person WHERE alter < 30)	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.beruf = 'student'	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.beruf = 'student'	network_2
SELECT name FROM person_freund GROUP BY name HAVING count(*) = 1	network_2
SELECT name FROM person_freund GROUP BY name HAVING count(*) = 1	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T1.name = 'Bob'	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T1.name = 'Bob'	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Bob'	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Bob'	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Zach' AND T1.geschlecht = 'female'	network_2
SELECT T1.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Zach' AND T1.geschlecht = 'female'	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Alice' AND T1.geschlecht = 'female'	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Alice' AND T1.geschlecht = 'female'	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Alice' AND T1.geschlecht = 'male' AND T1.beruf = 'doctor'	network_2
SELECT T2.freund FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Alice' AND T1.geschlecht = 'male' AND T1.beruf = 'doctor'	network_2
SELECT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.stadt = 'new york city'	network_2
SELECT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.stadt = 'new york city'	network_2
SELECT DISTINCT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.alter < (SELECT avg(alter) FROM person)	network_2
SELECT DISTINCT T2.name FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.alter < (SELECT avg(alter) FROM person)	network_2
SELECT DISTINCT T2.name , T2.freund , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.alter > (SELECT avg(alter) FROM person)	network_2
SELECT DISTINCT T2.name , T2.freund , T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T1.alter > (SELECT avg(alter) FROM person)	network_2
SELECT freund FROM person_freund WHERE name = 'Zach' AND jahr = (SELECT max(jahr) FROM person_freund WHERE name = 'Zach')	network_2
SELECT freund FROM person_freund WHERE name = 'Zach' AND jahr = (SELECT max(jahr) FROM person_freund WHERE name = 'Zach')	network_2
SELECT T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Zach' AND T2.jahr = (SELECT max(jahr) FROM person_freund WHERE name = 'Zach')	network_2
SELECT T1.alter FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund WHERE T2.name = 'Zach' AND T2.jahr = (SELECT max(jahr) FROM person_freund WHERE name = 'Zach')	network_2
SELECT name FROM person_freund WHERE freund = 'Alice' AND jahr = (SELECT min(jahr) FROM person_freund WHERE freund = 'Alice')	network_2
SELECT name FROM person_freund WHERE freund = 'Alice' AND jahr = (SELECT min(jahr) FROM person_freund WHERE freund = 'Alice')	network_2
SELECT T1.name , T1.alter , T1.beruf FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Alice' AND T2.jahr = (SELECT max(jahr) FROM person_freund WHERE freund = 'Alice')	network_2
SELECT T1.name , T1.alter , T1.beruf FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.name WHERE T2.freund = 'Alice' AND T2.jahr = (SELECT max(jahr) FROM person_freund WHERE freund = 'Alice')	network_2
SELECT name FROM person EXCEPT SELECT name FROM person_freund	network_2
SELECT name FROM person EXCEPT SELECT name FROM person_freund	network_2
SELECT T2.name , avg(T1.alter) FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund GROUP BY T2.name ORDER BY avg(T1.alter) DESC LIMIT 1	network_2
SELECT T2.name , avg(T1.alter) FROM person AS T1 JOIN person_freund AS T2 ON T1.name = T2.freund GROUP BY T2.name ORDER BY avg(T1.alter) DESC LIMIT 1	network_2
SELECT count(DISTINCT name) FROM person_freund WHERE freund NOT IN (SELECT name FROM person WHERE stadt = 'Austin')	network_2
SELECT count(DISTINCT name) FROM person_freund WHERE freund NOT IN (SELECT name FROM person WHERE stadt = 'Austin')	network_2
SELECT DISTINCT T4.name FROM person_freund AS T1 JOIN person AS T2 ON T1.name = T2.name JOIN person_freund AS T3 ON T1.freund = T3.name JOIN person_freund AS T4 ON T3.freund = T4.name WHERE T2.name = 'Alice' AND T4.name != 'Alice'	network_2
SELECT DISTINCT T4.name FROM person_freund AS T1 JOIN person AS T2 ON T1.name = T2.name JOIN person_freund AS T3 ON T1.freund = T3.name JOIN person_freund AS T4 ON T3.freund = T4.name WHERE T2.name = 'Alice' AND T4.name != 'Alice'	network_2
SELECT count(*) FROM mitglied	decoration_competition
SELECT name FROM mitglied ORDER BY name ASC	decoration_competition
SELECT name , land FROM mitglied	decoration_competition
SELECT name FROM mitglied WHERE land = "United States" OR land = "Canada"	decoration_competition
SELECT land , COUNT(*) FROM mitglied GROUP BY land	decoration_competition
SELECT land FROM mitglied GROUP BY land ORDER BY COUNT(*) DESC LIMIT 1	decoration_competition
SELECT land FROM mitglied GROUP BY land HAVING COUNT(*) > 2	decoration_competition
SELECT leitername , hochschulstandort FROM hochschule	decoration_competition
SELECT T2.name , T1.name FROM hochschule AS T1 JOIN mitglied AS T2 ON T1.college_id = T2.college_id	decoration_competition
SELECT T2.name , T1.hochschulstandort FROM hochschule AS T1 JOIN mitglied AS T2 ON T1.college_id = T2.college_id ORDER BY T2.name ASC	decoration_competition
SELECT DISTINCT T1.leitername FROM hochschule AS T1 JOIN mitglied AS T2 ON T1.college_id = T2.college_id WHERE T2.land = "Canada"	decoration_competition
SELECT T1.name , T2.dekorationsthema FROM mitglied AS T1 JOIN rund AS T2 ON T1.mitglied_id = T2.mitglied_id	decoration_competition
SELECT T1.name FROM mitglied AS T1 JOIN rund AS T2 ON T1.mitglied_id = T2.mitglied_id WHERE T2.rang_in_runde > 3	decoration_competition
SELECT T1.name FROM mitglied AS T1 JOIN rund AS T2 ON T1.mitglied_id = T2.mitglied_id ORDER BY rang_in_runde ASC	decoration_competition
SELECT name FROM mitglied WHERE mitglied_id NOT IN (SELECT mitglied_id FROM rund)	decoration_competition
SELECT dokumentname , zugriffsanzahl FROM dokumente ORDER BY dokumentname	document_management
SELECT dokumentname , zugriffsanzahl FROM dokumente ORDER BY dokumentname	document_management
SELECT dokumentname , zugriffsanzahl FROM dokumente ORDER BY zugriffsanzahl DESC LIMIT 1	document_management
SELECT dokumentname , zugriffsanzahl FROM dokumente ORDER BY zugriffsanzahl DESC LIMIT 1	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING count(*) > 4	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING count(*) > 4	document_management
SELECT sum(zugriffsanzahl) FROM dokumente GROUP BY dokumenttyp_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT sum(zugriffsanzahl) FROM dokumente GROUP BY dokumenttyp_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT avg(zugriffsanzahl) FROM dokumente	document_management
SELECT avg(zugriffsanzahl) FROM dokumente	document_management
SELECT t2.beschreibung_der_dokumentstruktur FROM dokumente AS t1 JOIN dokumentstrukturen AS t2 ON t1.dokumentenstruktur_code = t2.dokumentenstruktur_code GROUP BY t1.dokumentenstruktur_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT t2.beschreibung_der_dokumentstruktur FROM dokumente AS t1 JOIN dokumentstrukturen AS t2 ON t1.dokumentenstruktur_code = t2.dokumentenstruktur_code GROUP BY t1.dokumentenstruktur_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT dokumenttyp_code FROM dokumente WHERE dokumentname = "David CV"	document_management
SELECT dokumenttyp_code FROM dokumente WHERE dokumentname = "David CV"	document_management
SELECT dokumentname FROM dokumente GROUP BY dokumenttyp_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT dokumentname FROM dokumente GROUP BY dokumentenstruktur_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT dokumentname FROM dokumente GROUP BY dokumenttyp_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT dokumentname FROM dokumente GROUP BY dokumentenstruktur_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING sum(zugriffsanzahl) > 10000	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING sum(zugriffsanzahl) > 10000	document_management
SELECT t2.abschnittstitel FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code WHERE t1.dokumentname = "David CV"	document_management
SELECT t2.abschnittstitel FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code WHERE t1.dokumentname = "David CV"	document_management
SELECT dokumentname FROM dokumente WHERE dokument_code NOT IN (SELECT dokument_code FROM dokumentenabschnitte)	document_management
SELECT dokumentname FROM dokumente WHERE dokument_code NOT IN (SELECT dokument_code FROM dokumentenabschnitte)	document_management
SELECT benutzername , passwort FROM benutzer GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	document_management
SELECT benutzername , passwort FROM benutzer GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1	document_management
SELECT avg(t1.zugriffsanzahl) FROM dokumente AS t1 JOIN dokumentensachgebiete AS t2 ON t1.dokument_code = t2.dokument_code JOIN sachgebiete AS t3 ON t2.funktionsbereich_code = t3.funktionsbereich_code WHERE t3.funktionsbereichsbeschreibung = "Acknowledgement"	document_management
SELECT avg(t1.zugriffsanzahl) FROM dokumente AS t1 JOIN dokumentensachgebiete AS t2 ON t1.dokument_code = t2.dokument_code JOIN sachgebiete AS t3 ON t2.funktionsbereich_code = t3.funktionsbereich_code WHERE t3.funktionsbereichsbeschreibung = "Acknowledgement"	document_management
SELECT dokumentname FROM dokumente EXCEPT SELECT t1.dokumentname FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code JOIN dokumente_abschnitte_bilder AS t3 ON t2.abschnitt_id = t3.abschnitt_id	document_management
SELECT dokumentname FROM dokumente EXCEPT SELECT t1.dokumentname FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code JOIN dokumente_abschnitte_bilder AS t3 ON t2.abschnitt_id = t3.abschnitt_id	document_management
SELECT t1.dokumentname FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code GROUP BY t1.dokument_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT t1.dokumentname FROM dokumente AS t1 JOIN dokumentenabschnitte AS t2 ON t1.dokument_code = t2.dokument_code GROUP BY t1.dokument_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT dokumentname FROM dokumente WHERE dokumentname LIKE "%CV%"	document_management
SELECT dokumentname FROM dokumente WHERE dokumentname LIKE "%CV%"	document_management
SELECT count(*) FROM benutzer WHERE benutzer_login = 1	document_management
SELECT count(*) FROM benutzer WHERE benutzer_login = 1	document_management
SELECT rollenbeschreibung FROM rollen WHERE rollencode = (SELECT rollencode FROM benutzer WHERE benutzer_login = 1 GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT rollenbeschreibung FROM rollen WHERE rollencode = (SELECT rollencode FROM benutzer WHERE benutzer_login = 1 GROUP BY rollencode ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT avg(zugriffsanzahl) FROM dokumente GROUP BY dokumentenstruktur_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT avg(zugriffsanzahl) FROM dokumente GROUP BY dokumentenstruktur_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT bildname , bild_url FROM bilder ORDER BY bildname	document_management
SELECT bildname , bild_url FROM bilder ORDER BY bildname	document_management
SELECT count(*) , rollencode FROM benutzer GROUP BY rollencode	document_management
SELECT count(*) , rollencode FROM benutzer GROUP BY rollencode	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING count(*) > 2	document_management
SELECT dokumenttyp_code FROM dokumente GROUP BY dokumenttyp_code HAVING count(*) > 2	document_management
SELECT count(*) FROM unternehmen	company_office
SELECT count(*) FROM unternehmen	company_office
SELECT name FROM unternehmen ORDER BY marktwert_milliarden DESC	company_office
SELECT name FROM unternehmen ORDER BY marktwert_milliarden DESC	company_office
SELECT name FROM unternehmen WHERE hauptsitz != 'USA'	company_office
SELECT name FROM unternehmen WHERE hauptsitz != 'USA'	company_office
SELECT name , vermögen_milliarden FROM unternehmen ORDER BY name ASC	company_office
SELECT name , vermögen_milliarden FROM unternehmen ORDER BY name ASC	company_office
SELECT avg(gewinn_milliarde) FROM unternehmen	company_office
SELECT avg(gewinn_milliarde) FROM unternehmen	company_office
SELECT max(umsatz_milliarden) , min(umsatz_milliarden) FROM unternehmen WHERE branche != "Banking"	company_office
SELECT max(umsatz_milliarden) , min(umsatz_milliarden) FROM unternehmen WHERE branche != "Banking"	company_office
SELECT count(DISTINCT branche) FROM unternehmen	company_office
SELECT count(DISTINCT branche) FROM unternehmen	company_office
SELECT name FROM gebäude ORDER BY höhe DESC	company_office
SELECT name FROM gebäude ORDER BY höhe DESC	company_office
SELECT geschichten FROM gebäude ORDER BY höhe DESC LIMIT 1	company_office
SELECT geschichten FROM gebäude ORDER BY höhe DESC LIMIT 1	company_office
SELECT T3.name , T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id	company_office
SELECT T3.name , T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id	company_office
SELECT T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id GROUP BY T1.gebäude_id HAVING COUNT(*) > 1	company_office
SELECT T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id GROUP BY T1.gebäude_id HAVING COUNT(*) > 1	company_office
SELECT T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id GROUP BY T1.gebäude_id ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT T2.name FROM bürostandorte AS T1 JOIN gebäude AS T2 ON T1.gebäude_id = T2.id JOIN unternehmen AS T3 ON T1.firmen_id = T3.id GROUP BY T1.gebäude_id ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT name FROM gebäude WHERE status = "on-hold" ORDER BY geschichten ASC	company_office
SELECT name FROM gebäude WHERE status = "on-hold" ORDER BY geschichten ASC	company_office
SELECT branche , COUNT(*) FROM unternehmen GROUP BY branche	company_office
SELECT branche , COUNT(*) FROM unternehmen GROUP BY branche	company_office
SELECT branche FROM unternehmen GROUP BY branche ORDER BY COUNT(*) DESC	company_office
SELECT branche FROM unternehmen GROUP BY branche ORDER BY COUNT(*) DESC	company_office
SELECT branche FROM unternehmen GROUP BY branche ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT branche FROM unternehmen GROUP BY branche ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT name FROM gebäude WHERE id NOT IN (SELECT gebäude_id FROM bürostandorte)	company_office
SELECT name FROM gebäude WHERE id NOT IN (SELECT gebäude_id FROM bürostandorte)	company_office
SELECT branche FROM unternehmen WHERE hauptsitz = "USA" INTERSECT SELECT branche FROM unternehmen WHERE hauptsitz = "China"	company_office
SELECT branche FROM unternehmen WHERE hauptsitz = "USA" INTERSECT SELECT branche FROM unternehmen WHERE hauptsitz = "China"	company_office
SELECT count(*) FROM unternehmen WHERE branche = "Banking" OR branche = "Conglomerate"	company_office
SELECT count(*) FROM unternehmen WHERE branche = "Banking" OR branche = "Conglomerate"	company_office
SELECT hauptsitz FROM unternehmen GROUP BY hauptsitz HAVING COUNT(*) > 2	company_office
SELECT hauptsitz FROM unternehmen GROUP BY hauptsitz HAVING COUNT(*) > 2	company_office
SELECT count(*) FROM produkte	solvency_ii
SELECT produktname FROM produkte ORDER BY produktpreis ASC	solvency_ii
SELECT produktname , produkttyp_code FROM produkte	solvency_ii
SELECT produktpreis FROM produkte WHERE produktname = "Dining" OR produktname = "Trading Policy"	solvency_ii
SELECT avg(produktpreis) FROM produkte	solvency_ii
SELECT produktname FROM produkte ORDER BY produktpreis DESC LIMIT 1	solvency_ii
SELECT produkttyp_code , COUNT(*) FROM produkte GROUP BY produkttyp_code	solvency_ii
SELECT produkttyp_code FROM produkte GROUP BY produkttyp_code ORDER BY COUNT(*) DESC LIMIT 1	solvency_ii
SELECT produkttyp_code FROM produkte GROUP BY produkttyp_code HAVING COUNT(*) >= 2	solvency_ii
SELECT produkttyp_code FROM produkte WHERE produktpreis > 4500 INTERSECT SELECT produkttyp_code FROM produkte WHERE produktpreis < 3000	solvency_ii
SELECT T1.produktname , COUNT(*) FROM produkte AS T1 JOIN produkte_in_veranstaltungen AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname	solvency_ii
SELECT T1.produktname , COUNT(*) FROM produkte AS T1 JOIN produkte_in_veranstaltungen AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname ORDER BY COUNT(*) DESC	solvency_ii
SELECT T1.produktname FROM produkte AS T1 JOIN produkte_in_veranstaltungen AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname HAVING COUNT(*) >= 2	solvency_ii
SELECT T1.produktname FROM produkte AS T1 JOIN produkte_in_veranstaltungen AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname HAVING COUNT(*) >= 2 ORDER BY T1.produktname	solvency_ii
SELECT produktname FROM produkte WHERE produkt_id NOT IN (SELECT produkt_id FROM produkte_in_veranstaltungen)	solvency_ii
SELECT count(*) FROM kunstwerk	entertainment_awards
SELECT name FROM kunstwerk ORDER BY name ASC	entertainment_awards
SELECT name FROM kunstwerk WHERE typ != "Program Talent Show"	entertainment_awards
SELECT festival_name , ort FROM festival_detail	entertainment_awards
SELECT stuhlname FROM festival_detail ORDER BY jahr ASC	entertainment_awards
SELECT ort FROM festival_detail ORDER BY anzahl_der_zuschauer DESC LIMIT 1	entertainment_awards
SELECT festival_name FROM festival_detail WHERE jahr = 2007	entertainment_awards
SELECT avg(anzahl_der_zuschauer) FROM festival_detail	entertainment_awards
SELECT festival_name FROM festival_detail ORDER BY jahr DESC LIMIT 3	entertainment_awards
SELECT T2.name , T3.festival_name FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id	entertainment_awards
SELECT DISTINCT T2.typ FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id WHERE T3.jahr = 2007	entertainment_awards
SELECT T2.name FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id ORDER BY T3.jahr	entertainment_awards
SELECT T3.festival_name FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id WHERE T2.typ = "Program Talent Show"	entertainment_awards
SELECT T1.festival_id , T3.festival_name FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id GROUP BY T1.festival_id HAVING COUNT(*) >= 2	entertainment_awards
SELECT T1.festival_id , T3.festival_name , COUNT(*) FROM nominierung AS T1 JOIN kunstwerk AS T2 ON T1.kunstwerk_id = T2.kunstwerk_id JOIN festival_detail AS T3 ON T1.festival_id = T3.festival_id GROUP BY T1.festival_id	entertainment_awards
SELECT typ , COUNT(*) FROM kunstwerk GROUP BY typ	entertainment_awards
SELECT typ FROM kunstwerk GROUP BY typ ORDER BY COUNT(*) DESC LIMIT 1	entertainment_awards
SELECT jahr FROM festival_detail GROUP BY jahr HAVING COUNT(*) > 1	entertainment_awards
SELECT name FROM kunstwerk WHERE kunstwerk_id NOT IN (SELECT kunstwerk_id FROM nominierung)	entertainment_awards
SELECT anzahl_der_zuschauer FROM festival_detail WHERE jahr = 2008 OR jahr = 2010	entertainment_awards
SELECT sum(anzahl_der_zuschauer) FROM festival_detail	entertainment_awards
SELECT jahr FROM festival_detail WHERE ort = 'United States' INTERSECT SELECT jahr FROM festival_detail WHERE ort != 'United States'	entertainment_awards
SELECT count(*) FROM räumlichkeiten	customers_campaigns_ecommerce
SELECT DISTINCT räumlichkeitstyp FROM räumlichkeiten	customers_campaigns_ecommerce
SELECT räumlichkeitstyp , raum_details FROM räumlichkeiten ORDER BY räumlichkeitstyp	customers_campaigns_ecommerce
SELECT räumlichkeitstyp , count(*) FROM räumlichkeiten GROUP BY räumlichkeitstyp	customers_campaigns_ecommerce
SELECT produktkategorie , count(*) FROM mailshot_kampagnen GROUP BY produktkategorie	customers_campaigns_ecommerce
SELECT kundenname , kundentelefon FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM mailshot_kunden)	customers_campaigns_ecommerce
SELECT T1.kundenname , T1.kundentelefon FROM kunden AS T1 JOIN mailshot_kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.ergebnis_code = 'No Response'	customers_campaigns_ecommerce
SELECT ergebnis_code , count(*) FROM mailshot_kunden GROUP BY ergebnis_code	customers_campaigns_ecommerce
SELECT T2.kundenname FROM mailshot_kunden AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE ergebnis_code = 'Order' GROUP BY T1.kunden_id HAVING count(*) >= 2	customers_campaigns_ecommerce
SELECT T2.kundenname FROM mailshot_kunden AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_campaigns_ecommerce
SELECT T2.kundenname , T2.zahlungsmethode FROM mailshot_kunden AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.ergebnis_code = 'Order' INTERSECT SELECT T2.kundenname , T2.zahlungsmethode FROM mailshot_kunden AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.ergebnis_code = 'No Response'	customers_campaigns_ecommerce
SELECT T2.räumlichkeitstyp , T1.adressentyp_code FROM kundenadressen AS T1 JOIN räumlichkeiten AS T2 ON T1.räumlichkeit_id = T2.räumlichkeit_id	customers_campaigns_ecommerce
SELECT DISTINCT adressentyp_code FROM kundenadressen	customers_campaigns_ecommerce
SELECT order_shipping_charges , kunden_id FROM kundenaufträge WHERE bestellstatus_code = 'Cancelled' OR bestellstatus_code = 'Paid'	customers_campaigns_ecommerce
SELECT T1.kundenname FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id WHERE versandart_code = 'FedEx' AND bestellstatus_code = 'Paid'	customers_campaigns_ecommerce
SELECT count(*) FROM kurs	college_3
SELECT count(*) FROM kurs	college_3
SELECT count(*) FROM kurs WHERE credits > 2	college_3
SELECT count(*) FROM kurs WHERE credits > 2	college_3
SELECT kursname FROM kurs WHERE credits = 1	college_3
SELECT kursname FROM kurs WHERE credits = 1	college_3
SELECT kursname FROM kurs WHERE tage = "MTW"	college_3
SELECT kursname FROM kurs WHERE tage = "MTW"	college_3
SELECT count(*) FROM fachbereich WHERE abteilung = "AS"	college_3
SELECT count(*) FROM fachbereich WHERE abteilung = "AS"	college_3
SELECT abteilung_telefon FROM fachbereich WHERE zimmer = 268	college_3
SELECT abteilung_telefon FROM fachbereich WHERE zimmer = 268	college_3
SELECT COUNT(DISTINCT student_id) FROM eingeschrieben_in WHERE grade = "B"	college_3
SELECT COUNT(DISTINCT student_id) FROM eingeschrieben_in WHERE grade = "B"	college_3
SELECT max(notenpunkt) , min(notenpunkt) FROM gehaltsumwandlung	college_3
SELECT max(notenpunkt) , min(notenpunkt) FROM gehaltsumwandlung	college_3
SELECT DISTINCT vorname FROM schüler WHERE vorname LIKE '%a%'	college_3
SELECT DISTINCT vorname FROM schüler WHERE vorname LIKE '%a%'	college_3
SELECT vorname , nachname FROM fakultät WHERE geschlecht = "M" AND gebäude = "NEB"	college_3
SELECT vorname , nachname FROM fakultät WHERE geschlecht = "M" AND gebäude = "NEB"	college_3
SELECT zimmer FROM fakultät WHERE rang = "Professor" AND gebäude = "NEB"	college_3
SELECT zimmer FROM fakultät WHERE rang = "Professor" AND gebäude = "NEB"	college_3
SELECT abteilungsname FROM fachbereich WHERE gebäude = "Mergenthaler"	college_3
SELECT abteilungsname FROM fachbereich WHERE gebäude = "Mergenthaler"	college_3
SELECT * FROM kurs ORDER BY credits	college_3
SELECT * FROM kurs ORDER BY credits	college_3
SELECT kursname FROM kurs ORDER BY credits	college_3
SELECT kursname FROM kurs ORDER BY credits	college_3
SELECT vorname FROM schüler ORDER BY alter DESC	college_3
SELECT vorname FROM schüler ORDER BY alter DESC	college_3
SELECT nachname FROM schüler WHERE geschlecht = "F" ORDER BY alter DESC	college_3
SELECT nachname FROM schüler WHERE geschlecht = "F" ORDER BY alter DESC	college_3
SELECT nachname FROM fakultät WHERE gebäude = "Barton" ORDER BY nachname	college_3
SELECT nachname FROM fakultät WHERE gebäude = "Barton" ORDER BY nachname	college_3
SELECT vorname FROM fakultät WHERE rang = "Professor" ORDER BY vorname	college_3
SELECT vorname FROM fakultät WHERE rang = "Professor" ORDER BY vorname	college_3
SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN nebenfach_in AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer GROUP BY T2.abteilungsnummer ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN nebenfach_in AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer GROUP BY T2.abteilungsnummer ORDER BY count(*) DESC LIMIT 1	college_3
SELECT abteilungsname FROM fachbereich EXCEPT SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN nebenfach_in AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer	college_3
SELECT abteilungsname FROM fachbereich EXCEPT SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN nebenfach_in AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer	college_3
SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN mitglied_von AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer GROUP BY T2.abteilungsnummer ORDER BY count(*) ASC LIMIT 1	college_3
SELECT T1.abteilungsname FROM fachbereich AS T1 JOIN mitglied_von AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer GROUP BY T2.abteilungsnummer ORDER BY count(*) ASC LIMIT 1	college_3
SELECT rang FROM fakultät GROUP BY rang ORDER BY count(*) ASC LIMIT 1	college_3
SELECT rang FROM fakultät GROUP BY rang ORDER BY count(*) ASC LIMIT 1	college_3
SELECT T2.vorname , T2.nachname FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id GROUP BY T1.lehrer ORDER BY count(*) DESC LIMIT 3	college_3
SELECT T2.vorname , T2.nachname FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id GROUP BY T1.lehrer ORDER BY count(*) DESC LIMIT 3	college_3
SELECT T2.gebäude FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id GROUP BY T1.lehrer ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T2.gebäude FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id GROUP BY T1.lehrer ORDER BY count(*) DESC LIMIT 1	college_3
SELECT T1.kursname FROM kurs AS T1 JOIN eingeschrieben_in AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING COUNT(*) >= 5	college_3
SELECT T1.kursname FROM kurs AS T1 JOIN eingeschrieben_in AS T2 ON T1.kurs_id = T2.kurs_id GROUP BY T2.kurs_id HAVING COUNT(*) >= 5	college_3
SELECT T2.vorname , T2.nachname FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id WHERE T1.kursname = "COMPUTER LITERACY"	college_3
SELECT T2.vorname , T2.nachname FROM kurs AS T1 JOIN fakultät AS T2 ON T1.lehrer = T2.fakultät_id WHERE T1.kursname = "COMPUTER LITERACY"	college_3
SELECT T2.abteilungsname , T2.zimmer FROM kurs AS T1 JOIN fachbereich AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer WHERE T1.kursname = "INTRODUCTION TO COMPUTER SCIENCE"	college_3
SELECT T2.abteilungsname , T2.zimmer FROM kurs AS T1 JOIN fachbereich AS T2 ON T1.abteilungsnummer = T2.abteilungsnummer WHERE T1.kursname = "INTRODUCTION TO COMPUTER SCIENCE"	college_3
SELECT T3.vorname , T3.nachname , T2.notenpunkt FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id	college_3
SELECT T3.vorname , T3.nachname , T2.notenpunkt FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id	college_3
SELECT DISTINCT T3.vorname FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T2.notenpunkt >= 3.8	college_3
SELECT DISTINCT T3.vorname FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T2.notenpunkt >= 3.8	college_3
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN mitglied_von AS T2 ON T1.fakultät_id = T2.fakultät_id WHERE T2.abteilungsnummer = 520	college_3
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN mitglied_von AS T2 ON T1.fakultät_id = T2.fakultät_id WHERE T2.abteilungsnummer = 520	college_3
SELECT T2.vorname , T2.nachname FROM nebenfach_in AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id WHERE T1.abteilungsnummer = 140	college_3
SELECT T2.vorname , T2.nachname FROM nebenfach_in AS T1 JOIN schüler AS T2 ON T1.student_id = T2.student_id WHERE T1.abteilungsnummer = 140	college_3
SELECT T2.nachname FROM fachbereich AS T1 JOIN fakultät AS T2 ON T1.abteilungsnummer = T3.abteilungsnummer JOIN mitglied_von AS T3 ON T2.fakultät_id = T3.fakultät_id WHERE T1.abteilungsname = "Computer Science"	college_3
SELECT T2.nachname FROM fachbereich AS T1 JOIN fakultät AS T2 ON T1.abteilungsnummer = T3.abteilungsnummer JOIN mitglied_von AS T3 ON T2.fakultät_id = T3.fakultät_id WHERE T1.abteilungsname = "Computer Science"	college_3
SELECT avg(T2.notenpunkt) FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T3.nachname = "Smith"	college_3
SELECT avg(T2.notenpunkt) FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T3.nachname = "Smith"	college_3
SELECT max(T2.notenpunkt) , min(T2.notenpunkt) FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T3.stadtcode = "NYC"	college_3
SELECT max(T2.notenpunkt) , min(T2.notenpunkt) FROM eingeschrieben_in AS T1 JOIN gehaltsumwandlung AS T2 JOIN schüler AS T3 ON T1.grade = T2.brief_grade AND T1.student_id = T3.student_id WHERE T3.stadtcode = "NYC"	college_3
SELECT kursname FROM kurs WHERE credits = 3 UNION SELECT kursname FROM kurs WHERE credits = 1 AND stunden = 4	college_3
SELECT kursname FROM kurs WHERE credits = 3 UNION SELECT kursname FROM kurs WHERE credits = 1 AND stunden = 4	college_3
SELECT abteilungsname FROM fachbereich WHERE abteilung = "AS" UNION SELECT abteilungsname FROM fachbereich WHERE abteilung = "EN" AND gebäude = "NEB"	college_3
SELECT abteilungsname FROM fachbereich WHERE abteilung = "AS" UNION SELECT abteilungsname FROM fachbereich WHERE abteilung = "EN" AND gebäude = "NEB"	college_3
SELECT vorname FROM schüler WHERE student_id NOT IN (SELECT student_id FROM eingeschrieben_in)	college_3
SELECT vorname FROM schüler WHERE student_id NOT IN (SELECT student_id FROM eingeschrieben_in)	college_3
SELECT produkt_id FROM produktlieferanten ORDER BY gekaufter_gesamtbetrag DESC LIMIT 3	department_store
SELECT produkt_id FROM produktlieferanten ORDER BY gekaufter_gesamtbetrag DESC LIMIT 3	department_store
SELECT produkt_id , produkttyp_code FROM produkte ORDER BY produktpreis LIMIT 1	department_store
SELECT produkt_id , produkttyp_code FROM produkte ORDER BY produktpreis LIMIT 1	department_store
SELECT count(DISTINCT produkttyp_code) FROM produkte	department_store
SELECT count(DISTINCT produkttyp_code) FROM produkte	department_store
SELECT T1.adressdaten FROM adressen AS T1 JOIN kundenadressen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.kunden_id = 10	department_store
SELECT T1.adressdaten FROM adressen AS T1 JOIN kundenadressen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.kunden_id = 10	department_store
SELECT T1.mitarbeiter_id , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Department Manager"	department_store
SELECT T1.mitarbeiter_id , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Department Manager"	department_store
SELECT zahlungsart_code , count(*) FROM kunden GROUP BY zahlungsart_code	department_store
SELECT zahlungsart_code , count(*) FROM kunden GROUP BY zahlungsart_code	department_store
SELECT produkt_id FROM bestellpositionen GROUP BY produkt_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT produkt_id FROM bestellpositionen GROUP BY produkt_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT T1.kundenname , T1.kundentelefon , T1.kunde_e_mail FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT T1.kundenname , T1.kundentelefon , T1.kunde_e_mail FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT produkttyp_code , avg(produktpreis) FROM produkte GROUP BY produkttyp_code	department_store
SELECT produkttyp_code , avg(produktpreis) FROM produkte GROUP BY produkttyp_code	department_store
SELECT count(*) FROM kaufhäuser AS T1 JOIN kaufhauskette AS T2 ON T1.kaufhausketten_id = T2.kaufhausketten_id WHERE T2.kaufhauskette_name = "South"	department_store
SELECT count(*) FROM kaufhäuser AS T1 JOIN kaufhauskette AS T2 ON T1.kaufhausketten_id = T2.kaufhausketten_id WHERE T2.kaufhauskette_name = "South"	department_store
SELECT T1.name_des_personals , T2.stellentitel_code FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id ORDER BY T2.datum_der_zuweisung_an DESC LIMIT 1	department_store
SELECT T1.name_des_personals , T2.stellentitel_code FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id ORDER BY T2.datum_der_zuweisung_an DESC LIMIT 1	department_store
SELECT T2.produkttyp_code , T2.produktname , T2.produktpreis FROM produktlieferanten AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.lieferanten_id = 3	department_store
SELECT T2.produkttyp_code , T2.produktname , T2.produktpreis FROM produktlieferanten AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.lieferanten_id = 3	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "Pending" ORDER BY T2.kunden_id	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "Pending" ORDER BY T2.kunden_id	department_store
SELECT T1.kundenname , T1.kundenadresse FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "New" INTERSECT SELECT T1.kundenname , T1.kundenadresse FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "Pending"	department_store
SELECT T1.kundenname , T1.kundenadresse FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "New" INTERSECT SELECT T1.kundenname , T1.kundenadresse FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = "Pending"	department_store
SELECT T1.produkt_id FROM produktlieferanten AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.lieferanten_id = 2 AND T2.produktpreis > (SELECT avg(produktpreis) FROM produkte)	department_store
SELECT T1.produkt_id FROM produktlieferanten AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.lieferanten_id = 2 AND T2.produktpreis > (SELECT avg(produktpreis) FROM produkte)	department_store
SELECT T2.kaufhaus_id , T2.kaufhausname FROM abteilungen AS T1 JOIN kaufhäuser AS T2 ON T1.kaufhaus_id = T2.kaufhaus_id WHERE T1.abteilungsname = "marketing" INTERSECT SELECT T2.kaufhaus_id , T2.kaufhausname FROM abteilungen AS T1 JOIN kaufhäuser AS T2 ON T1.kaufhaus_id = T2.kaufhaus_id WHERE T1.abteilungsname = "managing"	department_store
SELECT T2.kaufhaus_id , T2.kaufhausname FROM abteilungen AS T1 JOIN kaufhäuser AS T2 ON T1.kaufhaus_id = T2.kaufhaus_id WHERE T1.abteilungsname = "marketing" INTERSECT SELECT T2.kaufhaus_id , T2.kaufhausname FROM abteilungen AS T1 JOIN kaufhäuser AS T2 ON T1.kaufhaus_id = T2.kaufhaus_id WHERE T1.abteilungsname = "managing"	department_store
SELECT kaufhausketten_id FROM kaufhäuser GROUP BY kaufhausketten_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT kaufhausketten_id FROM kaufhäuser GROUP BY kaufhausketten_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT abteilung_id FROM zuweisungen_der_personalabteilung GROUP BY abteilung_id ORDER BY count(*) LIMIT 1	department_store
SELECT abteilung_id FROM zuweisungen_der_personalabteilung GROUP BY abteilung_id ORDER BY count(*) LIMIT 1	department_store
SELECT produkttyp_code , max(produktpreis) , min(produktpreis) FROM produkte GROUP BY produkttyp_code	department_store
SELECT produkttyp_code , max(produktpreis) , min(produktpreis) FROM produkte GROUP BY produkttyp_code	department_store
SELECT produkttyp_code FROM produkte GROUP BY produkttyp_code HAVING avg(produktpreis) > (SELECT avg(produktpreis) FROM produkte)	department_store
SELECT produkttyp_code FROM produkte GROUP BY produkttyp_code HAVING avg(produktpreis) > (SELECT avg(produktpreis) FROM produkte)	department_store
SELECT T1.mitarbeiter_id , T1.name_des_personals FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id ORDER BY datum_der_zuweisung_an - datum_zugewiesen_von LIMIT 1	department_store
SELECT T1.mitarbeiter_id , T1.name_des_personals FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id ORDER BY datum_der_zuweisung_an - datum_zugewiesen_von LIMIT 1	department_store
SELECT produktname , produkt_id FROM produkte WHERE produktpreis BETWEEN 600 AND 700	department_store
SELECT produktname , produkt_id FROM produkte WHERE produktpreis BETWEEN 600 AND 700	department_store
SELECT DISTINCT kunden_id FROM kundenbestellungen WHERE bestelldatum > (SELECT min(bestelldatum) FROM kundenbestellungen WHERE bestellstatus_code = "Cancelled")	department_store
SELECT DISTINCT kunden_id FROM kundenbestellungen WHERE bestelldatum > (SELECT min(bestelldatum) FROM kundenbestellungen WHERE bestellstatus_code = "Cancelled")	department_store
SELECT mitarbeiter_id FROM zuweisungen_der_personalabteilung WHERE datum_der_zuweisung_an < (SELECT max(datum_der_zuweisung_an) FROM zuweisungen_der_personalabteilung WHERE stellentitel_code = 'Clerical Staff')	department_store
SELECT mitarbeiter_id FROM zuweisungen_der_personalabteilung WHERE datum_der_zuweisung_an < (SELECT max(datum_der_zuweisung_an) FROM zuweisungen_der_personalabteilung WHERE stellentitel_code = 'Clerical Staff')	department_store
SELECT kundenname , kunden_id FROM kunden WHERE kundenadresse LIKE "%TN%"	department_store
SELECT kundenname , kunden_id FROM kunden WHERE kundenadresse LIKE "%TN%"	department_store
SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.datum_zugewiesen_von LIKE "2016%"	department_store
SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.datum_zugewiesen_von LIKE "2016%"	department_store
SELECT T1.name_des_personals FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T2.mitarbeiter_id HAVING COUNT (*) > 1	department_store
SELECT T1.name_des_personals FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id GROUP BY T2.mitarbeiter_id HAVING COUNT (*) > 1	department_store
SELECT T1.lieferantenname , T1.lieferant_telefon FROM lieferanten AS T1 JOIN lieferantenadressen AS T2 ON T1.lieferanten_id = T2.lieferanten_id JOIN adressen AS T3 ON T2.adresse_id = T3.adresse_id ORDER BY T3.adressdaten	department_store
SELECT T1.lieferantenname , T1.lieferant_telefon FROM lieferanten AS T1 JOIN lieferantenadressen AS T2 ON T1.lieferanten_id = T2.lieferanten_id JOIN adressen AS T3 ON T2.adresse_id = T3.adresse_id ORDER BY T3.adressdaten	department_store
SELECT kundentelefon FROM kunden UNION SELECT lieferant_telefon FROM lieferanten	department_store
SELECT kundentelefon FROM kunden UNION SELECT lieferant_telefon FROM lieferanten	department_store
SELECT produkt_id FROM bestellpositionen GROUP BY produkt_id HAVING count(*) > 3 UNION SELECT produkt_id FROM produktlieferanten GROUP BY produkt_id HAVING sum(gekaufter_gesamtbetrag) > 80000	department_store
SELECT produkt_id FROM bestellpositionen GROUP BY produkt_id HAVING count(*) > 3 UNION SELECT produkt_id FROM produktlieferanten GROUP BY produkt_id HAVING sum(gekaufter_gesamtbetrag) > 80000	department_store
SELECT produkt_id , produktname FROM produkte WHERE produktpreis < 600 OR produktpreis > 900	department_store
SELECT produkt_id , produktname FROM produkte WHERE produktpreis < 600 OR produktpreis > 900	department_store
SELECT lieferanten_id FROM produktlieferanten GROUP BY lieferanten_id HAVING avg(gekaufter_gesamtbetrag) > 50000 OR avg(gekaufter_gesamtbetrag) < 30000	department_store
SELECT lieferanten_id FROM produktlieferanten GROUP BY lieferanten_id HAVING avg(gekaufter_gesamtbetrag) > 50000 OR avg(gekaufter_gesamtbetrag) < 30000	department_store
SELECT avg(gekaufter_gesamtbetrag) , avg(gekaufter_gesamtwert) FROM produktlieferanten WHERE lieferanten_id = (SELECT lieferanten_id FROM produktlieferanten GROUP BY lieferanten_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT avg(gekaufter_gesamtbetrag) , avg(gekaufter_gesamtwert) FROM produktlieferanten WHERE lieferanten_id = (SELECT lieferanten_id FROM produktlieferanten GROUP BY lieferanten_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT max(kundencode) , min(kundencode) FROM kunden	department_store
SELECT max(kundencode) , min(kundencode) FROM kunden	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id JOIN bestellpositionen AS T3 ON T2.bestellung_id = T3.bestellung_id JOIN produkte AS T4 ON T3.produkt_id = T4.produkt_id WHERE T4.produktname = "keyboard"	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id JOIN bestellpositionen AS T3 ON T2.bestellung_id = T3.bestellung_id JOIN produkte AS T4 ON T3.produkt_id = T4.produkt_id WHERE T4.produktname = "keyboard"	department_store
SELECT DISTINCT T1.lieferantenname , T1.lieferant_telefon FROM lieferanten AS T1 JOIN produktlieferanten AS T2 ON T1.lieferanten_id = T2.lieferanten_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id WHERE T3.produktname = "red jeans"	department_store
SELECT DISTINCT T1.lieferantenname , T1.lieferant_telefon FROM lieferanten AS T1 JOIN produktlieferanten AS T2 ON T1.lieferanten_id = T2.lieferanten_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id WHERE T3.produktname = "red jeans"	department_store
SELECT max(produktpreis) , min(produktpreis) , produkttyp_code FROM produkte GROUP BY produkttyp_code ORDER BY produkttyp_code	department_store
SELECT max(produktpreis) , min(produktpreis) , produkttyp_code FROM produkte GROUP BY produkttyp_code ORDER BY produkttyp_code	department_store
SELECT bestellung_id , kunden_id FROM kundenbestellungen WHERE bestellstatus_code = "Cancelled" ORDER BY bestelldatum	department_store
SELECT bestellung_id , kunden_id FROM kundenbestellungen WHERE bestellstatus_code = "Cancelled" ORDER BY bestelldatum	department_store
SELECT DISTINCT T3.produktname FROM kundenbestellungen AS T1 JOIN bestellpositionen AS T2 ON T1.bestellung_id = T2.bestellung_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id HAVING COUNT (DISTINCT T1.kunden_id) >= 2	department_store
SELECT DISTINCT T3.produktname FROM kundenbestellungen AS T1 JOIN bestellpositionen AS T2 ON T1.bestellung_id = T2.bestellung_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id HAVING COUNT (DISTINCT T1.kunden_id) >= 2	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id JOIN bestellpositionen AS T3 ON T2.bestellung_id = T3.bestellung_id GROUP BY T1.kunden_id HAVING COUNT (DISTINCT T3.produkt_id) >= 3	department_store
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN kundenbestellungen AS T2 ON T1.kunden_id = T2.kunden_id JOIN bestellpositionen AS T3 ON T2.bestellung_id = T3.bestellung_id GROUP BY T1.kunden_id HAVING COUNT (DISTINCT T3.produkt_id) >= 3	department_store
SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Sales Person" EXCEPT SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Clerical Staff"	department_store
SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Sales Person" EXCEPT SELECT T1.name_des_personals , T1.personal_geschlecht FROM personal AS T1 JOIN zuweisungen_der_personalabteilung AS T2 ON T1.mitarbeiter_id = T2.mitarbeiter_id WHERE T2.stellentitel_code = "Clerical Staff"	department_store
SELECT kunden_id , kundenname FROM kunden WHERE kundenadresse LIKE "%WY%" AND zahlungsart_code != "Credit Card"	department_store
SELECT kunden_id , kundenname FROM kunden WHERE kundenadresse LIKE "%WY%" AND zahlungsart_code != "Credit Card"	department_store
SELECT avg(produktpreis) FROM produkte WHERE produkttyp_code = 'Clothes'	department_store
SELECT avg(produktpreis) FROM produkte WHERE produkttyp_code = 'Clothes'	department_store
SELECT produktname FROM produkte WHERE produkttyp_code = 'Hardware' ORDER BY produktpreis DESC LIMIT 1	department_store
SELECT produktname FROM produkte WHERE produkttyp_code = 'Hardware' ORDER BY produktpreis DESC LIMIT 1	department_store
SELECT count(*) FROM flugzeug	aircraft
SELECT count(*) FROM flugzeug	aircraft
SELECT beschreibung FROM flugzeug	aircraft
SELECT beschreibung FROM flugzeug	aircraft
SELECT avg(internationale_passagiere) FROM flughafen	aircraft
SELECT avg(internationale_passagiere) FROM flughafen	aircraft
SELECT internationale_passagiere , inländische_passagiere FROM flughafen WHERE flughafen_name = "London Heathrow"	aircraft
SELECT internationale_passagiere , inländische_passagiere FROM flughafen WHERE flughafen_name = "London Heathrow"	aircraft
SELECT sum(inländische_passagiere) FROM flughafen WHERE flughafen_name LIKE "%London%"	aircraft
SELECT sum(inländische_passagiere) FROM flughafen WHERE flughafen_name LIKE "%London%"	aircraft
SELECT max(transitpassagiere) , min(transitpassagiere) FROM flughafen	aircraft
SELECT max(transitpassagiere) , min(transitpassagiere) FROM flughafen	aircraft
SELECT name FROM pilot WHERE alter >= 25	aircraft
SELECT name FROM pilot WHERE alter >= 25	aircraft
SELECT name FROM pilot ORDER BY name ASC	aircraft
SELECT name FROM pilot ORDER BY name ASC	aircraft
SELECT name FROM pilot WHERE alter <= 30 ORDER BY name DESC	aircraft
SELECT name FROM pilot WHERE alter <= 30 ORDER BY name DESC	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Gatwick"	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Gatwick"	aircraft
SELECT T1.flugzeug , T1.beschreibung FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.passagiere_insgesamt > 10000000	aircraft
SELECT T1.flugzeug , T1.beschreibung FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.passagiere_insgesamt > 10000000	aircraft
SELECT avg(T3.passagiere_insgesamt) FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T1.flugzeug = "Robinson R-22"	aircraft
SELECT avg(T3.passagiere_insgesamt) FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T1.flugzeug = "Robinson R-22"	aircraft
SELECT T2.ort , T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug	aircraft
SELECT T2.ort , T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug ORDER BY COUNT(*) DESC LIMIT 1	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug ORDER BY COUNT(*) DESC LIMIT 1	aircraft
SELECT T1.flugzeug , COUNT(*) FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug	aircraft
SELECT T1.flugzeug , COUNT(*) FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug	aircraft
SELECT name FROM pilot ORDER BY alter DESC	aircraft
SELECT name FROM pilot ORDER BY alter DESC	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug HAVING COUNT(*) >= 2	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN übereinstimmung AS T2 ON T1.flugzeug_id = T2.siegerflugzeug GROUP BY T2.siegerflugzeug HAVING COUNT(*) >= 2	aircraft
SELECT flugzeug FROM flugzeug WHERE flugzeug_id NOT IN (SELECT siegerflugzeug FROM übereinstimmung)	aircraft
SELECT flugzeug FROM flugzeug WHERE flugzeug_id NOT IN (SELECT siegerflugzeug FROM übereinstimmung)	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Heathrow" INTERSECT SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Gatwick"	aircraft
SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Heathrow" INTERSECT SELECT T1.flugzeug FROM flugzeug AS T1 JOIN flughafen_flugzeug AS T2 ON T1.flugzeug_id = T2.flugzeug_id JOIN flughafen AS T3 ON T2.flughafen_id = T3.flughafen_id WHERE T3.flughafen_name = "London Gatwick"	aircraft
SELECT * FROM flughafen ORDER BY internationale_passagiere DESC LIMIT 1	aircraft
SELECT * FROM flughafen ORDER BY internationale_passagiere DESC LIMIT 1	aircraft
SELECT t1.name , t1.alter FROM pilot AS t1 JOIN übereinstimmung AS t2 ON t1.pilot_id = t2.siegreicher_pilot WHERE t1.alter < 30 GROUP BY t2.siegreicher_pilot ORDER BY count(*) DESC LIMIT 1	aircraft
SELECT t1.name , t1.alter FROM pilot AS t1 JOIN übereinstimmung AS t2 ON t1.pilot_id = t2.siegreicher_pilot WHERE t1.alter < 30 GROUP BY t2.siegreicher_pilot ORDER BY count(*) DESC LIMIT 1	aircraft
SELECT t1.name , t1.alter FROM pilot AS t1 JOIN übereinstimmung AS t2 ON t1.pilot_id = t2.siegreicher_pilot ORDER BY t1.alter LIMIT 1	aircraft
SELECT t1.name , t1.alter FROM pilot AS t1 JOIN übereinstimmung AS t2 ON t1.pilot_id = t2.siegreicher_pilot ORDER BY t1.alter LIMIT 1	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT siegreicher_pilot FROM übereinstimmung WHERE land = 'Australia')	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT siegreicher_pilot FROM übereinstimmung WHERE land = 'Australia')	aircraft
SELECT T1.immobilie_id , count(*) FROM eigenschaften AS T1 JOIN einwohner AS T2 ON T1.immobilie_id = T2.immobilie_id GROUP BY T1.immobilie_id	local_govt_and_lot
SELECT DISTINCT T1.dienstleistungsart_code FROM dienstleistungen AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id WHERE T2.organisation_details = 'Denesik and Sons Party'	local_govt_and_lot
SELECT T1.bewohner_id , T1.sonstige_angaben , count(*) FROM einwohner AS T1 JOIN einwohnerdienste AS T2 ON T1.bewohner_id = T2.bewohner_id GROUP BY T1.bewohner_id ORDER BY count(*) DESC	local_govt_and_lot
SELECT T1.service_id , T1.dienstleistungsdetails , count(*) FROM dienstleistungen AS T1 JOIN einwohnerdienste AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id ORDER BY count(*) DESC LIMIT 1	local_govt_and_lot
SELECT T1.ding_id , T1.art_der_sache_code , T2.organisation_details FROM dinge AS T1 JOIN organisationen AS T2 ON T1.organisation_id = T2.organisation_id	local_govt_and_lot
SELECT T1.kunden_id , T1.kundenangaben FROM kunden AS T1 JOIN kundenereignisse AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) >= 3	local_govt_and_lot
SELECT T2.datum_eingezogen , T1.kunden_id , T1.kundenangaben FROM kunden AS T1 JOIN kundenereignisse AS T2 ON T1.kunden_id = T2.kunden_id	local_govt_and_lot
SELECT T1.kundenereignis_id , T1.immobilie_id FROM kundenereignisse AS T1 JOIN kundenereignis_notizen AS T2 ON T1.kundenereignis_id = T2.kundenereignis_id GROUP BY T1.kundenereignis_id HAVING count(*) BETWEEN 1 AND 3	local_govt_and_lot
SELECT DISTINCT T2.ding_id , T2.art_der_sache_code FROM zeitlicher_stand_der_dinge AS T1 JOIN dinge AS T2 ON T1.ding_id = T2.ding_id WHERE T1.status_der_dinge_code = 'Close' OR T1.datum_und_datum < '2017-06-19 02:59:21'	local_govt_and_lot
SELECT count(DISTINCT T2.ort_code) FROM dinge AS T1 JOIN zeitliche_lage_der_dinge AS T2 ON T1.ding_id = T2.ding_id WHERE T1.dienstleistungsdetails = 'Unsatisfied'	local_govt_and_lot
SELECT count(DISTINCT status_der_dinge_code) FROM zeitlicher_stand_der_dinge	local_govt_and_lot
SELECT organisation_id FROM organisationen EXCEPT SELECT id_der_übergeordneten_organisation FROM organisationen	local_govt_and_lot
SELECT max(datum_eingezogen) FROM einwohner	local_govt_and_lot
SELECT sonstige_angaben FROM einwohner WHERE sonstige_angaben LIKE '%Miss%'	local_govt_and_lot
SELECT kundenereignis_id , datum_eingezogen , immobilie_id FROM kundenereignisse	local_govt_and_lot
SELECT count(*) FROM kunden WHERE kunden_id NOT IN ( SELECT kunden_id FROM kundenereignisse )	local_govt_and_lot
SELECT DISTINCT datum_eingezogen FROM einwohner	local_govt_and_lot
SELECT count(*) FROM schule	school_player
SELECT count(*) FROM schule	school_player
SELECT standort FROM schule ORDER BY einschreibung ASC	school_player
SELECT standort FROM schule ORDER BY einschreibung ASC	school_player
SELECT standort FROM schule ORDER BY gegründet DESC	school_player
SELECT standort FROM schule ORDER BY gegründet DESC	school_player
SELECT einschreibung FROM schule WHERE konfession != "Catholic"	school_player
SELECT einschreibung FROM schule WHERE konfession != "Catholic"	school_player
SELECT avg(einschreibung) FROM schule	school_player
SELECT avg(einschreibung) FROM schule	school_player
SELECT mannschaft FROM spieler ORDER BY mannschaft ASC	school_player
SELECT mannschaft FROM spieler ORDER BY mannschaft ASC	school_player
SELECT count(DISTINCT position) FROM spieler	school_player
SELECT count(DISTINCT position) FROM spieler	school_player
SELECT mannschaft FROM spieler ORDER BY alter DESC LIMIT 1	school_player
SELECT mannschaft FROM spieler ORDER BY alter DESC LIMIT 1	school_player
SELECT mannschaft FROM spieler ORDER BY alter DESC LIMIT 5	school_player
SELECT mannschaft FROM spieler ORDER BY alter DESC LIMIT 5	school_player
SELECT T1.mannschaft , T2.standort FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id	school_player
SELECT T1.mannschaft , T2.standort FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id	school_player
SELECT T2.standort FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id GROUP BY T1.schule_id HAVING COUNT(*) > 1	school_player
SELECT T2.standort FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id GROUP BY T1.schule_id HAVING COUNT(*) > 1	school_player
SELECT T2.konfession FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id GROUP BY T1.schule_id ORDER BY COUNT(*) DESC LIMIT 1	school_player
SELECT T2.konfession FROM spieler AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id GROUP BY T1.schule_id ORDER BY COUNT(*) DESC LIMIT 1	school_player
SELECT T1.standort , T2.nickname FROM schule AS T1 JOIN schulangaben AS T2 ON T1.schule_id = T2.schule_id	school_player
SELECT T1.standort , T2.nickname FROM schule AS T1 JOIN schulangaben AS T2 ON T1.schule_id = T2.schule_id	school_player
SELECT konfession , COUNT(*) FROM schule GROUP BY konfession	school_player
SELECT konfession , COUNT(*) FROM schule GROUP BY konfession	school_player
SELECT konfession , COUNT(*) FROM schule GROUP BY konfession ORDER BY COUNT(*) DESC	school_player
SELECT konfession , COUNT(*) FROM schule GROUP BY konfession ORDER BY COUNT(*) DESC	school_player
SELECT schulfarben FROM schule ORDER BY einschreibung DESC LIMIT 1	school_player
SELECT schulfarben FROM schule ORDER BY einschreibung DESC LIMIT 1	school_player
SELECT standort FROM schule WHERE schule_id NOT IN (SELECT schule_id FROM spieler)	school_player
SELECT standort FROM schule WHERE schule_id NOT IN (SELECT schule_id FROM spieler)	school_player
SELECT konfession FROM schule WHERE gegründet < 1890 INTERSECT SELECT konfession FROM schule WHERE gegründet > 1900	school_player
SELECT konfession FROM schule WHERE gegründet < 1890 INTERSECT SELECT konfession FROM schule WHERE gegründet > 1900	school_player
SELECT nickname FROM schulangaben WHERE division != "Division 1"	school_player
SELECT nickname FROM schulangaben WHERE division != "Division 1"	school_player
SELECT konfession FROM schule GROUP BY konfession HAVING COUNT(*) > 1	school_player
SELECT konfession FROM schule GROUP BY konfession HAVING COUNT(*) > 1	school_player
SELECT DISTINCT bezirksname FROM bezirk ORDER BY stadtgebiet DESC	store_product
SELECT DISTINCT bezirksname FROM bezirk ORDER BY stadtgebiet DESC	store_product
SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße HAVING count(*) > 3	store_product
SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße HAVING count(*) > 3	store_product
SELECT bezirksname , einwohnerzahl_der_stadt FROM bezirk WHERE einwohnerzahl_der_stadt BETWEEN 200000 AND 2000000	store_product
SELECT bezirksname , einwohnerzahl_der_stadt FROM bezirk WHERE einwohnerzahl_der_stadt BETWEEN 200000 AND 2000000	store_product
SELECT bezirksname FROM bezirk WHERE stadtgebiet > 10 OR einwohnerzahl_der_stadt > 100000	store_product
SELECT bezirksname FROM bezirk WHERE stadtgebiet > 10 OR einwohnerzahl_der_stadt > 100000	store_product
SELECT bezirksname FROM bezirk ORDER BY einwohnerzahl_der_stadt DESC LIMIT 1	store_product
SELECT bezirksname FROM bezirk ORDER BY einwohnerzahl_der_stadt DESC LIMIT 1	store_product
SELECT bezirksname FROM bezirk ORDER BY stadtgebiet ASC LIMIT 1	store_product
SELECT bezirksname FROM bezirk ORDER BY stadtgebiet ASC LIMIT 1	store_product
SELECT sum(einwohnerzahl_der_stadt) FROM bezirk ORDER BY stadtgebiet DESC LIMIT 3	store_product
SELECT sum(einwohnerzahl_der_stadt) FROM bezirk ORDER BY stadtgebiet DESC LIMIT 3	store_product
SELECT typ , count(*) FROM store GROUP BY typ	store_product
SELECT typ , count(*) FROM store GROUP BY typ	store_product
SELECT t1.ladenname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t3.bezirksname = "Khanewal District"	store_product
SELECT t1.ladenname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t3.bezirksname = "Khanewal District"	store_product
SELECT t1.ladenname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id WHERE bezirk_id = (SELECT bezirk_id FROM bezirk ORDER BY einwohnerzahl_der_stadt DESC LIMIT 1)	store_product
SELECT t1.ladenname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id WHERE bezirk_id = (SELECT bezirk_id FROM bezirk ORDER BY einwohnerzahl_der_stadt DESC LIMIT 1)	store_product
SELECT t3.stadt_mit_hauptsitz FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.ladenname = "Blackville"	store_product
SELECT t3.stadt_mit_hauptsitz FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.ladenname = "Blackville"	store_product
SELECT t3.stadt_mit_hauptsitz , count(*) FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id GROUP BY t3.stadt_mit_hauptsitz	store_product
SELECT t3.stadt_mit_hauptsitz , count(*) FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id GROUP BY t3.stadt_mit_hauptsitz	store_product
SELECT t3.stadt_mit_hauptsitz FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id GROUP BY t3.stadt_mit_hauptsitz ORDER BY count(*) DESC LIMIT 1	store_product
SELECT t3.stadt_mit_hauptsitz FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id GROUP BY t3.stadt_mit_hauptsitz ORDER BY count(*) DESC LIMIT 1	store_product
SELECT avg(seiten_pro_minute_farbe) FROM produkt	store_product
SELECT avg(seiten_pro_minute_farbe) FROM produkt	store_product
SELECT t1.produkt FROM produkt AS t1 JOIN geschäft_produkt AS t2 ON t1.produkt_id = t2.produkt_id JOIN store AS t3 ON t2.filiale_id = t3.filiale_id WHERE t3.ladenname = "Miramichi"	store_product
SELECT t1.produkt FROM produkt AS t1 JOIN geschäft_produkt AS t2 ON t1.produkt_id = t2.produkt_id JOIN store AS t3 ON t2.filiale_id = t3.filiale_id WHERE t3.ladenname = "Miramichi"	store_product
SELECT produkt FROM produkt WHERE maximale_seitengröße = "A4" AND seiten_pro_minute_farbe < 5	store_product
SELECT produkt FROM produkt WHERE maximale_seitengröße = "A4" AND seiten_pro_minute_farbe < 5	store_product
SELECT produkt FROM produkt WHERE maximale_seitengröße = "A4" OR seiten_pro_minute_farbe < 5	store_product
SELECT produkt FROM produkt WHERE maximale_seitengröße = "A4" OR seiten_pro_minute_farbe < 5	store_product
SELECT produkt FROM produkt WHERE produkt LIKE "%Scanner%"	store_product
SELECT produkt FROM produkt WHERE produkt LIKE "%Scanner%"	store_product
SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße ORDER BY count(*) DESC LIMIT 1	store_product
SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße ORDER BY count(*) DESC LIMIT 1	store_product
SELECT produkt FROM produkt WHERE produkt != (SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT produkt FROM produkt WHERE produkt != (SELECT maximale_seitengröße FROM produkt GROUP BY maximale_seitengröße ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT sum(einwohnerzahl_der_stadt) FROM bezirk WHERE stadtgebiet > (SELECT avg(stadtgebiet) FROM bezirk)	store_product
SELECT sum(einwohnerzahl_der_stadt) FROM bezirk WHERE stadtgebiet > (SELECT avg(stadtgebiet) FROM bezirk)	store_product
SELECT t3.bezirksname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.typ = "City Mall" INTERSECT SELECT t3.bezirksname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.typ = "Village Store"	store_product
SELECT t3.bezirksname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.typ = "City Mall" INTERSECT SELECT t3.bezirksname FROM store AS t1 JOIN filialbezirk AS t2 ON t1.filiale_id = t2.filiale_id JOIN bezirk AS t3 ON t2.bezirk_id = t3.bezirk_id WHERE t1.typ = "Village Store"	store_product
SELECT sum(einschreibung) FROM hochschule	soccer_2
SELECT sum(einschreibung) FROM hochschule	soccer_2
SELECT avg(einschreibung) FROM hochschule	soccer_2
SELECT avg(einschreibung) FROM hochschule	soccer_2
SELECT count(*) FROM hochschule	soccer_2
SELECT count(*) FROM hochschule	soccer_2
SELECT count(*) FROM spieler WHERE trainingsstunden > 1000	soccer_2
SELECT count(*) FROM spieler WHERE trainingsstunden > 1000	soccer_2
SELECT count(*) FROM hochschule WHERE einschreibung > 15000	soccer_2
SELECT count(*) FROM hochschule WHERE einschreibung > 15000	soccer_2
SELECT avg(trainingsstunden) FROM spieler	soccer_2
SELECT avg(trainingsstunden) FROM spieler	soccer_2
SELECT spielername , trainingsstunden FROM spieler WHERE trainingsstunden < 1500	soccer_2
SELECT spielername , trainingsstunden FROM spieler WHERE trainingsstunden < 1500	soccer_2
SELECT count(DISTINCT college_name) FROM tryout	soccer_2
SELECT count(DISTINCT college_name) FROM tryout	soccer_2
SELECT count(DISTINCT spielerposition) FROM tryout	soccer_2
SELECT count(DISTINCT spielerposition) FROM tryout	soccer_2
SELECT count(*) FROM tryout WHERE entscheidung = 'yes'	soccer_2
SELECT count(*) FROM tryout WHERE entscheidung = 'yes'	soccer_2
SELECT count(*) FROM tryout WHERE spielerposition = 'goalie'	soccer_2
SELECT count(*) FROM tryout WHERE spielerposition = 'goalie'	soccer_2
SELECT avg(trainingsstunden) , max(trainingsstunden) , min(trainingsstunden) FROM spieler	soccer_2
SELECT avg(trainingsstunden) , max(trainingsstunden) , min(trainingsstunden) FROM spieler	soccer_2
SELECT avg(einschreibung) FROM hochschule WHERE staat = 'FL'	soccer_2
SELECT avg(einschreibung) FROM hochschule WHERE staat = 'FL'	soccer_2
SELECT spielername FROM spieler WHERE trainingsstunden BETWEEN 500 AND 1500	soccer_2
SELECT spielername FROM spieler WHERE trainingsstunden BETWEEN 500 AND 1500	soccer_2
SELECT DISTINCT spielername FROM spieler WHERE spielername LIKE '%a%'	soccer_2
SELECT DISTINCT spielername FROM spieler WHERE spielername LIKE '%a%'	soccer_2
SELECT college_name , einschreibung FROM hochschule WHERE einschreibung > 10000 AND staat = "LA"	soccer_2
SELECT college_name , einschreibung FROM hochschule WHERE einschreibung > 10000 AND staat = "LA"	soccer_2
SELECT * FROM hochschule ORDER BY einschreibung	soccer_2
SELECT * FROM hochschule ORDER BY einschreibung	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung > 18000 ORDER BY college_name	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung > 18000 ORDER BY college_name	soccer_2
SELECT spielername FROM spieler WHERE ja_karte = 'yes' ORDER BY trainingsstunden DESC	soccer_2
SELECT spielername FROM spieler WHERE ja_karte = 'yes' ORDER BY trainingsstunden DESC	soccer_2
SELECT DISTINCT college_name FROM tryout ORDER BY college_name	soccer_2
SELECT DISTINCT college_name FROM tryout ORDER BY college_name	soccer_2
SELECT spielerposition FROM tryout GROUP BY spielerposition ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT spielerposition FROM tryout GROUP BY spielerposition ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT count(*) , college_name FROM tryout GROUP BY college_name ORDER BY count(*) DESC	soccer_2
SELECT count(*) , college_name FROM tryout GROUP BY college_name ORDER BY count(*) DESC	soccer_2
SELECT min(T2.trainingsstunden) , T1.spielerposition FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spielerposition	soccer_2
SELECT min(T2.trainingsstunden) , T1.spielerposition FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id GROUP BY T1.spielerposition	soccer_2
SELECT college_name FROM hochschule ORDER BY einschreibung DESC LIMIT 3	soccer_2
SELECT college_name FROM hochschule ORDER BY einschreibung DESC LIMIT 3	soccer_2
SELECT college_name , staat , min(einschreibung) FROM hochschule GROUP BY staat	soccer_2
SELECT college_name , staat , min(einschreibung) FROM hochschule GROUP BY staat	soccer_2
SELECT DISTINCT staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name	soccer_2
SELECT DISTINCT staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name	soccer_2
SELECT DISTINCT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.entscheidung = 'yes'	soccer_2
SELECT DISTINCT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.entscheidung = 'yes'	soccer_2
SELECT T1.spielername , T2.college_name FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT T1.spielername , T2.college_name FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT T1.spielername FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id ORDER BY T1.spielername	soccer_2
SELECT T1.spielername FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id ORDER BY T1.spielername	soccer_2
SELECT T1.spielername , T1.trainingsstunden FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT T1.spielername , T1.trainingsstunden FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'striker'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'striker'	soccer_2
SELECT T1.spielername FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes' AND T2.spielerposition = 'striker'	soccer_2
SELECT T1.spielername FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes' AND T2.spielerposition = 'striker'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name JOIN spieler AS T3 ON T2.spieler_id = T3.spieler_id WHERE T3.spielername = 'Charles'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name JOIN spieler AS T3 ON T2.spieler_id = T3.spieler_id WHERE T3.spielername = 'Charles'	soccer_2
SELECT avg(T1.trainingsstunden) , max(T1.trainingsstunden) FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT avg(T1.trainingsstunden) , max(T1.trainingsstunden) FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'yes'	soccer_2
SELECT avg(T1.trainingsstunden) FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'no'	soccer_2
SELECT avg(T1.trainingsstunden) FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.entscheidung = 'no'	soccer_2
SELECT max(T1.trainingsstunden) , spielerposition FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T1.trainingsstunden > 1000 GROUP BY T2.spielerposition	soccer_2
SELECT max(T1.trainingsstunden) , spielerposition FROM spieler AS T1 JOIN tryout AS T2 ON T1.spieler_id = T2.spieler_id WHERE T1.trainingsstunden > 1000 GROUP BY T2.spielerposition	soccer_2
SELECT T1.college_name FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.spielername LIKE 'D%'	soccer_2
SELECT T1.college_name FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T2.spielername LIKE 'D%'	soccer_2
SELECT college_name FROM tryout WHERE entscheidung = 'yes' AND spielerposition = 'goalie'	soccer_2
SELECT college_name FROM tryout WHERE entscheidung = 'yes' AND spielerposition = 'goalie'	soccer_2
SELECT T2.spielername FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T1.college_name = (SELECT college_name FROM hochschule ORDER BY einschreibung DESC LIMIT 1)	soccer_2
SELECT T2.spielername FROM tryout AS T1 JOIN spieler AS T2 ON T1.spieler_id = T2.spieler_id WHERE T1.college_name = (SELECT college_name FROM hochschule ORDER BY einschreibung DESC LIMIT 1)	soccer_2
SELECT DISTINCT T1.staat , T1.einschreibung FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.entscheidung = 'yes'	soccer_2
SELECT DISTINCT T1.staat , T1.einschreibung FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.entscheidung = 'yes'	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung < 13000 AND staat = "AZ" UNION SELECT college_name FROM hochschule WHERE einschreibung > 15000 AND staat = "LA"	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung < 13000 AND staat = "AZ" UNION SELECT college_name FROM hochschule WHERE einschreibung > 15000 AND staat = "LA"	soccer_2
SELECT college_name FROM tryout WHERE spielerposition = 'goalie' INTERSECT SELECT college_name FROM tryout WHERE spielerposition = 'mid'	soccer_2
SELECT college_name FROM tryout WHERE spielerposition = 'goalie' INTERSECT SELECT college_name FROM tryout WHERE spielerposition = 'mid'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie' INTERSECT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie' INTERSECT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid'	soccer_2
SELECT COUNT(*) FROM (SELECT college_name FROM tryout WHERE spielerposition = 'goalie' INTERSECT SELECT college_name FROM tryout WHERE spielerposition = 'mid')	soccer_2
SELECT COUNT(*) FROM (SELECT college_name FROM tryout WHERE spielerposition = 'goalie' INTERSECT SELECT college_name FROM tryout WHERE spielerposition = 'mid')	soccer_2
SELECT college_name FROM tryout WHERE spielerposition = 'mid' EXCEPT SELECT college_name FROM tryout WHERE spielerposition = 'goalie'	soccer_2
SELECT college_name FROM tryout WHERE spielerposition = 'mid' EXCEPT SELECT college_name FROM tryout WHERE spielerposition = 'goalie'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid' EXCEPT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie'	soccer_2
SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid' EXCEPT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie'	soccer_2
SELECT COUNT(*) FROM (SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid' EXCEPT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie')	soccer_2
SELECT COUNT(*) FROM (SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'mid' EXCEPT SELECT T1.staat FROM hochschule AS T1 JOIN tryout AS T2 ON T1.college_name = T2.college_name WHERE T2.spielerposition = 'goalie')	soccer_2
SELECT DISTINCT staat FROM hochschule WHERE einschreibung < (SELECT max(einschreibung) FROM hochschule)	soccer_2
SELECT DISTINCT staat FROM hochschule WHERE einschreibung < (SELECT max(einschreibung) FROM hochschule)	soccer_2
SELECT DISTINCT college_name FROM hochschule WHERE einschreibung > (SELECT min(einschreibung) FROM hochschule WHERE staat = 'FL')	soccer_2
SELECT DISTINCT college_name FROM hochschule WHERE einschreibung > (SELECT min(einschreibung) FROM hochschule WHERE staat = 'FL')	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung > (SELECT max(einschreibung) FROM hochschule WHERE staat = 'FL')	soccer_2
SELECT college_name FROM hochschule WHERE einschreibung > (SELECT max(einschreibung) FROM hochschule WHERE staat = 'FL')	soccer_2
SELECT sum(einschreibung) FROM hochschule WHERE college_name NOT IN (SELECT college_name FROM tryout WHERE spielerposition = "goalie")	soccer_2
SELECT sum(einschreibung) FROM hochschule WHERE college_name NOT IN (SELECT college_name FROM tryout WHERE spielerposition = "goalie")	soccer_2
SELECT count(DISTINCT staat) FROM hochschule WHERE einschreibung > (SELECT avg(einschreibung) FROM hochschule)	soccer_2
SELECT count(DISTINCT staat) FROM hochschule WHERE einschreibung > (SELECT avg(einschreibung) FROM hochschule)	soccer_2
SELECT count(DISTINCT staat) FROM hochschule WHERE einschreibung < (SELECT avg(einschreibung) FROM hochschule)	soccer_2
SELECT count(DISTINCT staat) FROM hochschule WHERE einschreibung < (SELECT avg(einschreibung) FROM hochschule)	soccer_2
SELECT count(*) FROM gerät	device
SELECT count(*) FROM gerät	device
SELECT betreiber FROM gerät ORDER BY betreiber ASC	device
SELECT betreiber FROM gerät ORDER BY betreiber ASC	device
SELECT betreiber FROM gerät WHERE software_plattform != 'Android'	device
SELECT betreiber FROM gerät WHERE software_plattform != 'Android'	device
SELECT shop_name FROM shop ORDER BY offenes_jahr ASC	device
SELECT shop_name FROM shop ORDER BY offenes_jahr ASC	device
SELECT avg(menge) FROM lager	device
SELECT avg(menge) FROM lager	device
SELECT shop_name , ort FROM shop ORDER BY shop_name ASC	device
SELECT shop_name , ort FROM shop ORDER BY shop_name ASC	device
SELECT count(DISTINCT software_plattform) FROM gerät	device
SELECT count(DISTINCT software_plattform) FROM gerät	device
SELECT eröffnungsdatum , offenes_jahr FROM shop WHERE shop_name = "Apple"	device
SELECT eröffnungsdatum , offenes_jahr FROM shop WHERE shop_name = "Apple"	device
SELECT shop_name FROM shop ORDER BY offenes_jahr DESC LIMIT 1	device
SELECT shop_name FROM shop ORDER BY offenes_jahr DESC LIMIT 1	device
SELECT T3.shop_name , T2.betreiber FROM lager AS T1 JOIN gerät AS T2 ON T1.geräte_id = T2.geräte_id JOIN shop AS T3 ON T1.shop_id = T3.shop_id	device
SELECT T3.shop_name , T2.betreiber FROM lager AS T1 JOIN gerät AS T2 ON T1.geräte_id = T2.geräte_id JOIN shop AS T3 ON T1.shop_id = T3.shop_id	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id HAVING COUNT(*) > 1	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id HAVING COUNT(*) > 1	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY SUM(T1.menge) DESC LIMIT 1	device
SELECT T2.shop_name FROM lager AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY SUM(T1.menge) DESC LIMIT 1	device
SELECT software_plattform , COUNT(*) FROM gerät GROUP BY software_plattform	device
SELECT software_plattform , COUNT(*) FROM gerät GROUP BY software_plattform	device
SELECT software_plattform FROM gerät GROUP BY software_plattform ORDER BY COUNT(*) DESC	device
SELECT software_plattform FROM gerät GROUP BY software_plattform ORDER BY COUNT(*) DESC	device
SELECT software_plattform FROM gerät GROUP BY software_plattform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT software_plattform FROM gerät GROUP BY software_plattform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT shop_name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM lager)	device
SELECT shop_name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM lager)	device
SELECT ort FROM shop WHERE offenes_jahr > 2012 INTERSECT SELECT ort FROM shop WHERE offenes_jahr < 2008	device
SELECT ort FROM shop WHERE offenes_jahr > 2012 INTERSECT SELECT ort FROM shop WHERE offenes_jahr < 2008	device
SELECT betreiber FROM gerät WHERE geräte_id NOT IN (SELECT geräte_id FROM lager)	device
SELECT betreiber FROM gerät WHERE geräte_id NOT IN (SELECT geräte_id FROM lager)	device
SELECT T2.betreiber FROM lager AS T1 JOIN gerät AS T2 ON T1.geräte_id = T2.geräte_id GROUP BY T1.geräte_id HAVING COUNT(*) > 1	device
SELECT T2.betreiber FROM lager AS T1 JOIN gerät AS T2 ON T1.geräte_id = T2.geräte_id GROUP BY T1.geräte_id HAVING COUNT(*) > 1	device
SELECT count(*) FROM buchungen	cre_drama_workshop_groups
SELECT count(*) FROM buchungen	cre_drama_workshop_groups
SELECT bestelldatum FROM buchungen	cre_drama_workshop_groups
SELECT bestelldatum FROM buchungen	cre_drama_workshop_groups
SELECT geplantes_lieferdatum , tatsächliches_lieferdatum FROM buchungen	cre_drama_workshop_groups
SELECT geplantes_lieferdatum , tatsächliches_lieferdatum FROM buchungen	cre_drama_workshop_groups
SELECT count(*) FROM kunden	cre_drama_workshop_groups
SELECT count(*) FROM kunden	cre_drama_workshop_groups
SELECT kundentelefon , kunden_e_mail_adresse FROM kunden WHERE kundenname = "Harold"	cre_drama_workshop_groups
SELECT kundentelefon , kunden_e_mail_adresse FROM kunden WHERE kundenname = "Harold"	cre_drama_workshop_groups
SELECT filialname FROM theaterwerkstattgruppen	cre_drama_workshop_groups
SELECT filialname FROM theaterwerkstattgruppen	cre_drama_workshop_groups
SELECT min(bestellmenge) , avg(bestellmenge) , max(bestellmenge) FROM rechnungen	cre_drama_workshop_groups
SELECT min(bestellmenge) , avg(bestellmenge) , max(bestellmenge) FROM rechnungen	cre_drama_workshop_groups
SELECT DISTINCT zahlungsart_code FROM rechnungen	cre_drama_workshop_groups
SELECT DISTINCT zahlungsart_code FROM rechnungen	cre_drama_workshop_groups
SELECT beschreibung_der_vermarktungsregion FROM marketing_regions WHERE marketing_region_name = "China"	cre_drama_workshop_groups
SELECT beschreibung_der_vermarktungsregion FROM marketing_regions WHERE marketing_region_name = "China"	cre_drama_workshop_groups
SELECT DISTINCT produktname FROM produkte WHERE produktpreis > (SELECT avg(produktpreis) FROM produkte)	cre_drama_workshop_groups
SELECT DISTINCT produktname FROM produkte WHERE produktpreis > (SELECT avg(produktpreis) FROM produkte)	cre_drama_workshop_groups
SELECT produktname FROM produkte ORDER BY produktpreis DESC LIMIT 1	cre_drama_workshop_groups
SELECT produktname FROM produkte ORDER BY produktpreis DESC LIMIT 1	cre_drama_workshop_groups
SELECT produktname FROM produkte ORDER BY produktpreis ASC	cre_drama_workshop_groups
SELECT produktname FROM produkte ORDER BY produktpreis ASC	cre_drama_workshop_groups
SELECT kundentelefon FROM künstler WHERE kundenname = "Ashley"	cre_drama_workshop_groups
SELECT kundentelefon FROM künstler WHERE kundenname = "Ashley"	cre_drama_workshop_groups
SELECT zahlungsart_code , count(*) FROM rechnungen GROUP BY zahlungsart_code	cre_drama_workshop_groups
SELECT zahlungsart_code , count(*) FROM rechnungen GROUP BY zahlungsart_code	cre_drama_workshop_groups
SELECT zahlungsart_code FROM rechnungen GROUP BY zahlungsart_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT zahlungsart_code FROM rechnungen GROUP BY zahlungsart_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T1.stadt FROM adressen AS T1 JOIN filialen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.filialname = "FJA Filming"	cre_drama_workshop_groups
SELECT T1.stadt FROM adressen AS T1 JOIN filialen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.filialname = "FJA Filming"	cre_drama_workshop_groups
SELECT T1.bundesland_landkreis FROM adressen AS T1 JOIN filialen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.marketing_region_code = "CA"	cre_drama_workshop_groups
SELECT T1.bundesland_landkreis FROM adressen AS T1 JOIN filialen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T2.marketing_region_code = "CA"	cre_drama_workshop_groups
SELECT T1.marketing_region_name FROM marketing_regions AS T1 JOIN filialen AS T2 ON T1.marketing_region_code = T2.marketing_region_code WHERE T2.filialname = "Rob Dinning"	cre_drama_workshop_groups
SELECT T1.marketing_region_name FROM marketing_regions AS T1 JOIN filialen AS T2 ON T1.marketing_region_code = T2.marketing_region_code WHERE T2.filialname = "Rob Dinning"	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktpreis > 100	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktpreis > 100	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung , T2.dienstleistungsart_code , COUNT(*) FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code GROUP BY T2.dienstleistungsart_code	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung , T2.dienstleistungsart_code , COUNT(*) FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code GROUP BY T2.dienstleistungsart_code	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung , T1.dienstleistungsart_code FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code GROUP BY T1.dienstleistungsart_code ORDER BY COUNT(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung , T1.dienstleistungsart_code FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code GROUP BY T1.dienstleistungsart_code ORDER BY COUNT(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T1.filialtelefon , T1.filial_e_mail_adresse FROM theaterwerkstattgruppen AS T1 JOIN dienstleistungen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id	cre_drama_workshop_groups
SELECT T1.filialtelefon , T1.filial_e_mail_adresse FROM theaterwerkstattgruppen AS T1 JOIN dienstleistungen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id	cre_drama_workshop_groups
SELECT T1.filialtelefon , T1.filial_e_mail_adresse FROM theaterwerkstattgruppen AS T1 JOIN dienstleistungen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id WHERE T2.produktname = "film"	cre_drama_workshop_groups
SELECT T1.filialtelefon , T1.filial_e_mail_adresse FROM theaterwerkstattgruppen AS T1 JOIN dienstleistungen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id WHERE T2.produktname = "film"	cre_drama_workshop_groups
SELECT produktname , avg(produktpreis) FROM produkte GROUP BY produktname	cre_drama_workshop_groups
SELECT produktname , avg(produktpreis) FROM produkte GROUP BY produktname	cre_drama_workshop_groups
SELECT produktname FROM produkte GROUP BY produktname HAVING avg(produktpreis) < 1000000	cre_drama_workshop_groups
SELECT produktname FROM produkte GROUP BY produktname HAVING avg(produktpreis) < 1000000	cre_drama_workshop_groups
SELECT sum(T1.bestellmenge) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktname = "photo"	cre_drama_workshop_groups
SELECT sum(T1.bestellmenge) FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktname = "photo"	cre_drama_workshop_groups
SELECT T1.andere_artikelangaben FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktpreis > 2000	cre_drama_workshop_groups
SELECT T1.andere_artikelangaben FROM auftragspositionen AS T1 JOIN produkte AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktpreis > 2000	cre_drama_workshop_groups
SELECT T1.tatsächliches_lieferdatum FROM kundenaufträge AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.bestellmenge = 1	cre_drama_workshop_groups
SELECT T1.tatsächliches_lieferdatum FROM kundenaufträge AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.bestellmenge = 1	cre_drama_workshop_groups
SELECT T1.bestelldatum FROM kundenaufträge AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id WHERE T3.produktpreis > 1000	cre_drama_workshop_groups
SELECT T1.bestelldatum FROM kundenaufträge AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id JOIN produkte AS T3 ON T2.produkt_id = T3.produkt_id WHERE T3.produktpreis > 1000	cre_drama_workshop_groups
SELECT count(DISTINCT währungscode) FROM theaterwerkstattgruppen	cre_drama_workshop_groups
SELECT count(DISTINCT währungscode) FROM theaterwerkstattgruppen	cre_drama_workshop_groups
SELECT T2.filialname FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.stadt = "Feliciaberg"	cre_drama_workshop_groups
SELECT T2.filialname FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.stadt = "Feliciaberg"	cre_drama_workshop_groups
SELECT T2.filial_e_mail_adresse FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.bundesland_landkreis = "Alaska"	cre_drama_workshop_groups
SELECT T2.filial_e_mail_adresse FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id WHERE T1.bundesland_landkreis = "Alaska"	cre_drama_workshop_groups
SELECT T1.stadt , count(*) FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id GROUP BY T1.stadt	cre_drama_workshop_groups
SELECT T1.stadt , count(*) FROM adressen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.adresse_id = T2.adresse_id GROUP BY T1.stadt	cre_drama_workshop_groups
SELECT marketing_region_code FROM theaterwerkstattgruppen GROUP BY marketing_region_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT marketing_region_code FROM theaterwerkstattgruppen GROUP BY marketing_region_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T1.stadt FROM adressen AS T1 JOIN kunden AS T2 ON T1.adresse_id = T2.adresse_id EXCEPT SELECT T1.stadt FROM adressen AS T1 JOIN künstler AS T2 ON T1.adresse_id = T2.adresse_id	cre_drama_workshop_groups
SELECT T1.stadt FROM adressen AS T1 JOIN kunden AS T2 ON T1.adresse_id = T2.adresse_id EXCEPT SELECT T1.stadt FROM adressen AS T1 JOIN künstler AS T2 ON T1.adresse_id = T2.adresse_id	cre_drama_workshop_groups
SELECT status_code FROM buchungen GROUP BY status_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT status_code FROM buchungen GROUP BY status_code ORDER BY count(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T2.filialname FROM buchungen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id WHERE T1.status_code = "stop"	cre_drama_workshop_groups
SELECT T2.filialname FROM buchungen AS T1 JOIN theaterwerkstattgruppen AS T2 ON T1.werkstattgruppe_id = T2.werkstattgruppe_id WHERE T1.status_code = "stop"	cre_drama_workshop_groups
SELECT kundenname FROM clients EXCEPT SELECT T2.kundenname FROM buchungen AS T1 JOIN clients AS T2 ON T1.kunden_id = T2.client_id	cre_drama_workshop_groups
SELECT kundenname FROM clients EXCEPT SELECT T2.kundenname FROM buchungen AS T1 JOIN clients AS T2 ON T1.kunden_id = T2.client_id	cre_drama_workshop_groups
SELECT avg(bestellmenge) FROM rechnungen WHERE zahlungsart_code = "MasterCard"	cre_drama_workshop_groups
SELECT avg(bestellmenge) FROM rechnungen WHERE zahlungsart_code = "MasterCard"	cre_drama_workshop_groups
SELECT produkt_id FROM rechnungen GROUP BY produkt_id ORDER BY COUNT(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT produkt_id FROM rechnungen GROUP BY produkt_id ORDER BY COUNT(*) DESC LIMIT 1	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktname = 'photo' INTERSECT SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktname = 'film'	cre_drama_workshop_groups
SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktname = 'photo' INTERSECT SELECT T1.dienstleistungsart_beschreibung FROM referenz_dienstleistungsarten AS T1 JOIN dienstleistungen AS T2 ON T1.dienstleistungsart_code = T2.dienstleistungsart_code WHERE T2.produktname = 'film'	cre_drama_workshop_groups
SELECT count(*) FROM band	music_2
SELECT count(*) FROM band	music_2
SELECT DISTINCT label FROM alben	music_2
SELECT DISTINCT label FROM alben	music_2
SELECT * FROM alben WHERE jahr = 2012	music_2
SELECT * FROM alben WHERE jahr = 2012	music_2
SELECT DISTINCT T1.bühnenposition FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Solveig"	music_2
SELECT DISTINCT T1.bühnenposition FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Solveig"	music_2
SELECT count(*) FROM lieder	music_2
SELECT count(*) FROM lieder	music_2
SELECT T3.titel FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T2.nachname = "Heilo"	music_2
SELECT T3.titel FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T2.nachname = "Heilo"	music_2
SELECT count(*) FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Flash"	music_2
SELECT count(*) FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Flash"	music_2
SELECT T3.titel FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T2.vorname = "Marianne"	music_2
SELECT T3.titel FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T2.vorname = "Marianne"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Badlands"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Badlands"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Badlands" AND T1.bühnenposition = "back"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Badlands" AND T1.bühnenposition = "back"	music_2
SELECT count(DISTINCT label) FROM alben	music_2
SELECT count(DISTINCT label) FROM alben	music_2
SELECT label FROM alben GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT label FROM alben GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE bühnenposition = "back" GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE bühnenposition = "back" GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT titel FROM lieder WHERE titel LIKE '% the %'	music_2
SELECT titel FROM lieder WHERE titel LIKE '% the %'	music_2
SELECT DISTINCT instrument FROM instrumente	music_2
SELECT DISTINCT instrument FROM instrumente	music_2
SELECT T4.instrument FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id JOIN instrumente AS T4 ON T4.song_id = T3.song_id AND T4.bandmate_id = T2.id WHERE T2.nachname = "Heilo" AND T3.titel = "Le Pop"	music_2
SELECT T4.instrument FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id JOIN instrumente AS T4 ON T4.song_id = T3.song_id AND T4.bandmate_id = T2.id WHERE T2.nachname = "Heilo" AND T3.titel = "Le Pop"	music_2
SELECT instrument FROM instrumente GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT instrument FROM instrumente GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT count(*) FROM instrumente WHERE instrument = "drums"	music_2
SELECT count(*) FROM instrumente WHERE instrument = "drums"	music_2
SELECT instrument FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT instrument FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN band AS T2 ON T1.bandmate_id = T2.id WHERE T2.nachname = "Heilo"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN band AS T2 ON T1.bandmate_id = T2.id WHERE T2.nachname = "Heilo"	music_2
SELECT instrument FROM instrumente AS T1 JOIN band AS T2 ON T1.bandmate_id = T2.id WHERE T2.nachname = "Heilo"	music_2
SELECT instrument FROM instrumente AS T1 JOIN band AS T2 ON T1.bandmate_id = T2.id WHERE T2.nachname = "Heilo"	music_2
SELECT titel FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id GROUP BY T1.song_id ORDER BY count(*) DESC LIMIT 1	music_2
SELECT titel FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id GROUP BY T1.song_id ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE nachname = "Heilo" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE nachname = "Heilo" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(*) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Demon Kitty Rag"	music_2
SELECT count(*) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Demon Kitty Rag"	music_2
SELECT count(DISTINCT titel) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE typ = "lead"	music_2
SELECT count(DISTINCT titel) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE typ = "lead"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id JOIN band AS T3 ON T1.bandkollege = T3.id WHERE T3.vorname = "Solveig" AND T2.titel = "A Bar In Amsterdam"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id JOIN band AS T3 ON T1.bandkollege = T3.id WHERE T3.vorname = "Solveig" AND T2.titel = "A Bar In Amsterdam"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "lead"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "lead"	music_2
SELECT DISTINCT typ FROM vocals	music_2
SELECT DISTINCT typ FROM vocals	music_2
SELECT * FROM alben WHERE jahr = 2010	music_2
SELECT * FROM alben WHERE jahr = 2010	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Le Pop"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Le Pop"	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY nachname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T4.instrument FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id JOIN instrumente AS T4 ON T4.song_id = T3.song_id AND T4.bandmate_id = T2.id WHERE T2.nachname = "Heilo" AND T3.titel = "Badlands"	music_2
SELECT T4.instrument FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id JOIN instrumente AS T4 ON T4.song_id = T3.song_id AND T4.bandmate_id = T2.id WHERE T2.nachname = "Heilo" AND T3.titel = "Badlands"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Badlands"	music_2
SELECT count(DISTINCT instrument) FROM instrumente AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Badlands"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Badlands"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Badlands"	music_2
SELECT count(*) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(*) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE titel = "Le Pop"	music_2
SELECT count(DISTINCT titel) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE typ = "shared"	music_2
SELECT count(DISTINCT titel) FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id WHERE typ = "shared"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "back"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "back"	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Solveig" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Solveig" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id JOIN band AS T3 ON T1.bandkollege = T3.id WHERE T3.nachname = "Heilo" AND T2.titel = "Der Kapitan"	music_2
SELECT typ FROM vocals AS T1 JOIN lieder AS T2 ON T1.song_id = T2.song_id JOIN band AS T3 ON T1.bandkollege = T3.id WHERE T3.nachname = "Heilo" AND T2.titel = "Der Kapitan"	music_2
SELECT t2.vorname FROM leistung AS t1 JOIN band AS t2 ON t1.bandkollege = t2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY vorname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT t2.vorname FROM leistung AS t1 JOIN band AS t2 ON t1.bandkollege = t2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id GROUP BY vorname ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Marianne" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT typ FROM vocals AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id WHERE vorname = "Marianne" GROUP BY typ ORDER BY count(*) DESC LIMIT 1	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Der Kapitan" AND T1.bühnenposition = "back"	music_2
SELECT T2.vorname , T2.nachname FROM leistung AS T1 JOIN band AS T2 ON T1.bandkollege = T2.id JOIN lieder AS T3 ON T3.song_id = T1.song_id WHERE T3.titel = "Der Kapitan" AND T1.bühnenposition = "back"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "back"	music_2
SELECT DISTINCT titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id EXCEPT SELECT t2.titel FROM vocals AS t1 JOIN lieder AS t2 ON t1.song_id = t2.song_id WHERE typ = "back"	music_2
SELECT T3.titel FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE T1.titel = "A Kiss Before You Go: Live in Hamburg"	music_2
SELECT T3.titel FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE T1.titel = "A Kiss Before You Go: Live in Hamburg"	music_2
SELECT T3.titel FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE t1.label = "Universal Music Group"	music_2
SELECT T3.titel FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE t1.label = "Universal Music Group"	music_2
SELECT count(DISTINCT T3.titel) FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE t1.typ = "Studio"	music_2
SELECT count(DISTINCT T3.titel) FROM alben AS T1 JOIN titel_listen AS T2 ON T1.aid = T2.album_id JOIN lieder AS T3 ON T2.song_id = T3.song_id WHERE t1.typ = "Studio"	music_2
SELECT gründer FROM manufacturers WHERE name = 'Sony'	manufactory_1
SELECT gründer FROM manufacturers WHERE name = 'Sony'	manufactory_1
SELECT hauptsitz FROM manufacturers WHERE gründer = 'James'	manufactory_1
SELECT hauptsitz FROM manufacturers WHERE gründer = 'James'	manufactory_1
SELECT name , hauptsitz FROM manufacturers ORDER BY umsatz DESC	manufactory_1
SELECT name , hauptsitz FROM manufacturers ORDER BY umsatz DESC	manufactory_1
SELECT avg(umsatz) , max(umsatz) , sum(umsatz) FROM manufacturers	manufactory_1
SELECT avg(umsatz) , max(umsatz) , sum(umsatz) FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE gründer = 'Andy'	manufactory_1
SELECT count(*) FROM manufacturers WHERE gründer = 'Andy'	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin'	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin'	manufactory_1
SELECT DISTINCT hauptsitz FROM manufacturers	manufactory_1
SELECT DISTINCT hauptsitz FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE hauptsitz = 'Tokyo' OR hauptsitz = 'Beijing'	manufactory_1
SELECT count(*) FROM manufacturers WHERE hauptsitz = 'Tokyo' OR hauptsitz = 'Beijing'	manufactory_1
SELECT gründer FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT gründer FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT name FROM manufacturers WHERE umsatz BETWEEN 100 AND 150	manufactory_1
SELECT name FROM manufacturers WHERE umsatz BETWEEN 100 AND 150	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE hauptsitz = 'Tokyo' OR hauptsitz = 'Taiwan'	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE hauptsitz = 'Tokyo' OR hauptsitz = 'Taiwan'	manufactory_1
SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Creative Labs' INTERSECT SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Sony'	manufactory_1
SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Creative Labs' INTERSECT SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Sony'	manufactory_1
SELECT name , hauptsitz , gründer FROM manufacturers ORDER BY umsatz DESC LIMIT 1	manufactory_1
SELECT name , hauptsitz , gründer FROM manufacturers ORDER BY umsatz DESC LIMIT 1	manufactory_1
SELECT name , hauptsitz , umsatz FROM manufacturers ORDER BY umsatz DESC	manufactory_1
SELECT name , hauptsitz , umsatz FROM manufacturers ORDER BY umsatz DESC	manufactory_1
SELECT name FROM manufacturers WHERE umsatz > (SELECT avg(umsatz) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE umsatz > (SELECT avg(umsatz) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE umsatz < (SELECT min(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin')	manufactory_1
SELECT name FROM manufacturers WHERE umsatz < (SELECT min(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin')	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE umsatz > (SELECT min(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin')	manufactory_1
SELECT sum(umsatz) FROM manufacturers WHERE umsatz > (SELECT min(umsatz) FROM manufacturers WHERE hauptsitz = 'Austin')	manufactory_1
SELECT sum(umsatz) , gründer FROM manufacturers GROUP BY gründer	manufactory_1
SELECT sum(umsatz) , gründer FROM manufacturers GROUP BY gründer	manufactory_1
SELECT name , max(umsatz) , hauptsitz FROM manufacturers GROUP BY hauptsitz	manufactory_1
SELECT name , max(umsatz) , hauptsitz FROM manufacturers GROUP BY hauptsitz	manufactory_1
SELECT sum(umsatz) , name FROM manufacturers GROUP BY name	manufactory_1
SELECT sum(umsatz) , name FROM manufacturers GROUP BY name	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT count(DISTINCT T1.name) , T2.hauptsitz FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.hauptsitz	manufactory_1
SELECT count(DISTINCT T1.name) , T2.hauptsitz FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.hauptsitz	manufactory_1
SELECT count(DISTINCT name) FROM produkte WHERE name NOT IN (SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Sony')	manufactory_1
SELECT count(DISTINCT name) FROM produkte WHERE name NOT IN (SELECT T1.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T2.name = 'Sony')	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T1.name = 'DVD drive'	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code WHERE T1.name = 'DVD drive'	manufactory_1
SELECT count(*) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT count(*) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT name FROM produkte	manufactory_1
SELECT name FROM produkte	manufactory_1
SELECT name , preis FROM produkte	manufactory_1
SELECT name , preis FROM produkte	manufactory_1
SELECT name FROM produkte WHERE preis <= 200	manufactory_1
SELECT name FROM produkte WHERE preis <= 200	manufactory_1
SELECT * FROM produkte WHERE preis BETWEEN 60 AND 120	manufactory_1
SELECT * FROM produkte WHERE preis BETWEEN 60 AND 120	manufactory_1
SELECT avg(preis) FROM produkte	manufactory_1
SELECT avg(preis) FROM produkte	manufactory_1
SELECT avg(preis) FROM produkte WHERE hersteller = 2	manufactory_1
SELECT avg(preis) FROM produkte WHERE hersteller = 2	manufactory_1
SELECT count(*) FROM produkte WHERE preis >= 180	manufactory_1
SELECT count(*) FROM produkte WHERE preis >= 180	manufactory_1
SELECT name , preis FROM produkte WHERE preis >= 180 ORDER BY preis DESC , name ASC	manufactory_1
SELECT name , preis FROM produkte WHERE preis >= 180 ORDER BY preis DESC , name ASC	manufactory_1
SELECT * FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code	manufactory_1
SELECT * FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code	manufactory_1
SELECT AVG(preis) , hersteller FROM produkte GROUP BY hersteller	manufactory_1
SELECT AVG(preis) , hersteller FROM produkte GROUP BY hersteller	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name HAVING avg(T1.preis) >= 150	manufactory_1
SELECT avg(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name HAVING avg(T1.preis) >= 150	manufactory_1
SELECT name , preis FROM produkte ORDER BY preis ASC LIMIT 1	manufactory_1
SELECT name , preis FROM produkte ORDER BY preis ASC LIMIT 1	manufactory_1
SELECT T1.name , max(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT T1.name , max(T1.preis) , T2.name FROM produkte AS T1 JOIN manufacturers AS T2 ON T1.hersteller = T2.code GROUP BY T2.name	manufactory_1
SELECT code , name , min(preis) FROM produkte GROUP BY name	manufactory_1
SELECT code , name , min(preis) FROM produkte GROUP BY name	manufactory_1
SELECT problem_log_id FROM problemprotokoll ORDER BY datum_des_protokolleintrags DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id FROM problemprotokoll ORDER BY datum_des_protokolleintrags DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id , problem_id FROM problemprotokoll ORDER BY datum_des_protokolleintrags LIMIT 1	tracking_software_problems
SELECT problem_log_id , problem_id FROM problemprotokoll ORDER BY datum_des_protokolleintrags LIMIT 1	tracking_software_problems
SELECT problem_log_id , datum_des_protokolleintrags FROM problemprotokoll WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id , datum_des_protokolleintrags FROM problemprotokoll WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id , protokolleintrag_beschreibung FROM problemprotokoll	tracking_software_problems
SELECT problem_log_id , protokolleintrag_beschreibung FROM problemprotokoll	tracking_software_problems
SELECT DISTINCT vorname_der_mitarbeiter , nachname_des_personals FROM personal AS T1 JOIN problemprotokoll AS T2 ON T1.mitarbeiter_id = T2.dem_personal_zugewiesene_id WHERE T2.problem_id = 1	tracking_software_problems
SELECT DISTINCT vorname_der_mitarbeiter , nachname_des_personals FROM personal AS T1 JOIN problemprotokoll AS T2 ON T1.mitarbeiter_id = T2.dem_personal_zugewiesene_id WHERE T2.problem_id = 1	tracking_software_problems
SELECT DISTINCT T2.problem_id , T2.problem_log_id FROM personal AS T1 JOIN problemprotokoll AS T2 ON T1.mitarbeiter_id = T2.dem_personal_zugewiesene_id WHERE T1.vorname_der_mitarbeiter = "Rylan" AND T1.nachname_des_personals = "Homenick"	tracking_software_problems
SELECT DISTINCT T2.problem_id , T2.problem_log_id FROM personal AS T1 JOIN problemprotokoll AS T2 ON T1.mitarbeiter_id = T2.dem_personal_zugewiesene_id WHERE T1.vorname_der_mitarbeiter = "Rylan" AND T1.nachname_des_personals = "Homenick"	tracking_software_problems
SELECT count(*) FROM produkt AS T1 JOIN probleme AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.produktname = "voluptatem"	tracking_software_problems
SELECT count(*) FROM produkt AS T1 JOIN probleme AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.produktname = "voluptatem"	tracking_software_problems
SELECT count(*) , T1.produktname FROM produkt AS T1 JOIN probleme AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname ORDER BY count(*) DESC LIMIT 1	tracking_software_problems
SELECT count(*) , T1.produktname FROM produkt AS T1 JOIN probleme AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produktname ORDER BY count(*) DESC LIMIT 1	tracking_software_problems
SELECT T1.problembeschreibung FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Christop"	tracking_software_problems
SELECT T1.problembeschreibung FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Christop"	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.nachname_des_personals = "Bosco"	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.nachname_des_personals = "Bosco"	tracking_software_problems
SELECT problem_id FROM probleme WHERE datum_des_gemeldeten_problems > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM probleme WHERE datum_des_gemeldeten_problems > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM probleme WHERE datum_des_gemeldeten_problems < "1978-06-26"	tracking_software_problems
SELECT problem_id FROM probleme WHERE datum_des_gemeldeten_problems < "1978-06-26"	tracking_software_problems
SELECT count(*) , T2.produkt_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produkt_id	tracking_software_problems
SELECT count(*) , T2.produkt_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produkt_id	tracking_software_problems
SELECT count(*) , T2.produkt_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.datum_des_gemeldeten_problems > "1986-11-13" GROUP BY T2.produkt_id	tracking_software_problems
SELECT count(*) , T2.produkt_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id WHERE T1.datum_des_gemeldeten_problems > "1986-11-13" GROUP BY T2.produkt_id	tracking_software_problems
SELECT DISTINCT produktname FROM produkt ORDER BY produktname	tracking_software_problems
SELECT DISTINCT produktname FROM produkt ORDER BY produktname	tracking_software_problems
SELECT DISTINCT produktname FROM produkt ORDER BY produkt_id	tracking_software_problems
SELECT DISTINCT produktname FROM produkt ORDER BY produkt_id	tracking_software_problems
SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Dameon" AND T2.nachname_des_personals = "Frami" UNION SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Jolie" AND T2.nachname_des_personals = "Weber"	tracking_software_problems
SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Dameon" AND T2.nachname_des_personals = "Frami" UNION SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Jolie" AND T2.nachname_des_personals = "Weber"	tracking_software_problems
SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Christop" AND T2.nachname_des_personals = "Berge" INTERSECT SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.schließung_genehmigt_durch_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Ashley" AND T2.nachname_des_personals = "Medhurst"	tracking_software_problems
SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Christop" AND T2.nachname_des_personals = "Berge" INTERSECT SELECT produkt_id FROM probleme AS T1 JOIN personal AS T2 ON T1.schließung_genehmigt_durch_mitarbeiter_id = T2.mitarbeiter_id WHERE T2.vorname_der_mitarbeiter = "Ashley" AND T2.nachname_des_personals = "Medhurst"	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE datum_des_gemeldeten_problems < ( SELECT min(datum_des_gemeldeten_problems) FROM probleme AS T3 JOIN personal AS T4 ON T3.gemeldet_von_mitarbeiter_id = T4.mitarbeiter_id WHERE T4.vorname_der_mitarbeiter = "Lysanne" AND T4.nachname_des_personals = "Turcotte" )	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE datum_des_gemeldeten_problems < ( SELECT min(datum_des_gemeldeten_problems) FROM probleme AS T3 JOIN personal AS T4 ON T3.gemeldet_von_mitarbeiter_id = T4.mitarbeiter_id WHERE T4.vorname_der_mitarbeiter = "Lysanne" AND T4.nachname_des_personals = "Turcotte" )	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE datum_des_gemeldeten_problems > ( SELECT max(datum_des_gemeldeten_problems) FROM probleme AS T3 JOIN personal AS T4 ON T3.gemeldet_von_mitarbeiter_id = T4.mitarbeiter_id WHERE T4.vorname_der_mitarbeiter = "Rylan" AND T4.nachname_des_personals = "Homenick" )	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN personal AS T2 ON T1.gemeldet_von_mitarbeiter_id = T2.mitarbeiter_id WHERE datum_des_gemeldeten_problems > ( SELECT max(datum_des_gemeldeten_problems) FROM probleme AS T3 JOIN personal AS T4 ON T3.gemeldet_von_mitarbeiter_id = T4.mitarbeiter_id WHERE T4.vorname_der_mitarbeiter = "Rylan" AND T4.nachname_des_personals = "Homenick" )	tracking_software_problems
SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produktname ORDER BY count(*) DESC LIMIT 3	tracking_software_problems
SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T2.produktname ORDER BY count(*) DESC LIMIT 3	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktname = "voluptatem" AND T1.datum_des_gemeldeten_problems > "1995"	tracking_software_problems
SELECT T1.problem_id FROM probleme AS T1 JOIN produkt AS T2 ON T1.produkt_id = T2.produkt_id WHERE T2.produktname = "voluptatem" AND T1.datum_des_gemeldeten_problems > "1995"	tracking_software_problems
SELECT T3.vorname_der_mitarbeiter , T3.nachname_des_personals FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T2.produktname = "rem" EXCEPT SELECT T3.vorname_der_mitarbeiter , T3.nachname_des_personals FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T2.produktname = "aut"	tracking_software_problems
SELECT T3.vorname_der_mitarbeiter , T3.nachname_des_personals FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T2.produktname = "rem" EXCEPT SELECT T3.vorname_der_mitarbeiter , T3.nachname_des_personals FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T2.produktname = "aut"	tracking_software_problems
SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T3.vorname_der_mitarbeiter = "Lacey" AND T3.nachname_des_personals = "Bosco" INTERSECT SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T3.vorname_der_mitarbeiter = "Kenton" AND T3.nachname_des_personals = "Champlin"	tracking_software_problems
SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T3.vorname_der_mitarbeiter = "Lacey" AND T3.nachname_des_personals = "Bosco" INTERSECT SELECT T2.produktname FROM probleme AS T1 JOIN produkt AS T2 JOIN personal AS T3 ON T1.produkt_id = T2.produkt_id AND T1.gemeldet_von_mitarbeiter_id = T3.mitarbeiter_id WHERE T3.vorname_der_mitarbeiter = "Kenton" AND T3.nachname_des_personals = "Champlin"	tracking_software_problems
SELECT count(*) FROM zweigstelle WHERE mitgliedsbeitrag > (SELECT avg(mitgliedsbeitrag) FROM zweigstelle)	shop_membership
SELECT count(*) FROM zweigstelle WHERE mitgliedsbeitrag > (SELECT avg(mitgliedsbeitrag) FROM zweigstelle)	shop_membership
SELECT name , adresse_straße , stadt FROM zweigstelle ORDER BY eröffnungsjahr	shop_membership
SELECT name , adresse_straße , stadt FROM zweigstelle ORDER BY eröffnungsjahr	shop_membership
SELECT name FROM zweigstelle ORDER BY mitgliedsbeitrag DESC LIMIT 3	shop_membership
SELECT name FROM zweigstelle ORDER BY mitgliedsbeitrag DESC LIMIT 3	shop_membership
SELECT DISTINCT stadt FROM zweigstelle WHERE mitgliedsbeitrag >= 100	shop_membership
SELECT DISTINCT stadt FROM zweigstelle WHERE mitgliedsbeitrag >= 100	shop_membership
SELECT eröffnungsjahr FROM zweigstelle GROUP BY eröffnungsjahr HAVING count(*) >= 2	shop_membership
SELECT eröffnungsjahr FROM zweigstelle GROUP BY eröffnungsjahr HAVING count(*) >= 2	shop_membership
SELECT min(mitgliedsbeitrag) , max(mitgliedsbeitrag) FROM zweigstelle WHERE eröffnungsjahr = 2011 OR stadt = 'London'	shop_membership
SELECT min(mitgliedsbeitrag) , max(mitgliedsbeitrag) FROM zweigstelle WHERE eröffnungsjahr = 2011 OR stadt = 'London'	shop_membership
SELECT stadt , count(*) FROM zweigstelle WHERE eröffnungsjahr < 2010 GROUP BY stadt	shop_membership
SELECT stadt , count(*) FROM zweigstelle WHERE eröffnungsjahr < 2010 GROUP BY stadt	shop_membership
SELECT count(DISTINCT stufe) FROM mitglied	shop_membership
SELECT count(DISTINCT stufe) FROM mitglied	shop_membership
SELECT kartennummer , name , heimatstadt FROM mitglied ORDER BY stufe DESC	shop_membership
SELECT kartennummer , name , heimatstadt FROM mitglied ORDER BY stufe DESC	shop_membership
SELECT stufe FROM mitglied GROUP BY stufe ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT stufe FROM mitglied GROUP BY stufe ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T3.name , T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id ORDER BY T1.register_jahr	shop_membership
SELECT T3.name , T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id ORDER BY T1.register_jahr	shop_membership
SELECT T2.name , count(*) FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_jahr > 2015 GROUP BY T2.branch_id	shop_membership
SELECT T2.name , count(*) FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_jahr > 2015 GROUP BY T2.branch_id	shop_membership
SELECT name FROM mitglied WHERE mitglied_id NOT IN (SELECT mitglied_id FROM mitgliederverzeichnis_zweigstelle)	shop_membership
SELECT name FROM mitglied WHERE mitglied_id NOT IN (SELECT mitglied_id FROM mitgliederverzeichnis_zweigstelle)	shop_membership
SELECT name , stadt FROM zweigstelle WHERE branch_id NOT IN (SELECT branch_id FROM mitgliederverzeichnis_zweigstelle)	shop_membership
SELECT name , stadt FROM zweigstelle WHERE branch_id NOT IN (SELECT branch_id FROM mitgliederverzeichnis_zweigstelle)	shop_membership
SELECT T2.name , T2.eröffnungsjahr FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_jahr = 2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T2.name , T2.eröffnungsjahr FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_jahr = 2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT T2.name , T2.heimatstadt FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id WHERE T1.register_jahr = 2016	shop_membership
SELECT T2.name , T2.heimatstadt FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id WHERE T1.register_jahr = 2016	shop_membership
SELECT stadt FROM zweigstelle WHERE eröffnungsjahr = 2001 AND mitgliedsbeitrag > 100	shop_membership
SELECT stadt FROM zweigstelle WHERE eröffnungsjahr = 2001 AND mitgliedsbeitrag > 100	shop_membership
SELECT stadt FROM zweigstelle EXCEPT SELECT stadt FROM zweigstelle WHERE mitgliedsbeitrag > 100	shop_membership
SELECT stadt FROM zweigstelle EXCEPT SELECT stadt FROM zweigstelle WHERE mitgliedsbeitrag > 100	shop_membership
SELECT sum(gesamt_pfund) FROM einkauf AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T2.stadt = 'London' AND T1.jahr = 2018	shop_membership
SELECT sum(gesamt_pfund) FROM einkauf AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id WHERE T2.stadt = 'London' AND T1.jahr = 2018	shop_membership
SELECT count(*) FROM einkauf AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id WHERE T2.stufe = 6	shop_membership
SELECT count(*) FROM einkauf AS T1 JOIN mitglied AS T2 ON T1.mitglied_id = T2.mitglied_id WHERE T2.stufe = 6	shop_membership
SELECT T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id WHERE T3.heimatstadt = 'Louisville , Kentucky' INTERSECT SELECT T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id WHERE T3.heimatstadt = 'Hiram , Georgia'	shop_membership
SELECT T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id WHERE T3.heimatstadt = 'Louisville , Kentucky' INTERSECT SELECT T2.name FROM mitgliederverzeichnis_zweigstelle AS T1 JOIN zweigstelle AS T2 ON T1.branch_id = T2.branch_id JOIN mitglied AS T3 ON T1.mitglied_id = T3.mitglied_id WHERE T3.heimatstadt = 'Hiram , Georgia'	shop_membership
SELECT kartennummer FROM mitglied WHERE heimatstadt LIKE "%Kentucky%"	shop_membership
SELECT kartennummer FROM mitglied WHERE heimatstadt LIKE "%Kentucky%"	shop_membership
SELECT count(*) FROM schüler	voter_2
SELECT count(*) FROM schüler	voter_2
SELECT count(*) FROM stimmzettel	voter_2
SELECT count(*) FROM stimmzettel	voter_2
SELECT count(DISTINCT stimme_des_präsidenten) FROM stimmzettel	voter_2
SELECT count(DISTINCT stimme_des_präsidenten) FROM stimmzettel	voter_2
SELECT max(alter) FROM schüler	voter_2
SELECT max(alter) FROM schüler	voter_2
SELECT nachname FROM schüler WHERE hauptfach = 50	voter_2
SELECT nachname FROM schüler WHERE hauptfach = 50	voter_2
SELECT vorname FROM schüler WHERE alter > 22	voter_2
SELECT vorname FROM schüler WHERE alter > 22	voter_2
SELECT hauptfach FROM schüler WHERE geschlecht = "M"	voter_2
SELECT hauptfach FROM schüler WHERE geschlecht = "M"	voter_2
SELECT avg(alter) FROM schüler WHERE geschlecht = "F"	voter_2
SELECT avg(alter) FROM schüler WHERE geschlecht = "F"	voter_2
SELECT max(alter) , min(alter) FROM schüler WHERE hauptfach = 600	voter_2
SELECT max(alter) , min(alter) FROM schüler WHERE hauptfach = 600	voter_2
SELECT berater FROM schüler WHERE stadtcode = "BAL"	voter_2
SELECT berater FROM schüler WHERE stadtcode = "BAL"	voter_2
SELECT DISTINCT stimme_des_sekretärs FROM stimmzettel WHERE wahlzyklus = "Fall"	voter_2
SELECT DISTINCT stimme_des_sekretärs FROM stimmzettel WHERE wahlzyklus = "Fall"	voter_2
SELECT DISTINCT stimme_des_präsidenten FROM stimmzettel WHERE registrierungsdatum = "08/30/2015"	voter_2
SELECT DISTINCT stimme_des_präsidenten FROM stimmzettel WHERE registrierungsdatum = "08/30/2015"	voter_2
SELECT DISTINCT registrierungsdatum , wahlzyklus FROM stimmzettel	voter_2
SELECT DISTINCT registrierungsdatum , wahlzyklus FROM stimmzettel	voter_2
SELECT DISTINCT stimme_des_präsidenten , stimme_des_vizepräsidenten FROM stimmzettel	voter_2
SELECT DISTINCT stimme_des_präsidenten , stimme_des_vizepräsidenten FROM stimmzettel	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_klassensprechers	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_klassensprechers	voter_2
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_klassensenators	voter_2
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_klassensenators	voter_2
SELECT DISTINCT T1.alter FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_sekretärs WHERE T2.wahlzyklus = "Fall"	voter_2
SELECT DISTINCT T1.alter FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_sekretärs WHERE T2.wahlzyklus = "Fall"	voter_2
SELECT DISTINCT T1.berater FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_schatzmeisters WHERE T2.wahlzyklus = "Spring"	voter_2
SELECT DISTINCT T1.berater FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_schatzmeisters WHERE T2.wahlzyklus = "Spring"	voter_2
SELECT DISTINCT T1.hauptfach FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_schatzmeisters	voter_2
SELECT DISTINCT T1.hauptfach FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_schatzmeisters	voter_2
SELECT DISTINCT T1.vorname , T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_präsidenten WHERE T1.geschlecht = "F"	voter_2
SELECT DISTINCT T1.vorname , T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_präsidenten WHERE T1.geschlecht = "F"	voter_2
SELECT DISTINCT T1.vorname , T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_vizepräsidenten WHERE T1.alter = 18	voter_2
SELECT DISTINCT T1.vorname , T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_vizepräsidenten WHERE T1.alter = 18	voter_2
SELECT count(*) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_klassensenators WHERE T1.geschlecht = "M" AND T2.wahlzyklus = "Fall"	voter_2
SELECT count(*) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_klassensenators WHERE T1.geschlecht = "M" AND T2.wahlzyklus = "Fall"	voter_2
SELECT count(*) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_klassensenators WHERE T1.stadtcode = "NYC" AND T2.wahlzyklus = "Spring"	voter_2
SELECT count(*) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_klassensenators WHERE T1.stadtcode = "NYC" AND T2.wahlzyklus = "Spring"	voter_2
SELECT avg(T1.alter) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_sekretärs WHERE T1.stadtcode = "NYC" AND T2.wahlzyklus = "Spring"	voter_2
SELECT avg(T1.alter) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_sekretärs WHERE T1.stadtcode = "NYC" AND T2.wahlzyklus = "Spring"	voter_2
SELECT avg(T1.alter) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_sekretärs WHERE T1.geschlecht = "F" AND T2.wahlzyklus = "Spring"	voter_2
SELECT avg(T1.alter) FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_sekretärs WHERE T1.geschlecht = "F" AND T2.wahlzyklus = "Spring"	voter_2
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_vizepräsidenten EXCEPT SELECT DISTINCT vorname FROM schüler WHERE stadtcode = "PIT"	voter_2
SELECT DISTINCT T1.vorname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = T2.stimme_des_vizepräsidenten EXCEPT SELECT DISTINCT vorname FROM schüler WHERE stadtcode = "PIT"	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_präsidenten EXCEPT SELECT DISTINCT nachname FROM schüler WHERE berater = "2192"	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_präsidenten EXCEPT SELECT DISTINCT nachname FROM schüler WHERE berater = "2192"	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_präsidenten INTERSECT SELECT DISTINCT nachname FROM schüler WHERE berater = "8741"	voter_2
SELECT DISTINCT T1.nachname FROM schüler AS T1 JOIN stimmzettel AS T2 ON T1.student_id = stimme_des_präsidenten INTERSECT SELECT DISTINCT nachname FROM schüler WHERE berater = "8741"	voter_2
SELECT berater , count(*) FROM schüler GROUP BY berater	voter_2
SELECT berater , count(*) FROM schüler GROUP BY berater	voter_2
SELECT berater FROM schüler GROUP BY berater HAVING COUNT(*) > 2	voter_2
SELECT berater FROM schüler GROUP BY berater HAVING COUNT(*) > 2	voter_2
SELECT hauptfach FROM schüler GROUP BY hauptfach HAVING COUNT(*) < 3	voter_2
SELECT hauptfach FROM schüler GROUP BY hauptfach HAVING COUNT(*) < 3	voter_2
SELECT wahlzyklus , count(*) FROM stimmzettel GROUP BY wahlzyklus	voter_2
SELECT wahlzyklus , count(*) FROM stimmzettel GROUP BY wahlzyklus	voter_2
SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT hauptfach FROM schüler WHERE geschlecht = "F" GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT hauptfach FROM schüler WHERE geschlecht = "F" GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT stadtcode FROM schüler GROUP BY stadtcode ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT stadtcode FROM schüler GROUP BY stadtcode ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT berater FROM schüler GROUP BY berater HAVING count(*) > 2	voter_2
SELECT berater FROM schüler GROUP BY berater HAVING count(*) > 2	voter_2
SELECT count(*) FROM produkte	products_gen_characteristics
SELECT count(*) FROM produkte	products_gen_characteristics
SELECT count(*) FROM referenzfarben	products_gen_characteristics
SELECT count(*) FROM referenzfarben	products_gen_characteristics
SELECT count(*) FROM merkmale	products_gen_characteristics
SELECT count(*) FROM merkmale	products_gen_characteristics
SELECT produktname , typischer_einkaufspreis FROM produkte	products_gen_characteristics
SELECT produktname , typischer_einkaufspreis FROM produkte	products_gen_characteristics
SELECT farbbeschreibung FROM referenzfarben	products_gen_characteristics
SELECT farbbeschreibung FROM referenzfarben	products_gen_characteristics
SELECT DISTINCT merkmalsname FROM merkmale	products_gen_characteristics
SELECT DISTINCT merkmalsname FROM merkmale	products_gen_characteristics
SELECT produktname FROM produkte WHERE produkt_kategorie_code = "Spices"	products_gen_characteristics
SELECT produktname FROM produkte WHERE produkt_kategorie_code = "Spices"	products_gen_characteristics
SELECT T1.produktname , T2.farbbeschreibung , T1.produktbeschreibung FROM produkte AS T1 JOIN referenzfarben AS T2 ON T1.farbcode = T2.farbcode WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT T1.produktname , T2.farbbeschreibung , T1.produktbeschreibung FROM produkte AS T1 JOIN referenzfarben AS T2 ON T1.farbcode = T2.farbcode WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT count(*) FROM produkte WHERE produkt_kategorie_code = "Seeds"	products_gen_characteristics
SELECT count(*) FROM produkte WHERE produkt_kategorie_code = "Seeds"	products_gen_characteristics
SELECT count(*) FROM produkte WHERE produkt_kategorie_code = "Spices" AND typischer_einkaufspreis > 1000	products_gen_characteristics
SELECT count(*) FROM produkte WHERE produkt_kategorie_code = "Spices" AND typischer_einkaufspreis > 1000	products_gen_characteristics
SELECT produkt_kategorie_code , typischer_einkaufspreis FROM produkte WHERE produktname = "cumin"	products_gen_characteristics
SELECT produkt_kategorie_code , typischer_einkaufspreis FROM produkte WHERE produktname = "cumin"	products_gen_characteristics
SELECT produkt_kategorie_code FROM produkte WHERE produktname = "flax"	products_gen_characteristics
SELECT produkt_kategorie_code FROM produkte WHERE produktname = "flax"	products_gen_characteristics
SELECT T1.produktname FROM produkte AS T1 JOIN referenzfarben AS T2 ON T1.farbcode = T2.farbcode WHERE T2.farbbeschreibung = 'yellow'	products_gen_characteristics
SELECT T1.produktname FROM produkte AS T1 JOIN referenzfarben AS T2 ON T1.farbcode = T2.farbcode WHERE T2.farbbeschreibung = 'yellow'	products_gen_characteristics
SELECT T1.beschreibung_der_produktkategorie FROM referenz_produktkategorien AS T1 JOIN produkte AS T2 ON T1.produkt_kategorie_code = T2.produkt_kategorie_code WHERE T2.produktbeschreibung LIKE '%t%'	products_gen_characteristics
SELECT T1.beschreibung_der_produktkategorie FROM referenz_produktkategorien AS T1 JOIN produkte AS T2 ON T1.produkt_kategorie_code = T2.produkt_kategorie_code WHERE T2.produktbeschreibung LIKE '%t%'	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t1.produktname = "catnip"	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t1.produktname = "catnip"	products_gen_characteristics
SELECT t1.farbcode , t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t1.produktname = "chervil"	products_gen_characteristics
SELECT t1.farbcode , t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t1.produktname = "chervil"	products_gen_characteristics
SELECT t1.produkt_id , t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode JOIN produkteigenschaften AS t3 ON t1.produkt_id = t3.produkt_id GROUP BY t1.produkt_id HAVING count(*) >= 2	products_gen_characteristics
SELECT t1.produkt_id , t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode JOIN produkteigenschaften AS t3 ON t1.produkt_id = t3.produkt_id GROUP BY t1.produkt_id HAVING count(*) >= 2	products_gen_characteristics
SELECT t1.produktname FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t2.farbbeschreibung = "white"	products_gen_characteristics
SELECT t1.produktname FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t2.farbbeschreibung = "white"	products_gen_characteristics
SELECT t1.produktname , t1.typischer_einkaufspreis , t1.typischer_verkaufspreis FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t2.farbbeschreibung = "yellow"	products_gen_characteristics
SELECT t1.produktname , t1.typischer_einkaufspreis , t1.typischer_verkaufspreis FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode WHERE t2.farbbeschreibung = "yellow"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT count(DISTINCT t3.merkmalsname) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT count(DISTINCT t3.merkmalsname) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame"	products_gen_characteristics
SELECT t3.merkmalsname , t3.merkmalsdatentyp FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "cumin"	products_gen_characteristics
SELECT t3.merkmalsname , t3.merkmalsdatentyp FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "cumin"	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame" AND t3.merkmalsartcode = "Grade"	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "sesame" AND t3.merkmalsartcode = "Grade"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "laurel"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "laurel"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "flax"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t1.produktname = "flax"	products_gen_characteristics
SELECT produktname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "red" AND t3.merkmalsname = "fast"	products_gen_characteristics
SELECT produktname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "red" AND t3.merkmalsname = "fast"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t3.merkmalsname = "hot"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t3.merkmalsname = "hot"	products_gen_characteristics
SELECT DISTINCT t1.produktname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t3.merkmalsname = "warm"	products_gen_characteristics
SELECT DISTINCT t1.produktname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id WHERE t3.merkmalsname = "warm"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "red" AND t3.merkmalsname = "slow"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "red" AND t3.merkmalsname = "slow"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "white" OR t3.merkmalsname = "hot"	products_gen_characteristics
SELECT count(*) FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id JOIN referenzfarben AS t4 ON t1.farbcode = t4.farbcode WHERE t4.farbbeschreibung = "white" OR t3.merkmalsname = "hot"	products_gen_characteristics
SELECT mengeneinheit FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT mengeneinheit FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT beschreibung_der_produktkategorie FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Spices"	products_gen_characteristics
SELECT beschreibung_der_produktkategorie FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Spices"	products_gen_characteristics
SELECT beschreibung_der_produktkategorie , mengeneinheit FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT beschreibung_der_produktkategorie , mengeneinheit FROM referenz_produktkategorien WHERE produkt_kategorie_code = "Herbs"	products_gen_characteristics
SELECT t2.mengeneinheit FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code WHERE t1.produktname = "cumin"	products_gen_characteristics
SELECT t2.mengeneinheit FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code WHERE t1.produktname = "cumin"	products_gen_characteristics
SELECT t2.mengeneinheit , t2.produkt_kategorie_code FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code WHERE t1.produktname = "chervil"	products_gen_characteristics
SELECT t2.mengeneinheit , t2.produkt_kategorie_code FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code WHERE t1.produktname = "chervil"	products_gen_characteristics
SELECT t1.produktname FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code JOIN referenzfarben AS t3 ON t1.farbcode = t3.farbcode WHERE t3.farbbeschreibung = "white" AND t2.mengeneinheit != "Handful"	products_gen_characteristics
SELECT t1.produktname FROM produkte AS t1 JOIN referenz_produktkategorien AS t2 ON t1.produkt_kategorie_code = t2.produkt_kategorie_code JOIN referenzfarben AS t3 ON t1.farbcode = t3.farbcode WHERE t3.farbbeschreibung = "white" AND t2.mengeneinheit != "Handful"	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode GROUP BY t2.farbbeschreibung ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode GROUP BY t2.farbbeschreibung ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode GROUP BY t2.farbbeschreibung ORDER BY count(*) ASC LIMIT 1	products_gen_characteristics
SELECT t2.farbbeschreibung FROM produkte AS t1 JOIN referenzfarben AS t2 ON t1.farbcode = t2.farbcode GROUP BY t2.farbbeschreibung ORDER BY count(*) ASC LIMIT 1	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id GROUP BY t3.merkmalsname ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id GROUP BY t3.merkmalsname ORDER BY count(*) DESC LIMIT 1	products_gen_characteristics
SELECT merkmalsname , sonstige_merkmalsangaben , merkmalsdatentyp FROM merkmale EXCEPT SELECT t1.merkmalsname , t1.sonstige_merkmalsangaben , t1.merkmalsdatentyp FROM merkmale AS t1 JOIN produkteigenschaften AS t2 ON t1.merkmal_id = t2.merkmal_id	products_gen_characteristics
SELECT merkmalsname , sonstige_merkmalsangaben , merkmalsdatentyp FROM merkmale EXCEPT SELECT t1.merkmalsname , t1.sonstige_merkmalsangaben , t1.merkmalsdatentyp FROM merkmale AS t1 JOIN produkteigenschaften AS t2 ON t1.merkmal_id = t2.merkmal_id	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id GROUP BY t3.merkmalsname HAVING count(*) >= 2	products_gen_characteristics
SELECT t3.merkmalsname FROM produkte AS t1 JOIN produkteigenschaften AS t2 ON t1.produkt_id = t2.produkt_id JOIN merkmale AS t3 ON t2.merkmal_id = t3.merkmal_id GROUP BY t3.merkmalsname HAVING count(*) >= 2	products_gen_characteristics
SELECT count(*) FROM referenzfarben WHERE farbcode NOT IN ( SELECT farbcode FROM produkte )	products_gen_characteristics
SELECT count(*) FROM referenzfarben WHERE farbcode NOT IN ( SELECT farbcode FROM produkte )	products_gen_characteristics
SELECT count(*) FROM veranstaltung	swimming
SELECT name FROM veranstaltung ORDER BY jahr DESC	swimming
SELECT name FROM veranstaltung ORDER BY jahr DESC LIMIT 1	swimming
SELECT count(*) FROM stadion	swimming
SELECT name FROM stadion ORDER BY kapazität DESC LIMIT 1	swimming
SELECT name FROM stadion WHERE kapazität < (SELECT avg(kapazität) FROM stadion)	swimming
SELECT land FROM stadion GROUP BY land ORDER BY count(*) DESC LIMIT 1	swimming
SELECT land FROM stadion GROUP BY land HAVING count(*) <= 3	swimming
SELECT land FROM stadion WHERE kapazität > 60000 INTERSECT SELECT land FROM stadion WHERE kapazität < 50000	swimming
SELECT count(DISTINCT stadt) FROM stadion WHERE eröffnungsjahr < 2006	swimming
SELECT land , count(*) FROM stadion GROUP BY land	swimming
SELECT land FROM stadion EXCEPT SELECT land FROM stadion WHERE eröffnungsjahr > 2006	swimming
SELECT count(*) FROM stadion WHERE land != 'Russia'	swimming
SELECT name FROM schwimmer ORDER BY meter_100	swimming
SELECT count(DISTINCT nationalität) FROM schwimmer	swimming
SELECT nationalität , count(*) FROM schwimmer GROUP BY nationalität HAVING count(*) > 1	swimming
SELECT meter_200 , meter_300 FROM schwimmer WHERE nationalität = 'Australia'	swimming
SELECT t1.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id WHERE ergebnis = 'Win'	swimming
SELECT t1.name FROM stadion AS t1 JOIN veranstaltung AS t2 ON t1.id = t2.stadion_id GROUP BY t2.stadion_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT t1.name , t1.kapazität FROM stadion AS t1 JOIN veranstaltung AS t2 ON t1.id = t2.stadion_id WHERE t2.name = 'World Junior'	swimming
SELECT name FROM stadion WHERE id NOT IN (SELECT stadion_id FROM veranstaltung)	swimming
SELECT t1.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id GROUP BY t2.schwimmer_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT t1.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id GROUP BY t2.schwimmer_id HAVING count(*) >= 2	swimming
SELECT t1.name , t1.nationalität FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id WHERE ergebnis = 'Win' GROUP BY t2.schwimmer_id HAVING count(*) > 1	swimming
SELECT name FROM schwimmer WHERE id NOT IN (SELECT schwimmer_id FROM rekord)	swimming
SELECT t1.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id WHERE ergebnis = 'Win' INTERSECT SELECT t1.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id WHERE ergebnis = 'Loss'	swimming
SELECT t4.name FROM schwimmer AS t1 JOIN rekord AS t2 ON t1.id = t2.schwimmer_id JOIN veranstaltung AS t3 ON t2.event_id = t3.id JOIN stadion AS t4 ON t4.id = t3.stadion_id WHERE t1.nationalität = 'Australia'	swimming
SELECT t3.name FROM rekord AS t1 JOIN veranstaltung AS t2 ON t1.event_id = t2.id JOIN stadion AS t3 ON t3.id = t2.stadion_id GROUP BY t2.stadion_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT * FROM schwimmer	swimming
SELECT avg(kapazität) FROM stadion WHERE eröffnungsjahr = 2005	swimming
SELECT count(*) FROM bahn	railway
SELECT bauer FROM bahn ORDER BY bauer ASC	railway
SELECT räder , standort FROM bahn	railway
SELECT max(ebene) FROM manager WHERE land != "Australia	"	railway
SELECT avg(alter) FROM manager	railway
SELECT name FROM manager ORDER BY ebene ASC	railway
SELECT name , ankunft FROM train	railway
SELECT name FROM manager ORDER BY alter DESC LIMIT 1	railway
SELECT T2.name , T1.standort FROM bahn AS T1 JOIN train AS T2 ON T1.bahn_id = T2.bahn_id	railway
SELECT T1.bauer FROM bahn AS T1 JOIN train AS T2 ON T1.bahn_id = T2.bahn_id WHERE T2.name = "Andaman Exp"	railway
SELECT T2.bahn_id , T1.standort FROM bahn AS T1 JOIN train AS T2 ON T1.bahn_id = T2.bahn_id GROUP BY T2.bahn_id HAVING COUNT(*) > 1	railway
SELECT T2.bahn_id , T1.bauer FROM bahn AS T1 JOIN train AS T2 ON T1.bahn_id = T2.bahn_id GROUP BY T2.bahn_id ORDER BY COUNT(*) DESC LIMIT 1	railway
SELECT bauer , COUNT(*) FROM bahn GROUP BY bauer	railway
SELECT bauer FROM bahn GROUP BY bauer ORDER BY COUNT(*) DESC LIMIT 1	railway
SELECT standort , COUNT(*) FROM bahn GROUP BY standort	railway
SELECT standort FROM bahn GROUP BY standort HAVING COUNT(*) > 1	railway
SELECT objektnummer FROM bahn WHERE bahn_id NOT IN (SELECT bahn_id FROM train)	railway
SELECT land FROM manager WHERE alter > 50 INTERSECT SELECT land FROM manager WHERE alter < 46	railway
SELECT DISTINCT land FROM manager	railway
SELECT arbeitsjahr_beginnt FROM manager ORDER BY ebene DESC	railway
SELECT land FROM manager WHERE alter > 50 OR alter < 46	railway
SELECT count(*) FROM adressen WHERE land = 'USA'	customers_and_products_contacts
SELECT DISTINCT ort FROM adressen	customers_and_products_contacts
SELECT bundesland_provinz_landkreis , count(*) FROM adressen GROUP BY bundesland_provinz_landkreis	customers_and_products_contacts
SELECT kundenname , kundentelefon FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM kundenadresshistorie)	customers_and_products_contacts
SELECT T1.kundenname FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	customers_and_products_contacts
SELECT produkttyp_code FROM produkte GROUP BY produkttyp_code HAVING count(*) >= 2	customers_and_products_contacts
SELECT T1.kundenname FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = 'Completed' INTERSECT SELECT T1.kundenname FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus_code = 'Part'	customers_and_products_contacts
SELECT kundenname , kundentelefon , zahlungsart_code FROM kunden ORDER BY kundennummer DESC	customers_and_products_contacts
SELECT T1.produktname , sum(T2.bestellmenge) FROM produkte AS T1 JOIN auftragspositionen AS T2 ON T1.produkt_id = T2.produkt_id GROUP BY T1.produkt_id	customers_and_products_contacts
SELECT min(produktpreis) , max(produktpreis) , avg(produktpreis) FROM produkte	customers_and_products_contacts
SELECT count(*) FROM produkte WHERE produktpreis > (SELECT avg(produktpreis) FROM produkte)	customers_and_products_contacts
SELECT T2.kundenname , T3.ort , T1.datum_von , T1.datum_bis FROM kundenadresshistorie AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id JOIN adressen AS T3 ON T1.adresse_id = T3.adresse_id	customers_and_products_contacts
SELECT T1.kundenname FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.zahlungsart_code = 'Credit Card' GROUP BY T1.kunden_id HAVING count(*) > 2	customers_and_products_contacts
SELECT T1.kundenname , T1.kundentelefon FROM kunden AS T1 JOIN kundenaufträge AS T2 ON T1.kunden_id = T2.kunden_id JOIN auftragspositionen AS T3 ON T3.auftrags_id = T2.auftrags_id GROUP BY T1.kunden_id ORDER BY sum(T3.bestellmenge) DESC LIMIT 1	customers_and_products_contacts
SELECT produkttyp_code , produktname FROM produkte WHERE produktpreis > 1000 OR produktpreis < 500	customers_and_products_contacts
SELECT wohnheimname FROM wohnheim WHERE geschlecht = 'F'	dorm_1
SELECT wohnheimname FROM wohnheim WHERE geschlecht = 'F'	dorm_1
SELECT wohnheimname FROM wohnheim WHERE schülerzahl > 300	dorm_1
SELECT wohnheimname FROM wohnheim WHERE schülerzahl > 300	dorm_1
SELECT count(*) FROM schüler WHERE sex = 'F' AND alter < 25	dorm_1
SELECT count(*) FROM schüler WHERE sex = 'F' AND alter < 25	dorm_1
SELECT vorname FROM schüler WHERE alter > 20	dorm_1
SELECT vorname FROM schüler WHERE alter > 20	dorm_1
SELECT vorname FROM schüler WHERE stadtcode = 'PHL' AND alter BETWEEN 20 AND 25	dorm_1
SELECT vorname FROM schüler WHERE stadtcode = 'PHL' AND alter BETWEEN 20 AND 25	dorm_1
SELECT count(*) FROM wohnheim	dorm_1
SELECT count(*) FROM wohnheim	dorm_1
SELECT count(*) FROM wohnheimausstattungen	dorm_1
SELECT count(*) FROM wohnheimausstattungen	dorm_1
SELECT sum(schülerzahl) FROM wohnheim	dorm_1
SELECT sum(schülerzahl) FROM wohnheim	dorm_1
SELECT count(*) FROM schüler	dorm_1
SELECT count(*) FROM schüler	dorm_1
SELECT avg(alter) , stadtcode FROM schüler GROUP BY stadtcode	dorm_1
SELECT avg(alter) , stadtcode FROM schüler GROUP BY stadtcode	dorm_1
SELECT avg(schülerzahl) , sum(schülerzahl) FROM wohnheim WHERE geschlecht = 'X'	dorm_1
SELECT avg(schülerzahl) , sum(schülerzahl) FROM wohnheim WHERE geschlecht = 'X'	dorm_1
SELECT count(DISTINCT wohnheim_id) FROM hat_annehmlichkeit	dorm_1
SELECT count(DISTINCT wohnheim_id) FROM hat_annehmlichkeit	dorm_1
SELECT wohnheimname FROM wohnheim WHERE wohnheim_id NOT IN (SELECT wohnheim_id FROM hat_annehmlichkeit)	dorm_1
SELECT wohnheimname FROM wohnheim WHERE wohnheim_id NOT IN (SELECT wohnheim_id FROM hat_annehmlichkeit)	dorm_1
SELECT count(DISTINCT geschlecht) FROM wohnheim	dorm_1
SELECT count(DISTINCT geschlecht) FROM wohnheim	dorm_1
SELECT schülerzahl , geschlecht FROM wohnheim WHERE wohnheimname LIKE '%Donor%'	dorm_1
SELECT schülerzahl , geschlecht FROM wohnheim WHERE wohnheimname LIKE '%Donor%'	dorm_1
SELECT wohnheimname , geschlecht FROM wohnheim WHERE schülerzahl > 300 OR schülerzahl < 100	dorm_1
SELECT wohnheimname , geschlecht FROM wohnheim WHERE schülerzahl > 300 OR schülerzahl < 100	dorm_1
SELECT count(DISTINCT hauptfach) , count(DISTINCT stadtcode) FROM schüler	dorm_1
SELECT count(DISTINCT hauptfach) , count(DISTINCT stadtcode) FROM schüler	dorm_1
SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge' INTERSECT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'Study Room'	dorm_1
SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge' INTERSECT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'Study Room'	dorm_1
SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge' EXCEPT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'Study Room'	dorm_1
SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge' EXCEPT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'Study Room'	dorm_1
SELECT nachname FROM schüler WHERE sex = 'F' AND stadtcode = 'BAL' UNION SELECT nachname FROM schüler WHERE sex = 'M' AND alter < 20	dorm_1
SELECT nachname FROM schüler WHERE sex = 'F' AND stadtcode = 'BAL' UNION SELECT nachname FROM schüler WHERE sex = 'M' AND alter < 20	dorm_1
SELECT wohnheimname FROM wohnheim ORDER BY schülerzahl DESC LIMIT 1	dorm_1
SELECT wohnheimname FROM wohnheim ORDER BY schülerzahl DESC LIMIT 1	dorm_1
SELECT name_des_wohnheims FROM wohnheimausstattungen ORDER BY name_des_wohnheims	dorm_1
SELECT name_des_wohnheims FROM wohnheimausstattungen ORDER BY name_des_wohnheims	dorm_1
SELECT stadtcode FROM schüler GROUP BY stadtcode ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT stadtcode FROM schüler GROUP BY stadtcode ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT vorname , nachname FROM schüler WHERE alter < (SELECT avg(alter) FROM schüler)	dorm_1
SELECT vorname , nachname FROM schüler WHERE alter < (SELECT avg(alter) FROM schüler)	dorm_1
SELECT vorname , nachname FROM schüler WHERE stadtcode != 'HKG' ORDER BY alter	dorm_1
SELECT vorname , nachname FROM schüler WHERE stadtcode != 'HKG' ORDER BY alter	dorm_1
SELECT T1.name_des_wohnheims FROM wohnheimausstattungen AS T1 JOIN hat_annehmlichkeit AS T2 ON T2.amenity_id = T1.amenity_id JOIN wohnheim AS T3 ON T2.wohnheim_id = T3.wohnheim_id WHERE T3.wohnheimname = 'Anonymous Donor Hall' ORDER BY T1.name_des_wohnheims	dorm_1
SELECT T1.name_des_wohnheims FROM wohnheimausstattungen AS T1 JOIN hat_annehmlichkeit AS T2 ON T2.amenity_id = T1.amenity_id JOIN wohnheim AS T3 ON T2.wohnheim_id = T3.wohnheim_id WHERE T3.wohnheimname = 'Anonymous Donor Hall' ORDER BY T1.name_des_wohnheims	dorm_1
SELECT count(*) , sum(schülerzahl) , geschlecht FROM wohnheim GROUP BY geschlecht	dorm_1
SELECT count(*) , sum(schülerzahl) , geschlecht FROM wohnheim GROUP BY geschlecht	dorm_1
SELECT avg(alter) , max(alter) , sex FROM schüler GROUP BY sex	dorm_1
SELECT avg(alter) , max(alter) , sex FROM schüler GROUP BY sex	dorm_1
SELECT count(*) , hauptfach FROM schüler GROUP BY hauptfach	dorm_1
SELECT count(*) , hauptfach FROM schüler GROUP BY hauptfach	dorm_1
SELECT count(*) , avg(alter) , stadtcode FROM schüler GROUP BY stadtcode	dorm_1
SELECT count(*) , avg(alter) , stadtcode FROM schüler GROUP BY stadtcode	dorm_1
SELECT count(*) , avg(alter) , stadtcode FROM schüler WHERE sex = 'M' GROUP BY stadtcode	dorm_1
SELECT count(*) , avg(alter) , stadtcode FROM schüler WHERE sex = 'M' GROUP BY stadtcode	dorm_1
SELECT count(*) , stadtcode FROM schüler GROUP BY stadtcode HAVING count(*) > 1	dorm_1
SELECT count(*) , stadtcode FROM schüler GROUP BY stadtcode HAVING count(*) > 1	dorm_1
SELECT vorname , nachname FROM schüler WHERE hauptfach != (SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT vorname , nachname FROM schüler WHERE hauptfach != (SELECT hauptfach FROM schüler GROUP BY hauptfach ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT count(*) , sex FROM schüler WHERE alter > (SELECT avg(alter) FROM schüler) GROUP BY sex	dorm_1
SELECT count(*) , sex FROM schüler WHERE alter > (SELECT avg(alter) FROM schüler) GROUP BY sex	dorm_1
SELECT avg(T1.alter) , T3.wohnheimname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id GROUP BY T3.wohnheimname	dorm_1
SELECT avg(T1.alter) , T3.wohnheimname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id GROUP BY T3.wohnheimname	dorm_1
SELECT count(*) , T1.wohnheim_id FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id WHERE T1.schülerzahl > 100 GROUP BY T1.wohnheim_id	dorm_1
SELECT count(*) , T1.wohnheim_id FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id WHERE T1.schülerzahl > 100 GROUP BY T1.wohnheim_id	dorm_1
SELECT count(*) , T3.wohnheimname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T1.alter > 20 GROUP BY T3.wohnheimname	dorm_1
SELECT count(*) , T3.wohnheimname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T1.alter > 20 GROUP BY T3.wohnheimname	dorm_1
SELECT T1.vorname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.wohnheimname = 'Smith Hall'	dorm_1
SELECT T1.vorname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.wohnheimname = 'Smith Hall'	dorm_1
SELECT avg(T1.alter) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.schülerzahl = (SELECT max(schülerzahl) FROM wohnheim)	dorm_1
SELECT avg(T1.alter) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.schülerzahl = (SELECT max(schülerzahl) FROM wohnheim)	dorm_1
SELECT count(*) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.geschlecht = 'M'	dorm_1
SELECT count(*) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.geschlecht = 'M'	dorm_1
SELECT count(*) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.wohnheimname = 'Smith Hall' AND T1.sex = 'F'	dorm_1
SELECT count(*) FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id JOIN wohnheim AS T3 ON T3.wohnheim_id = T2.wohnheim_id WHERE T3.wohnheimname = 'Smith Hall' AND T1.sex = 'F'	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T1.wohnheimname = 'Smith Hall'	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T1.wohnheimname = 'Smith Hall'	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T1.wohnheimname = 'Smith Hall' ORDER BY T3.name_des_wohnheims	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T1.wohnheimname = 'Smith Hall' ORDER BY T3.name_des_wohnheims	dorm_1
SELECT T1.name_des_wohnheims FROM wohnheimausstattungen AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.amenity_id = T2.amenity_id GROUP BY T2.amenity_id ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT T1.name_des_wohnheims FROM wohnheimausstattungen AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.amenity_id = T2.amenity_id GROUP BY T2.amenity_id ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT T1.vorname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id IN (SELECT T2.wohnheim_id FROM wohnheim AS T3 JOIN hat_annehmlichkeit AS T4 ON T3.wohnheim_id = T4.wohnheim_id JOIN wohnheimausstattungen AS T5 ON T4.amenity_id = T5.amenity_id GROUP BY T3.wohnheim_id ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT T1.vorname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id IN (SELECT T2.wohnheim_id FROM wohnheim AS T3 JOIN hat_annehmlichkeit AS T4 ON T3.wohnheim_id = T4.wohnheim_id JOIN wohnheimausstattungen AS T5 ON T4.amenity_id = T5.amenity_id GROUP BY T3.wohnheim_id ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT T1.wohnheimname , T1.schülerzahl FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id GROUP BY T2.wohnheim_id ORDER BY count(*) LIMIT 1	dorm_1
SELECT T1.wohnheimname , T1.schülerzahl FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id GROUP BY T2.wohnheim_id ORDER BY count(*) LIMIT 1	dorm_1
SELECT wohnheimname FROM wohnheim EXCEPT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge'	dorm_1
SELECT wohnheimname FROM wohnheim EXCEPT SELECT T1.wohnheimname FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id WHERE T3.name_des_wohnheims = 'TV Lounge'	dorm_1
SELECT T1.vorname , T1.nachname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id IN (SELECT T3.wohnheim_id FROM hat_annehmlichkeit AS T3 JOIN wohnheimausstattungen AS T4 ON T3.amenity_id = T4.amenity_id WHERE T4.name_des_wohnheims = 'TV Lounge')	dorm_1
SELECT T1.vorname , T1.nachname FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id IN (SELECT T3.wohnheim_id FROM hat_annehmlichkeit AS T3 JOIN wohnheimausstattungen AS T4 ON T3.amenity_id = T4.amenity_id WHERE T4.name_des_wohnheims = 'TV Lounge')	dorm_1
SELECT T1.vorname , T1.alter FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id NOT IN (SELECT T3.wohnheim_id FROM hat_annehmlichkeit AS T3 JOIN wohnheimausstattungen AS T4 ON T3.amenity_id = T4.amenity_id WHERE T4.name_des_wohnheims = 'TV Lounge')	dorm_1
SELECT T1.vorname , T1.alter FROM schüler AS T1 JOIN wohnt_in AS T2 ON T1.student_id = T2.student_id WHERE T2.wohnheim_id NOT IN (SELECT T3.wohnheim_id FROM hat_annehmlichkeit AS T3 JOIN wohnheimausstattungen AS T4 ON T3.amenity_id = T4.amenity_id WHERE T4.name_des_wohnheims = 'TV Lounge')	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id JOIN wohnt_in AS T4 ON T4.wohnheim_id = T1.wohnheim_id JOIN schüler AS T5 ON T5.student_id = T4.student_id WHERE T5.nachname = 'Smith'	dorm_1
SELECT T3.name_des_wohnheims FROM wohnheim AS T1 JOIN hat_annehmlichkeit AS T2 ON T1.wohnheim_id = T2.wohnheim_id JOIN wohnheimausstattungen AS T3 ON T2.amenity_id = T3.amenity_id JOIN wohnt_in AS T4 ON T4.wohnheim_id = T1.wohnheim_id JOIN schüler AS T5 ON T5.student_id = T4.student_id WHERE T5.nachname = 'Smith'	dorm_1
SELECT count(*) FROM kunden	customer_complaints
SELECT count(*) FROM kunden	customer_complaints
SELECT e_mail_adresse , telefonnummer FROM kunden ORDER BY e_mail_adresse , telefonnummer	customer_complaints
SELECT e_mail_adresse , telefonnummer FROM kunden ORDER BY e_mail_adresse , telefonnummer	customer_complaints
SELECT stadt FROM kunden WHERE kundenart_code = "Good Credit Rating" GROUP BY stadt ORDER BY count(*) LIMIT 1	customer_complaints
SELECT stadt FROM kunden WHERE kundenart_code = "Good Credit Rating" GROUP BY stadt ORDER BY count(*) LIMIT 1	customer_complaints
SELECT t1.produktname , count(*) FROM produkte AS t1 JOIN beschwerden AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produktname	customer_complaints
SELECT t1.produktname , count(*) FROM produkte AS t1 JOIN beschwerden AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produktname	customer_complaints
SELECT t1.e_mail_adresse FROM kunden AS t1 JOIN beschwerden AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kunden_id ORDER BY count(*) LIMIT 1	customer_complaints
SELECT t1.e_mail_adresse FROM kunden AS t1 JOIN beschwerden AS t2 ON t1.kunden_id = t2.kunden_id GROUP BY t1.kunden_id ORDER BY count(*) LIMIT 1	customer_complaints
SELECT DISTINCT t1.produktname FROM produkte AS t1 JOIN beschwerden AS t2 ON t1.produkt_id = t2.produkt_id JOIN kunden AS t3 GROUP BY t3.kunden_id ORDER BY count(*) LIMIT 1	customer_complaints
SELECT DISTINCT t1.produktname FROM produkte AS t1 JOIN beschwerden AS t2 ON t1.produkt_id = t2.produkt_id JOIN kunden AS t3 GROUP BY t3.kunden_id ORDER BY count(*) LIMIT 1	customer_complaints
SELECT t1.telefonnummer FROM kunden AS t1 JOIN beschwerden AS t2 ON t1.kunden_id = t2.kunden_id ORDER BY t2.datum_der_beschwerdeerhebung DESC LIMIT 1	customer_complaints
SELECT t1.telefonnummer FROM kunden AS t1 JOIN beschwerden AS t2 ON t1.kunden_id = t2.kunden_id ORDER BY t2.datum_der_beschwerdeerhebung DESC LIMIT 1	customer_complaints
SELECT e_mail_adresse , telefonnummer FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM beschwerden)	customer_complaints
SELECT e_mail_adresse , telefonnummer FROM kunden WHERE kunden_id NOT IN (SELECT kunden_id FROM beschwerden)	customer_complaints
SELECT telefonnummer FROM kunden UNION SELECT telefonnummer FROM personal	customer_complaints
SELECT telefonnummer FROM kunden UNION SELECT telefonnummer FROM personal	customer_complaints
SELECT produktbeschreibung FROM produkte WHERE produktname = "Chocolate"	customer_complaints
SELECT produktbeschreibung FROM produkte WHERE produktname = "Chocolate"	customer_complaints
SELECT produktname , produkt_kategorie_code FROM produkte ORDER BY produktpreis DESC LIMIT 1	customer_complaints
SELECT produktname , produkt_kategorie_code FROM produkte ORDER BY produktpreis DESC LIMIT 1	customer_complaints
SELECT produktpreis FROM produkte WHERE produkt_id NOT IN (SELECT produkt_id FROM beschwerden)	customer_complaints
SELECT produktpreis FROM produkte WHERE produkt_id NOT IN (SELECT produkt_id FROM beschwerden)	customer_complaints
SELECT avg(produktpreis) , produkt_kategorie_code FROM produkte GROUP BY produkt_kategorie_code	customer_complaints
SELECT avg(produktpreis) , produkt_kategorie_code FROM produkte GROUP BY produkt_kategorie_code	customer_complaints
SELECT t1.nachname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id JOIN produkte AS t3 ON t2.produkt_id = t3.produkt_id ORDER BY t3.produktpreis LIMIT 1	customer_complaints
SELECT t1.nachname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id JOIN produkte AS t3 ON t2.produkt_id = t3.produkt_id ORDER BY t3.produktpreis LIMIT 1	customer_complaints
SELECT beschwerdestatus_code FROM beschwerden GROUP BY beschwerdestatus_code HAVING count(*) > 3	customer_complaints
SELECT beschwerdestatus_code FROM beschwerden GROUP BY beschwerdestatus_code HAVING count(*) > 3	customer_complaints
SELECT nachname FROM personal WHERE e_mail_adresse LIKE "%wrau%"	customer_complaints
SELECT nachname FROM personal WHERE e_mail_adresse LIKE "%wrau%"	customer_complaints
SELECT count(*) FROM kunden GROUP BY kundenart_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
SELECT count(*) FROM kunden GROUP BY kundenart_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
SELECT t1.nachname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id ORDER BY t2.datum_der_beschwerdeerhebung LIMIT 1	customer_complaints
SELECT t1.nachname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id ORDER BY t2.datum_der_beschwerdeerhebung LIMIT 1	customer_complaints
SELECT count(DISTINCT beschwerdeart_code) FROM beschwerden	customer_complaints
SELECT count(DISTINCT beschwerdeart_code) FROM beschwerden	customer_complaints
SELECT adresszeile_1 , adresse_zeile_2 FROM kunden WHERE e_mail_adresse = "vbogisich@example.org"	customer_complaints
SELECT adresszeile_1 , adresse_zeile_2 FROM kunden WHERE e_mail_adresse = "vbogisich@example.org"	customer_complaints
SELECT beschwerdestatus_code , count(*) FROM beschwerden WHERE beschwerdeart_code = "Product Failure" GROUP BY beschwerdestatus_code	customer_complaints
SELECT beschwerdestatus_code , count(*) FROM beschwerden WHERE beschwerdeart_code = "Product Failure" GROUP BY beschwerdestatus_code	customer_complaints
SELECT t1.vorname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id GROUP BY t2.mitarbeiter_id ORDER BY count(*) LIMIT 5	customer_complaints
SELECT t1.vorname FROM personal AS t1 JOIN beschwerden AS t2 ON t1.mitarbeiter_id = t2.mitarbeiter_id GROUP BY t2.mitarbeiter_id ORDER BY count(*) LIMIT 5	customer_complaints
SELECT bundesland FROM kunden GROUP BY bundesland ORDER BY count(*) LIMIT 1	customer_complaints
SELECT bundesland FROM kunden GROUP BY bundesland ORDER BY count(*) LIMIT 1	customer_complaints
SELECT count(*) FROM anmeldung	workshop_paper
SELECT count(*) FROM anmeldung	workshop_paper
SELECT autor FROM anmeldung ORDER BY bewertungen ASC	workshop_paper
SELECT autor FROM anmeldung ORDER BY bewertungen ASC	workshop_paper
SELECT autor , hochschule FROM anmeldung	workshop_paper
SELECT autor , hochschule FROM anmeldung	workshop_paper
SELECT autor FROM anmeldung WHERE hochschule = "Florida" OR hochschule = "Temple"	workshop_paper
SELECT autor FROM anmeldung WHERE hochschule = "Florida" OR hochschule = "Temple"	workshop_paper
SELECT avg(bewertungen) FROM anmeldung	workshop_paper
SELECT avg(bewertungen) FROM anmeldung	workshop_paper
SELECT autor FROM anmeldung ORDER BY bewertungen DESC LIMIT 1	workshop_paper
SELECT autor FROM anmeldung ORDER BY bewertungen DESC LIMIT 1	workshop_paper
SELECT hochschule , COUNT(*) FROM anmeldung GROUP BY hochschule	workshop_paper
SELECT hochschule , COUNT(*) FROM anmeldung GROUP BY hochschule	workshop_paper
SELECT hochschule FROM anmeldung GROUP BY hochschule ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT hochschule FROM anmeldung GROUP BY hochschule ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT hochschule FROM anmeldung WHERE bewertungen > 90 INTERSECT SELECT hochschule FROM anmeldung WHERE bewertungen < 80	workshop_paper
SELECT hochschule FROM anmeldung WHERE bewertungen > 90 INTERSECT SELECT hochschule FROM anmeldung WHERE bewertungen < 80	workshop_paper
SELECT T2.autor , T1.ergebnis FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id	workshop_paper
SELECT T2.autor , T1.ergebnis FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id	workshop_paper
SELECT T1.ergebnis FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id ORDER BY T2.bewertungen DESC LIMIT 1	workshop_paper
SELECT T1.ergebnis FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id ORDER BY T2.bewertungen DESC LIMIT 1	workshop_paper
SELECT T2.autor , COUNT(DISTINCT T1.werkstatt_id) FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id GROUP BY T2.autor	workshop_paper
SELECT T2.autor , COUNT(DISTINCT T1.werkstatt_id) FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id GROUP BY T2.autor	workshop_paper
SELECT T2.autor FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id GROUP BY T2.autor HAVING COUNT(DISTINCT T1.werkstatt_id) > 1	workshop_paper
SELECT T2.autor FROM annahme AS T1 JOIN anmeldung AS T2 ON T1.einreichung_id = T2.einreichung_id GROUP BY T2.autor HAVING COUNT(DISTINCT T1.werkstatt_id) > 1	workshop_paper
SELECT datum , veranstaltungsort FROM werkstatt ORDER BY veranstaltungsort	workshop_paper
SELECT datum , veranstaltungsort FROM werkstatt ORDER BY veranstaltungsort	workshop_paper
SELECT autor FROM anmeldung WHERE einreichung_id NOT IN (SELECT einreichung_id FROM annahme)	workshop_paper
SELECT autor FROM anmeldung WHERE einreichung_id NOT IN (SELECT einreichung_id FROM annahme)	workshop_paper
SELECT count(*) FROM anleger	tracking_share_transactions
SELECT anlegerdaten FROM anleger	tracking_share_transactions
SELECT DISTINCT lot_details FROM lots	tracking_share_transactions
SELECT max(betrag_der_transaktion) FROM transaktionen	tracking_share_transactions
SELECT datum_der_transaktion , anzahl_der_aktien FROM transaktionen	tracking_share_transactions
SELECT sum(anzahl_der_aktien) FROM transaktionen	tracking_share_transactions
SELECT transaktions_id FROM transaktionen WHERE transaktionsart_code = 'PUR'	tracking_share_transactions
SELECT datum_der_transaktion FROM transaktionen WHERE transaktionsart_code = "SALE"	tracking_share_transactions
SELECT avg(betrag_der_transaktion) FROM transaktionen WHERE transaktionsart_code = "SALE"	tracking_share_transactions
SELECT beschreibung_der_transaktionsart FROM referenztransaktionsarten WHERE transaktionsart_code = "PUR"	tracking_share_transactions
SELECT min(betrag_der_transaktion) FROM transaktionen WHERE transaktionsart_code = "PUR" AND anzahl_der_aktien > 50	tracking_share_transactions
SELECT max(anzahl_der_aktien) FROM transaktionen WHERE betrag_der_transaktion < 10000	tracking_share_transactions
SELECT datum_der_transaktion FROM transaktionen WHERE anzahl_der_aktien > 100 OR betrag_der_transaktion > 1000	tracking_share_transactions
SELECT T1.beschreibung_der_transaktionsart , T2.datum_der_transaktion FROM referenztransaktionsarten AS T1 JOIN transaktionen AS T2 ON T1.transaktionsart_code = T2.transaktionsart_code WHERE T2.anzahl_der_aktien < 10	tracking_share_transactions
SELECT T1.anlegerdaten FROM anleger AS T1 JOIN transaktionen AS T2 ON T1.investor_id = T2.investor_id WHERE T2.anzahl_der_aktien > 100	tracking_share_transactions
SELECT COUNT(DISTINCT transaktionsart_code) FROM transaktionen	tracking_share_transactions
SELECT lot_details , investor_id FROM lots	tracking_share_transactions
SELECT T2.lot_details FROM anleger AS T1 JOIN lots AS T2 ON T1.investor_id = T2.investor_id WHERE T1.anlegerdaten = "l"	tracking_share_transactions
SELECT T1.einkaufsdetails FROM einkäufe AS T1 JOIN transaktionen AS T2 ON T1.einkauf_transaktions_id = T2.transaktions_id WHERE T2.betrag_der_transaktion > 10000	tracking_share_transactions
SELECT T1.verkaufsdaten , T2.datum_der_transaktion FROM verkäufe AS T1 JOIN transaktionen AS T2 ON T1.verkaufstransaktion_id = T2.transaktions_id WHERE T2.betrag_der_transaktion < 3000	tracking_share_transactions
SELECT T1.lot_details FROM lots AS T1 JOIN transaktionen_lose AS T2 ON T1.lot_id = T2.transaktions_id JOIN transaktionen AS T3 ON T2.transaktions_id = T3.transaktions_id WHERE T3.anzahl_der_aktien < 50	tracking_share_transactions
SELECT T1.lot_details FROM lots AS T1 JOIN transaktionen_lose AS T2 ON T1.lot_id = T2.transaktions_id JOIN transaktionen AS T3 ON T2.transaktions_id = T3.transaktions_id WHERE T3.anzahl_der_aktien > 100 AND T3.transaktionsart_code = "PUR"	tracking_share_transactions
SELECT transaktionsart_code , avg(betrag_der_transaktion) FROM transaktionen GROUP BY transaktionsart_code	tracking_share_transactions
SELECT transaktionsart_code , max(anzahl_der_aktien) , min(anzahl_der_aktien) FROM transaktionen GROUP BY transaktionsart_code	tracking_share_transactions
SELECT investor_id , avg(anzahl_der_aktien) FROM transaktionen GROUP BY investor_id	tracking_share_transactions
SELECT investor_id , avg(anzahl_der_aktien) FROM transaktionen GROUP BY investor_id ORDER BY avg(anzahl_der_aktien)	tracking_share_transactions
SELECT investor_id , avg(betrag_der_transaktion) FROM transaktionen GROUP BY investor_id	tracking_share_transactions
SELECT T2.lot_id , avg(betrag_der_transaktion) FROM transaktionen AS T1 JOIN transaktionen_lose AS T2 ON T1.transaktions_id = T2.transaktions_id GROUP BY T2.lot_id	tracking_share_transactions
SELECT T2.lot_id , avg(betrag_der_transaktion) FROM transaktionen AS T1 JOIN transaktionen_lose AS T2 ON T1.transaktions_id = T2.transaktions_id GROUP BY T2.lot_id ORDER BY avg(betrag_der_transaktion)	tracking_share_transactions
SELECT investor_id , COUNT(*) FROM transaktionen WHERE transaktionsart_code = "SALE" GROUP BY investor_id	tracking_share_transactions
SELECT investor_id , COUNT(*) FROM transaktionen GROUP BY investor_id	tracking_share_transactions
SELECT transaktionsart_code FROM transaktionen GROUP BY transaktionsart_code ORDER BY COUNT(*) ASC LIMIT 1	tracking_share_transactions
SELECT transaktionsart_code FROM transaktionen GROUP BY transaktionsart_code ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T1.beschreibung_der_transaktionsart FROM referenztransaktionsarten AS T1 JOIN transaktionen AS T2 ON T1.transaktionsart_code = T2.transaktionsart_code GROUP BY T1.transaktionsart_code ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T2.investor_id , T1.anlegerdaten FROM anleger AS T1 JOIN transaktionen AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT T2.investor_id , T1.anlegerdaten FROM anleger AS T1 JOIN transaktionen AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 3	tracking_share_transactions
SELECT T2.investor_id FROM anleger AS T1 JOIN transaktionen AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id HAVING COUNT(*) >= 2	tracking_share_transactions
SELECT T2.investor_id , T1.anlegerdaten FROM anleger AS T1 JOIN transaktionen AS T2 ON T1.investor_id = T2.investor_id WHERE T2.transaktionsart_code = "SALE" GROUP BY T2.investor_id HAVING COUNT(*) >= 2	tracking_share_transactions
SELECT datum_der_transaktion FROM transaktionen WHERE anzahl_der_aktien >= 100 OR betrag_der_transaktion >= 100	tracking_share_transactions
SELECT verkaufsdaten FROM verkäufe UNION SELECT einkaufsdetails FROM einkäufe	tracking_share_transactions
SELECT lot_details FROM lots EXCEPT SELECT T1.lot_details FROM lots AS T1 JOIN transaktionen_lose AS T2 ON T1.lot_id = T2.lot_id	tracking_share_transactions
SELECT count(*) FROM hotels	cre_theme_park
SELECT count(*) FROM hotels	cre_theme_park
SELECT preisspanne FROM hotels	cre_theme_park
SELECT preisspanne FROM hotels	cre_theme_park
SELECT DISTINCT ortsname FROM orte	cre_theme_park
SELECT DISTINCT ortsname FROM orte	cre_theme_park
SELECT name , andere_angaben FROM personal	cre_theme_park
SELECT name , andere_angaben FROM personal	cre_theme_park
SELECT touristendaten FROM besucher	cre_theme_park
SELECT touristendaten FROM besucher	cre_theme_park
SELECT preisspanne FROM hotels WHERE sternebewertungscode = "5"	cre_theme_park
SELECT preisspanne FROM hotels WHERE sternebewertungscode = "5"	cre_theme_park
SELECT avg(preisspanne) FROM hotels WHERE sternebewertungscode = "5" AND haustiere_erlaubt_yn = 1	cre_theme_park
SELECT avg(preisspanne) FROM hotels WHERE sternebewertungscode = "5" AND haustiere_erlaubt_yn = 1	cre_theme_park
SELECT adresse FROM orte WHERE ortsname = "UK Gallery"	cre_theme_park
SELECT adresse FROM orte WHERE ortsname = "UK Gallery"	cre_theme_park
SELECT andere_angaben FROM orte WHERE ortsname = "UK Gallery"	cre_theme_park
SELECT andere_angaben FROM orte WHERE ortsname = "UK Gallery"	cre_theme_park
SELECT ortsname FROM orte WHERE ortsname LIKE "%film%"	cre_theme_park
SELECT ortsname FROM orte WHERE ortsname LIKE "%film%"	cre_theme_park
SELECT count(DISTINCT name) FROM fotos	cre_theme_park
SELECT count(DISTINCT name) FROM fotos	cre_theme_park
SELECT DISTINCT besuch_datum FROM besuche	cre_theme_park
SELECT DISTINCT besuch_datum FROM besuche	cre_theme_park
SELECT name FROM touristische_attraktionen WHERE anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT name FROM touristische_attraktionen WHERE anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT name , öffnungszeiten FROM touristische_attraktionen WHERE anfahrtsbeschreibung = "bus" OR anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT name , öffnungszeiten FROM touristische_attraktionen WHERE anfahrtsbeschreibung = "bus" OR anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT T2.sternebewertungsbeschreibung FROM hotels AS T1 JOIN ref_hotel_sternebewertungen AS T2 ON T1.sternebewertungscode = T2.sternebewertungscode WHERE T1.preisspanne > 10000	cre_theme_park
SELECT T2.sternebewertungsbeschreibung FROM hotels AS T1 JOIN ref_hotel_sternebewertungen AS T2 ON T1.sternebewertungscode = T2.sternebewertungscode WHERE T1.preisspanne > 10000	cre_theme_park
SELECT T1.museum_details , T2.öffnungszeiten FROM museen AS T1 JOIN touristische_attraktionen AS T2 ON T1.museum_id = T2.touristenattraktion_id	cre_theme_park
SELECT T1.museum_details , T2.öffnungszeiten FROM museen AS T1 JOIN touristische_attraktionen AS T2 ON T1.museum_id = T2.touristenattraktion_id	cre_theme_park
SELECT T2.name FROM fotos AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T1.name = "game1"	cre_theme_park
SELECT T2.name FROM fotos AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T1.name = "game1"	cre_theme_park
SELECT T1.name , T1.beschreibung FROM fotos AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T2.name = "film festival"	cre_theme_park
SELECT T1.name , T1.beschreibung FROM fotos AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T2.name = "film festival"	cre_theme_park
SELECT T1.königliche_familie_details , T2.anfahrtsbeschreibung FROM königliche_familie AS T1 JOIN touristische_attraktionen AS T2 ON T1.königliche_familie_id = T2.touristenattraktion_id	cre_theme_park
SELECT T1.königliche_familie_details , T2.anfahrtsbeschreibung FROM königliche_familie AS T1 JOIN touristische_attraktionen AS T2 ON T1.königliche_familie_id = T2.touristenattraktion_id	cre_theme_park
SELECT T1.shop_details FROM geschäfte AS T1 JOIN touristische_attraktionen AS T2 ON T1.shop_id = T2.touristenattraktion_id WHERE T2.anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT T1.shop_details FROM geschäfte AS T1 JOIN touristische_attraktionen AS T2 ON T1.shop_id = T2.touristenattraktion_id WHERE T2.anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT T1.name FROM personal AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T2.name = "US museum"	cre_theme_park
SELECT T1.name FROM personal AS T1 JOIN touristische_attraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id WHERE T2.name = "US museum"	cre_theme_park
SELECT T1.markt_details FROM straßenmärkte AS T1 JOIN touristische_attraktionen AS T2 ON T1.markt_id = T2.touristenattraktion_id WHERE T2.anfahrtsbeschreibung = "walk" OR T2.anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT T1.markt_details FROM straßenmärkte AS T1 JOIN touristische_attraktionen AS T2 ON T1.markt_id = T2.touristenattraktion_id WHERE T2.anfahrtsbeschreibung = "walk" OR T2.anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT T2.besuch_datum , T2.besuch_details FROM besucher AS T1 JOIN besuche AS T2 ON T1.tourist_id = T2.tourist_id WHERE T1.touristendaten = "Vincent"	cre_theme_park
SELECT T2.besuch_datum , T2.besuch_details FROM besucher AS T1 JOIN besuche AS T2 ON T1.tourist_id = T2.tourist_id WHERE T1.touristendaten = "Vincent"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN besucher AS T3 ON T2.tourist_id = T3.tourist_id WHERE T3.touristendaten = "Vincent"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN besucher AS T3 ON T2.tourist_id = T3.tourist_id WHERE T3.touristendaten = "Vincent"	cre_theme_park
SELECT T1.name , T3.besuch_datum FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Vincent" OR T2.touristendaten = "Vivian"	cre_theme_park
SELECT T1.name , T3.besuch_datum FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Vincent" OR T2.touristendaten = "Vivian"	cre_theme_park
SELECT sternebewertungscode , avg(preisspanne) FROM hotels GROUP BY sternebewertungscode	cre_theme_park
SELECT sternebewertungscode , avg(preisspanne) FROM hotels GROUP BY sternebewertungscode	cre_theme_park
SELECT haustiere_erlaubt_yn , avg(preisspanne) FROM hotels GROUP BY haustiere_erlaubt_yn	cre_theme_park
SELECT haustiere_erlaubt_yn , avg(preisspanne) FROM hotels GROUP BY haustiere_erlaubt_yn	cre_theme_park
SELECT hotel_id , sternebewertungscode FROM hotels ORDER BY preisspanne ASC	cre_theme_park
SELECT hotel_id , sternebewertungscode FROM hotels ORDER BY preisspanne ASC	cre_theme_park
SELECT andere_hoteldetails FROM hotels ORDER BY preisspanne DESC LIMIT 3	cre_theme_park
SELECT andere_hoteldetails FROM hotels ORDER BY preisspanne DESC LIMIT 3	cre_theme_park
SELECT andere_hoteldetails , sternebewertungscode FROM hotels ORDER BY preisspanne ASC LIMIT 3	cre_theme_park
SELECT andere_hoteldetails , sternebewertungscode FROM hotels ORDER BY preisspanne ASC LIMIT 3	cre_theme_park
SELECT anfahrtsbeschreibung FROM touristische_attraktionen GROUP BY anfahrtsbeschreibung ORDER BY COUNT(*) DESC LIMIT 1	cre_theme_park
SELECT anfahrtsbeschreibung FROM touristische_attraktionen GROUP BY anfahrtsbeschreibung ORDER BY COUNT(*) DESC LIMIT 1	cre_theme_park
SELECT T1.attraction_type_description , T2.attraction_type_code FROM ref_attraction_types AS T1 JOIN touristische_attraktionen AS T2 ON T1.attraction_type_code = T2.attraction_type_code GROUP BY T2.attraction_type_code ORDER BY COUNT(*) DESC LIMIT 1	cre_theme_park
SELECT T1.attraction_type_description , T2.attraction_type_code FROM ref_attraction_types AS T1 JOIN touristische_attraktionen AS T2 ON T1.attraction_type_code = T2.attraction_type_code GROUP BY T2.attraction_type_code ORDER BY COUNT(*) DESC LIMIT 1	cre_theme_park
SELECT anfahrtsbeschreibung , COUNT(*) FROM touristische_attraktionen GROUP BY anfahrtsbeschreibung	cre_theme_park
SELECT anfahrtsbeschreibung , COUNT(*) FROM touristische_attraktionen GROUP BY anfahrtsbeschreibung	cre_theme_park
SELECT T1.name , T2.touristenattraktion_id , COUNT(*) FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id	cre_theme_park
SELECT T1.name , T2.touristenattraktion_id , COUNT(*) FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id	cre_theme_park
SELECT T1.name , T2.touristenattraktion_id FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id HAVING count(*) >= 2	cre_theme_park
SELECT T1.name , T2.touristenattraktion_id FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id HAVING count(*) >= 2	cre_theme_park
SELECT T1.name , T1.touristenattraktion_id FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id HAVING count(*) <= 1	cre_theme_park
SELECT T1.name , T1.touristenattraktion_id FROM touristische_attraktionen AS T1 JOIN besuche AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id GROUP BY T2.touristenattraktion_id HAVING count(*) <= 1	cre_theme_park
SELECT T2.name FROM orte AS T1 JOIN touristische_attraktionen AS T2 ON T1.ort_id = T2.ort_id WHERE T1.adresse = "660 Shea Crescent" OR T2.anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT T2.name FROM orte AS T1 JOIN touristische_attraktionen AS T2 ON T1.ort_id = T2.ort_id WHERE T1.adresse = "660 Shea Crescent" OR T2.anfahrtsbeschreibung = "walk"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN merkmale_der_touristenattraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN merkmale AS T3 ON T2.merkmal_id = T3.merkmal_id WHERE T3.merkmal_details = 'park' UNION SELECT T1.name FROM touristische_attraktionen AS T1 JOIN merkmale_der_touristenattraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN merkmale AS T3 ON T2.merkmal_id = T3.merkmal_id WHERE T3.merkmal_details = 'shopping'	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN merkmale_der_touristenattraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN merkmale AS T3 ON T2.merkmal_id = T3.merkmal_id WHERE T3.merkmal_details = 'park' UNION SELECT T1.name FROM touristische_attraktionen AS T1 JOIN merkmale_der_touristenattraktionen AS T2 ON T1.touristenattraktion_id = T2.touristenattraktion_id JOIN merkmale AS T3 ON T2.merkmal_id = T3.merkmal_id WHERE T3.merkmal_details = 'shopping'	cre_theme_park
SELECT T2.name FROM orte AS T1 JOIN touristische_attraktionen AS T2 ON T1.ort_id = T2.ort_id WHERE T1.adresse = "254 Ottilie Junction" OR T2.anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT T2.name FROM orte AS T1 JOIN touristische_attraktionen AS T2 ON T1.ort_id = T2.ort_id WHERE T1.adresse = "254 Ottilie Junction" OR T2.anfahrtsbeschreibung = "bus"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Vincent" INTERSECT SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Marcelle"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Vincent" INTERSECT SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Marcelle"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Alison" EXCEPT SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Rosalind"	cre_theme_park
SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Alison" EXCEPT SELECT T1.name FROM touristische_attraktionen AS T1 JOIN besucher AS T2 JOIN besuche AS T3 ON T1.touristenattraktion_id = T3.touristenattraktion_id AND T2.tourist_id = T3.tourist_id WHERE T2.touristendaten = "Rosalind"	cre_theme_park
SELECT count(*) FROM besucher WHERE tourist_id NOT IN ( SELECT tourist_id FROM besuche )	cre_theme_park
SELECT count(*) FROM besucher WHERE tourist_id NOT IN ( SELECT tourist_id FROM besuche )	cre_theme_park
SELECT count(*) FROM videospiele	game_1
SELECT count(*) FROM videospiele	game_1
SELECT count(DISTINCT spieletyp) FROM videospiele	game_1
SELECT count(DISTINCT spieletyp) FROM videospiele	game_1
SELECT DISTINCT spieletyp FROM videospiele	game_1
SELECT DISTINCT spieletyp FROM videospiele	game_1
SELECT spielname , spieletyp FROM videospiele ORDER BY spielname	game_1
SELECT spielname , spieletyp FROM videospiele ORDER BY spielname	game_1
SELECT spielname FROM videospiele WHERE spieletyp = "Collectible card game"	game_1
SELECT spielname FROM videospiele WHERE spieletyp = "Collectible card game"	game_1
SELECT spieletyp FROM videospiele WHERE spielname = "Call of Destiny"	game_1
SELECT spieletyp FROM videospiele WHERE spielname = "Call of Destiny"	game_1
SELECT count(*) FROM videospiele WHERE spieletyp = "Massively multiplayer online game"	game_1
SELECT count(*) FROM videospiele WHERE spieletyp = "Massively multiplayer online game"	game_1
SELECT spieletyp , count(*) FROM videospiele GROUP BY spieletyp	game_1
SELECT spieletyp , count(*) FROM videospiele GROUP BY spieletyp	game_1
SELECT spieletyp FROM videospiele GROUP BY spieletyp ORDER BY count(*) DESC LIMIT 1	game_1
SELECT spieletyp FROM videospiele GROUP BY spieletyp ORDER BY count(*) DESC LIMIT 1	game_1
SELECT spieletyp FROM videospiele GROUP BY spieletyp ORDER BY count(*) LIMIT 1	game_1
SELECT spieletyp FROM videospiele GROUP BY spieletyp ORDER BY count(*) LIMIT 1	game_1
SELECT schüler_id FROM schüler WHERE stadtcode = "CHI"	game_1
SELECT schüler_id FROM schüler WHERE stadtcode = "CHI"	game_1
SELECT schüler_id FROM schüler WHERE berater = 1121	game_1
SELECT schüler_id FROM schüler WHERE berater = 1121	game_1
SELECT vorname FROM schüler WHERE hauptfach = 600	game_1
SELECT vorname FROM schüler WHERE hauptfach = 600	game_1
SELECT hauptfach , avg(alter) , min(alter) , max(alter) FROM schüler GROUP BY hauptfach	game_1
SELECT hauptfach , avg(alter) , min(alter) , max(alter) FROM schüler GROUP BY hauptfach	game_1
SELECT berater FROM schüler GROUP BY berater HAVING count(*) >= 2	game_1
SELECT berater FROM schüler GROUP BY berater HAVING count(*) >= 2	game_1
SELECT count(DISTINCT sport_name) FROM sport_info	game_1
SELECT count(DISTINCT sport_name) FROM sport_info	game_1
SELECT count(DISTINCT schüler_id) FROM sport_info	game_1
SELECT count(DISTINCT schüler_id) FROM sport_info	game_1
SELECT schüler_id FROM sport_info WHERE mit_stipendium = 'Y'	game_1
SELECT schüler_id FROM sport_info WHERE mit_stipendium = 'Y'	game_1
SELECT T2.nachname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T1.mit_stipendium = 'Y'	game_1
SELECT T2.nachname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T1.mit_stipendium = 'Y'	game_1
SELECT sum(gespielte_spiele) FROM sport_info	game_1
SELECT sum(gespielte_spiele) FROM sport_info	game_1
SELECT sum(gespielte_spiele) FROM sport_info WHERE sport_name = "Football" AND mit_stipendium = 'Y'	game_1
SELECT sum(gespielte_spiele) FROM sport_info WHERE sport_name = "Football" AND mit_stipendium = 'Y'	game_1
SELECT sport_name , count(*) FROM sport_info GROUP BY sport_name	game_1
SELECT sport_name , count(*) FROM sport_info GROUP BY sport_name	game_1
SELECT schüler_id , count(*) , sum(gespielte_spiele) FROM sport_info GROUP BY schüler_id	game_1
SELECT schüler_id , count(*) , sum(gespielte_spiele) FROM sport_info GROUP BY schüler_id	game_1
SELECT schüler_id FROM sport_info GROUP BY schüler_id HAVING sum(stunden_pro_woche) > 10	game_1
SELECT schüler_id FROM sport_info GROUP BY schüler_id HAVING sum(stunden_pro_woche) > 10	game_1
SELECT T2.vorname , T2.nachname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	game_1
SELECT T2.vorname , T2.nachname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id GROUP BY T1.schüler_id ORDER BY count(*) DESC LIMIT 1	game_1
SELECT sport_name FROM sport_info WHERE mit_stipendium = 'Y' GROUP BY sport_name ORDER BY count(*) DESC LIMIT 1	game_1
SELECT sport_name FROM sport_info WHERE mit_stipendium = 'Y' GROUP BY sport_name ORDER BY count(*) DESC LIMIT 1	game_1
SELECT schüler_id FROM schüler EXCEPT SELECT schüler_id FROM sport_info	game_1
SELECT schüler_id FROM schüler EXCEPT SELECT schüler_id FROM sport_info	game_1
SELECT schüler_id FROM schüler WHERE hauptfach = 600 INTERSECT SELECT schüler_id FROM sport_info WHERE mit_stipendium = 'Y'	game_1
SELECT schüler_id FROM schüler WHERE hauptfach = 600 INTERSECT SELECT schüler_id FROM sport_info WHERE mit_stipendium = 'Y'	game_1
SELECT schüler_id FROM schüler WHERE geschlecht = 'F' INTERSECT SELECT schüler_id FROM sport_info WHERE sport_name = "Football"	game_1
SELECT schüler_id FROM schüler WHERE geschlecht = 'F' INTERSECT SELECT schüler_id FROM sport_info WHERE sport_name = "Football"	game_1
SELECT schüler_id FROM schüler WHERE geschlecht = 'M' EXCEPT SELECT schüler_id FROM sport_info WHERE sport_name = "Football"	game_1
SELECT schüler_id FROM schüler WHERE geschlecht = 'M' EXCEPT SELECT schüler_id FROM sport_info WHERE sport_name = "Football"	game_1
SELECT sum(stunden_pro_woche) , sum(gespielte_spiele) FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T2.vorname = "David" AND T2.nachname = "Shieber"	game_1
SELECT sum(stunden_pro_woche) , sum(gespielte_spiele) FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T2.vorname = "David" AND T2.nachname = "Shieber"	game_1
SELECT sum(stunden_pro_woche) , sum(gespielte_spiele) FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T2.alter < 20	game_1
SELECT sum(stunden_pro_woche) , sum(gespielte_spiele) FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T2.alter < 20	game_1
SELECT count(DISTINCT schüler_id) FROM spielt_spiele	game_1
SELECT count(DISTINCT schüler_id) FROM spielt_spiele	game_1
SELECT schüler_id FROM schüler EXCEPT SELECT schüler_id FROM spielt_spiele	game_1
SELECT schüler_id FROM schüler EXCEPT SELECT schüler_id FROM spielt_spiele	game_1
SELECT schüler_id FROM sport_info INTERSECT SELECT schüler_id FROM spielt_spiele	game_1
SELECT schüler_id FROM sport_info INTERSECT SELECT schüler_id FROM spielt_spiele	game_1
SELECT spiel_id , sum(gespielte_stunden) FROM spielt_spiele GROUP BY spiel_id	game_1
SELECT spiel_id , sum(gespielte_stunden) FROM spielt_spiele GROUP BY spiel_id	game_1
SELECT schüler_id , sum(gespielte_stunden) FROM spielt_spiele GROUP BY schüler_id	game_1
SELECT schüler_id , sum(gespielte_stunden) FROM spielt_spiele GROUP BY schüler_id	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id GROUP BY T1.spiel_id ORDER BY sum(gespielte_stunden) DESC LIMIT 1	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id GROUP BY T1.spiel_id ORDER BY sum(gespielte_stunden) DESC LIMIT 1	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id GROUP BY T1.spiel_id HAVING sum(gespielte_stunden) >= 1000	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id GROUP BY T1.spiel_id HAVING sum(gespielte_stunden) >= 1000	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id JOIN schüler AS T3 ON T3.schüler_id = T1.schüler_id WHERE T3.nachname = "Smith" AND T3.vorname = "Linda"	game_1
SELECT spielname FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id JOIN schüler AS T3 ON T3.schüler_id = T1.schüler_id WHERE T3.nachname = "Smith" AND T3.vorname = "Linda"	game_1
SELECT T2.nachname , T2.vorname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T1.sport_name = "Football" OR T1.sport_name = "Lacrosse"	game_1
SELECT T2.nachname , T2.vorname FROM sport_info AS T1 JOIN schüler AS T2 ON T1.schüler_id = T2.schüler_id WHERE T1.sport_name = "Football" OR T1.sport_name = "Lacrosse"	game_1
SELECT vorname , alter FROM schüler WHERE schüler_id IN (SELECT schüler_id FROM sport_info WHERE sport_name = "Football" INTERSECT SELECT schüler_id FROM sport_info WHERE sport_name = "Lacrosse")	game_1
SELECT vorname , alter FROM schüler WHERE schüler_id IN (SELECT schüler_id FROM sport_info WHERE sport_name = "Football" INTERSECT SELECT schüler_id FROM sport_info WHERE sport_name = "Lacrosse")	game_1
SELECT nachname , geschlecht FROM schüler WHERE schüler_id IN (SELECT T1.schüler_id FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id WHERE T2.spielname = "Call of Destiny" INTERSECT SELECT T1.schüler_id FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id WHERE T2.spielname = "Works of Widenius")	game_1
SELECT nachname , geschlecht FROM schüler WHERE schüler_id IN (SELECT T1.schüler_id FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id WHERE T2.spielname = "Call of Destiny" INTERSECT SELECT T1.schüler_id FROM spielt_spiele AS T1 JOIN videospiele AS T2 ON T1.spiel_id = T2.spiel_id WHERE T2.spielname = "Works of Widenius")	game_1
SELECT kundenname FROM kunden	customers_and_addresses
SELECT kundenname FROM kunden	customers_and_addresses
SELECT count(*) FROM kunden	customers_and_addresses
SELECT count(*) FROM kunden	customers_and_addresses
SELECT avg(bestellmenge) FROM auftragspositionen	customers_and_addresses
SELECT avg(bestellmenge) FROM auftragspositionen	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode = "Cash"	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode = "Cash"	customers_and_addresses
SELECT datum_an_dem_der_kunde_kunde_wurde FROM kunden WHERE kunden_id BETWEEN 10 AND 20	customers_and_addresses
SELECT datum_an_dem_der_kunde_kunde_wurde FROM kunden WHERE kunden_id BETWEEN 10 AND 20	customers_and_addresses
SELECT zahlungsmethode FROM kunden GROUP BY zahlungsmethode ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT zahlungsmethode FROM kunden GROUP BY zahlungsmethode ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode = (SELECT zahlungsmethode FROM kunden GROUP BY zahlungsmethode ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode = (SELECT zahlungsmethode FROM kunden GROUP BY zahlungsmethode ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
SELECT DISTINCT zahlungsmethode FROM kunden	customers_and_addresses
SELECT DISTINCT zahlungsmethode FROM kunden	customers_and_addresses
SELECT DISTINCT produkt_details FROM produkte	customers_and_addresses
SELECT DISTINCT produkt_details FROM produkte	customers_and_addresses
SELECT kundenname FROM kunden WHERE kundenname LIKE "%Alex%"	customers_and_addresses
SELECT kundenname FROM kunden WHERE kundenname LIKE "%Alex%"	customers_and_addresses
SELECT produkt_details FROM produkte WHERE produkt_details LIKE "%Latte%" OR produkt_details LIKE "%Americano%"	customers_and_addresses
SELECT produkt_details FROM produkte WHERE produkt_details LIKE "%Latte%" OR produkt_details LIKE "%Americano%"	customers_and_addresses
SELECT t3.adresse_inhalt FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t1.kundenname = "Maudie Kertzmann"	customers_and_addresses
SELECT t3.adresse_inhalt FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t1.kundenname = "Maudie Kertzmann"	customers_and_addresses
SELECT count(*) FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.ort = "Lake Geovannyton"	customers_and_addresses
SELECT count(*) FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.ort = "Lake Geovannyton"	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.bundesland_provinz_landkreis = "Colorado"	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id WHERE t3.bundesland_provinz_landkreis = "Colorado"	customers_and_addresses
SELECT ort FROM adressen WHERE ort NOT IN ( SELECT DISTINCT t3.ort FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id)	customers_and_addresses
SELECT ort FROM adressen WHERE ort NOT IN ( SELECT DISTINCT t3.ort FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id)	customers_and_addresses
SELECT t3.ort FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id GROUP BY t3.ort ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT t3.ort FROM kunden AS t1 JOIN kundenadressen AS t2 ON t1.kunden_id = t2.kunden_id JOIN adressen AS t3 ON t2.adresse_id = t3.adresse_id GROUP BY t3.ort ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT DISTINCT ort FROM adressen	customers_and_addresses
SELECT DISTINCT ort FROM adressen	customers_and_addresses
SELECT ort FROM adressen WHERE postleitzahl = 255	customers_and_addresses
SELECT ort FROM adressen WHERE postleitzahl = 255	customers_and_addresses
SELECT bundesland_provinz_landkreis , land FROM adressen WHERE postleitzahl LIKE "4%"	customers_and_addresses
SELECT bundesland_provinz_landkreis , land FROM adressen WHERE postleitzahl LIKE "4%"	customers_and_addresses
SELECT land FROM adressen GROUP BY land HAVING count(adresse_id) > 4	customers_and_addresses
SELECT land FROM adressen GROUP BY land HAVING count(adresse_id) > 4	customers_and_addresses
SELECT kanal_code FROM kundenkontaktkanäle GROUP BY kanal_code HAVING count(kunden_id) < 5	customers_and_addresses
SELECT kanal_code FROM kundenkontaktkanäle GROUP BY kanal_code HAVING count(kunden_id) < 5	customers_and_addresses
SELECT DISTINCT kanal_code FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Tillman Ernser"	customers_and_addresses
SELECT DISTINCT kanal_code FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Tillman Ernser"	customers_and_addresses
SELECT max(t2.aktiv_bis_datum) FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Tillman Ernser"	customers_and_addresses
SELECT max(t2.aktiv_bis_datum) FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t1.kundenname = "Tillman Ernser"	customers_and_addresses
SELECT avg(aktiv_bis_datum - aktiv_von_datum) FROM kundenkontaktkanäle	customers_and_addresses
SELECT avg(aktiv_bis_datum - aktiv_von_datum) FROM kundenkontaktkanäle	customers_and_addresses
SELECT kanal_code , kontaktnummer FROM kundenkontaktkanäle WHERE aktiv_bis_datum - aktiv_von_datum = (SELECT aktiv_bis_datum - aktiv_von_datum FROM kundenkontaktkanäle ORDER BY (aktiv_bis_datum - aktiv_von_datum) DESC LIMIT 1)	customers_and_addresses
SELECT kanal_code , kontaktnummer FROM kundenkontaktkanäle WHERE aktiv_bis_datum - aktiv_von_datum = (SELECT aktiv_bis_datum - aktiv_von_datum FROM kundenkontaktkanäle ORDER BY (aktiv_bis_datum - aktiv_von_datum) DESC LIMIT 1)	customers_and_addresses
SELECT t1.kundenname , t2.aktiv_von_datum FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t2.kanal_code = 'Email'	customers_and_addresses
SELECT t1.kundenname , t2.aktiv_von_datum FROM kunden AS t1 JOIN kundenkontaktkanäle AS t2 ON t1.kunden_id = t2.kunden_id WHERE t2.kanal_code = 'Email'	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t3.bestellmenge = ( SELECT max(bestellmenge) FROM auftragspositionen)	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t3.bestellmenge = ( SELECT max(bestellmenge) FROM auftragspositionen)	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id GROUP BY t1.kundenname ORDER BY sum(t3.bestellmenge) DESC LIMIT 1	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id GROUP BY t1.kundenname ORDER BY sum(t3.bestellmenge) DESC LIMIT 1	customers_and_addresses
SELECT t1.zahlungsmethode FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id GROUP BY t1.kundenname ORDER BY sum(t3.bestellmenge) LIMIT 1	customers_and_addresses
SELECT t1.zahlungsmethode FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id GROUP BY t1.kundenname ORDER BY sum(t3.bestellmenge) LIMIT 1	customers_and_addresses
SELECT count(DISTINCT t3.produkt_id) FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t1.kundenname = "Rodrick Heaney"	customers_and_addresses
SELECT count(DISTINCT t3.produkt_id) FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t1.kundenname = "Rodrick Heaney"	customers_and_addresses
SELECT sum(t3.bestellmenge) FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t1.kundenname = "Rodrick Heaney"	customers_and_addresses
SELECT sum(t3.bestellmenge) FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id WHERE t1.kundenname = "Rodrick Heaney"	customers_and_addresses
SELECT count(DISTINCT kunden_id) FROM kundenaufträge WHERE auftragsstatus = "Cancelled"	customers_and_addresses
SELECT count(DISTINCT kunden_id) FROM kundenaufträge WHERE auftragsstatus = "Cancelled"	customers_and_addresses
SELECT count(*) FROM kundenaufträge WHERE bestellungsdetails = "Second time"	customers_and_addresses
SELECT count(*) FROM kundenaufträge WHERE bestellungsdetails = "Second time"	customers_and_addresses
SELECT t1.kundenname , t2.bestelldatum FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id WHERE auftragsstatus = "Delivered"	customers_and_addresses
SELECT t1.kundenname , t2.bestelldatum FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id WHERE auftragsstatus = "Delivered"	customers_and_addresses
SELECT sum(t2.bestellmenge) FROM kundenaufträge AS t1 JOIN auftragspositionen AS t2 ON t1.bestellung_id = t2.bestellung_id WHERE t1.auftragsstatus = "Cancelled"	customers_and_addresses
SELECT sum(t2.bestellmenge) FROM kundenaufträge AS t1 JOIN auftragspositionen AS t2 ON t1.bestellung_id = t2.bestellung_id WHERE t1.auftragsstatus = "Cancelled"	customers_and_addresses
SELECT sum(t2.bestellmenge) FROM kundenaufträge AS t1 JOIN auftragspositionen AS t2 ON t1.bestellung_id = t2.bestellung_id WHERE t1.bestelldatum < "2018-03-17 07:13:53"	customers_and_addresses
SELECT sum(t2.bestellmenge) FROM kundenaufträge AS t1 JOIN auftragspositionen AS t2 ON t1.bestellung_id = t2.bestellung_id WHERE t1.bestelldatum < "2018-03-17 07:13:53"	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id ORDER BY t2.bestelldatum DESC LIMIT 1	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id ORDER BY t2.bestelldatum DESC LIMIT 1	customers_and_addresses
SELECT t2.produkt_details FROM auftragspositionen AS t1 JOIN produkte AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produkt_id ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT t2.produkt_details FROM auftragspositionen AS t1 JOIN produkte AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produkt_id ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT t2.produkt_details , t2.produkt_id FROM auftragspositionen AS t1 JOIN produkte AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produkt_id ORDER BY sum(t1.bestellmenge) LIMIT 1	customers_and_addresses
SELECT t2.produkt_details , t2.produkt_id FROM auftragspositionen AS t1 JOIN produkte AS t2 ON t1.produkt_id = t2.produkt_id GROUP BY t1.produkt_id ORDER BY sum(t1.bestellmenge) LIMIT 1	customers_and_addresses
SELECT adresse_inhalt FROM adressen WHERE ort = "East Julianaside" AND bundesland_provinz_landkreis = "Texas" UNION SELECT adresse_inhalt FROM adressen WHERE ort = "Gleasonmouth" AND bundesland_provinz_landkreis = "Arizona"	customers_and_addresses
SELECT adresse_inhalt FROM adressen WHERE ort = "East Julianaside" AND bundesland_provinz_landkreis = "Texas" UNION SELECT adresse_inhalt FROM adressen WHERE ort = "Gleasonmouth" AND bundesland_provinz_landkreis = "Arizona"	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode != 'Cash'	customers_and_addresses
SELECT kundenname FROM kunden WHERE zahlungsmethode != 'Cash'	customers_and_addresses
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Latte'	customers_and_addresses
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Latte'	customers_and_addresses
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id	customers_and_addresses
SELECT kundenname FROM kunden EXCEPT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Latte' INTERSECT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Americano'	customers_and_addresses
SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Latte' INTERSECT SELECT t1.kundenname FROM kunden AS t1 JOIN kundenaufträge AS t2 ON t1.kunden_id = t2.kunden_id JOIN auftragspositionen AS t3 ON t2.bestellung_id = t3.bestellung_id JOIN produkte AS t4 ON t3.produkt_id = t4.produkt_id WHERE t4.produkt_details = 'Americano'	customers_and_addresses
SELECT count(*) FROM künstler	music_4
SELECT count(*) FROM künstler	music_4
SELECT alter FROM künstler	music_4
SELECT alter FROM künstler	music_4
SELECT avg(alter) FROM künstler	music_4
SELECT avg(alter) FROM künstler	music_4
SELECT berühmter_titel FROM künstler WHERE künstler = "Triumfall"	music_4
SELECT berühmter_titel FROM künstler WHERE künstler = "Triumfall"	music_4
SELECT distinct(berühmtes_veröffentlichungsdatum) FROM künstler	music_4
SELECT distinct(berühmtes_veröffentlichungsdatum) FROM künstler	music_4
SELECT datum_der_veranstaltung , ergebnis FROM musikfestival	music_4
SELECT datum_der_veranstaltung , ergebnis FROM musikfestival	music_4
SELECT kategorie FROM musikfestival WHERE ergebnis = "Awarded"	music_4
SELECT kategorie FROM musikfestival WHERE ergebnis = "Awarded"	music_4
SELECT max(wochen_an_der_spitze) , min(wochen_an_der_spitze) FROM lautstärke	music_4
SELECT max(wochen_an_der_spitze) , min(wochen_an_der_spitze) FROM lautstärke	music_4
SELECT song FROM lautstärke WHERE wochen_an_der_spitze > 1	music_4
SELECT song FROM lautstärke WHERE wochen_an_der_spitze > 1	music_4
SELECT song FROM lautstärke ORDER BY song	music_4
SELECT song FROM lautstärke ORDER BY song	music_4
SELECT COUNT(DISTINCT artist_id) FROM lautstärke	music_4
SELECT COUNT(DISTINCT artist_id) FROM lautstärke	music_4
SELECT T1.datum_der_veranstaltung FROM musikfestival AS T1 JOIN lautstärke AS T2 ON T1.lautstärke = T2.band_id WHERE T2.wochen_an_der_spitze > 2	music_4
SELECT T1.datum_der_veranstaltung FROM musikfestival AS T1 JOIN lautstärke AS T2 ON T1.lautstärke = T2.band_id WHERE T2.wochen_an_der_spitze > 2	music_4
SELECT T2.song FROM musikfestival AS T1 JOIN lautstärke AS T2 ON T1.lautstärke = T2.band_id WHERE T1.ergebnis = "Nominated"	music_4
SELECT T2.song FROM musikfestival AS T1 JOIN lautstärke AS T2 ON T1.lautstärke = T2.band_id WHERE T1.ergebnis = "Nominated"	music_4
SELECT T2.ausgabe_datum FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.künstler = "Gorgoroth"	music_4
SELECT T2.ausgabe_datum FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.künstler = "Gorgoroth"	music_4
SELECT T2.song FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter >= 32	music_4
SELECT T2.song FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter >= 32	music_4
SELECT avg(T2.wochen_an_der_spitze) FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter <= 25	music_4
SELECT avg(T2.wochen_an_der_spitze) FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter <= 25	music_4
SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze > 2	music_4
SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze > 2	music_4
SELECT berühmter_titel , alter FROM künstler ORDER BY alter DESC	music_4
SELECT berühmter_titel , alter FROM künstler ORDER BY alter DESC	music_4
SELECT berühmtes_veröffentlichungsdatum FROM künstler ORDER BY alter DESC LIMIT 1	music_4
SELECT berühmtes_veröffentlichungsdatum FROM künstler ORDER BY alter DESC LIMIT 1	music_4
SELECT kategorie , COUNT(*) FROM musikfestival GROUP BY kategorie	music_4
SELECT kategorie , COUNT(*) FROM musikfestival GROUP BY kategorie	music_4
SELECT ergebnis FROM musikfestival GROUP BY ergebnis ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT ergebnis FROM musikfestival GROUP BY ergebnis ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT kategorie FROM musikfestival GROUP BY kategorie HAVING COUNT(*) > 1	music_4
SELECT kategorie FROM musikfestival GROUP BY kategorie HAVING COUNT(*) > 1	music_4
SELECT song FROM lautstärke ORDER BY wochen_an_der_spitze DESC LIMIT 1	music_4
SELECT song FROM lautstärke ORDER BY wochen_an_der_spitze DESC LIMIT 1	music_4
SELECT berühmter_titel FROM künstler WHERE artist_id NOT IN(SELECT artist_id FROM lautstärke)	music_4
SELECT berühmter_titel FROM künstler WHERE artist_id NOT IN(SELECT artist_id FROM lautstärke)	music_4
SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze > 2 INTERSECT SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze < 2	music_4
SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze > 2 INTERSECT SELECT T1.berühmter_titel FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T2.wochen_an_der_spitze < 2	music_4
SELECT datum_der_veranstaltung FROM musikfestival WHERE kategorie = "Best Song" AND ergebnis = "Awarded"	music_4
SELECT datum_der_veranstaltung FROM musikfestival WHERE kategorie = "Best Song" AND ergebnis = "Awarded"	music_4
SELECT ausgabe_datum FROM lautstärke ORDER BY wochen_an_der_spitze ASC LIMIT 1	music_4
SELECT ausgabe_datum FROM lautstärke ORDER BY wochen_an_der_spitze ASC LIMIT 1	music_4
SELECT COUNT(DISTINCT artist_id) FROM lautstärke	music_4
SELECT COUNT(DISTINCT artist_id) FROM lautstärke	music_4
SELECT ergebnis , COUNT(*) FROM musikfestival GROUP BY ergebnis ORDER BY COUNT(*) DESC	music_4
SELECT ergebnis , COUNT(*) FROM musikfestival GROUP BY ergebnis ORDER BY COUNT(*) DESC	music_4
SELECT ausgabe_datum FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter <= 23	music_4
SELECT ausgabe_datum FROM künstler AS T1 JOIN lautstärke AS T2 ON T1.artist_id = T2.artist_id WHERE T1.alter <= 23	music_4
SELECT count(*) FROM achterbahn	roller_coaster
SELECT name FROM achterbahn ORDER BY länge ASC	roller_coaster
SELECT länge , höhe FROM achterbahn	roller_coaster
SELECT name FROM land WHERE sprachen != "German"	roller_coaster
SELECT status FROM achterbahn WHERE länge > 3300 OR höhe > 100	roller_coaster
SELECT geschwindigkeit FROM achterbahn ORDER BY länge DESC LIMIT 1	roller_coaster
SELECT avg(geschwindigkeit) FROM achterbahn	roller_coaster
SELECT status , COUNT(*) FROM achterbahn GROUP BY status	roller_coaster
SELECT status FROM achterbahn GROUP BY status ORDER BY COUNT(*) DESC LIMIT 1	roller_coaster
SELECT status FROM achterbahn GROUP BY status HAVING COUNT(*) > 2	roller_coaster
SELECT park FROM achterbahn ORDER BY geschwindigkeit DESC LIMIT 1	roller_coaster
SELECT T2.name , T1.name FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id	roller_coaster
SELECT T1.name FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id GROUP BY T1.name HAVING COUNT(*) > 1	roller_coaster
SELECT T1.name , T1.bevölkerung FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id ORDER BY T2.höhe DESC LIMIT 1	roller_coaster
SELECT T1.name , avg(T2.geschwindigkeit) FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id GROUP BY T1.name	roller_coaster
SELECT count(*) FROM land WHERE land_id NOT IN ( SELECT land_id FROM achterbahn WHERE länge > 3000 )	roller_coaster
SELECT T1.name , T1.gebiet , T1.bevölkerung FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id WHERE T2.geschwindigkeit > 60 INTERSECT SELECT T1.name , T1.gebiet , T1.bevölkerung FROM land AS T1 JOIN achterbahn AS T2 ON T1.land_id = T2.land_id WHERE T2.geschwindigkeit < 55	roller_coaster
SELECT count(DISTINCT rang) FROM kapitän	ship_1
SELECT count(DISTINCT rang) FROM kapitän	ship_1
SELECT count(*) , rang FROM kapitän GROUP BY rang	ship_1
SELECT count(*) , rang FROM kapitän GROUP BY rang	ship_1
SELECT count(*) , rang FROM kapitän WHERE alter < 50 GROUP BY rang	ship_1
SELECT count(*) , rang FROM kapitän WHERE alter < 50 GROUP BY rang	ship_1
SELECT name FROM kapitän ORDER BY alter DESC	ship_1
SELECT name FROM kapitän ORDER BY alter DESC	ship_1
SELECT name , klasse , rang FROM kapitän	ship_1
SELECT name , klasse , rang FROM kapitän	ship_1
SELECT rang FROM kapitän GROUP BY rang ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT rang FROM kapitän GROUP BY rang ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT klasse FROM kapitän GROUP BY klasse HAVING count(*) > 2	ship_1
SELECT klasse FROM kapitän GROUP BY klasse HAVING count(*) > 2	ship_1
SELECT name FROM kapitän WHERE rang = 'Midshipman' OR rang = 'Lieutenant'	ship_1
SELECT name FROM kapitän WHERE rang = 'Midshipman' OR rang = 'Lieutenant'	ship_1
SELECT avg(alter) , min(alter) , klasse FROM kapitän GROUP BY klasse	ship_1
SELECT avg(alter) , min(alter) , klasse FROM kapitän GROUP BY klasse	ship_1
SELECT rang FROM kapitän WHERE klasse = 'Cutter' INTERSECT SELECT rang FROM kapitän WHERE klasse = 'Armed schooner'	ship_1
SELECT rang FROM kapitän WHERE klasse = 'Cutter' INTERSECT SELECT rang FROM kapitän WHERE klasse = 'Armed schooner'	ship_1
SELECT rang FROM kapitän EXCEPT SELECT rang FROM kapitän WHERE klasse = 'Third-rate ship of the line'	ship_1
SELECT rang FROM kapitän EXCEPT SELECT rang FROM kapitän WHERE klasse = 'Third-rate ship of the line'	ship_1
SELECT name FROM kapitän ORDER BY alter LIMIT 1	ship_1
SELECT name FROM kapitän ORDER BY alter LIMIT 1	ship_1
SELECT count(*) FROM schiff	ship_1
SELECT count(*) FROM schiff	ship_1
SELECT name , typ , flagge FROM schiff ORDER BY baujahr DESC LIMIT 1	ship_1
SELECT name , typ , flagge FROM schiff ORDER BY baujahr DESC LIMIT 1	ship_1
SELECT count(*) , flagge FROM schiff GROUP BY flagge	ship_1
SELECT count(*) , flagge FROM schiff GROUP BY flagge	ship_1
SELECT flagge FROM schiff GROUP BY flagge ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT flagge FROM schiff GROUP BY flagge ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT name FROM schiff ORDER BY baujahr , klasse	ship_1
SELECT name FROM schiff ORDER BY baujahr , klasse	ship_1
SELECT typ FROM schiff WHERE flagge = 'Panama' INTERSECT SELECT typ FROM schiff WHERE flagge = 'Malta'	ship_1
SELECT typ FROM schiff WHERE flagge = 'Panama' INTERSECT SELECT typ FROM schiff WHERE flagge = 'Malta'	ship_1
SELECT baujahr FROM schiff GROUP BY baujahr ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT baujahr FROM schiff GROUP BY baujahr ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id GROUP BY t2.schiffs_id HAVING count(*) > 1	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id GROUP BY t2.schiffs_id HAVING count(*) > 1	ship_1
SELECT name , klasse FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM kapitän)	ship_1
SELECT name , klasse FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM kapitän)	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id ORDER BY t2.alter LIMIT 1	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id ORDER BY t2.alter LIMIT 1	ship_1
SELECT name , flagge FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM kapitän WHERE rang = 'Midshipman')	ship_1
SELECT name , flagge FROM schiff WHERE schiffs_id NOT IN (SELECT schiffs_id FROM kapitän WHERE rang = 'Midshipman')	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id WHERE t2.rang = 'Midshipman' INTERSECT SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id WHERE t2.rang = 'Lieutenant'	ship_1
SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id WHERE t2.rang = 'Midshipman' INTERSECT SELECT t1.name FROM schiff AS t1 JOIN kapitän AS t2 ON t1.schiffs_id = t2.schiffs_id WHERE t2.rang = 'Lieutenant'	ship_1
SELECT gastgebende_stadt FROM gastgeberstadt ORDER BY jahr DESC LIMIT 1	city_record
SELECT gastgebende_stadt FROM gastgeberstadt ORDER BY jahr DESC LIMIT 1	city_record
SELECT match_id FROM match WHERE wettbewerb = "1994 FIFA World Cup qualification"	city_record
SELECT match_id FROM match WHERE wettbewerb = "1994 FIFA World Cup qualification"	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt WHERE T2.jahr > 2010	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt WHERE T2.jahr > 2010	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt GROUP BY T2.gastgebende_stadt ORDER BY count(*) DESC LIMIT 1	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt GROUP BY T2.gastgebende_stadt ORDER BY count(*) DESC LIMIT 1	city_record
SELECT T3.spielort FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt JOIN match AS T3 ON T2.match_id = T3.match_id WHERE T1.stadt = "Nanjing ( Jiangsu )" AND T3.wettbewerb = "1994 FIFA World Cup qualification"	city_record
SELECT T3.spielort FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt JOIN match AS T3 ON T2.match_id = T3.match_id WHERE T1.stadt = "Nanjing ( Jiangsu )" AND T3.wettbewerb = "1994 FIFA World Cup qualification"	city_record
SELECT T2.jan FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T1.stadt = "Shanghai"	city_record
SELECT T2.jan FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T1.stadt = "Shanghai"	city_record
SELECT T2.jahr FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt WHERE T1.stadt = "Taizhou ( Zhejiang )"	city_record
SELECT T2.jahr FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt WHERE T1.stadt = "Taizhou ( Zhejiang )"	city_record
SELECT stadt FROM stadt ORDER BY regionale_bevölkerung DESC LIMIT 3	city_record
SELECT stadt FROM stadt ORDER BY regionale_bevölkerung DESC LIMIT 3	city_record
SELECT stadt , bip FROM stadt ORDER BY bip LIMIT 1	city_record
SELECT stadt , bip FROM stadt ORDER BY bip LIMIT 1	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id ORDER BY T2.feb DESC LIMIT 1	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id ORDER BY T2.feb DESC LIMIT 1	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.jul OR T2.Mar > T2.Oct	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.jul OR T2.Mar > T2.Oct	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.jul INTERSECT SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.jul INTERSECT SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.dec EXCEPT SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.mar < T2.dec EXCEPT SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.feb > T2.jun UNION SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT T1.stadt FROM stadt AS T1 JOIN temperatur AS T2 ON T1.stadt_id = T2.stadt_id WHERE T2.feb > T2.jun UNION SELECT T3.stadt FROM stadt AS T3 JOIN gastgeberstadt AS T4 ON T3.stadt_id = T4.gastgebende_stadt	city_record
SELECT stadt FROM stadt WHERE regionale_bevölkerung > 10000000	city_record
SELECT stadt FROM stadt WHERE regionale_bevölkerung > 10000000	city_record
SELECT stadt FROM stadt WHERE regionale_bevölkerung > 10000000 UNION SELECT stadt FROM stadt WHERE regionale_bevölkerung < 5000000	city_record
SELECT stadt FROM stadt WHERE regionale_bevölkerung > 10000000 UNION SELECT stadt FROM stadt WHERE regionale_bevölkerung < 5000000	city_record
SELECT count(*) , wettbewerb FROM match GROUP BY wettbewerb	city_record
SELECT count(*) , wettbewerb FROM match GROUP BY wettbewerb	city_record
SELECT spielort FROM match ORDER BY datum DESC	city_record
SELECT spielort FROM match ORDER BY datum DESC	city_record
SELECT bip FROM stadt ORDER BY regionale_bevölkerung DESC LIMIT 1	city_record
SELECT bip FROM stadt ORDER BY regionale_bevölkerung DESC LIMIT 1	city_record
SELECT t1.bip , t1.regionale_bevölkerung FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt GROUP BY t2.gastgebende_stadt HAVING count(*) > 1	city_record
SELECT t1.bip , t1.regionale_bevölkerung FROM stadt AS T1 JOIN gastgeberstadt AS T2 ON T1.stadt_id = T2.gastgebende_stadt GROUP BY t2.gastgebende_stadt HAVING count(*) > 1	city_record
SELECT vorname_der_person , individueller_zweiter_vorname , individueller_nachname FROM personen ORDER BY individueller_nachname	e_government
SELECT vorname_der_person , individueller_zweiter_vorname , individueller_nachname FROM personen ORDER BY individueller_nachname	e_government
SELECT DISTINCT form_type_code FROM formulare	e_government
SELECT DISTINCT form_type_code FROM formulare	e_government
SELECT t1.form_name FROM formulare AS t1 JOIN teilnehmerformulare AS t2 ON t1.form_id = t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.form_name FROM formulare AS t1 JOIN teilnehmerformulare AS t2 ON t1.form_id = t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1	e_government
SELECT zahlungsmethode_code , party_phone FROM parteien WHERE partei_email = "enrico09@example.com"	e_government
SELECT zahlungsmethode_code , party_phone FROM parteien WHERE partei_email = "enrico09@example.com"	e_government
SELECT t1.partei_email FROM parteien AS t1 JOIN teilnehmerformulare AS t2 ON t1.party_id = t2.party_id WHERE t2.form_id = (SELECT form_id FROM teilnehmerformulare GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)	e_government
SELECT t1.partei_email FROM parteien AS t1 JOIN teilnehmerformulare AS t2 ON t1.party_id = t2.party_id WHERE t2.form_id = (SELECT form_id FROM teilnehmerformulare GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)	e_government
SELECT organisation_name FROM organisationen ORDER BY gründungsdatum ASC	e_government
SELECT organisation_name FROM organisationen ORDER BY gründungsdatum ASC	e_government
SELECT organisation_name FROM organisationen ORDER BY gründungsdatum DESC LIMIT 1	e_government
SELECT organisation_name FROM organisationen ORDER BY gründungsdatum DESC LIMIT 1	e_government
SELECT t3.individueller_nachname FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id JOIN personen AS t3 ON t2.einzelperson_id = t3.einzelperson_id WHERE t1.organisation_name = "Labour Party" ORDER BY t2.datum_kontakt_bis DESC LIMIT 1	e_government
SELECT t3.individueller_nachname FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id JOIN personen AS t3 ON t2.einzelperson_id = t3.einzelperson_id WHERE t1.organisation_name = "Labour Party" ORDER BY t2.datum_kontakt_bis DESC LIMIT 1	e_government
SELECT t3.individueller_nachname FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id JOIN personen AS t3 ON t2.einzelperson_id = t3.einzelperson_id WHERE t1.britische_umsatzsteuernummer = (SELECT max(britische_umsatzsteuernummer) FROM organisationen) ORDER BY t2.datum_kontakt_bis ASC LIMIT 1	e_government
SELECT t3.individueller_nachname FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id JOIN personen AS t3 ON t2.einzelperson_id = t3.einzelperson_id WHERE t1.britische_umsatzsteuernummer = (SELECT max(britische_umsatzsteuernummer) FROM organisationen) ORDER BY t2.datum_kontakt_bis ASC LIMIT 1	e_government
SELECT count(*) FROM dienstleistungen	e_government
SELECT count(*) FROM dienstleistungen	e_government
SELECT dienstleistungsname FROM dienstleistungen EXCEPT SELECT t1.dienstleistungsname FROM dienstleistungen AS t1 JOIN parteidienstleistungen AS t2 ON t1.service_id = t2.service_id	e_government
SELECT dienstleistungsname FROM dienstleistungen EXCEPT SELECT t1.dienstleistungsname FROM dienstleistungen AS t1 JOIN parteidienstleistungen AS t2 ON t1.service_id = t2.service_id	e_government
SELECT ort FROM adressen UNION SELECT bundesland_provinz_landkreis FROM adressen	e_government
SELECT ort FROM adressen UNION SELECT bundesland_provinz_landkreis FROM adressen	e_government
SELECT count(*) FROM adressen WHERE bundesland_provinz_landkreis = "Colorado"	e_government
SELECT count(*) FROM adressen WHERE bundesland_provinz_landkreis = "Colorado"	e_government
SELECT zahlungsmethode_code FROM parteien GROUP BY zahlungsmethode_code HAVING count(*) > 3	e_government
SELECT zahlungsmethode_code FROM parteien GROUP BY zahlungsmethode_code HAVING count(*) > 3	e_government
SELECT organisation_name FROM organisationen WHERE organisation_name LIKE "%Party%"	e_government
SELECT organisation_name FROM organisationen WHERE organisation_name LIKE "%Party%"	e_government
SELECT count(DISTINCT zahlungsmethode_code) FROM parteien	e_government
SELECT count(DISTINCT zahlungsmethode_code) FROM parteien	e_government
SELECT t1.partei_email FROM parteien AS t1 JOIN parteidienstleistungen AS t2 ON t1.party_id = t2.kunden_id GROUP BY t1.partei_email ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.partei_email FROM parteien AS t1 JOIN parteidienstleistungen AS t2 ON t1.party_id = t2.kunden_id GROUP BY t1.partei_email ORDER BY count(*) DESC LIMIT 1	e_government
SELECT bundesland_provinz_landkreis FROM adressen WHERE zeile_1_nummer_gebäude LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT bundesland_provinz_landkreis FROM adressen WHERE zeile_1_nummer_gebäude LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT t1.organisation_name FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id GROUP BY t1.organisation_name ORDER BY count(*) DESC LIMIT 1	e_government
SELECT t1.organisation_name FROM organisationen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.organisation_id = t2.organisation_id GROUP BY t1.organisation_name ORDER BY count(*) DESC LIMIT 1	e_government
SELECT DISTINCT t1.individueller_nachname FROM personen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.einzelperson_id = t2.einzelperson_id	e_government
SELECT DISTINCT t1.individueller_nachname FROM personen AS t1 JOIN organisation_kontaktpersonen AS t2 ON t1.einzelperson_id = t2.einzelperson_id	e_government
SELECT count(*) FROM treiber	school_bus
SELECT name , heimatstadt , alter FROM treiber	school_bus
SELECT partei , count(*) FROM treiber GROUP BY partei	school_bus
SELECT name FROM treiber ORDER BY alter DESC	school_bus
SELECT DISTINCT heimatstadt FROM treiber	school_bus
SELECT heimatstadt FROM treiber GROUP BY heimatstadt ORDER BY count(*) DESC LIMIT 1	school_bus
SELECT partei FROM treiber WHERE heimatstadt = 'Hartford' AND alter > 40	school_bus
SELECT heimatstadt FROM treiber WHERE alter > 40 GROUP BY heimatstadt HAVING count(*) >= 2	school_bus
SELECT heimatstadt FROM treiber EXCEPT SELECT heimatstadt FROM treiber WHERE alter > 40	school_bus
SELECT name FROM treiber WHERE fahrer_id NOT IN (SELECT fahrer_id FROM schulbus)	school_bus
SELECT typ FROM schule GROUP BY typ HAVING count(*) = 2	school_bus
SELECT T2.schule , T3.name FROM schulbus AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id JOIN treiber AS T3 ON T1.fahrer_id = T3.fahrer_id	school_bus
SELECT max(arbeitsjahre) , min(arbeitsjahre) , avg(arbeitsjahre) FROM schulbus	school_bus
SELECT schule , typ FROM schule WHERE schule_id NOT IN (SELECT schule_id FROM schulbus)	school_bus
SELECT T2.typ , count(*) FROM schulbus AS T1 JOIN schule AS T2 ON T1.schule_id = T2.schule_id GROUP BY T2.typ	school_bus
SELECT count(*) FROM treiber WHERE heimatstadt = 'Hartford' OR alter < 40	school_bus
SELECT name FROM treiber WHERE heimatstadt = 'Hartford' AND alter < 40	school_bus
SELECT t1.name FROM treiber AS t1 JOIN schulbus AS t2 ON t1.fahrer_id = t2.fahrer_id ORDER BY arbeitsjahre DESC LIMIT 1	school_bus
SELECT count(*) FROM flug WHERE geschwindigkeit > 200	flight_company
SELECT fahrzeugflugnummer , datum , pilot FROM flug ORDER BY höhe ASC	flight_company
SELECT id , land , stadt , name FROM flughafen ORDER BY name	flight_company
SELECT max(kapitalbeteiligung_der_gruppe) FROM unternehmen_betreiben	flight_company
SELECT avg(geschwindigkeit) FROM flug WHERE pilot = 'Thompson'	flight_company
SELECT T1.name , T1.typ FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id	flight_company
SELECT name FROM flughafen WHERE land != 'Iceland'	flight_company
SELECT DISTINCT T1.typ FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id WHERE T2.geschwindigkeit < 200	flight_company
SELECT T1.id , T1.name FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id GROUP BY T1.id HAVING count(*) > 1	flight_company
SELECT T1.id , T1.name , T1.iata FROM flughafen AS T1 JOIN flug AS T2 ON T1.id = T2.flughafenkennung GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT DISTINCT T2.pilot FROM flughafen AS T1 JOIN flug AS T2 ON T1.id = T2.flughafenkennung WHERE T1.land = 'United States' OR T1.name = 'Billund Airport'	flight_company
SELECT typ , count(*) FROM unternehmen_betreiben GROUP BY typ ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM flughafen WHERE id NOT IN ( SELECT flughafenkennung FROM flug WHERE pilot = 'Thompson' );	flight_company
SELECT T2.pilot FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id WHERE T1.haupttätigkeiten = 'Cargo' INTERSECT SELECT T2.pilot FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id WHERE T1.haupttätigkeiten = 'Catering services'	flight_company
SELECT name FROM flughafen WHERE name LIKE '%international%'	flight_company
SELECT T3.id , count(*) FROM unternehmen_betreiben AS T1 JOIN flug AS t2 ON T1.id = T2.firma_id JOIN flughafen AS T3 ON T2.flughafenkennung = T3.id GROUP BY T3.id	flight_company
SELECT count(*) , land FROM flughafen GROUP BY land	flight_company
SELECT land FROM flughafen GROUP BY land HAVING count(*) > 2	flight_company
SELECT pilot FROM flug GROUP BY pilot ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM konten	cre_docs_and_epenses
SELECT count(*) FROM konten	cre_docs_and_epenses
SELECT konto_id , kontodaten FROM konten	cre_docs_and_epenses
SELECT konto_id , kontodaten FROM konten	cre_docs_and_epenses
SELECT count(*) FROM statements	cre_docs_and_epenses
SELECT count(*) FROM statements	cre_docs_and_epenses
SELECT anweisung_id , anweisungsdetails FROM statements	cre_docs_and_epenses
SELECT anweisung_id , anweisungsdetails FROM statements	cre_docs_and_epenses
SELECT T1.anweisung_id , T2.anweisungsdetails , T1.kontodaten FROM konten AS T1 JOIN statements AS T2 ON T1.anweisung_id = T2.anweisung_id	cre_docs_and_epenses
SELECT T1.anweisung_id , T2.anweisungsdetails , T1.kontodaten FROM konten AS T1 JOIN statements AS T2 ON T1.anweisung_id = T2.anweisung_id	cre_docs_and_epenses
SELECT anweisung_id , count(*) FROM konten GROUP BY anweisung_id	cre_docs_and_epenses
SELECT anweisung_id , count(*) FROM konten GROUP BY anweisung_id	cre_docs_and_epenses
SELECT T1.anweisung_id , T2.anweisungsdetails FROM konten AS T1 JOIN statements AS T2 ON T1.anweisung_id = T2.anweisung_id GROUP BY T1.anweisung_id ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT T1.anweisung_id , T2.anweisungsdetails FROM konten AS T1 JOIN statements AS T2 ON T1.anweisung_id = T2.anweisung_id GROUP BY T1.anweisung_id ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT count(*) FROM dokumente	cre_docs_and_epenses
SELECT count(*) FROM dokumente	cre_docs_and_epenses
SELECT dokumententyp_code , dokumentname , dokumentbeschreibung FROM dokumente WHERE dokumentname = 'Noel CV' OR dokumentname = 'King Book'	cre_docs_and_epenses
SELECT dokumententyp_code , dokumentname , dokumentbeschreibung FROM dokumente WHERE dokumentname = 'Noel CV' OR dokumentname = 'King Book'	cre_docs_and_epenses
SELECT dokument_id , dokumentname FROM dokumente	cre_docs_and_epenses
SELECT dokument_id , dokumentname FROM dokumente	cre_docs_and_epenses
SELECT dokumentname , dokument_id FROM dokumente WHERE dokumententyp_code = "BK"	cre_docs_and_epenses
SELECT dokumentname , dokument_id FROM dokumente WHERE dokumententyp_code = "BK"	cre_docs_and_epenses
SELECT count(*) , projekt_id FROM dokumente WHERE dokumententyp_code = "BK" GROUP BY projekt_id	cre_docs_and_epenses
SELECT count(*) , projekt_id FROM dokumente WHERE dokumententyp_code = "BK" GROUP BY projekt_id	cre_docs_and_epenses
SELECT dokumentname , dokument_datum FROM dokumente AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.projektdetails = 'Graph Database project'	cre_docs_and_epenses
SELECT dokumentname , dokument_datum FROM dokumente AS T1 JOIN projekte AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.projektdetails = 'Graph Database project'	cre_docs_and_epenses
SELECT projekt_id , count(*) FROM dokumente GROUP BY projekt_id	cre_docs_and_epenses
SELECT projekt_id , count(*) FROM dokumente GROUP BY projekt_id	cre_docs_and_epenses
SELECT projekt_id FROM dokumente GROUP BY projekt_id ORDER BY count(*) ASC LIMIT 1	cre_docs_and_epenses
SELECT projekt_id FROM dokumente GROUP BY projekt_id ORDER BY count(*) ASC LIMIT 1	cre_docs_and_epenses
SELECT projekt_id FROM dokumente GROUP BY projekt_id HAVING count(*) >= 2	cre_docs_and_epenses
SELECT projekt_id FROM dokumente GROUP BY projekt_id HAVING count(*) >= 2	cre_docs_and_epenses
SELECT dokumententyp_code , count(*) FROM dokumente GROUP BY dokumententyp_code	cre_docs_and_epenses
SELECT dokumententyp_code , count(*) FROM dokumente GROUP BY dokumententyp_code	cre_docs_and_epenses
SELECT dokumententyp_code FROM dokumente GROUP BY dokumententyp_code ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT dokumententyp_code FROM dokumente GROUP BY dokumententyp_code ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT dokumententyp_code FROM dokumente GROUP BY dokumententyp_code HAVING count(*) < 3	cre_docs_and_epenses
SELECT dokumententyp_code FROM dokumente GROUP BY dokumententyp_code HAVING count(*) < 3	cre_docs_and_epenses
SELECT T1.anweisungsdetails , T2.dokumentname FROM statements AS T1 JOIN dokumente AS T2 ON T1.anweisung_id = T2.dokument_id WHERE T1.anweisungsdetails = 'Private Project'	cre_docs_and_epenses
SELECT T1.anweisungsdetails , T2.dokumentname FROM statements AS T1 JOIN dokumente AS T2 ON T1.anweisung_id = T2.dokument_id WHERE T1.anweisungsdetails = 'Private Project'	cre_docs_and_epenses
SELECT dokumententyp_code , dokumenttypname , beschreibung_der_dokumentart FROM referenzbelegarten	cre_docs_and_epenses
SELECT dokumententyp_code , dokumenttypname , beschreibung_der_dokumentart FROM referenzbelegarten	cre_docs_and_epenses
SELECT beschreibung_der_dokumentart FROM referenzbelegarten WHERE dokumenttypname = "Film"	cre_docs_and_epenses
SELECT beschreibung_der_dokumentart FROM referenzbelegarten WHERE dokumenttypname = "Film"	cre_docs_and_epenses
SELECT T1.dokumenttypname , T1.beschreibung_der_dokumentart , T2.dokument_datum FROM referenzbelegarten AS T1 JOIN dokumente AS T2 ON T1.dokumententyp_code = T2.dokumententyp_code	cre_docs_and_epenses
SELECT T1.dokumenttypname , T1.beschreibung_der_dokumentart , T2.dokument_datum FROM referenzbelegarten AS T1 JOIN dokumente AS T2 ON T1.dokumententyp_code = T2.dokumententyp_code	cre_docs_and_epenses
SELECT count(*) FROM projekte	cre_docs_and_epenses
SELECT count(*) FROM projekte	cre_docs_and_epenses
SELECT projekt_id , projektdetails FROM projekte	cre_docs_and_epenses
SELECT projekt_id , projektdetails FROM projekte	cre_docs_and_epenses
SELECT T1.projekt_id , T1.projektdetails FROM projekte AS T1 JOIN dokumente AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id HAVING count(*) > 2	cre_docs_and_epenses
SELECT T1.projekt_id , T1.projektdetails FROM projekte AS T1 JOIN dokumente AS T2 ON T1.projekt_id = T2.projekt_id GROUP BY T1.projekt_id HAVING count(*) > 2	cre_docs_and_epenses
SELECT T1.projektdetails FROM projekte AS T1 JOIN dokumente AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.dokumentname = "King Book"	cre_docs_and_epenses
SELECT T1.projektdetails FROM projekte AS T1 JOIN dokumente AS T2 ON T1.projekt_id = T2.projekt_id WHERE T2.dokumentname = "King Book"	cre_docs_and_epenses
SELECT count(*) FROM referenzhaushaltscodes	cre_docs_and_epenses
SELECT count(*) FROM referenzhaushaltscodes	cre_docs_and_epenses
SELECT haushaltstyp_code , beschreibung_der_haushaltsart FROM referenzhaushaltscodes	cre_docs_and_epenses
SELECT haushaltstyp_code , beschreibung_der_haushaltsart FROM referenzhaushaltscodes	cre_docs_and_epenses
SELECT beschreibung_der_haushaltsart FROM referenzhaushaltscodes WHERE haushaltstyp_code = "ORG"	cre_docs_and_epenses
SELECT beschreibung_der_haushaltsart FROM referenzhaushaltscodes WHERE haushaltstyp_code = "ORG"	cre_docs_and_epenses
SELECT count(*) FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT count(*) FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT dokument_id FROM belege_mit_ausgaben WHERE haushaltstyp_code = 'SF'	cre_docs_and_epenses
SELECT dokument_id FROM belege_mit_ausgaben WHERE haushaltstyp_code = 'SF'	cre_docs_and_epenses
SELECT T2.haushaltstyp_code , T2.beschreibung_der_haushaltsart , T1.dokument_id FROM belege_mit_ausgaben AS T1 JOIN referenzhaushaltscodes AS T2 ON T1.haushaltstyp_code = T2.haushaltstyp_code	cre_docs_and_epenses
SELECT T2.haushaltstyp_code , T2.beschreibung_der_haushaltsart , T1.dokument_id FROM belege_mit_ausgaben AS T1 JOIN referenzhaushaltscodes AS T2 ON T1.haushaltstyp_code = T2.haushaltstyp_code	cre_docs_and_epenses
SELECT T1.dokument_id FROM belege_mit_ausgaben AS T1 JOIN referenzhaushaltscodes AS T2 ON T1.haushaltstyp_code = T2.haushaltstyp_code WHERE T2.beschreibung_der_haushaltsart = "Government"	cre_docs_and_epenses
SELECT T1.dokument_id FROM belege_mit_ausgaben AS T1 JOIN referenzhaushaltscodes AS T2 ON T1.haushaltstyp_code = T2.haushaltstyp_code WHERE T2.beschreibung_der_haushaltsart = "Government"	cre_docs_and_epenses
SELECT haushaltstyp_code , count(*) FROM belege_mit_ausgaben GROUP BY haushaltstyp_code	cre_docs_and_epenses
SELECT haushaltstyp_code , count(*) FROM belege_mit_ausgaben GROUP BY haushaltstyp_code	cre_docs_and_epenses
SELECT haushaltstyp_code FROM belege_mit_ausgaben GROUP BY haushaltstyp_code ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT haushaltstyp_code FROM belege_mit_ausgaben GROUP BY haushaltstyp_code ORDER BY count(*) DESC LIMIT 1	cre_docs_and_epenses
SELECT dokument_id FROM dokumente EXCEPT SELECT dokument_id FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT dokument_id FROM dokumente EXCEPT SELECT dokument_id FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT dokument_id FROM dokumente WHERE dokumententyp_code = "CV" EXCEPT SELECT dokument_id FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT dokument_id FROM dokumente WHERE dokumententyp_code = "CV" EXCEPT SELECT dokument_id FROM belege_mit_ausgaben	cre_docs_and_epenses
SELECT T1.dokument_id FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T1.dokumentname LIKE '%s%'	cre_docs_and_epenses
SELECT T1.dokument_id FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T1.dokumentname LIKE '%s%'	cre_docs_and_epenses
SELECT count(*) FROM dokumente WHERE dokument_id NOT IN ( SELECT dokument_id FROM belege_mit_ausgaben )	cre_docs_and_epenses
SELECT count(*) FROM dokumente WHERE dokument_id NOT IN ( SELECT dokument_id FROM belege_mit_ausgaben )	cre_docs_and_epenses
SELECT T1.dokument_datum FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.haushaltstyp_code = 'GV' INTERSECT SELECT T1.dokument_datum FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.haushaltstyp_code = 'SF'	cre_docs_and_epenses
SELECT T1.dokument_datum FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.haushaltstyp_code = 'GV' INTERSECT SELECT T1.dokument_datum FROM dokumente AS T1 JOIN belege_mit_ausgaben AS T2 ON T1.dokument_id = T2.dokument_id WHERE T2.haushaltstyp_code = 'SF'	cre_docs_and_epenses
SELECT max(kontodaten) FROM konten UNION SELECT kontodaten FROM konten WHERE kontodaten LIKE "%5%"	cre_docs_and_epenses
SELECT max(kontodaten) FROM konten UNION SELECT kontodaten FROM konten WHERE kontodaten LIKE "%5%"	cre_docs_and_epenses
SELECT count(*) FROM scientists	scientist_1
SELECT count(*) FROM scientists	scientist_1
SELECT sum(stunden) FROM projekte	scientist_1
SELECT sum(stunden) FROM projekte	scientist_1
SELECT count(DISTINCT wissenschaftler) FROM zugeordnet_zu	scientist_1
SELECT count(DISTINCT wissenschaftler) FROM zugeordnet_zu	scientist_1
SELECT count(DISTINCT name) FROM projekte	scientist_1
SELECT count(DISTINCT name) FROM projekte	scientist_1
SELECT avg(stunden) FROM projekte	scientist_1
SELECT avg(stunden) FROM projekte	scientist_1
SELECT name FROM projekte ORDER BY stunden DESC LIMIT 1	scientist_1
SELECT name FROM projekte ORDER BY stunden DESC LIMIT 1	scientist_1
SELECT name FROM projekte WHERE stunden > (SELECT avg(stunden) FROM projekte)	scientist_1
SELECT name FROM projekte WHERE stunden > (SELECT avg(stunden) FROM projekte)	scientist_1
SELECT T1.name , T1.stunden FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt GROUP BY T2.projekt ORDER BY count(*) DESC LIMIT 1	scientist_1
SELECT T1.name , T1.stunden FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt GROUP BY T2.projekt ORDER BY count(*) DESC LIMIT 1	scientist_1
SELECT T2.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T3.name LIKE '%Smith%'	scientist_1
SELECT T2.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T3.name LIKE '%Smith%'	scientist_1
SELECT sum(T2.stunden) FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T3.name = 'Michael Rogers' OR T3.name = 'Carol Smith'	scientist_1
SELECT sum(T2.stunden) FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T3.name = 'Michael Rogers' OR T3.name = 'Carol Smith'	scientist_1
SELECT name FROM projekte WHERE stunden BETWEEN 100 AND 300	scientist_1
SELECT name FROM projekte WHERE stunden BETWEEN 100 AND 300	scientist_1
SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.name = 'Matter of Time' INTERSECT SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.name = 'A Puzzling Parallax'	scientist_1
SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.name = 'Matter of Time' INTERSECT SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.name = 'A Puzzling Parallax'	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT count(*) , T1.name FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt GROUP BY T1.name	scientist_1
SELECT count(*) , T1.name FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt GROUP BY T1.name	scientist_1
SELECT count(*) , T1.name FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt WHERE T1.stunden > 300 GROUP BY T1.name	scientist_1
SELECT count(*) , T1.name FROM projekte AS T1 JOIN zugeordnet_zu AS T2 ON T1.code = T2.projekt WHERE T1.stunden > 300 GROUP BY T1.name	scientist_1
SELECT count(*) , T1.name FROM scientists AS T1 JOIN zugeordnet_zu AS T2 ON T1.ssn = T2.wissenschaftler GROUP BY T1.name	scientist_1
SELECT count(*) , T1.name FROM scientists AS T1 JOIN zugeordnet_zu AS T2 ON T1.ssn = T2.wissenschaftler GROUP BY T1.name	scientist_1
SELECT T3.ssn , T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT max(stunden) FROM projekte)	scientist_1
SELECT T3.ssn , T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT max(stunden) FROM projekte)	scientist_1
SELECT T2.name FROM zugeordnet_zu AS T1 JOIN scientists AS T2 ON T1.wissenschaftler = T2.ssn	scientist_1
SELECT T2.name FROM zugeordnet_zu AS T1 JOIN scientists AS T2 ON T1.wissenschaftler = T2.ssn	scientist_1
SELECT name FROM projekte WHERE code NOT IN (SELECT projekt FROM zugeordnet_zu)	scientist_1
SELECT name FROM projekte WHERE code NOT IN (SELECT projekt FROM zugeordnet_zu)	scientist_1
SELECT name FROM scientists WHERE ssn NOT IN (SELECT wissenschaftler FROM zugeordnet_zu)	scientist_1
SELECT name FROM scientists WHERE ssn NOT IN (SELECT wissenschaftler FROM zugeordnet_zu)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT wissenschaftler FROM zugeordnet_zu)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT wissenschaftler FROM zugeordnet_zu)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT max(stunden) FROM projekte)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT max(stunden) FROM projekte)	scientist_1
SELECT T1.name , T3.name , T3.stunden FROM scientists AS T1 JOIN zugeordnet_zu AS T2 ON T1.ssn = T2.wissenschaftler JOIN projekte AS T3 ON T2.projekt = T3.code ORDER BY T3.name , T1.name	scientist_1
SELECT T1.name , T3.name , T3.stunden FROM scientists AS T1 JOIN zugeordnet_zu AS T2 ON T1.ssn = T2.wissenschaftler JOIN projekte AS T3 ON T2.projekt = T3.code ORDER BY T3.name , T1.name	scientist_1
SELECT T2.name , T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT min(stunden) FROM projekte)	scientist_1
SELECT T2.name , T3.name FROM zugeordnet_zu AS T1 JOIN projekte AS T2 ON T1.projekt = T2.code JOIN scientists AS T3 ON T1.wissenschaftler = T3.ssn WHERE T2.stunden = (SELECT min(stunden) FROM projekte)	scientist_1
SELECT name FROM wein ORDER BY punktzahl LIMIT 1	wine_1
SELECT name FROM wein ORDER BY punktzahl LIMIT 1	wine_1
SELECT weinkellerei FROM wein ORDER BY punktzahl LIMIT 1	wine_1
SELECT weinkellerei FROM wein ORDER BY punktzahl LIMIT 1	wine_1
SELECT name FROM wein WHERE jahr = "2008"	wine_1
SELECT name FROM wein WHERE jahr = "2008"	wine_1
SELECT traube , appelation FROM wein	wine_1
SELECT traube , appelation FROM wein	wine_1
SELECT name , punktzahl FROM wein	wine_1
SELECT name , punktzahl FROM wein	wine_1
SELECT gebiet , landkreis FROM appellations	wine_1
SELECT gebiet , landkreis FROM appellations	wine_1
SELECT preis FROM wein WHERE jahr < 2010	wine_1
SELECT preis FROM wein WHERE jahr < 2010	wine_1
SELECT name FROM wein WHERE punktzahl > 90	wine_1
SELECT name FROM wein WHERE punktzahl > 90	wine_1
SELECT DISTINCT T2.name FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "Red"	wine_1
SELECT DISTINCT T2.name FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "Red"	wine_1
SELECT DISTINCT T2.name FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.gebiet = "North Coast"	wine_1
SELECT DISTINCT T2.name FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.gebiet = "North Coast"	wine_1
SELECT count(*) FROM wein WHERE weinkellerei = "Robert Biale"	wine_1
SELECT count(*) FROM wein WHERE weinkellerei = "Robert Biale"	wine_1
SELECT count(*) FROM appellations WHERE landkreis = "Napa"	wine_1
SELECT count(*) FROM appellations WHERE landkreis = "Napa"	wine_1
SELECT AVG(T2.preis) FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = "Sonoma"	wine_1
SELECT AVG(T2.preis) FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = "Sonoma"	wine_1
SELECT T2.name , T2.punktzahl FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White"	wine_1
SELECT T2.name , T2.punktzahl FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White"	wine_1
SELECT max(T2.preis) FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.gebiet = "Central Coast" AND T2.jahr < 2005	wine_1
SELECT max(T2.preis) FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.gebiet = "Central Coast" AND T2.jahr < 2005	wine_1
SELECT DISTINCT T1.traube FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White" AND T2.punktzahl > 90	wine_1
SELECT DISTINCT T1.traube FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White" AND T2.punktzahl > 90	wine_1
SELECT T2.name FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "Red" AND T2.preis > 50	wine_1
SELECT T2.name FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "Red" AND T2.preis > 50	wine_1
SELECT T2.name FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = "Monterey" AND T2.preis < 50	wine_1
SELECT T2.name FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = "Monterey" AND T2.preis < 50	wine_1
SELECT count(*) , traube FROM wein GROUP BY traube	wine_1
SELECT count(*) , traube FROM wein GROUP BY traube	wine_1
SELECT avg(preis) , jahr FROM wein GROUP BY jahr	wine_1
SELECT avg(preis) , jahr FROM wein GROUP BY jahr	wine_1
SELECT DISTINCT name FROM wein WHERE preis > (SELECT min(preis) FROM wein WHERE weinkellerei = "John Anthony")	wine_1
SELECT DISTINCT name FROM wein WHERE preis > (SELECT min(preis) FROM wein WHERE weinkellerei = "John Anthony")	wine_1
SELECT DISTINCT name FROM wein ORDER BY name	wine_1
SELECT DISTINCT name FROM wein ORDER BY name	wine_1
SELECT DISTINCT name FROM wein ORDER BY preis	wine_1
SELECT DISTINCT name FROM wein ORDER BY preis	wine_1
SELECT T1.gebiet FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation GROUP BY T2.appelation HAVING T2.jahr < 2010 ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.gebiet FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation GROUP BY T2.appelation HAVING T2.jahr < 2010 ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.farbe FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube GROUP BY T2.traube ORDER BY AVG(preis) DESC LIMIT 1	wine_1
SELECT T1.farbe FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube GROUP BY T2.traube ORDER BY AVG(preis) DESC LIMIT 1	wine_1
SELECT DISTINCT name FROM wein WHERE jahr < 2000 OR jahr > 2010	wine_1
SELECT DISTINCT name FROM wein WHERE jahr < 2000 OR jahr > 2010	wine_1
SELECT DISTINCT weinkellerei FROM wein WHERE preis BETWEEN 50 AND 100	wine_1
SELECT DISTINCT weinkellerei FROM wein WHERE preis BETWEEN 50 AND 100	wine_1
SELECT AVG(preis) , AVG(fälle) FROM wein WHERE jahr = 2009 AND traube = "Zinfandel"	wine_1
SELECT AVG(preis) , AVG(fälle) FROM wein WHERE jahr = 2009 AND traube = "Zinfandel"	wine_1
SELECT max(preis) , max(punktzahl) FROM wein WHERE appelation = "St. Helena"	wine_1
SELECT max(preis) , max(punktzahl) FROM wein WHERE appelation = "St. Helena"	wine_1
SELECT max(preis) , max(punktzahl) , jahr FROM wein GROUP BY jahr	wine_1
SELECT max(preis) , max(punktzahl) , jahr FROM wein GROUP BY jahr	wine_1
SELECT avg(preis) , avg(punktzahl) , appelation FROM wein GROUP BY appelation	wine_1
SELECT avg(preis) , avg(punktzahl) , appelation FROM wein GROUP BY appelation	wine_1
SELECT weinkellerei FROM wein GROUP BY weinkellerei HAVING count(*) >= 4	wine_1
SELECT weinkellerei FROM wein GROUP BY weinkellerei HAVING count(*) >= 4	wine_1
SELECT T1.landkreis FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation GROUP BY T2.appelation HAVING count(*) <= 3	wine_1
SELECT T1.landkreis FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation GROUP BY T2.appelation HAVING count(*) <= 3	wine_1
SELECT name FROM wein WHERE jahr < (SELECT min(jahr) FROM wein WHERE weinkellerei = "Brander")	wine_1
SELECT name FROM wein WHERE jahr < (SELECT min(jahr) FROM wein WHERE weinkellerei = "Brander")	wine_1
SELECT name FROM wein WHERE preis > (SELECT max(preis) FROM wein WHERE jahr = 2006)	wine_1
SELECT name FROM wein WHERE preis > (SELECT max(preis) FROM wein WHERE jahr = 2006)	wine_1
SELECT T2.weinkellerei FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White" GROUP BY T2.weinkellerei ORDER BY count(*) DESC LIMIT 3	wine_1
SELECT T2.weinkellerei FROM weintrauben AS T1 JOIN wein AS T2 ON T1.traube = T2.traube WHERE T1.farbe = "White" GROUP BY T2.weinkellerei ORDER BY count(*) DESC LIMIT 3	wine_1
SELECT traube , weinkellerei , jahr FROM wein WHERE preis > 100 ORDER BY jahr	wine_1
SELECT traube , weinkellerei , jahr FROM wein WHERE preis > 100 ORDER BY jahr	wine_1
SELECT traube , appelation , name FROM wein WHERE punktzahl > 93 ORDER BY name	wine_1
SELECT traube , appelation , name FROM wein WHERE punktzahl > 93 ORDER BY name	wine_1
SELECT appelation FROM wein WHERE jahr > 2008 EXCEPT SELECT appelation FROM appellations WHERE gebiet = "Central Coast"	wine_1
SELECT appelation FROM wein WHERE jahr > 2008 EXCEPT SELECT appelation FROM appellations WHERE gebiet = "Central Coast"	wine_1
SELECT avg(preis) FROM wein WHERE appelation NOT IN (SELECT T1.appelation FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = 'Sonoma')	wine_1
SELECT avg(preis) FROM wein WHERE appelation NOT IN (SELECT T1.appelation FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T1.landkreis = 'Sonoma')	wine_1
SELECT T1.landkreis FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T2.punktzahl > 90 GROUP BY T1.landkreis ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT T1.landkreis FROM appellations AS T1 JOIN wein AS T2 ON T1.appelation = T2.appelation WHERE T2.punktzahl > 90 GROUP BY T1.landkreis ORDER BY count(*) DESC LIMIT 1	wine_1
SELECT count(*) FROM station	train_station
SELECT name , standort , anzahl_der_bahnsteige FROM station	train_station
SELECT DISTINCT standort FROM station	train_station
SELECT name , fahrgäste_insgesamt FROM station WHERE standort != 'London'	train_station
SELECT name , hauptverkehrsdienste FROM station ORDER BY fahrgäste_insgesamt DESC LIMIT 3	train_station
SELECT avg(fahrgäste_insgesamt) , max(fahrgäste_insgesamt) FROM station WHERE standort = 'London' OR standort = 'Glasgow'	train_station
SELECT standort , sum(anzahl_der_bahnsteige) , sum(fahrgäste_insgesamt) FROM station GROUP BY standort	train_station
SELECT DISTINCT standort FROM station WHERE anzahl_der_bahnsteige >= 15 AND fahrgäste_insgesamt > 25	train_station
SELECT standort FROM station EXCEPT SELECT standort FROM station WHERE anzahl_der_bahnsteige >= 15	train_station
SELECT standort FROM station GROUP BY standort ORDER BY count(*) DESC LIMIT 1	train_station
SELECT name , zeit , dienstleistung FROM zug	train_station
SELECT count(*) FROM zug	train_station
SELECT name , dienstleistung FROM zug ORDER BY zeit	train_station
SELECT T2.name , count(*) FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id	train_station
SELECT T2.name , T3.name FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN zug AS T3 ON T3.zug_id = T1.zug_id	train_station
SELECT T3.name , T3.zeit FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN zug AS T3 ON T3.zug_id = T1.zug_id WHERE T2.standort = 'London' ORDER BY T3.zeit DESC	train_station
SELECT T2.name FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id ORDER BY count(*) DESC LIMIT 1	train_station
SELECT T2.name FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id HAVING count(*) >= 2	train_station
SELECT standort FROM station GROUP BY standort HAVING count(*) = 1	train_station
SELECT name FROM station WHERE station_id NOT IN (SELECT station_id FROM bahnhof)	train_station
SELECT T2.name FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN zug AS T3 ON T3.zug_id = T1.zug_id WHERE T3.name = "Ananthapuri Express" INTERSECT SELECT T2.name FROM bahnhof AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN zug AS T3 ON T3.zug_id = T1.zug_id WHERE T3.name = "Guruvayur Express"	train_station
SELECT T2.name FROM bahnhof AS T1 JOIN zug AS T2 ON T1.zug_id = T2.zug_id WHERE T1.station_id NOT IN (SELECT T4.station_id FROM bahnhof AS T3 JOIN station AS T4 ON T3.station_id = T4.station_id WHERE t4.standort = "London")	train_station
SELECT name , standort FROM station ORDER BY jährliche_einfahrt_ausfahrt , jährlicher_umsteigeverkehr	train_station
SELECT fahrzeug_id FROM fahrzeuge;	driving_school
SELECT fahrzeug_id FROM fahrzeuge;	driving_school
SELECT count(*) FROM fahrzeuge;	driving_school
SELECT count(*) FROM fahrzeuge;	driving_school
SELECT fahrzeugdetails FROM fahrzeuge WHERE fahrzeug_id = 1;	driving_school
SELECT fahrzeugdetails FROM fahrzeuge WHERE fahrzeug_id = 1;	driving_school
SELECT vorname , mittlerer_name , nachname FROM personal;	driving_school
SELECT vorname , mittlerer_name , nachname FROM personal;	driving_school
SELECT geburtsdatum FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT geburtsdatum FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT datum_des_dienstantritts FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT datum_des_dienstantritts FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT datum_des_ausscheidens_aus_dem_personal FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT datum_des_ausscheidens_aus_dem_personal FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT count(*) FROM personal WHERE vorname = "Ludie";	driving_school
SELECT count(*) FROM personal WHERE vorname = "Ludie";	driving_school
SELECT nickname FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT nickname FROM personal WHERE vorname = "Janessa" AND nachname = "Sawayn";	driving_school
SELECT count(*) FROM personal;	driving_school
SELECT count(*) FROM personal;	driving_school
SELECT T1.ort FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT T1.ort FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT T1.land , T1.bundesland_provinz_landkreis FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT T1.land , T1.bundesland_provinz_landkreis FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT sum(T1.unterrichtszeit) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Rylan" AND T2.nachname = "Goodwin";	driving_school
SELECT sum(T1.unterrichtszeit) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Rylan" AND T2.nachname = "Goodwin";	driving_school
SELECT T1.postleitzahl FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT T1.postleitzahl FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT count(*) FROM adressen WHERE bundesland_provinz_landkreis = "Georgia";	driving_school
SELECT count(*) FROM adressen WHERE bundesland_provinz_landkreis = "Georgia";	driving_school
SELECT T2.vorname , T2.nachname FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T1.ort = "Damianfort";	driving_school
SELECT T2.vorname , T2.nachname FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter WHERE T1.ort = "Damianfort";	driving_school
SELECT T1.ort , count(*) FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter GROUP BY T1.ort ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T1.ort , count(*) FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter GROUP BY T1.ort ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T1.bundesland_provinz_landkreis FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter GROUP BY T1.bundesland_provinz_landkreis HAVING count(*) BETWEEN 2 AND 4;	driving_school
SELECT T1.bundesland_provinz_landkreis FROM adressen AS T1 JOIN personal AS T2 ON T1.adresse_id = T2.adresse_der_mitarbeiter GROUP BY T1.bundesland_provinz_landkreis HAVING count(*) BETWEEN 2 AND 4;	driving_school
SELECT vorname , nachname FROM kunden;	driving_school
SELECT vorname , nachname FROM kunden;	driving_school
SELECT e_mail_adresse , geburtsdatum FROM kunden WHERE vorname = "Carole"	driving_school
SELECT e_mail_adresse , geburtsdatum FROM kunden WHERE vorname = "Carole"	driving_school
SELECT telefonnummer , e_mail_adresse FROM kunden WHERE ausstehender_betrag > 2000;	driving_school
SELECT telefonnummer , e_mail_adresse FROM kunden WHERE ausstehender_betrag > 2000;	driving_school
SELECT kundenstatuscode , handynummer , e_mail_adresse FROM kunden WHERE vorname = "Marina" OR nachname = "Kohler"	driving_school
SELECT kundenstatuscode , handynummer , e_mail_adresse FROM kunden WHERE vorname = "Marina" OR nachname = "Kohler"	driving_school
SELECT geburtsdatum FROM kunden WHERE kundenstatuscode = 'Good Customer'	driving_school
SELECT geburtsdatum FROM kunden WHERE kundenstatuscode = 'Good Customer'	driving_school
SELECT datum_wurde_kunde FROM kunden WHERE vorname = "Carole" AND nachname = "Bernhard";	driving_school
SELECT datum_wurde_kunde FROM kunden WHERE vorname = "Carole" AND nachname = "Bernhard";	driving_school
SELECT count(*) FROM kunden;	driving_school
SELECT count(*) FROM kunden;	driving_school
SELECT kundenstatuscode , count(*) FROM kunden GROUP BY kundenstatuscode;	driving_school
SELECT kundenstatuscode , count(*) FROM kunden GROUP BY kundenstatuscode;	driving_school
SELECT kundenstatuscode FROM kunden GROUP BY kundenstatuscode ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT kundenstatuscode FROM kunden GROUP BY kundenstatuscode ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Rylan" AND T2.nachname = "Goodwin" AND T1.lektion_status_code = "Completed";	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Rylan" AND T2.nachname = "Goodwin" AND T1.lektion_status_code = "Completed";	driving_school
SELECT max(ausstehender_betrag) , min(ausstehender_betrag) , avg(ausstehender_betrag) FROM kunden;	driving_school
SELECT max(ausstehender_betrag) , min(ausstehender_betrag) , avg(ausstehender_betrag) FROM kunden;	driving_school
SELECT vorname , nachname FROM kunden WHERE ausstehender_betrag BETWEEN 1000 AND 3000;	driving_school
SELECT vorname , nachname FROM kunden WHERE ausstehender_betrag BETWEEN 1000 AND 3000;	driving_school
SELECT T1.vorname , T1.nachname FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T2.ort = "Lockmanfurt";	driving_school
SELECT T1.vorname , T1.nachname FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T2.ort = "Lockmanfurt";	driving_school
SELECT T2.land FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T1.vorname = "Carole" AND T1.nachname = "Bernhard"	driving_school
SELECT T2.land FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T1.vorname = "Carole" AND T1.nachname = "Bernhard"	driving_school
SELECT T2.postleitzahl FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T1.vorname = "Carole" AND T1.nachname = "Bernhard"	driving_school
SELECT T2.postleitzahl FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id WHERE T1.vorname = "Carole" AND T1.nachname = "Bernhard"	driving_school
SELECT T2.ort FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id GROUP BY T2.ort ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT T2.ort FROM kunden AS T1 JOIN adressen AS T2 ON T1.kunden_adresse_id = T2.adresse_id GROUP BY T2.ort ORDER BY count(*) DESC LIMIT 1;	driving_school
SELECT sum(T1.zahlungsbetrag) FROM kundenzahlungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Carole" AND T2.nachname = "Bernhard"	driving_school
SELECT sum(T1.zahlungsbetrag) FROM kundenzahlungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Carole" AND T2.nachname = "Bernhard"	driving_school
SELECT count(*) FROM kunden WHERE kunden_id NOT IN ( SELECT kunden_id FROM kundenzahlungen );	driving_school
SELECT count(*) FROM kunden WHERE kunden_id NOT IN ( SELECT kunden_id FROM kundenzahlungen );	driving_school
SELECT T2.vorname , T2.nachname FROM kundenzahlungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) > 2;	driving_school
SELECT T2.vorname , T2.nachname FROM kundenzahlungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id HAVING count(*) > 2;	driving_school
SELECT zahlungsart_code , count(*) FROM kundenzahlungen GROUP BY zahlungsart_code;	driving_school
SELECT zahlungsart_code , count(*) FROM kundenzahlungen GROUP BY zahlungsart_code;	driving_school
SELECT count(*) FROM unterricht WHERE lektion_status_code = "Cancelled";	driving_school
SELECT count(*) FROM unterricht WHERE lektion_status_code = "Cancelled";	driving_school
SELECT T1.lektion_id FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn" AND nickname LIKE "%s%";	driving_school
SELECT T1.lektion_id FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn" AND nickname LIKE "%s%";	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname LIKE "%a%"	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname LIKE "%a%"	driving_school
SELECT sum(unterrichtszeit) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT sum(unterrichtszeit) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT avg(preis) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT avg(preis) FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id WHERE T2.vorname = "Janessa" AND T2.nachname = "Sawayn";	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Ray"	driving_school
SELECT count(*) FROM unterricht AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.vorname = "Ray"	driving_school
SELECT nachname FROM kunden INTERSECT SELECT nachname FROM personal	driving_school
SELECT nachname FROM kunden INTERSECT SELECT nachname FROM personal	driving_school
SELECT vorname FROM personal EXCEPT SELECT T2.vorname FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id	driving_school
SELECT vorname FROM personal EXCEPT SELECT T2.vorname FROM unterricht AS T1 JOIN personal AS T2 ON T1.personal_id = T2.personal_id	driving_school
SELECT T1.fahrzeug_id , T1.fahrzeugdetails FROM fahrzeuge AS T1 JOIN unterricht AS T2 ON T1.fahrzeug_id = T2.fahrzeug_id GROUP BY T1.fahrzeug_id ORDER BY count(*) DESC LIMIT 1	driving_school
SELECT count(*) FROM fakultät	activity_1
SELECT count(*) FROM fakultät	activity_1
SELECT DISTINCT rang FROM fakultät	activity_1
SELECT DISTINCT rang FROM fakultät	activity_1
SELECT DISTINCT gebäude FROM fakultät	activity_1
SELECT DISTINCT gebäude FROM fakultät	activity_1
SELECT rang , vorname , nachname FROM fakultät	activity_1
SELECT rang , vorname , nachname FROM fakultät	activity_1
SELECT vorname , nachname , telefon FROM fakultät WHERE geschlecht = 'F'	activity_1
SELECT vorname , nachname , telefon FROM fakultät WHERE geschlecht = 'F'	activity_1
SELECT fakultät_id FROM fakultät WHERE geschlecht = 'M'	activity_1
SELECT fakultät_id FROM fakultät WHERE geschlecht = 'M'	activity_1
SELECT count(*) FROM fakultät WHERE geschlecht = 'F' AND rang = "Professor"	activity_1
SELECT count(*) FROM fakultät WHERE geschlecht = 'F' AND rang = "Professor"	activity_1
SELECT telefon , zimmer , gebäude FROM fakultät WHERE vorname = "Jerry" AND nachname = "Prince"	activity_1
SELECT telefon , zimmer , gebäude FROM fakultät WHERE vorname = "Jerry" AND nachname = "Prince"	activity_1
SELECT count(*) FROM fakultät WHERE rang = "Professor" AND gebäude = "NEB"	activity_1
SELECT count(*) FROM fakultät WHERE rang = "Professor" AND gebäude = "NEB"	activity_1
SELECT vorname , nachname FROM fakultät WHERE rang = "Instructor"	activity_1
SELECT vorname , nachname FROM fakultät WHERE rang = "Instructor"	activity_1
SELECT gebäude , count(*) FROM fakultät GROUP BY gebäude	activity_1
SELECT gebäude , count(*) FROM fakultät GROUP BY gebäude	activity_1
SELECT gebäude FROM fakultät GROUP BY gebäude ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT gebäude FROM fakultät GROUP BY gebäude ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT gebäude FROM fakultät WHERE rang = "Professor" GROUP BY gebäude HAVING count(*) >= 10	activity_1
SELECT gebäude FROM fakultät WHERE rang = "Professor" GROUP BY gebäude HAVING count(*) >= 10	activity_1
SELECT rang , count(*) FROM fakultät GROUP BY rang	activity_1
SELECT rang , count(*) FROM fakultät GROUP BY rang	activity_1
SELECT rang , geschlecht , count(*) FROM fakultät GROUP BY rang , geschlecht	activity_1
SELECT rang , geschlecht , count(*) FROM fakultät GROUP BY rang , geschlecht	activity_1
SELECT rang FROM fakultät GROUP BY rang ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT rang FROM fakultät GROUP BY rang ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT geschlecht , count(*) FROM fakultät WHERE rang = "AsstProf" GROUP BY geschlecht	activity_1
SELECT geschlecht , count(*) FROM fakultät WHERE rang = "AsstProf" GROUP BY geschlecht	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T2.vorname = "Linda" AND T2.nachname = "Smith"	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T2.vorname = "Linda" AND T2.nachname = "Smith"	activity_1
SELECT T2.student_id FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T1.rang = "Professor"	activity_1
SELECT T2.student_id FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T1.rang = "Professor"	activity_1
SELECT T2.vorname , T2.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T1.vorname = "Michael" AND T1.nachname = "Goodrich"	activity_1
SELECT T2.vorname , T2.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater WHERE T1.vorname = "Michael" AND T1.nachname = "Goodrich"	activity_1
SELECT T1.fakultät_id , count(*) FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id	activity_1
SELECT T1.fakultät_id , count(*) FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id	activity_1
SELECT T1.rang , count(*) FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.rang	activity_1
SELECT T1.rang , count(*) FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.rang	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.fakultät_id FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id HAVING count(*) >= 2	activity_1
SELECT T1.fakultät_id FROM fakultät AS T1 JOIN schüler AS T2 ON T1.fakultät_id = T2.berater GROUP BY T1.fakultät_id HAVING count(*) >= 2	activity_1
SELECT fakultät_id FROM fakultät EXCEPT SELECT berater FROM schüler	activity_1
SELECT fakultät_id FROM fakultät EXCEPT SELECT berater FROM schüler	activity_1
SELECT tätigkeitsname FROM aktivität	activity_1
SELECT tätigkeitsname FROM aktivität	activity_1
SELECT count(*) FROM aktivität	activity_1
SELECT count(*) FROM aktivität	activity_1
SELECT count(DISTINCT fakultät_id) FROM lehrkörper_nimmt_teil_an	activity_1
SELECT count(DISTINCT fakultät_id) FROM lehrkörper_nimmt_teil_an	activity_1
SELECT fakultät_id FROM fakultät EXCEPT SELECT fakultät_id FROM lehrkörper_nimmt_teil_an	activity_1
SELECT fakultät_id FROM fakultät EXCEPT SELECT fakultät_id FROM lehrkörper_nimmt_teil_an	activity_1
SELECT fakultät_id FROM lehrkörper_nimmt_teil_an INTERSECT SELECT berater FROM schüler	activity_1
SELECT fakultät_id FROM lehrkörper_nimmt_teil_an INTERSECT SELECT berater FROM schüler	activity_1
SELECT count(*) FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id WHERE T1.vorname = "Mark" AND T1.nachname = "Giuliano"	activity_1
SELECT count(*) FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id WHERE T1.vorname = "Mark" AND T1.nachname = "Giuliano"	activity_1
SELECT T3.tätigkeitsname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T3.tätigkeit_id = T2.tätigkeit_id WHERE T1.vorname = "Mark" AND T1.nachname = "Giuliano"	activity_1
SELECT T3.tätigkeitsname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T3.tätigkeit_id = T2.tätigkeit_id WHERE T1.vorname = "Mark" AND T1.nachname = "Giuliano"	activity_1
SELECT T1.vorname , T1.nachname , count(*) , T1.fakultät_id FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id GROUP BY T1.fakultät_id	activity_1
SELECT T1.vorname , T1.nachname , count(*) , T1.fakultät_id FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id GROUP BY T1.fakultät_id	activity_1
SELECT T1.tätigkeitsname , count(*) FROM aktivität AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id	activity_1
SELECT T1.tätigkeitsname , count(*) FROM aktivität AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id GROUP BY T1.fakultät_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.vorname , T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id GROUP BY T1.fakultät_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.tätigkeitsname FROM aktivität AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.tätigkeitsname FROM aktivität AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT student_id FROM schüler EXCEPT SELECT student_id FROM beteiligt_sich_an	activity_1
SELECT student_id FROM schüler EXCEPT SELECT student_id FROM beteiligt_sich_an	activity_1
SELECT student_id FROM beteiligt_sich_an INTERSECT SELECT student_id FROM schüler WHERE alter < 20	activity_1
SELECT student_id FROM beteiligt_sich_an INTERSECT SELECT student_id FROM schüler WHERE alter < 20	activity_1
SELECT T1.vorname , T1.nachname FROM schüler AS T1 JOIN beteiligt_sich_an AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.vorname , T1.nachname FROM schüler AS T1 JOIN beteiligt_sich_an AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.tätigkeitsname FROM aktivität AS T1 JOIN beteiligt_sich_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.tätigkeitsname FROM aktivität AS T1 JOIN beteiligt_sich_an AS T2 ON T1.tätigkeit_id = T2.tätigkeit_id GROUP BY T1.tätigkeit_id ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT DISTINCT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' OR T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT DISTINCT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' OR T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT nachname FROM fakultät WHERE rang = 'Professor' EXCEPT SELECT DISTINCT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' OR T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT nachname FROM fakultät WHERE rang = 'Professor' EXCEPT SELECT DISTINCT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' OR T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' INTERSECT SELECT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Canoeing' INTERSECT SELECT T1.nachname FROM fakultät AS T1 JOIN lehrkörper_nimmt_teil_an AS T2 ON T1.fakultät_id = T2.fakultät_id JOIN aktivität AS T3 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T3.tätigkeitsname = 'Kayaking'	activity_1
SELECT T1.student_id FROM beteiligt_sich_an AS T1 JOIN aktivität AS T2 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T2.tätigkeitsname = 'Canoeing' INTERSECT SELECT T1.student_id FROM beteiligt_sich_an AS T1 JOIN aktivität AS T2 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T2.tätigkeitsname = 'Kayaking'	activity_1
SELECT T1.student_id FROM beteiligt_sich_an AS T1 JOIN aktivität AS T2 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T2.tätigkeitsname = 'Canoeing' INTERSECT SELECT T1.student_id FROM beteiligt_sich_an AS T1 JOIN aktivität AS T2 ON T2.tätigkeit_id = T2.tätigkeit_id WHERE T2.tätigkeitsname = 'Kayaking'	activity_1
SELECT name FROM flughäfen WHERE city = 'Goroka'	flight_4
SELECT name FROM flughäfen WHERE city = 'Goroka'	flight_4
SELECT name , city , land , höhe FROM flughäfen WHERE city = 'New York'	flight_4
SELECT name , city , land , höhe FROM flughäfen WHERE city = 'New York'	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines WHERE land = 'Russia'	flight_4
SELECT count(*) FROM airlines WHERE land = 'Russia'	flight_4
SELECT max(höhe) FROM flughäfen WHERE land = 'Iceland'	flight_4
SELECT max(höhe) FROM flughäfen WHERE land = 'Iceland'	flight_4
SELECT name FROM flughäfen WHERE land = 'Cuba' OR land = 'Argentina'	flight_4
SELECT name FROM flughäfen WHERE land = 'Cuba' OR land = 'Argentina'	flight_4
SELECT land FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT land FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT name FROM flughäfen WHERE höhe BETWEEN -50 AND 50	flight_4
SELECT name FROM flughäfen WHERE höhe BETWEEN -50 AND 50	flight_4
SELECT land FROM flughäfen ORDER BY höhe DESC LIMIT 1	flight_4
SELECT land FROM flughäfen ORDER BY höhe DESC LIMIT 1	flight_4
SELECT count(*) FROM flughäfen WHERE name LIKE '%International%'	flight_4
SELECT count(*) FROM flughäfen WHERE name LIKE '%International%'	flight_4
SELECT count(DISTINCT city) FROM flughäfen WHERE land = 'Greenland'	flight_4
SELECT count(DISTINCT city) FROM flughäfen WHERE land = 'Greenland'	flight_4
SELECT count(*) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id WHERE T1.name = 'American Airlines'	flight_4
SELECT count(*) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id WHERE T1.name = 'American Airlines'	flight_4
SELECT count(*) FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE land = 'Canada'	flight_4
SELECT count(*) FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE land = 'Canada'	flight_4
SELECT name , city , land FROM flughäfen ORDER BY höhe LIMIT 1	flight_4
SELECT name , city , land FROM flughäfen ORDER BY höhe LIMIT 1	flight_4
SELECT name , city , land FROM flughäfen ORDER BY höhe DESC LIMIT 1	flight_4
SELECT name , city , land FROM flughäfen ORDER BY höhe DESC LIMIT 1	flight_4
SELECT T1.name , T1.city , T2.zielflughafen_id FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id GROUP BY T2.zielflughafen_id ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name , T1.city , T2.zielflughafen_id FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id GROUP BY T2.zielflughafen_id ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name , T2.airline_id FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T2.airline_id ORDER BY count(*) DESC LIMIT 10	flight_4
SELECT T1.name , T2.airline_id FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T2.airline_id ORDER BY count(*) DESC LIMIT 10	flight_4
SELECT T1.name , T1.city , T2.quelle_flughafen_id FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T2.quelle_flughafen_id ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name , T1.city , T2.quelle_flughafen_id FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T2.quelle_flughafen_id ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT count(DISTINCT zielflughafen_id) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id WHERE T1.name = 'American Airlines'	flight_4
SELECT count(DISTINCT zielflughafen_id) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id WHERE T1.name = 'American Airlines'	flight_4
SELECT land FROM airlines GROUP BY land ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT land FROM airlines GROUP BY land ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT land FROM airlines WHERE active = 'Y' GROUP BY land ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT land FROM airlines WHERE active = 'Y' GROUP BY land ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT land , count(*) FROM airlines GROUP BY land ORDER BY count(*) DESC	flight_4
SELECT land , count(*) FROM airlines GROUP BY land ORDER BY count(*) DESC	flight_4
SELECT count(*) , land FROM flughäfen GROUP BY land ORDER BY count(*) DESC	flight_4
SELECT count(*) , land FROM flughäfen GROUP BY land ORDER BY count(*) DESC	flight_4
SELECT count(*) , city FROM flughäfen WHERE land = 'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT count(*) , city FROM flughäfen WHERE land = 'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT city FROM flughäfen WHERE land = 'United States' GROUP BY city HAVING count(*) > 3	flight_4
SELECT city FROM flughäfen WHERE land = 'United States' GROUP BY city HAVING count(*) > 3	flight_4
SELECT count(*) FROM (SELECT city FROM flughäfen GROUP BY city HAVING count(*) > 3)	flight_4
SELECT count(*) FROM (SELECT city FROM flughäfen GROUP BY city HAVING count(*) > 3)	flight_4
SELECT city , count(*) FROM flughäfen GROUP BY city HAVING count(*) > 1	flight_4
SELECT city , count(*) FROM flughäfen GROUP BY city HAVING count(*) > 1	flight_4
SELECT city FROM flughäfen GROUP BY city HAVING count(*) > 2 ORDER BY count(*)	flight_4
SELECT city FROM flughäfen GROUP BY city HAVING count(*) > 2 ORDER BY count(*)	flight_4
SELECT count(*) , T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T1.name	flight_4
SELECT count(*) , T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T1.name	flight_4
SELECT count(*) , T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T1.name ORDER BY count(*) DESC	flight_4
SELECT count(*) , T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id GROUP BY T1.name ORDER BY count(*) DESC	flight_4
SELECT avg(höhe) , land FROM flughäfen GROUP BY land	flight_4
SELECT avg(höhe) , land FROM flughäfen GROUP BY land	flight_4
SELECT city FROM flughäfen GROUP BY city HAVING count(*) = 2	flight_4
SELECT city FROM flughäfen GROUP BY city HAVING count(*) = 2	flight_4
SELECT T1.land , T1.name , count(*) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.land , T1.name	flight_4
SELECT T1.land , T1.name , count(*) FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.land , T1.name	flight_4
SELECT count(*) FROM strecken AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen_id = T2.flughafen_id WHERE T2.land = 'Italy'	flight_4
SELECT count(*) FROM strecken AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen_id = T2.flughafen_id WHERE T2.land = 'Italy'	flight_4
SELECT count(*) FROM strecken AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen_id = T2.flughafen_id JOIN airlines AS T3 ON T1.airline_id = T3.airline_id WHERE T2.land = 'Italy' AND T3.name = 'American Airlines'	flight_4
SELECT count(*) FROM strecken AS T1 JOIN flughäfen AS T2 ON T1.zielflughafen_id = T2.flughafen_id JOIN airlines AS T3 ON T1.airline_id = T3.airline_id WHERE T2.land = 'Italy' AND T3.name = 'American Airlines'	flight_4
SELECT count(*) FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE T1.name = 'John F Kennedy International Airport'	flight_4
SELECT count(*) FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE T1.name = 'John F Kennedy International Airport'	flight_4
SELECT count(*) FROM strecken WHERE zielflughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'Canada') AND quelle_flughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States')	flight_4
SELECT count(*) FROM strecken WHERE zielflughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'Canada') AND quelle_flughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States')	flight_4
SELECT strecke_id FROM strecken WHERE zielflughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States') AND quelle_flughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States')	flight_4
SELECT strecke_id FROM strecken WHERE zielflughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States') AND quelle_flughafen_id IN (SELECT flughafen_id FROM flughäfen WHERE land = 'United States')	flight_4
SELECT T1.name FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM airlines AS T1 JOIN strecken AS T2 ON T1.airline_id = T2.airline_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id WHERE T1.land = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.quelle_flughafen_id WHERE T1.land = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE T1.land = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT T1.name FROM flughäfen AS T1 JOIN strecken AS T2 ON T1.flughafen_id = T2.zielflughafen_id WHERE T1.land = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT bestellung_id FROM bestellungen ORDER BY datum_der_bestellung DESC LIMIT 1	tracking_orders
SELECT bestellung_id FROM bestellungen ORDER BY datum_der_bestellung DESC LIMIT 1	tracking_orders
SELECT bestellung_id , kunden_id FROM bestellungen ORDER BY datum_der_bestellung LIMIT 1	tracking_orders
SELECT bestellung_id , kunden_id FROM bestellungen ORDER BY datum_der_bestellung LIMIT 1	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsverfolgungsnummer = "3452"	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsverfolgungsnummer = "3452"	tracking_orders
SELECT auftragsposition_id FROM auftragspositionen WHERE produkt_id = 11	tracking_orders
SELECT auftragsposition_id FROM auftragspositionen WHERE produkt_id = 11	tracking_orders
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Packing"	tracking_orders
SELECT DISTINCT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Packing"	tracking_orders
SELECT DISTINCT T1.kundenangaben FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road"	tracking_orders
SELECT DISTINCT T1.kundenangaben FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road"	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T2.bestellung_id , T2.bestellstatus FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kundenname = "Jeramie"	tracking_orders
SELECT T2.bestellung_id , T2.bestellstatus FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kundenname = "Jeramie"	tracking_orders
SELECT T2.datum_der_bestellung FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kundenname = "Jeramie"	tracking_orders
SELECT T2.datum_der_bestellung FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T1.kundenname = "Jeramie"	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.datum_der_bestellung >= "2009-01-01" AND T2.datum_der_bestellung <= "2010-01-01"	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.datum_der_bestellung >= "2009-01-01" AND T2.datum_der_bestellung <= "2010-01-01"	tracking_orders
SELECT DISTINCT T2.produkt_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T1.datum_der_bestellung >= "1975-01-01" AND T1.datum_der_bestellung <= "1976-01-01"	tracking_orders
SELECT DISTINCT T2.produkt_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T1.datum_der_bestellung >= "1975-01-01" AND T1.datum_der_bestellung <= "1976-01-01"	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road" INTERSECT SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Shipped"	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road" INTERSECT SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Shipped"	tracking_orders
SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road" INTERSECT SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Shipped"	tracking_orders
SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "On Road" INTERSECT SELECT T1.kunden_id FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id WHERE T2.bestellstatus = "Shipped"	tracking_orders
SELECT T1.datum_der_bestellung FROM bestellungen AS T1 JOIN sendungen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.sendungsverfolgungsnummer = 3452	tracking_orders
SELECT T1.datum_der_bestellung FROM bestellungen AS T1 JOIN sendungen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.sendungsverfolgungsnummer = 3452	tracking_orders
SELECT T1.datum_der_bestellung FROM bestellungen AS T1 JOIN sendungen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.rechnungsnummer = 10	tracking_orders
SELECT T1.datum_der_bestellung FROM bestellungen AS T1 JOIN sendungen AS T2 ON T1.bestellung_id = T2.bestellung_id WHERE T2.rechnungsnummer = 10	tracking_orders
SELECT count(*) , T3.produkt_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 JOIN produkte AS T3 ON T1.bestellung_id = T2.bestellung_id AND T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id	tracking_orders
SELECT count(*) , T3.produkt_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 JOIN produkte AS T3 ON T1.bestellung_id = T2.bestellung_id AND T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id	tracking_orders
SELECT T3.produktname , count(*) FROM bestellungen AS T1 JOIN auftragspositionen AS T2 JOIN produkte AS T3 ON T1.bestellung_id = T2.bestellung_id AND T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id	tracking_orders
SELECT T3.produktname , count(*) FROM bestellungen AS T1 JOIN auftragspositionen AS T2 JOIN produkte AS T3 ON T1.bestellung_id = T2.bestellung_id AND T2.produkt_id = T3.produkt_id GROUP BY T3.produkt_id	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsdatum > "2000-01-01"	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsdatum > "2000-01-01"	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsdatum = (SELECT max(sendungsdatum) FROM sendungen)	tracking_orders
SELECT bestellung_id FROM sendungen WHERE sendungsdatum = (SELECT max(sendungsdatum) FROM sendungen)	tracking_orders
SELECT DISTINCT produktname FROM produkte ORDER BY produktname	tracking_orders
SELECT DISTINCT produktname FROM produkte ORDER BY produktname	tracking_orders
SELECT DISTINCT bestellung_id FROM bestellungen ORDER BY datum_der_bestellung	tracking_orders
SELECT DISTINCT bestellung_id FROM bestellungen ORDER BY datum_der_bestellung	tracking_orders
SELECT T1.bestellung_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id GROUP BY T1.bestellung_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.bestellung_id FROM bestellungen AS T1 JOIN auftragspositionen AS T2 ON T1.bestellung_id = T2.bestellung_id GROUP BY T1.bestellung_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T1.kunden_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT rechnungsnummer FROM rechnungen WHERE rechnungsdatum < "1989-09-03" OR rechnungsdatum > "2007-12-25"	tracking_orders
SELECT rechnungsnummer FROM rechnungen WHERE rechnungsdatum < "1989-09-03" OR rechnungsdatum > "2007-12-25"	tracking_orders
SELECT DISTINCT rechnungsdetails FROM rechnungen WHERE rechnungsdatum < "1989-09-03" OR rechnungsdatum > "2007-12-25"	tracking_orders
SELECT DISTINCT rechnungsdetails FROM rechnungen WHERE rechnungsdatum < "1989-09-03" OR rechnungsdatum > "2007-12-25"	tracking_orders
SELECT T2.kundenname , count(*) FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id HAVING count(*) >= 2	tracking_orders
SELECT T2.kundenname , count(*) FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id HAVING count(*) >= 2	tracking_orders
SELECT T2.kundenname FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id HAVING count(*) <= 2	tracking_orders
SELECT T2.kundenname FROM bestellungen AS T1 JOIN kunden AS T2 ON T1.kunden_id = T2.kunden_id GROUP BY T2.kunden_id HAVING count(*) <= 2	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 JOIN auftragspositionen AS T3 JOIN produkte AS T4 ON T1.kunden_id = T2.kunden_id AND T2.bestellung_id = T3.bestellung_id AND T3.produkt_id = T4.produkt_id WHERE T4.produktname = "food" GROUP BY T1.kunden_id HAVING count(*) >= 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 JOIN auftragspositionen AS T3 JOIN produkte AS T4 ON T1.kunden_id = T2.kunden_id AND T2.bestellung_id = T3.bestellung_id AND T3.produkt_id = T4.produkt_id WHERE T4.produktname = "food" GROUP BY T1.kunden_id HAVING count(*) >= 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 JOIN auftragspositionen AS T3 JOIN produkte AS T4 ON T1.kunden_id = T2.kunden_id AND T2.bestellung_id = T3.bestellung_id AND T3.produkt_id = T4.produkt_id WHERE T3.auftragsposition_status = "Cancel" AND T4.produktname = "food" GROUP BY T1.kunden_id HAVING count(*) >= 1	tracking_orders
SELECT T1.kundenname FROM kunden AS T1 JOIN bestellungen AS T2 JOIN auftragspositionen AS T3 JOIN produkte AS T4 ON T1.kunden_id = T2.kunden_id AND T2.bestellung_id = T3.bestellung_id AND T3.produkt_id = T4.produkt_id WHERE T3.auftragsposition_status = "Cancel" AND T4.produktname = "food" GROUP BY T1.kunden_id HAVING count(*) >= 1	tracking_orders
SELECT count(*) FROM architekt WHERE geschlecht = 'female'	architecture
SELECT name , nationalität , id FROM architekt WHERE geschlecht = 'male' ORDER BY name	architecture
SELECT max(T1.länge_meter) , T2.name FROM brücke AS T1 JOIN architekt AS T2 ON T1.architekt_id = T2.id	architecture
SELECT avg(länge_fuß) FROM brücke	architecture
SELECT name , baujahr FROM mühle WHERE typ = 'Grondzeiler'	architecture
SELECT DISTINCT T1.name , T1.nationalität FROM architekt AS T1 JOIN mühle AS t2 ON T1.id = T2.architekt_id	architecture
SELECT name FROM mühle WHERE ort != 'Donceel'	architecture
SELECT DISTINCT T1.typ FROM mühle AS T1 JOIN architekt AS t2 ON T1.architekt_id = T2.id WHERE T2.nationalität = 'American' OR T2.nationalität = 'Canadian'	architecture
SELECT T1.id , T1.name FROM architekt AS T1 JOIN brücke AS T2 ON T1.id = T2.architekt_id GROUP BY T1.id HAVING count(*) >= 3	architecture
SELECT T1.id , T1.name , T1.nationalität FROM architekt AS T1 JOIN mühle AS T2 ON T1.id = T2.architekt_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	architecture
SELECT T1.id , T1.name , T1.geschlecht FROM architekt AS T1 JOIN brücke AS T2 ON T1.id = T2.architekt_id GROUP BY T1.id HAVING count(*) = 2 UNION SELECT T1.id , T1.name , T1.geschlecht FROM architekt AS T1 JOIN mühle AS T2 ON T1.id = T2.architekt_id GROUP BY T1.id HAVING count(*) = 1	architecture
SELECT ort FROM brücke WHERE name = 'Kolob Arch' OR name = 'Rainbow Bridge'	architecture
SELECT name FROM mühle WHERE name LIKE '%Moulin%'	architecture
SELECT DISTINCT T1.name FROM mühle AS T1 JOIN architekt AS t2 ON T1.architekt_id = T2.id JOIN brücke AS T3 ON T3.architekt_id = T2.id WHERE T3.länge_meter > 80	architecture
SELECT typ , count(*) FROM mühle GROUP BY typ ORDER BY count(*) DESC LIMIT 1	architecture
SELECT count(*) FROM architekt WHERE id NOT IN ( SELECT architekt_id FROM mühle WHERE baujahr < 1850 );	architecture
SELECT t1.name FROM brücke AS t1 JOIN architekt AS t2 ON t1.architekt_id = t2.id WHERE t2.nationalität = 'American' ORDER BY t1.länge_fuß	architecture
SELECT count(*) FROM buchclub	culture_company
SELECT count(*) FROM buchclub	culture_company
SELECT buchtitel , autor_oder_herausgeber FROM buchclub WHERE jahr > 1989	culture_company
SELECT buchtitel , autor_oder_herausgeber FROM buchclub WHERE jahr > 1989	culture_company
SELECT DISTINCT verlag FROM buchclub	culture_company
SELECT DISTINCT verlag FROM buchclub	culture_company
SELECT jahr , buchtitel , verlag FROM buchclub ORDER BY jahr DESC	culture_company
SELECT jahr , buchtitel , verlag FROM buchclub ORDER BY jahr DESC	culture_company
SELECT verlag , count(*) FROM buchclub GROUP BY verlag	culture_company
SELECT verlag , count(*) FROM buchclub GROUP BY verlag	culture_company
SELECT verlag FROM buchclub GROUP BY verlag ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT verlag FROM buchclub GROUP BY verlag ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT kategorie , count(*) FROM buchclub GROUP BY kategorie	culture_company
SELECT kategorie , count(*) FROM buchclub GROUP BY kategorie	culture_company
SELECT kategorie FROM buchclub WHERE jahr > 1989 GROUP BY kategorie HAVING count(*) >= 2	culture_company
SELECT kategorie FROM buchclub WHERE jahr > 1989 GROUP BY kategorie HAVING count(*) >= 2	culture_company
SELECT verlag FROM buchclub WHERE jahr = 1989 INTERSECT SELECT verlag FROM buchclub WHERE jahr = 1990	culture_company
SELECT verlag FROM buchclub WHERE jahr = 1989 INTERSECT SELECT verlag FROM buchclub WHERE jahr = 1990	culture_company
SELECT verlag FROM buchclub EXCEPT SELECT verlag FROM buchclub WHERE jahr = 1989	culture_company
SELECT verlag FROM buchclub EXCEPT SELECT verlag FROM buchclub WHERE jahr = 1989	culture_company
SELECT titel , jahr , regisseur FROM film ORDER BY budget_million	culture_company
SELECT titel , jahr , regisseur FROM film ORDER BY budget_million	culture_company
SELECT COUNT (DISTINCT regisseur) FROM film	culture_company
SELECT COUNT (DISTINCT regisseur) FROM film	culture_company
SELECT titel , regisseur FROM film WHERE jahr <= 2000 ORDER BY brutto_weltweit DESC LIMIT 1	culture_company
SELECT titel , regisseur FROM film WHERE jahr <= 2000 ORDER BY brutto_weltweit DESC LIMIT 1	culture_company
SELECT regisseur FROM film WHERE jahr = 2000 INTERSECT SELECT regisseur FROM film WHERE jahr = 1999	culture_company
SELECT regisseur FROM film WHERE jahr = 2000 INTERSECT SELECT regisseur FROM film WHERE jahr = 1999	culture_company
SELECT regisseur FROM film WHERE jahr = 1999 OR jahr = 2000	culture_company
SELECT regisseur FROM film WHERE jahr = 1999 OR jahr = 2000	culture_company
SELECT avg(budget_million) , max(budget_million) , min(budget_million) FROM film WHERE jahr < 2000	culture_company
SELECT avg(budget_million) , max(budget_million) , min(budget_million) FROM film WHERE jahr < 2000	culture_company
SELECT T1.firmenname FROM kultur_unternehmen AS T1 JOIN buchclub AS T2 ON T1.buchclub_id = T2.buchclub_id WHERE T2.verlag = 'Alyson'	culture_company
SELECT T1.firmenname FROM kultur_unternehmen AS T1 JOIN buchclub AS T2 ON T1.buchclub_id = T2.buchclub_id WHERE T2.verlag = 'Alyson'	culture_company
SELECT T1.titel , T3.buchtitel FROM film AS T1 JOIN kultur_unternehmen AS T2 ON T1.film_id = T2.film_id JOIN buchclub AS T3 ON T3.buchclub_id = T2.buchclub_id WHERE T2.gegründet_in = 'China'	culture_company
SELECT T1.titel , T3.buchtitel FROM film AS T1 JOIN kultur_unternehmen AS T2 ON T1.film_id = T2.film_id JOIN buchclub AS T3 ON T3.buchclub_id = T2.buchclub_id WHERE T2.gegründet_in = 'China'	culture_company
SELECT T2.firmenname FROM film AS T1 JOIN kultur_unternehmen AS T2 ON T1.film_id = T2.film_id WHERE T1.jahr = 1999	culture_company
SELECT T2.firmenname FROM film AS T1 JOIN kultur_unternehmen AS T2 ON T1.film_id = T2.film_id WHERE T1.jahr = 1999	culture_company
