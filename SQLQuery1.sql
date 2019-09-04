USE AdventureWorks2008R2;

SELECT 
RANK() OVER(ORDER BY oh.SalesOrderID DESC) [RANK],c.CustomerID,
 c.PersonID,
 COUNT(SalesOrderID) AS "Total Order"
FROM Sales.Customer c
INNER JOIN Sales.SalesOrderHeader oh
ON c.CustomerID = oh.CustomerID
GROUP BY c.CustomerID, c.PersonID, oh.SalesOrderID
ORDER BY c.CustomerID DESC;


GO
SELECT i.ProductID, p.Name, i.LocationID, i.Quantity
,DENSE_RANK() OVER
(PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
ORDER BY i.LocationID;
GO

SELECT TOP 1 WITH TIES c.CustomerID, COUNT(o.SalesOrderid)[Total Orders]
FROM Sales.Customer c LEFT OUTER JOIN Sales.SalesOrderHeader o
ON c.CustomerID = o.CustomerID
GROUP BY  c.CustomerID
ORDER BY [Total Orders] DESC;