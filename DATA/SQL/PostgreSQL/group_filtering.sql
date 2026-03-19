
SELECT 
    release_year,
    COUNT(title) AS title_count
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10; -- HAVING keyword is used for filtering an aggregate function


SELECT
    certification,
    COUNT(title) AS title_count
FROM films
WHERE certification
    IN ('G', 'PG', 'PG-13')
GROUP BY certfication
HAVING COUNT (title) > 500
ORDER BY title_count DESC
LIMIT 3;

SELECT release_year
FROM films
HAVING AVG(duration) > 120;