#This file contains the notes necessary to do the group by, havings presentation

The 'COUNT()' keyword adds up all the numbers
of the specified column.


```sqL
SELECT COUNT(ProductID)
FROM Products;
```
This would return the sum of all product IDs.

The 'AVG()' keyword finds the average of whatever is specified


```sqL
SELECT AVG(Price)
FROM Products;
```
So in this example we are finding the average price
of all everything in the products table.

The 'SUM()' keyword works by finding the sum of all the records specified
```sqL
SELECT SUM(Quantity)
FROM OrderDetails;
```
Here we are adding up all of the quantity in the order details table
Note that NULL values are ignored.

We can also add 'WHERE' to make the statement more selective
```sqL
SELECT COUNT(productID)
FROM Products
WHERE
Price = 18
```
Here we are counting the number of products
where the price is equal to 18.

Using these commands individually isn't always helpful e.g.
as we don't know exactly what product is associated with what price.

To overcome this we can use 'GROUP BY' which allows us to group
the result-set by one or more columns.

```sqL
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
```
Here we are counting all of the customers that are from each country
and grouping the results by country.


```sqL
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
```

We want to return how many people live in each country, and return the
results from high to low.



```sqL
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
```
INNER JOIN

LEFT JOIN
RIGHT JOIN -
Returns all the records from the right table and the matched records from the left table.

Full Outer Join
Returns all the records when there is a mathc in either the left or the right table records