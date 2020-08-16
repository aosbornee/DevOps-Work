#Week 2.2 SQL

Note; mock test on Friday morning

**DML - Data Manipulation Language**

- Select
- Insert (allows us to add data to our table columns)
- Update
- Delete (deleting the data, different to drop)

**DDL -Data Definition language**   
- Create (use this to create databases and tables)
- Alter (allows us to make changes to columns in a table\
         we can add, drop columns or constraints)
- Drop (drops the table/database as a whole, it won't exist)
- Truncate (Leaves you with an empty table, it does not drop the table like 'DROP' does)

```SQL
ALTER TABLE Customers
ADD Email varchar(255);
```

```SQL
ALTER TABLE Customers
DROP COLUMN Email;
```

Here we are adding a new column named Email and assigning\
the datatype of VARCHAR, we then delete it\
> This is where you alter the structure of the data


```SQL
UPDATE Spartans
SET first_name = 'Jack'
```
```SQL
UPDATE Spartans
SET first_name = 'Jack'
WHERE spartanID = 2
```
Firstly, we are saying update all the rows in first_name and change it to 'Jack'\
For the second code we are saying to update only the row that has a spartanID of 2\
and setting it's first name to 'Jack'





**DCL - Data Control Language**
Grant (Giving privilege to the developers to use the data)
Revoke (After a project you can stop people from using the database)

These are the rights of the user, note that some clients do not want to hand their data out to anyone.

**TCL - Transaction Control Language**
Commit (Committing the changes you have made)
Rollback (You made a commit that you realised was wrong, you can rollback)
Savepoint (You have saved your own work, but you have not committed to any repository yet)
---

Data types (Part 1)

`null`
VARCHAR
Adaptable by different lengths of characters

CHARACTER or CHAR
Data must be at a fixed length. Fixed amount of space is used.

Note that CHAR is 50% quicker than VARCHAR but VARCHAR is more\
memory efficient

#SQL Constraints#

Constraints are used to specify rules for the data in a table,
they can limit the type of data that goes into a table and will
raise an error if there is a violation.

Constraints can be column level or table level.

**Some commonly used SQL constraints:**

NOT NULL - Ensures that a column cannot have a NULL value
DEFAULT - Sets a default value for a column when no value is specified.
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. It identifies each row in a table\
FOREIGN KEY - This is a field in one table that refers to a primary key in another table\
and thus allowing us to link tables together

A foreign key with **DELETE CASCADE** means that if a record in the parent class
is deleted, the corresponding records in the child table would
also be automatically deleted.



![DelCas](../../../Images/Delete%20Cascade%20code%20example.jpg)

```SQL
ALTER TABLE director
ADD CONSTRAINT film_id
FOREIGN KEY (film_id)
REFERENCES film_table (film_id) ON DELETE CASCADE
```
We are trying to delete film_id from the parent class but because it is also\
a record from the child class, we have to delete that record as well to avoid seeing an error.

What is referential Integrity\
This is achieved by having a foreign key reference a primary\
key.

Is the relationship between one-to-many relationships 1-n?\
Yes it is 1-n, one row in table A references many rows in table b


Normalization\
This is used to improve database structure\
Each Normal Form is more strict than the former\

1NF - needs all of the data atomic (as small as it can be)\
so no repeating data within a column.\
2NF - Data must be in 1NF, non key attributes are truly dependent on\
the primary key of that table
3NF

A dependency is something that depends on something else\
e.g. attributes depends on entity's, if entity's change then\
attributes also change.\
E.g username would depend on the user, because with each user there\
would be a different username.\

We use normalization to ensure our data has 'integrity' by preventing anomalies\
thus when doing something to our data, something unexpected would happen.\
To get rid of anomalies we must reduce redundancy\
this is when we have the same info in our database two times or more.\








> **Week 2 Day 2 (23-06-2020) SQL Exercise ** [HERE](../First%20_SQL_Query.sql)
