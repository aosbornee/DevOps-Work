
/*Date Functions*/

/*

/*
 GETDATE- SELECT GETDATE() - Returns the current time
 SYSDATETIME - SELECT SYSDATETIME - Returns the computerised time
/*

/*
DATEADD()(d,5,OrderDate) AS "Due Date", DATEADD()(m,3,OrderDate) "AS Due Date"
In the first example you are adding 5 days to the order date
In the second example you are adding 3 Days to the order date


DATEDIFF(d,OrderDate,ShippedDate)

This substracts the right from the lefft (shipped date - OrderDate)
to give the difference

YEAR - SELECT YEAR(OrderDate) AS "Order Year"
MONTH SELECT MONTH(OrderDate) AS "Order Month"
DAY SELECT MONTH(OrderDate) AS "Order Day"

*/

SELECT DATEADD(d,5,OrderDate) AS "Due Date",
DATEDIFF(d,OrderDate,ShippedDate) AS "Ship Days"
FROM Orders

SELECT * FROM Employees



SELECT OrderDate AS "Order Date",
DATEADD(d,5,OrderDate) AS "Due Date",
DATEDIFF(d,OrderDate,ShippedDate) AS "Ship Days"
FROM Orders





SELECT YEAR(BirthDate) AS "Year of Birth"
FROM Employees

/*Using date functions to find someones age having only their DOB  */
SELECT 
CONCAT(FirstName, ' ', LastName) AS 'Full Name',
DATEDIFF(YEAR,BirthDate,GETDATE()) AS "Employee Age"
FROM Employees


/* Finding their age with decimal points */
SELECT 
CONCAT(FirstName, ' ', LastName) AS 'Full Name',
DATEDIFF(DAY,BirthDate,GETDATE()) / 365.25 AS "Employee Age"
FROM Employees


/*Using Case Statements*/
SELECT CASE
WHEN DATEDIFF(d,OrderDate,ShippedDate) <10 THEN 'On Time'
ELSE 'Overdue'
END AS "Status"
FROM Orders


SELECT 
CONCAT (FirstName, ' ', LastName) AS "Full Name",
DATEDIFF(YEAR,BirthDate,GETDATE()) AS "Age",
CASE
WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) >= 65 THEN 'Retired'
WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) >= 60 THEN 'Retirement Due'
ELSE 'More than 5 years to go'
END AS "Retirement Status"
FROM Employees


/*Aggregate Functions*/

SELECT SUM(UnitsOnOrder) AS "Total On Order",
AVG(UnitsOnOrder) AS "Avg On Order",
MIN(UnitsOnOrder) AS "Min On Order",
MAX(UnitsOnOrder) AS "Max On Order"
FROM Products
GROUP BY SupplierID

SELECT 
CategoryID,
AVG(ReorderLevel) AS "AVG Reorder Level"
FROM Products
GROUP BY CategoryID
ORDER BY "AVG Reorder Level" DESC

/*When filtering based on a average, we can use the WHERE clause
WHERE will not work on GROUP BY data
Instead we use HAVING*/


SELECT SupplierID,
SUM(UnitsOnOrder) AS "Total On Order",
AVG(UnitsOnOrder) AS "AVG On Order"
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitsOnOrder) >5

/*Edgar F. Codd created relational databases.*/




/*Learn about test FORMAT*/