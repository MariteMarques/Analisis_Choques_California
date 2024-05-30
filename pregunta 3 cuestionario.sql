#pregunta Número 3#

SELECT county_location AS Ciudad, weather_1 AS Clima, SUM(killed_victims) AS total_victimas FROM collisions
GROUP BY county_location
ORDER BY SUM(killed_victims) DESC;