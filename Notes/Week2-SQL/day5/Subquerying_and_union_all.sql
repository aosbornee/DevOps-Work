




SELECT o.OrderID, CONVERT(VARCHAR(10),OrderDate,103) AS
[dd/MM/yyy]
FROM Orders o/*Before 2012*/

SELECT o.OrderID,FORMAT(OrderDate,'dd/MM/yyyy')
FROM Orders o /*After 2012*/


/*SUB QUERY

The inner query executes first before its parent query 
so that the results of an inner query can be passed to the outer query.

*/


SELECT c.CompanyName AS "Customer"
FROM Customers c
WHERE c.CustomerID NOT IN
/*This part runs first*/
(SELECT o.CustomerID FROM Orders o)


SELECT c.CompanyName AS "Customer"
FROM Customers c
WHERE c.CustomerID NOT IN
/*This part runs first*/
(SELECT o.CustomerID FROM Orders o)



SELECT c.CompanyName AS "Customer"
FROM Customers c
FULL JOIN Orders o ON c.CustomerID=o.CustomerID
WHERE o.CustomerID IS NULL

SELECT c.CompanyName AS "Customer"
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID=o.CustomerID
WHERE o.CustomerID IS NULL

SELECT c.CompanyName AS "Customer"
FROM Orders o
RIGHT JOIN Customers c ON c.CustomerID=o.CustomerID
WHERE o.CustomerID IS NULL

/*Nested Queries and sub queries are the same thing*/

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,
(SELECT MAX(UnitPrice) FROM [Order Details] od) AS "Max Price"
FROM [Order Details] 


/*So the inner query works first and creates a virtual table, then we run
   the main query and this creates the table and INNER JOINS it with the
   virtual table that was created in the inner query*/
SELECT od.ProductID,sq1.totalamt AS "Total Sold for this Product",
od.UnitPrice,od.UnitPrice/totalamt*100 AS "% of Total"
FROM [Order Details] od
INNER JOIN
        (SELECT od.ProductID,SUM(od.UnitPrice*od.Quantity) AS "totalamt"
        FROM [Order Details] od
        GROUP BY od.ProductID) sq1 ON sq1.ProductID=od.ProductID


SELECT od.OrderID, od.ProductID, od.UnitPrice, od.Quantity, od.Discount
FROM [Order Details] od 
WHERE od.ProductID IN (SELECT p.ProductID FROM Products p WHERE p.Discontinued=1)



SELECT od.OrderID, od.ProductID, od.UnitPrice, od.Quantity, od.Discount
FROM [Order Details] od
WHERE od.ProductID NOT IN (SELECT p.Discontinued p FROM Products p)

/*We can do the same thing using inner join*/

SELECT od.OrderID, od.ProductID, od.UnitPrice, od.Quantity, od.Discount
FROM [Order Details] od
INNER JOIN Products p ON od.ProductID=p.ProductID
WHERE p.Discontinued=1


/*Both SELECT statements must have the same no. of columns
  in the select clause in order for them to be stacked

  We are combining one column from each table and putting it into one



  
  Only the column alias in the first select statement will be implemented
  
  Understand in more detail what UNION/UNION ALL actually does
  
  UNION ALL supports duplicate values, UNION does not.*/

SELECT e.EmployeeID AS "Employee/Supplier"
FROM Employees e
UNION ALL
SELECT SupplierID
FROM Suppliers



