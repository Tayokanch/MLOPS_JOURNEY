// KEYWORDS

LIKE : THIS IS USED FOR SEARCHING FOR PATTERNS//
NOT LIKE: THIS IS USED TO FIND PATTERN THAT DOESNT MATCH OUR SEARCH
IN: THIS ALLOWS US TO SPECIFY MULTIPLE VALUES IN A "WHERE" CLAUSE WHICH MAKES IT EASIER TO SET NUMEROUS CONDITION

// WILDCARD POSITION
- '%'
- '--'

SELECT name
FROM people
WHERE name
LIKE 'B%';

-- Select the names that have r as the second letter
SELECT name
FROM people
WHERE name
LIKE '_r%';


-- IN

-- Find the title and release_year for all films over two hours in length released in 1990 and 2000

SELECT title, release_year
FROM films 
WHERE release_year IN ( 1990, 2000)
    AND duration > 120


-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language in ('English', 'Spanish', 'French');


-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek

SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17%', 'R')
    AND language IN ('English', 'Italian', 'Greek');


-- Count the unique titles
-- Filter to release_years to between 1990 and 1999
-- Filter to English-language films
-- Narrow it down to G, PG, and PG-13 certifications

SELECT  COUNT( DISTINCT title ) AS nineties_english_films_for_teens
FROM films
WHERE release_year BETWEEN 1990 AND 1999
	AND language = 'English'
	AND certification IN ('G', 'PG', 'PG-13');