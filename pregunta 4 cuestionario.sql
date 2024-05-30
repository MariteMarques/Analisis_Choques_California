#pregunta Número 4#

DELETE FROM parties WHERE party_race is NULL;
SELECT party_race, party_age, party_sex, county_location
FROM  parties
JOIN collisions ON collisions.case_id = parties.case_id
GROUP BY party_race;