USE Northwind

/*This will print all the columns from the Employees table*/

SELECT * FROM Employees

/*Here I am returning all the rows that have their city equal to Paris*/

SELECT * FROM customers WHERE City ='Paris'

/*How many Employees have a home city of London?*/

SELECT * FROM Employees WHERE City = 'London'

/*Counting all the rows where the employee lives in london,
  we give this new name a title named 'Number of Employees in London*/

SELECT COUNT(EmployeeID) AS 'Nunber of Employees in London' FROM Employees
WHERE City='London'

/*Which Employee is a Doctor?*/
SELECT * FROM Employees WHERE TitleOfCourtesy='Dr.'

/*Printing out all of the products*/
SELECT * FROM Products

/*How many Products are discontinued*/
SELECT * FROM Products WHERE Discontinued='1'

/*Instead of returning all the rows that are discontinued, we will be shown a new*/
SELECT COUNT(*) AS 'Number of Products that are discontinued' FROM Products
WHERE Discontinued=1


/*Note that when it comes to using AS, coding games wants us to use double quotes
  single codes are fine to use when quoting values (e.g. for VARCHAR using single quotes is fine*/



/*When doing this, type select, followed by the FROM customers c, then we can go back
  and start typing the table columns*/
SELECT c.ContactName, c.City, c.Country, c.Region
FROM Customers c
WHERE c.Region='BC'

/*The 'c' after customers is us giving the customer name a nickname
  so now when we select we 'write c.' and then the suggestions will appear/

/*This is known as table Aliasing*/


/*From a very large database, we will take the top n numbers of columns, we can specify how many*/
SELECT TOP 10 CompanyName, City
FROM Customers
WHERE Country='France'

/*AND keyword means that ALL statements have to be fulfilled */
/*OR keyword means that at LEAST ONE statement has to be fulfilled*/


/*Here we want to see products that are in stock and are over £30*/
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >0 AND UnitPrice >29.99


/*SELECT DISTINCT means that we only return unique values, no duplicate values will be shown
  thus if Mexico comes up twice, only the first column will be retuned*/

SELECT DISCTINT Country
FROM Customers


/*WildCards can be used as a substitute for any other characters in a string*/


/*
We don't care what comes after the first letter, as long as the first letter starts with a M
*/
SELECT Country
FROM Customers WHERE Country LIKE 'M%'

/*
We want to return the countries ending with the letters I then A
*/
SELECT Country
FROM Customers WHERE Country LIKE '%IA' --So Austria would be returned

/*Returning countries that start with a C and end with a A*/
SELECT Country
FROM Customers
WHERE Country LIKE 'C%A' --So Canada would be returned


/*Return all the countries that start with either a U, A or M*/
SELECT DISTINCT Country
FROM Customers
WHERE Country LIKE '[UAM]%'

/*Return all the countries that end with either a U, A or M*/
SELECT DISTINCT Country
FROM Customers
WHERE Country LIKE '%[UAM]'


/*Insert the order by acs and desc codes
 By default when just typing 'ORDER BY' it will sort in alphabetical order
*/

/*Select all the countries that start with either U, A or M and
  return them in descending order (from Z to A) */
SELECT DISTINCT Country
FROM Customers WHERE Country LIKE '[UAM]%'
ORDER BY Country DESC

/*The same as the code above instead we are ordering the code in
  ascending order*/
SELECT DISTINCT Country
FROM Customers WHERE Country LIKE '%[UAM]'
ORDER BY Country


/*^=Caret, In wildcards this means bring back every country
that doesn't start with U, A or M*/

SELECT DISTINCT Country
FROM Customers
WHERE Country LIKE '%[^UAM]'


/*The underscore is a substitute for a single character
  thus by using two underscores follwed by A  we want the third character to be A*/
SELECT DISTINCT Country
FROM Customers
WHERE Country LIKE '__A%' --This would return Brazil, Italy, France etc. as their third charactrs are all A


/*We want to return all the products that begin with a Ch*/
SELECT DISTINCT ProductName
From Products
WHERE ProductName LIKE 'Ch%'

/*Here we are going to return the regions that only has two characters
  and ends with the letter A*/

SELECT *
FROM Customers
WHERE Region LIKE '_A'


/*The IN Operator-supports equation to multiple values*/
SELECT *
FROM Customers
WHERE Region IN ('WA','SP')
AND Country IN ('Brazil', 'USA')

/*You could otherwise say where region ='WA' or region = 'SP'*/
/*Adding the brackets around the region shows that we want
  to split up the code so they do not run together.*/
SELECT *
FROM Customers
WHERE (Region ='WA' OR Region ='SP') AND (Country = 'Brazil' or Country ='USA')

SELECT *
FROM EmployeeTerritories
WHERE TerritoryID >= 06800 AND <= 09999

SELECT * FROM Products

SELECT ProductID, ProductName
FROM Products
WHERE UnitPrice < 5

SELECT * FROM orders

/*Here the employee orders wasn't in the employee table so
  we had to look in another table named orders*/

/*Using the 'group by' groups the data according to the employee ID*
  and so instead of just showing '114', it has split in two*/

SELECT COUNT(*) AS 'Number of Employee Orders'
FROM Orders
WHERE EmployeeID IN (5,7)
GROUP BY EmployeeID


SP_HELP Employees

/*We have used concatenation, so the city and country columns have been shown togther*/
SELECT CompanyName AS 'Company Name'
,City+', '+Country AS 'City'
FROM Customers

/*Concatenating the first name and last name into a Column titled 'Employee Name*/
SELECT CONCAT(FirstName,' ',LastName) AS 'Employee Name'
FROM Employees

/*Selecting all the countries that have a region code*/
SELECT DISTINCT Country, region
FROM Customers
WHERE Region IS NOT NULL;

SELECT * FROM Customers




/*ROUND(,2) limits the integers to only return 2 decimal points*/

SELECT UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS 'Gross Total',
ROUND((UnitPrice * Quantity * 1-Discount),2) AS "Net Total"
FROM [Order Details]
ORDER BY 'Gross Total' DESC


SELECT TOP 2 UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS 'Gross Total',
ROUND((UnitPrice * Quantity * 1-Discount),2) AS "Net Total"
FROM [Order Details]
ORDER BY 'Net Total' DESC



/*NOTE:
       In SQL indexing begins from 1*/


/** Need to Go Over This**/

/*Here we are changing column name to 'Post Code'*/


/*
  starting from the left, you find the index that has the character of blank and then minus 1
  this would take us to the last character at the first half of the post
 */

/*We then place this part of the code into a column that will be set to Post Code Region*/
SELECT PostalCode AS "Post Code",
LEFT(PostalCode, CHARINDEX(' ', PostalCode)-1) AS "Post Code Region"
FROM Customers
WHERE Country='UK'

WA1 BNGH

CHARINDEX(' ', PostalCode) AS "Space Found", Country
