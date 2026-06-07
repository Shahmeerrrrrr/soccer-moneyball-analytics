-- Top players by value
SELECT fullname, age, club, overall, valueeur
FROM players_raw
ORDER BY valueeur DESC
LIMIT 20;

-- Best players by overall
SELECT fullname, overall, club
FROM players_raw
ORDER BY overall DESC
LIMIT 20;

-- Best players by potential
SELECT fullname, potential, club
FROM players_raw
ORDER BY potential DESC
LIMIT 20;