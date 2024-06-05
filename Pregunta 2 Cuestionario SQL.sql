#pregunta Número 2#

SELECT ROUND(AVG(victim_age), 2) AS Edad_Promedio, MIN(victim_age) AS Edad_Minima, MAX(victim_age) AS Edad_Maxima FROM victims;