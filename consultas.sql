SELECT county_location , AVG(CONTEO) , VAR(CONTEO)
FROM 
(
SELECT county_location, YEAR, COUNT(CASE_ID) AS CONTEO
FROM
(
    SELECT 
       county_location, 
       strftime('%Y', collision_date) as year,
     CASE_ID
    FROM collisions 
) AS TABLA

GROUP BY county_location, YEAR
)
GROUP BY county_location


SELECT county_location, YEAR, COUNT(CASE_ID)
FROM
(
    SELECT 
       county_location, 
       strftime('%Y', collision_date) as year,
     CASE_ID
    FROM collisions 
) AS TABLA

GROUP BY county_location, YEAR