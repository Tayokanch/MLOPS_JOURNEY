-- GROUP BY: THIS IS USED for grouping values of the same together in a column and return the number of the value in each group

-- Groups all films by language --
-- Calculates the average duration for each language --

SELECT language, AVG(duration) AS avg_duration
FROM films
GROUP BY language;


SELECT certification, language, COUNT(title) AS title_count
FROM films
GROUP BY certification , language ;



-- GROUP BY with ORDER BY --

SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification
ORDER BY title_count DESC


-- Find the release_year and film_count of each year
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year


-- Find the release_year and average duration of films for each year

SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year


SELECT 
    release_year,
    COUNT(DISTINCT language) AS language_count
FROM films
GROUP BY release_year
ORDER BY language_count DESC
LIMIT 2;