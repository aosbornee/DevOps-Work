/*Write a query that lists all Customers in either 
Paris or London. Include Customer ID, 
Company Name and all address fields. */

/*Exercise 1.1*/
SELECT c.CustomerID, c.CompanyName, c.Address
FROM Customers c
WHERE c.City IN ('Paris', 'London');



/*Exercise 1.2
List all products stored in bottles. */

SELECT p.ProductID, p.ProductName, p.QuantityPerUnit
FROM Products p
WHERE p.QuantityPerUnit LIKE '%bottle%';

/*Exercise 1.3
Repeat question above but add in the Supplier Name and Country.*/

SELECT p.ProductID, p.ProductName,s.CompanyName AS "Supplier Name", s.Country
FROM Products p
INNER JOIN Suppliers s
ON p.SupplierID=s.SupplierID
WHERE p.QuantityPerUnit LIKE '%bottle%';


/*Exercise 1.4

 Write an SQL Statement that shows how many products there are in each category. 
 Include Category Name in result set and list the highest number first. */

SELECT COUNT(p.ProductID) AS "Number Of Products", c.CategoryName
FROM Products p
INNER JOIN Categories c
ON p.CategoryID=c.CategoryID
GROUP BY c.CategoryName
ORDER BY "Number Of Products" DESC

/*Exercise 1.5
List all UK employees using concatenation to join their title of courtesy, 
first name and last name together. Also include their city of residence.*/

SELECT
CONCAT(e.TitleOfCourtesy, ' ', e.FirstName, ' ', e.LastName) AS 'UK Employees',
e.City
FROM Employees e
WHERE e.Country LIKE ('UK')

/*Exercise 1.6
List Sales Totals for all Sales Regions 
(via the Territories table using 4 joins) 
with a Sales Total greater than 1,000,000. 
Use rounding or FORMAT to present the numbers.  */


SELECT t.RegionID
,FORMAT(SUM((od.Quantity*od.UnitPrice) * (1-od.Discount)),'C') AS "Sales Totals for all Sales Regions"
FROM Territories t
INNER JOIN EmployeeTerritories et
ON t.TerritoryID=et.TerritoryID
INNER JOIN Employees e ON et.EmployeeID=e.EmployeeID
INNER JOIN Orders o ON e.EmployeeID=o.EmployeeID
INNER JOIN [Order Details] od ON o.OrderID=od.OrderID
GROUP BY t.RegionID
HAVING SUM((od.Quantity*od.UnitPrice) * (1-od.Discount)) > 1000000
ORDER BY SUM((od.Quantity*od.UnitPrice) * (1-od.Discount)) DESC


/*Exercise 1.7
Count how many Orders have a Freight amount greater 
than 100.00 and either USA or UK as Ship Country. */

SELECT COUNT(o.Freight) AS "No. Of Freight"
FROM Orders o
WHERE o.Freight > 100.00 AND o.ShipCountry IN ('USA', 'UK')



/*Exercise 1.8
Write an SQL Statement to identify the Order Number of the Order 
with the highest amount(value) of discount applied to that order. 
*/

/*Sum function adds the value in every row in a column,
in this case we only want the result of a single row*/

SELECT TOP 1 od.OrderID 
,ROUND(SUM((od.UnitPrice * od.Quantity * od.Discount)),2) AS "Money taken off from Discount"
FROM [Order Details] od
GROUP BY od.OrderID
ORDER BY "Money taken off from Discount" DESC


SELECT od.OrderID 
,(od.UnitPrice * od.Quantity * od.Discount) AS "Money taken off from Discount"
FROM [Order Details] od
WHERE od.OrderID IN (11030)
ORDER BY "Money taken off from Discount" 



/*Exercise 2*/

DROP TABLE spartans

/*Exercise 2.1 
Write the correct SQL statement to create the following table: 

Spartans Table – include details about all the Spartans on this course. Separate Title, 
First Name and Last Name into separate columns, and include University attended,
course taken and mark achieved. Add any other columns you feel would be appropriate*/

