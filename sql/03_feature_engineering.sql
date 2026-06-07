SELECT
    fullname,
    age,
    club,
    overall,
    potential,
    (potential - overall) AS potential_gap,

    valueeur,
    ROUND(valueeur::numeric / NULLIF(overall, 0), 2) AS value_per_rating,

    CASE
        WHEN age <= 23 THEN 'Young'
        WHEN age BETWEEN 24 AND 30 THEN 'Prime'
        ELSE 'Veteran'
    END AS age_bucket

FROM players_raw;