SELECT *
FROM player_kpis
ORDER BY potential_gap DESC
LIMIT 20;

SELECT *
FROM player_kpis
ORDER BY value_per_rating DESC
LIMIT 20;

SELECT *
FROM player_kpis
WHERE age_bucket = 'Young'
ORDER BY potential DESC
LIMIT 20;