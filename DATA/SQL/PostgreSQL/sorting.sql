-- SORTING: This is let use put our DATA in a specific ORDER to make our data easier to understand


SELECT title, budget
FROM films
ORDER BY budget; -- The budget column will be in an ascending order

SELECT title, budget
FROM films
ORDER BY budget ASC; -- The title column in ASCENDING alphabetical order


SELECT title, budget
FROM films
ORDER BY budget DESC; -- The title column in DESCENDING alphabetical order 


SELECT title, budget
FROM fims
WHERE budget IS NOT NULL
ORDER BY budget DESC; -- The title column in DESCENDING alphabetical order WITH no NULL 