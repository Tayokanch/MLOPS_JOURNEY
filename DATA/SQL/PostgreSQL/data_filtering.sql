//KEYWORDS

> : Greater than or After
< : Less then or Before
= : Equal to
>= Greater than or equal to
<= : Less than or equal to
<> : Not equal to
OR 
AND
BETWEEN , AND



SELECT film_id , imdb_score
FROM reviews
WHERE imdb_score > 7.0;


SELECT COUNT(num_votes)
AS films_over_100k_votes 
FROM reviews
WHERE num_votes >= 100000;


SELECT title ,release_year
FROM films
WHERE release_year > 2000
    AND language = 'German'

Select * 
FROM films
WHERE release_year > 2000
    AND release_year < 2010
    AND language = 'German';

SELECT title, release_year
FROM films
WHERE release_year = 1990
    OR release_year = 1999;

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish');

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
	AND(gross > 2000000);


SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990  AND 2000

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'Spanish'
	OR language = 'French');