-- one line comment and inline comment
/*Multiple line
comment*/



-- Data Definition Language(DDL)
/*
A set of statements that allow the user to define or modify data
 structures and objects, such as tables, views, users  and others.

Keywords:
- CREATE
- ALTER with ADD, REMOVE, RENAME
- DROP
- RENAME
- TRUNCATE
*/

-- CREATE is used for creating entire databases and database objects as tables

CREATE object_type object_name;

CREATE TABLE object_name (column_name data_type);

CREATE TABLE sales (purchase_number INT);

-- ALTER used when altering existing objects
ALTER TABLE sales
ADD COLUMN date_of_purchase DATE;

-- DROP used for deleting a database obeject
DROP object_type object_name;
DROP TABLE customers;

-- RENAME allows yout to rename an object
RENAME object_type object_name TO new_object_name;
RENAME TABLE customers TO customer_data;

/*TRUNCATE instead of deleting an entire table through DROP, we can also remove its 
data and continue to have the table as an object in the database */
TRUNCATE object_type object_name;
TRUNCATE TABLE customers;



-- Data Query Language(DQL)
/*
Used for performing queries on the data within schema objects.

Keywords:
- SELECT
*/

-- SELECT used to retrieve data from the database.

-- Example
SELECT column1, column2, ...FROM table_name WHERE condition;

SELECT first_name, last_name, hire_date
FROM employees
WHERE department = 'Sales'
ORDER BY hire_date DESC;



-- Data Manipulation Language(DML)
/*
It's used in the data itself. It's statements allow us to manipulate the data in the tables
of a database.

Keywords:
- SELECT
- INSERT
- UPDATE
- DELETE

- SELECT… FROM…
- INSERT INTO… VALUES…
- UPDATE… SET… WHERE…
- DELETE FROM… WHERE…
*/

-- SELECT used to retrieve data from database objects, like tables
/* The SELECT statement is a limited form of DML statement in that it can only access data in the database.
 It cannot manipulate data in the database, although it can operate on the accessed data before returning the results of the query.
*/

SELECT * FROM sales;

-- INSERT used to insert data into tables
INSERT INTO <table_name>('<column_name>', '<column_name>') VALUES ('<value>', '<value>');

INSERT INTO sales (purchase_number, date_of_purchase) VALUES(1, '2017-10-11');

-- UPDATE allows you to renew existing data of your tables
UPDATE sales
SET date_of_purchase = '2017-12-12'
WHERE purchase_number = 1;

-- DELETE functions similarly to the TRUNCATE statement
/* 
TRUNCATE vs DELETE
TRUNCATE allows us to remove all the records contained in a table.
With DELETE, you can specify precisely what you would like to be removed.
*/

DELETE FROM sales;

DELETE FROM sales
WHERE
purchase_number = 1;




-- Data Control Language(DCL)
/*
It's used to control access.
Allows us to manage the rights users have in a database.

Keywords:
- GRANT
- REVOKE

*/

-- GRANT gives (or grants) certain permissions to users
/*
Assigns new privileges to a user account, allowing access to specific database objects, actions, or functions.
*/

-- Example
GRANT privilege_type [(column_list)] ON [object_type] object_name TO user [WITH GRANT OPTION];

GRANT type_of_permission ON database_name.table_name TO 'username'@'localhost';

GRANT SELECT, UPDATE ON employees TO user_name;

-- REVOKE used to revoke permissions and privileges of database users (opposite of GRANT)

-- Example
REVOKE [GRANT OPTION FOR] privilege_type [(column_list)] ON [object_type] object_name FROM user [CASCADE];
REVOKE type_of_permission ON database_name.table_name FROM 'username'@'localhost';




-- Transaction Control Language(TCL)
/*
Not every change you make to a database is saved automatically
Transactions group a set of tasks into a single execution unit. Each transaction begins with a specific task and 
ends when all the tasks in the group are successfully completed. If any of the tasks fail, the transaction fails. 
Therefore, a transaction has only two results: success or failure.


Keywords:
- BEGIN TRANSACTION
- COMMIT
- ROLLBACK
- SAVEPOINT
*/

-- BEGIN TRANSACTION starts a new transaction.
BEGIN TRANSACTION [transaction_name];

-- COMMIT saves all changes made during the transaction.
/*
- Saves the transaction in the database
- Changes cannot be undone
*/
COMMIT;

-- ROLLBACK undoes all changes made during the transaction.
/*
- Allows you to take a step back
- The last change(s) made will not count
- Reverts to the last non committed state
*/
ROLLBACK;

-- SAVEPOINT creates a savepoint within the current transaction.
SAVEPOINT <savepoint_name>;
