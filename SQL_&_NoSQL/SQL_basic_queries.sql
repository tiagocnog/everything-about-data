-- Creating a database
CREATE DATABASE if not exists db_name;

--Creating a table
CREATE TABLE table_name(
    column_1 data_type constraints,
    column_2 data_type constraints,
    column_n data_type constraints
    );
--compulsory requirement: add at least one column


-- AUTO_INCREMENT
/*
frees you from having to insert numbers manually through
the INSERT command
- assigns 1 to the first record of the table and automatically
increments by 1 for every subsequent row
*/

-- Queries
SELECT * FROM table_name;

/*
Whenever you would like to refer to an SQL object in your queries, you must specify the database to which it is
applied
1 - set a default database
2 - call a table from a certain database

. – "dot operator" signals the existence of a connection between the two object types

*/

USE db_name;

SELECT * FROM db_name.table_name;

-- DROP statement used for deleting an SQL object
DROP TABLE table_name;

-- E.G. of a table with deafult constraint

CREATE TABLE customers(
    customer_id INT first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255), 
    number_of_complaints INT DEFAULT 0,
PRIMARY KEY (customer_id)
);

-- NOT NULL CONSTRAINT
CREATE TABLE companies(
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY(company_id)
);

---------------------------------------------------------------

-- INSERT Statement
INSERT INTO table_name (column_1, column_2, …, column_n)
VALUES (value_1, value_2, …, value_n);

INSERT INTO table_2 (column_1, column_2, …, column_n)
SELECT column_1, column_2, …, column_n
FROM table_1
WHERE condition;


-- UPDATE statement
UPDATE table_name
SET column_1 = value_1 , column_2 = value_2
WHERE conditions;

-- DELETE statement
DELETE FROM table_name
WHERE conditions;

/*
DROP vs TRUNCATE vs DELETE
-- DROP = delete everything
-- TRUNCATE ~ DELETE whithout WHERE / auto-increment reset
-- DELETE = removes records row by row / auto-increment not reset
*/

-- JOINS

-- INNER
SELECT table_1.column_name(s), table_2.column_name(s)
FROM table_1
JOIN table_2 ON table_1.column_name = table_2.column_name;


-- LEFT JOIN
SELECT
t1.column_name, t1.column_name, …, t2.column_name, …
FROM table_1 t1
JOIN table_2 t2 ON t1.column_name = t2.column_name
WHERE column_name … IS NULL;

-- UNION
SELECT N columns
FROM table_1
UNION ALL 
SELECT N columns
FROM table_2;

SELECT product_id
FROM products
UNION
SELECT testproduct_id
FROM testproducts
ORDER BY product_id;


-- VIEW
CREATE VIEW view_name AS
SELECT column_1, column_2,… column_n
FROM table_name;
_