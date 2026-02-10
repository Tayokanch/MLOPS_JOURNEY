# DATA TYPES IN SQL

- INT = whole numbers
- VARCHAR(255) = stings
- NUMERIC = Decimal 
- BOOLEAN = true / false

# SCHEMA IN SQL 
- Schemas are often refer to as the "blueprints" of databases
- A schema shows a database's design, such as what a tables are included, any relationships btw its tables, and what data types each field can hold


# KEYWORDS IN SQL
- `SELECT` : This indicate which field should be selected e.g `firstname`

- `FROM` : This indicates the tables in which these field are located e.g `users` table

- `LIMIT`: This is use to limit a query to a certain value e.g LIMIT 10 : select the first 10

# ALIASING

- `AS`: This is used to change the name of a field to a preffered name e.g `SELECT name AS first_name FROM employees`

- `DISTINCT`: This used to remove duplicate rows from the results of a query. e.g `SELECT DISTINCT class FROM students;`

# VIEW

- A view is like a saved query that behaves like a virtual table.
After creating it, you can use it just like a table

- CREATE VIEW library_authors AS
  SELECT DISTINCT author AS unique_author
  FROM books;

- SELECT * FROM library_authors;

