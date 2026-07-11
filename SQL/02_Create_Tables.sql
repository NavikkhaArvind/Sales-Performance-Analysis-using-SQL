CREATE TABLE Sales (
OrderID INT PRIMARY KEY,
OrderDate DATE,
CustomerID VARCHAR(20),
CustomerName VARCHAR(100),
Region VARCHAR(30),
City VARCHAR(50),
Salesperson VARCHAR(100),
ProductID INT,
ProductName VARCHAR(100),
Category VARCHAR(50),
Quantity INT,
UnitPrice DECIMAL(10,2),
DiscountPercent DECIMAL(5,2),
SalesAmount DECIMAL(10,2),
Cost DECIMAL(10,2),
Profit DECIMAL(10,2),
PaymentMethod VARCHAR(30)
);
