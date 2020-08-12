/*Have to have a primary key-foreign key relationship to create a join*/

/*
   Full Joins will include the null results*/



/*The left table is the one listed immediately after the FROM clause,
  the Right table is the one after*/



/*Select all the records from the Customers table aswell as all the
  matches in the Orders table*/
SELECT *
FROM Customers
LEFT JOIN Orders
ON Orders.CustomerID=Customers.CustomerID


/*Select all the records from the two tables 
  where there is a match in both tables*/

SELECT * 
FROM Orders
INNER JOIN Customers
/*This on part shows that we are joining the tables at this
primary-foreign key relationship*/
ON Orders.CustomerID=Customers.CustomerID


/*HOMEWORK*/

SELECT CompanyName AS "Customer Name", Orders.OrderID, Orders.OrderDate, Orders.Freight,
CONCAT(FirstName, ' ', LastName) AS 'Employee Name'
FROM Customers
INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID


/*Using Aliasing allows for quicker coding and less typos*/
SELECT c.CompanyName AS "Customer Name",
o.OrderID,
o.OrderDate,
o.Freight,
CONCAT(e.FirstName, ' ', e.LastName) AS "Employee Name"
FROM Customers c
INNER JOIN Orders o ON c.CustomerID=o.CustomerID
INNER JOIN Employees e ON o.EmployeeID=e.EmployeeID