CREATE TABLE Spartans(SpartansID INTEGER NOT NULL IDENTITY(1,1)
    ,title VARCHAR(3)
    ,first_name VARCHAR(255)
    ,last_name VARCHAR(255)
    ,university_attended VARCHAR(255)
    ,course_taken VARCHAR(255)
    ,mark_obtained INT
    ,university_experience DECIMAL(2,1))
    ,PRIMARY KEY (SpartansID)
)


/*Exercise 2.2 Write SQL statements to add the details of the Spartans in your course to the table you have created.*/

 [Spartans](title, first_name, last_name, university_attended
                       ,course_taken, mark_obtained, university_experiencINSERT INTOe)
VALUES
    ('Mr.', 'Andrew', 'Osborne', 'University Of Portsmouth', 'Biomedical Science', 70, 4.8),
    ('Mr.', 'Man-Wai', 'Tse', 'University of Hertfordshire', 'Aerospace Engineering', 66, 4.0),
    ('Ms.', 'Georgina', 'Barlett', 'University Of Newcastle', 'Archaeology', 63, 3.7),
    ('Mr.', 'Humza', 'Malak', 'University of Kent', 'Computer Science', 58, 3.9),
    ('Mr.', 'Bari', 'Allali', 'University of Lancaster', 'Business Econmomics', 64, 4.3),
    ('Mr.', 'Mehdi', 'Shamaa ', 'University of Nottingham', 'Philosphy and Economics', 57, 4.8),
    ('Ms.', 'Anais', 'Tang', 'University Of Edinburgh', 'Modern Languages', 69, 5.0),
    ('Mr.', 'Saheed', 'Lamina', 'University of Warwick', 'Politics and International Studies', 68, 4.7),
    ('Mr.', 'Sohaib', 'Sohail', 'Brunel University', 'Communications and Media Studies ', 67, 4.1),
    ('Ms.', 'Ugne', 'Okmanaite ', 'Aston University', 'International Business Management', 65, 3.9),
    ('Mr.', 'John', 'Byrne', 'University of Greenwich', 'Computing with Games development', 60, 3.9),
    ('Ms.', 'Daniel', 'Teegan', 'University of Brighton', 'Product Design ', 59, 2.9),
    ('Mr.', 'Max', 'Palmer', 'University of Birmingham', 'Ancient History', 63, 4.4);


UPDATE Spartans
SET first_name = 'Jack'
WHERE SpartansID = 1


SELECT * 
FROM Spartans


/*Exercise 3*/

/*Exercise 3.1
 List all Employees from the Employees table and who they report to. No Excel required. */


/*Need additional practice with self joins*/
SELECT ed.EmployeeID,
CONCAT(ed.FirstName, ' ', ed.LastName) AS "Who the Employee Reports To"
,CONCAT(es.FirstName, ' ', es.LastName) AS "Employee Name"
FROM Employees ed, Employees es
WHERE es.ReportsTo = ed.EmployeeID
ORDER BY "Who the Employee Reports To"

/*SELECT * FROM Employees*/

/*Exercise 3.2
List all Suppliers with total sales over $10,000 in the Order Details table. 
Include the Company Name from the Suppliers Table and present as a bar chart as below: (5 Marks)*/


/*Apply a discount to the total sales by */
SELECT s.CompanyName
,ROUND(SUM((od.UnitPrice * od.Quantity) * (1-od.Discount)),2) AS "Total Sales over $10,000"
FROM [Order Details] od
INNER JOIN Products p
ON od.ProductID=p.ProductID
INNER JOIN Suppliers s
ON p.SupplierID=s.SupplierID
/*The group by function is telling the sum function, how we want to seperate the sum, 
otherwise every row in the column would be added,
In this case we want to seperateb it out by company name*/
GROUP BY s.CompanyName
HAVING ROUND(SUM((od.UnitPrice * od.Quantity) * (1-od.Discount)),2) > 10000
ORDER BY "Total Sales over $10,000"



