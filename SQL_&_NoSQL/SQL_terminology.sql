-- Primary Key
/*
A column (or a set of columns) whose value exists and is unique for
every record in a table is called a primary key.

- each table can have one and only one primary key
- primary keys are the unique identifiers of a table
- cannot contain null values
- not all tables you work with will have a primary key
*/


-- Foreign Key
/*
A foreign key establishes a link between the data in two tables by referencing the primary key 
or a unique constraint of the referenced table.

- a FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table
- the FOREIGN KEY constraint prevents invalid data from being inserted into the foreign key column, 
because it has to be one of the values contained in the parent table.

*/

-- Unique Key
/*
Used whenever you would like to specify that you don’t want to see
duplicate data in a given field

- Can have null values, however, only one NUKK value is supported
*/

-- Relationships
/*

*/