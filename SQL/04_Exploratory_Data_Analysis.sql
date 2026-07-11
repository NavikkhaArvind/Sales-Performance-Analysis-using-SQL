USE SalesPerformanceDB;

-- View all records
SELECT * FROM Sales;

-- Total Orders
SELECT COUNT(*) AS TotalOrders
FROM Sales;

-- Total Sales
SELECT SUM(SalesAmount) AS TotalSales
FROM Sales;

-- Total Profit
SELECT SUM(Profit) AS TotalProfit
FROM Sales;

-- Average Order Value
SELECT AVG(SalesAmount) AS AverageOrderValue
FROM Sales;

-- Number of Customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM Sales;

-- Sales by Region
SELECT Region,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region
ORDER BY TotalSales DESC;

-- Profit by Region
SELECT Region,
SUM(Profit) AS TotalProfit
FROM Sales
GROUP BY Region
ORDER BY TotalProfit DESC;

-- Sales by Category
SELECT Category,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Category
ORDER BY TotalSales DESC;

-- Top 10 Customers
SELECT CustomerName,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 10;

-- Top 10 Products
SELECT ProductName,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY ProductName
ORDER BY TotalSales DESC
LIMIT 10;

-- Monthly Sales
SELECT MONTH(OrderDate) AS Month,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY MONTH(OrderDate)
ORDER BY Month;

-- Payment Method Distribution
SELECT PaymentMethod,
COUNT(*) AS Orders
FROM Sales
GROUP BY PaymentMethod;

-- Highest Profit Orders
SELECT *
FROM Sales
ORDER BY Profit DESC
LIMIT 10;
