#pregunta Número 1#

SELECT county_location AS Ciudad, COUNT(case_id) AS Casos_Totales, SUM(killed_victims) AS Victimas FROM collisions
GROUP BY county_location
ORDER BY Casos_Totales DESC;
