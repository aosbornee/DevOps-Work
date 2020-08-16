#Week 2.3 SQL

Presentation on Thursday with my group on 
group by and Having

Mock Test on friday.

10 minutes per question, 10 question.
Final exam Tuesday.


#Today will be on DML Select


The COUNT() function returns the number of rows that matches a specified criterion.

```SQL
SELECT COUNT(e.EmployeeID) AS 'Number of Employees in London' 
FROM Employees e
WHERE City='London'
```
Here we are counting the number of rows where the city is equal to London
and returning those number of rows


Using the WHERE class filters the data to only show
the rows that are equal to what you specify

*Note that when it comes to using AS, coding games wants us to use double quotes*

*single codes are fine to use when quoting values e.g WHERE City LIKE 'Paris'*

*AND keyword means that ALL statements have to be fulfilled*

*OR keyword means that at LEAST ONE statement has to be fulfilled*

```SQL
SELECT p.ProductName, p.UnitPrice
FROM Products p
WHERE p.UnitsInStock >0 AND p.UnitPrice > 29.99
```
Here we are saying, we want to select the rows where there are still units in stock and the price is £30
or greater.
In this case, BOTH statements must be fulfilled in order for the rows to be returned

```SQL
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >0 OR ProductName = 'Chang'
```
Here we want to select the rows where there are items in stock or the product
that is called 'Chang'



Note that if we have apostrophes in our code,
we need to escape it with extra apostrophes
```SQL 
insert into Person (First, Last)
values ('Joe', 'O''Brien')
```


###LIKE operator

This is only used with WHERE.
WHERE LIKE determines if a character string matches a pattern.

```SQL
SELECT *
FROM Employees e
WHERE e.Country LIKE ('UK')
```
Here we want to select all the rows from the Employees table where the country is
LIKE 'UK'

### WildCards

WildCards can be used as a substitute for any other characters in a string.

% - This is a substitute for zero or more characters

- _ (underscore) - Each underscore is a substitute for a single character

- [charlist] - Sets ranges of characters e.g LIKE '[NMA]%' would return anything 
that begins with either of those three letters

- [^charlist] Will bring back anything that IS NOT equal to the characters specified e.g
LIKE '[^AUH]%' would return anything that DOESN'T begin with either of those three letters


```SQL
SELECT * 
FROM Customers
WHERE Region LIKE '%A'
```
We want to return all the columns from customer where the region ends in
an 'A' 


```SQL
SELECT * 
FROM Customers
WHERE Region LIKE '[UAM]%'
```

We want to return all the columns in the customers table where the region begins with either
a U, A or M.

```SQL
SELECT * 
FROM Customers
WHERE Region LIKE '%[TUA]'
```
Here we want to return all the rows that do not end in either a T, U or A.

```SQL
SELECT DISTINCT Country
FROM Customers
WHERE Country LIKE '__A%'
```
Here we want to return the rows where the THIRD character in the string is an A
So rows that have countries equal to Brazil, France and Spain etc would be returned



###IN Operator

This is shorthand for using the OR condition
```
SELECT *
FROM Customers
WHERE Region IN ('WA','SP')
AND Country IN ('Brazil', 'USA')

```
So we want to return all the customers that are in
the region of WA or SP and are from either Brazil or USA

This could also be written using the OR operator

```SQL
SELECT *
FROM Customers
WHERE (Region ='WA' OR Region ='SP') AND (Country = 'Brazil' or Country ='USA')
```

---

##Using GROUP BY
```SQL
SELECT COUNT(*) AS 'Number of Employee Orders'
FROM Orders
WHERE EmployeeID IN (5,7)
```
Here we are asking SQL to count up how many employee orders \
were made from Employee 5 OR Employee 7 \
This would return 114 orders

```SQL
SELECT COUNT(*) AS 'Number of Employee Orders'
FROM Orders
WHERE EmployeeID IN (5,7)
GROUP BY EmployeeID
```
Now by adding the Group BY Clause, SQL will split the
results into two rows, one for how many orders were made \
Employee ID 5 and one for Employee ID 7 \

## Concatenation ## 
This allows us to combine the data of multiple columns into
a single column. \

```SQL
SELECT CONCAT(FirstName,' ',LastName) AS 'Employee Name'
FROM Employees
```
Here we want to bring the first and last name together
to make the Employee's fullname ---


## FORMAT ##

FORMAT(SUM((od.Quantity*od.UnitPrice) * (1-od.Discount)),'C') AS "Sales Totals for all Sales Regions"\


Using the FORMAT function and then setting an argument to 'C' allows the column to be changed to currency\
Using '%' would change it to percentage




## USING NOT NULL ##

```SQL
SELECT DISTINCT Country, region
FROM Customers 
WHERE Region IS NOT NULL;
```
Here we want to return the rows that have a region,
regions that are 'NULL' will not be returned

## Using the ROUND function ##

```SQL
SELECT UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS 'Gross Total',
ROUND((UnitPrice * Quantity * 1-Discount),2) AS "Net Total"
FROM [Order Details]
```
Here we are working out the Gross Total of all orders ---
after the discount ---

Using the Round function and setting it to 2 will mean ---
the answer would be rounded to 2 decimal places ---

## USING ORDER BY ##

By default, just using 'ORDER BY' would order things in ---
ascending order, using 'DESC' orders in descending order---

```SQL
SELECT UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS 'Gross Total',
ROUND((UnitPrice * Quantity * 1-Discount),2) AS "Net Total"
FROM [Order Details]
ORDER BY "Net Total" DESC
```


## String Functions ##

String functions always take the column we want to work on\
as an argument along with the rest of the arguments E.g\

CHARINDEX returns the index of a certain string\


SUBSTRING takes two arguements, the first being the start\
position of the character index and the second being what length to go to\


```SQL
SELECT film_name, 
SUBSTRING(film_name, 1, 3) AS "Extracted String" 
FROM film_table
```
Here we are starting at index position 1 and going to position 3\
and returning those characters\

resort to this link to see what the code executes ....

REPLACE works by replacing the characters we specify with\
other characters that we also specify


LEN works by returning the length of a string

LEFT/RIGHT works by starting from either the LEFT or RIGHT side\
of the string and then moving across however many characters\
are specified and returning those characters.





