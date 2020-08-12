/*The COUNT() function returns the number of rows that matches a specified criterion.

The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
this allows us to arrange our columns into groups.

The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.

/*An aggregate function performs a calculation on a set of values, and returns a single value */
/*Count, MIN, MAX, AVG and SUM are the main ones*/

/*WHERE goes through the columns one by one seeing if the condition is there, 
however if you're using an aggregate function, 
the column values have been changed and so you cannot use WHERE as these values have changed*/

/*Having limits them after their grouped, WHERE limits them before their grouped*/

/*Within in outer join we have Full join, left join and right join
 and then we have INNER JOIN
 Another join is SELF JOIN */


/*Whatever you have in the select, you must also have
in the group by clause*/

SELECT COUNT(CustomerID), Country
FROM Customers;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/*Inner Join releases only sets of records that are in both table A and B*/

SELECT c.
FROM customers c