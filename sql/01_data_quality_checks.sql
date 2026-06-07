SELECT COUNT(*) FROM players_raw;

SELECT COUNT(DISTINCT club) FROM players_raw;

SELECT COUNT(DISTINCT nationality) FROM players_raw;

SELECT
    MIN(age), MAX(age), AVG(age)
FROM players_raw;