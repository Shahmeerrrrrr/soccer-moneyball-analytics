SELECT
    fullname,
    age,
    club,
    overall,
    potential,
    valueeur,
    potential - overall AS growth_score,
    ROUND(valueeur::numeric / NULLIF(overall,0),2) AS value_per_rating
FROM player_kpis
ORDER BY growth_score DESC
LIMIT 20;


SELECT
    fullname,
    age,
    club,
    overall,
    potential,
    valueeur,
    CASE
        WHEN age <= 23
         AND potential >= 85
        THEN 'Elite Prospect'
        ELSE 'Standard'
    END AS prospect_type
FROM player_kpis
WHERE age <= 23
ORDER BY potential DESC;


SELECT
    fullname,
    age,
    club,
    overall,
    valueeur,
    ROUND(valueeur::numeric / NULLIF(overall,0),2) AS value_per_rating
FROM player_kpis
WHERE overall >= 75
ORDER BY value_per_rating ASC
LIMIT 20;


SELECT
    club,
    COUNT(*) AS players,
    ROUND(AVG(potential - overall),2) AS avg_growth_score
FROM player_kpis
GROUP BY club
HAVING COUNT(*) >= 10
ORDER BY avg_growth_score DESC
LIMIT 20;