# COUNT()
# This Let us Count the number of records with a value in a field

E.G Count the numbers of `birthdates` we have in the Table of `people`

SELECT COUNT(birthdate) AS count_birthdates
FROM people;

SELECT COUNT(name) AS count_names, COUNT(birthdate) AS count_birthdates
FROM people;


# DISTINCT()
# This is used to remove duplicate to return only unique values

SELECT DISTINCT language FROM films;

SELECT COUNT(DISTINCT name) AS count_names, COUNT(DISTINCT birthdate) AS count_birthdates
FROM people;
