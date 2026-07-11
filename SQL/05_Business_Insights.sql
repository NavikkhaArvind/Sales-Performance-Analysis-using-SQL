-- Business Insight 1
-- South region generated the highest sales.

SELECT Region,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region
ORDER BY TotalSales DESC;

----------------------------------------------------

-- Business Insight 2
-- Electronics is the highest revenue category.

SELECT Category,
SUM(SalesAmount)
FROM Sales
GROUP BY Category
ORDER BY SUM(SalesAmount) DESC;

----------------------------------------------------

-- Business Insight 3
-- Cash is the most used payment method.

SELECT PaymentMethod,
COUNT(*)
FROM Sales
GROUP BY PaymentMethod
ORDER BY COUNT(*) DESC;
