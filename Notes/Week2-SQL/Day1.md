SQL stands for structured Query Language.

What is a database?

An organised repository of data in order to efficiently retrieve data

Terminology

Column - Database tables are composed of individual columns corresponding to the attributes of the object.
Row - A row consists of one set attributes corresponding ti ine instance of the table
Table - A format of rows and columns that define an entity.
Entity - This is anything that you want to model in a table.

**Composite Key** - A key that has one or more attributes.
          it refers to cases where more than one column
          is used to specify the primary key of a table
**Foreign key** is a key used to link two tables together.

**Primary keys** work by uniquely identifying each record in the table.

**Candidate Key** is a column in a table that is eligible to be a primary key due to
                  it's uniqueness. E.g. NI number or NHSID number.

**Primary Key Constraints**
- It must be unique
- Must Always have an entry
- Cannot be blank or 'NULL'
- The value must never change
- Each table may have a maximum of one Primary Key (or one composite primary key)

**Junction Table**
- This is a table that contains references to two groups
- They are used when dealing with many-to-many relationships in SQL databases

---
## Relationship Database

**One-to-One Relationship**
-One row in one table can only relate to one row in another table
- E.g. NHSID would only relate to one patient because a patient can only have
       one NHSID.

**One-To-Many Relationship**
- 


**Many-To-Many Relationship**
- A record in one table can reference many other
records (foreign) in another table

> For example in an E commerce database, a customer in one table could
  be responsible for multiple orders in another table.

**Many-To-Many Relationship**


- E.g. Many courses have many students and many
       students are part of many courses.
