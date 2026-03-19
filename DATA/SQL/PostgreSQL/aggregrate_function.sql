-- AGGREGATE FUNCTIONS --

-- Aggregate function is used for summarising data set-
-- Aggregate function performs a calculation on several values and returns a single value

-- Example of Aggregate Function

COUNT()
AVG()
SUM()
MIN()
MAX()
ROUND()
-- CALCULATE THE AVERAGE of the (budget column) in the films Table
SELECT AVG(budget)
FROM films

-- CALCULATE THE SUM of the (budget column) in the films Table
SELECT SUM(budget)
FROM films

-- CALCULATE THE SUM of the (budget column) in the films Table AND ROUND IT UP TO 2 DECIMAL PLACE
SELECT ROUND(SUM(budget), 2) AS sum_budget_2decimal
FROM films

SELECT title, 
       ROUND(duration / 60.0, 2) AS duration_hours
FROM films;

-- RETURN THE LOWEST VALUE of the (budget column) in the films Table
SELECT MIN(budget)
FROM films

-- SELECT COUNTRY FROM THE MINIMUN i.e Alphabetical Order A-z --
SELECT MIN(country)
FROM films


-- RETURN THE HIGHEST VALUE of the (budget column) in the films Table
SELECT MAX(budget)
FROM films


SELECT  COUNT( DISTINCT title ) AS nineties_english_films_for_teens
FROM films
WHERE release_year BETWEEN 1990 AND 1999
	AND language = 'English'
	AND certification IN ('G', 'PG', 'PG-1' )
    
-- Count the unique titles
-- Filter to release_years to between 1990 and 1999
-- Filter to English-language films
-- Narrow it down to G, PG, and PG-13 certifications