-- sanity checks
SELECT version();
SELECT current_database();


SELECT COUNT(*)
FROM player_kpis;

SELECT *
FROM player_kpis
LIMIT 5;

DROP TABLE players_kpis;