SELECT od.UnitPrice, od.Quantity, od.Discount
FROM [Order Details] od

SELECT * FROM CUSTOMERS

/*Exercise 3.3
3.3 List the Top 10 Customers YTD for the latest year in the Orders file. 
Based on total value of orders shipped. No Excel required. (10 Marks) */

SELECT TOP 10 c.CustomerID, c.CompanyName
,FORMAT(SUM((od.Quantity*od.UnitPrice) * (1-od.Discount)),'C') AS "YTD Sales Of Orders Shipped"
FROM [Order Details] od
INNER JOIN Orders o
ON od.OrderID=o.OrderID
INNER JOIN Customers c
ON o.CustomerID=c.CustomerID
WHERE YEAR(o.OrderDate)=(SELECT MAX(YEAR(o.OrderDate)) FROM Orders o) 
AND o.ShippedDate IS NOT NULL
GROUP BY c.CustomerID, c.CompanyName
ORDER BY (SUM((od.Quantity*od.UnitPrice) * (1-od.Discount))) DESC

/*Also gonna need to MAKE SURE DATE was no later than 27th of June
Gonna need to join customers with orders with order details*/


/*Exercise 3.4
3.4 Plot the Average Ship Time by month for all data in the Orders Table using a line chart as below. (10 Marks) */

/*Ship time will be worked out by minusing shippeddate from order date */

/*Average ship time by month means they are asking in terms of
how long does shipping take in jan, feb, march etc*/


/*Order Id is unqiue for every row so we can't group by month and have orderID in the select clause*/

/*Here we are getting the average of the orders across the whole year, but we want it per month*/
SELECT AVG(sq1.[Time Taken To Ship Orders]) AS "Average Time Taken Per Month"



SELECT AVG(sq1.[Time Taken To Ship Orders]) AS "Average Time Taken Per Month"
,sq1.[Month Of Delivery] AS "Month Of Delivery"
/*Creating a second column to the Outer Query which will show each month*/

/*We used a sub query because we couldn't use an average on the Time taken to ship orders
   as this would produce one column, when we needed 12.
   Using the sub query allowed us to create a new table. Then using the main query we work out the average on the
   sub query column and group the return data by month.
   By doing an Average on the column of a sub query*/
FROM (SELECT (DATEDIFF(d,OrderDate,ShippedDate)) AS "Time Taken To Ship Orders"
,MONTH(o.OrderDate) AS "Month Of Delivery"
FROM Orders o) sq1
/*Grouping by month of delivery to see the AVG time per month*/
GROUP BY sq1.[Month Of Delivery], "Month Of Delivery"
ORDER BY "Month Of Delivery" 





SELECT AVG(sq1.[Time Taken To Ship Orders]) AS "Average Time Taken Per Month"
,sq1.[Date Of Delivery] AS "Month Of Delivery"
FROM Orders o, (SELECT (DATEDIFF(d,OrderDate,ShippedDate)) AS "Time Taken To Ship Orders"
,FORMAT(o.OrderDate, 'yy-MMM') AS "Date Of Delivery"
FROM Orders o) sq1
GROUP BY YEAR(O.OrderDate), MONTH(O.OrderDate), sq1.[Date Of Delivery]
ORDER BY YEAR(O.OrderDate), MONTH(O.OrderDate), sq1.[Date Of Delivery]




/*This is the final code*/
SELECT AVG(sq1.[Time Taken To Ship Orders]) AS "Average Time Taken Per Month"
,sq1.[Date Of Delivery] "Month Of Delivery"
FROM (SELECT (DATEDIFF(d,OrderDate,ShippedDate)) AS "Time Taken To Ship Orders"
,FORMAT(o.OrderDate, 'yy-MM') AS "Date Of Delivery"
FROM Orders o) sq1
GROUP BY sq1.[Date Of Delivery]
ORDER BY sq1.[Date Of Delivery]













