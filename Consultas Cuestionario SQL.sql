"pregunta 1 cuestionario SQL"

SELECT county_location AS "Ciudad", COUNT(case_id) AS "Casos Totales", SUM(killed_victims) AS "Victimas Muertas", SUM(injured_victims) AS "Victimas Heridas" FROM collisions
GROUP BY Ciudad
ORDER BY "Casos Totales" DESC;

"pregunta 2 cuestionario SQL"

SELECT county_location AS Ciudad, victim_role AS "Rol de la victima", ROUND(AVG(victim_age), 2) AS "Edad promedio", MIN(victim_age) AS "Edad mínima", MAX(victim_age) AS "Edad Máxima" FROM victims
JOIN collisions ON collisions.case_id = victims.case_id
GROUP BY victim_role, county_location
ORDER BY county_location;

"pregunta 3 cuestionario SQL"

SELECT  county_location AS ciudad, weather_1 AS clima, SUM(killed_victims) AS total_victimas
FROM collisions
GROUP BY clima, ciudad
ORDER BY total_victimas DESC
LIMIT 5;

"pregunta 4 cuestionario SQL"

SELECT county_location AS "Ciudad", party_sex AS "Sexo", party_race AS "Razas", ROUND(AVG(party_age)) AS "Edad Promedio" FROM parties
JOIN collisions ON collisions.case_id = parties.case_id
GROUP BY  party_race, party_sex, county_location;

"pregunta 5 cuestionario SQL"

SELECT party_drug_physical AS "Estado de las partes implicadas en materia de drogas y condición física", party_sobriety AS "El estado de sobriedad de las partes", ROUND(AVG(party_age),2) AS "Edad promedio de las partes implicadas", COUNT(party_number) AS "Total de partes implicadas", case_id  FROM parties
GROUP BY case_id
ORDER BY ROUND(AVG(party_age),2) ASC;