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



-- SELECT FILM IDs AND THEIR IMDB SCORES WHERE THE SCORE IS GREATER THAN 7
SELECT film_id , imdb_score
FROM reviews
WHERE imdb_score > 7.0;


-- COUNT THE NUMBER OF FILMS THAT HAVE AT LEAST 100,000 VOTES
SELECT COUNT(num_votes)
AS films_over_100k_votes 
FROM reviews
WHERE num_votes >= 100000;


-- SELECT TITLES AND RELEASE YEARS OF FILMS AFTER 2000 THAT ARE IN GERMAN
SELECT title ,release_year
FROM films
WHERE release_year > 2000
    AND language = 'German';


-- SELECT ALL COLUMNS FOR GERMAN FILMS RELEASED BETWEEN 2000 AND 2010
SELECT * 
FROM films
WHERE release_year > 2000
    AND release_year < 2010
    AND language = 'German';


-- SELECT TITLES AND RELEASE YEARS OF FILMS RELEASED IN 1990 OR 1999
SELECT title, release_year
FROM films
WHERE release_year = 1990
    OR release_year = 1999;


-- SELECT FILMS FROM 1990 OR 1999 THAT ARE IN ENGLISH OR SPANISH
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish');


-- SELECT FILMS FROM 1990 OR 1999 IN ENGLISH OR SPANISH WITH GROSS OVER 2,000,000
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
	AND (gross > 2000000);


-- SELECT FILMS RELEASED BETWEEN 1990 AND 2000 (INCLUSIVE)
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;


-- SELECT FILMS RELEASED BETWEEN 1990 AND 2000 WITH BUDGET OVER 100M AND IN SPANISH OR FRENCH
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'Spanish'
	OR language = 'French');