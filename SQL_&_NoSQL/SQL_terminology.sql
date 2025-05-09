/*Primary Key
A column (or a set of columns) whose value exists and is unique for
every record in a table is called a primary key.

- each table can have one and only one primary key
- primary keys are the unique identifiers of a table
- cannot contain null values
- not all tables you work with will have a primary key
*/


/*Foreign Key
A foreign key establishes a link between the data in two tables by referencing the primary key 
or a unique constraint of the referenced table.

- a FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table
- the FOREIGN KEY constraint prevents invalid data from being inserted into the foreign key column, 
because it has to be one of the values contained in the parent table.
*/


/*Unique Key
Used whenever you would like to specify that you don’t want to see
duplicate data in a given field

- Can have null values, however, only one NUKK value is supported
*/

/*Relationships
Relationships tells how much of the data from a foreign key field can be seen in the primary key column 
of the table the data is related to and vice versa.

one-to-many
example
-- One value from the unique values column A at table_1 can be found many times in the
column A in the table_2

Type of relationships:
- one to many (many to one)
- one to one
- many to many

Relational schemas:
- represent the concept database administrators must implement
- depict how a database is organized
= blueprints, or a plan for a database

*/


/*Query
A command you write in SQL with the idea of either retrieving information from the database
 on which you are working, or, alternatively, to insert , update , or delete data from it.

*/

-- contstraints specific rules, or limits, that we define in our tables

-- foreign key points to a column of another table and, thus, links the two tables
-- child table = referencing table, parent table = referenced table
-- have two completely different names. What’s important is that the data types and the information match.

-- ON DELETE CASCADE
/*
if a specific value from the parent table’s primary key has been deleted, all the records from the child 
table referring to this value will be removed as well.
*/

-- UNIQUE
/*
used whenever you would like to specify that you don’t want to see duplicate data in a given field.
Ensures that all values in a column (or a set of columns) are different.
*/

-- index of a table
-- an organizational unit that helps retrieve data more easily

-- NOT NULL
-- when you insert values in the table, you cannot leave the respective field empty



/*Coding tips
- readability
- use ad hoc software that re organizes code and colours different words consistently
- intervene manually and adjust your code as you like
- use comments to convey a message to someone who reads our code
*/


/*Joins
-- joins allows to construct a relationship between objects 

- INNER JOIN (extract only records which the values in the related columns match)
- LEFT JOIN (all matching values of the two tables + all values from left table that match no values from the right)
- RIGHT JOIN (returns all the data from the right table and only the matching rows from the left table. The non-matching rows’ values will be NULL)
- FULL OUTER JOIN (Returns all records when there is a match in either left or right table)

*/

-- UNION is used to combina a few SELECT statements in a single output (unify tables)
/*
Have to select the same number of columns from each table.
These columns should have the same name, should be in the same order, and should contain related data types

- UNION display only distinct values in the output
- UNION ALL retrieves duplicates as well

*/

/* Subqueries
Subqueries = inner queries = nested queries (queries embedded in a query)
- a subquery should always be placed within parentheses
1- The SQL engine starts by running the inner query first
2- Then it uses its returned output, which is intermediate, to execute the outer query

- Can have a lot more than one subquery in the outer query
- it is possible to nest inner queries within other inner queries


-- subqueries with EXISTS, NOT EXISTS nested inside WHERE

EXISTS
checks whether certain row values are found within a subquery
- this check is conducted row by row
- it returns a Boolean value
*/


/*View
a virtual table whose contents are obtained from an existing table or tables, called base tables

- the view itself doesn't contain any real data. It simply shows the data containded in the base table.
- acts as a dynamic table because it instantly reflects data and structural changes in the base table
*/


/*Stored routine
- an SQL statement, or a set of SQL statements, that can be stored on the database server
- whenever a user needs to run the query in question, they can call , reference , or invoke the routine
*/