/*1. Create a report showing the title of courtesy and the first and last name
of all employees whose title of courtesy is not "Ms." or "Mrs.".*/

/*SELECT * FROM Employees*/

SELECT e.FirstName, e.LastName, e.TitleOfCourtesy
FROM Employees e
WHERE e.TitleOfCourtesy NOT IN ('Ms.', 'Mrs.')

/*2. Create a report that shows the company name, contact title, city and country of all customers 
in Mexico or in any city in Spain except Madrid(in Spain).*/

SELECT c.CompanyName, c.ContactTitle,c.City,c.Country
FROM Customers c
WHERE (c.Country = 'Mexico' OR c.Country = 'Spain') AND c.City NOT IN ('Madrid')

/*SELECT * FROM Customers*/


/*3. Create a report showing the title of courtesy and the first and
last name of all employees whose title of courtesy begins with "M" and
is followed by any character and a period (.).*/

SELECT e.TitleOfCourtesy, e.FirstName, e.LastName
FROM Employees e
WHERE e.TitleOfCourtesy LIKE 'M_.'

/*M_.*/


/*4. Create a report showing the first and last names of
all employees whose region is defined.*/

SELECT e.FirstName,e.LastName
FROM Employees e
WHERE e.Region IS NOT NULL

/*5. Select the Title, FirstName and LastName columns from the Employees table.
Sort first by Title in ascending order and then by LastName 
in descending order.*/

SELECT e.Title,e.FirstName,e.LastName
FROM Employees e
ORDER BY e.Title, e.LastName DESC

/*6. Write a query to get the number of employees with the same job title.*/
SELECT COUNT(*) AS "Number of Employees", e.Title
From Employees e
GROUP BY e.Title
/*NOTE SURE BOUT THIS*/

/*7.
Create a report showing the Order ID, the name of the company that placed the order,
and the first and last name of the associated employee.
Only show orders placed after January 1, 1998 that shipped after they were required.
Sort by Company Name.
*/


/*This going to be a three way join, from customers to orders to employee*/
SELECT o.OrderID, c.CompanyName, e.FirstName,e.LastName, o.OrderDate
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
INNER JOIN Employees e
ON o.EmployeeID=e.EmployeeID
WHERE (o.OrderDate > '1998-01-01') AND (o.ShippedDate > o.RequiredDate)
ORDER BY c.CompanyName

/*SELECT * FROM Orders*/


/*8.
Create a report that shows the total quantity of per products (from the OrderDetails table) ordered. 
Only show records for products for which the quantity ordered is fewer than 200. 
The report should return*/


SELECT (od.ProductID)
,SUM(od.Quantity) AS 'Total Quantity Of Per Products'
FROM [Order Details] od
GROUP BY od.ProductID
HAVING SUM(od.Quantity) < 200


/*9.Create a report that shows the total number of orders
by Customer since December 31, 1996. The report should only 
return rows for which the NumOrders is greater than 15. 
*/

SELECT COUNT(o.OrderID) AS "Number Of Orders"
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID=c.CustomerID
WHERE o.OrderDate >= '1996-12-31'
GROUP BY c.CustomerID
HAVING COUNT(c.CustomerID) > 15

/*to find the number of orders per customer, i need to COUNT
the number of orders attached to each Customer ID
I need to join customers with orders, so one JOIN'
*/


/*10.  SQL statement will return all customers, and number of orders they might have placed. 
Include those customers as well who have not placed any orders.*/

SELECT COUNT(o.OrderID) AS "Number of Orders Placed", c.CustomerID
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID