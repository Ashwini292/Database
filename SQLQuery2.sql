
Use AdventureWorks2008R2;

SELECT s.TerritoryID,s.CustomerID, s.TotalDue as [Total Sales], RANK() OVER(PARTITION BY s.TerritoryID ORDER BY s.TotalDue DESC) as Mostvaluable
FROM Sales.SalesOrderHeader s
GROUP BY s.TerritoryID, s.CustomerID, s.TotalDue
Order by TerritoryID, Mostvaluable;

WITH Temp as (SELECT s.TerritoryID,s.CustomerID, s.TotalDue as [Total Sales],
 RANK() OVER(PARTITION BY s.TerritoryID ORDER BY s.TotalDue DESC) as Mostvaluable
FROM Sales.SalesOrderHeader s
GROUP BY s.TerritoryID, s.CustomerID, s.TotalDue)
Select * from Temp where Mostvaluable=1
Order by TerritoryID, Mostvaluable;


WITH Temp as (SELECT s.TerritoryID,s.CustomerID, SUM(s.TotalDue) as [Total Sales],
 RANK() OVER(PARTITION BY s.TerritoryID ORDER BY SUM(s.TotalDue) DESC) as Mostvaluable
FROM Sales.SalesOrderHeader s
GROUP BY s.TerritoryID, s.CustomerID, s.TotalDue)
Select * from Temp where Mostvaluable=1
Order by TerritoryID, Mostvaluable;

Use AdventureWorks2008R2;
Select * from Person.person;
 show tables;


 Select * from Production.TransactionHistory;
 select * from Sales.Customer;

  select * from Sales.SalesPerson where BusinessEntityID=34;
 Select c.CountryRegionCode,c.Name, p.FirstName, 
 p.LastName,p.NameStyle,p.Suffix
from Person.CountryRegion c, Person.Person p
where suffix !=' 'and c.Name like '%America%' ;

select * from HumanResources.Employee;

Select * from Person.Person p, Sales.SalesPerson s where s.BusinessEntityID=p.BusinessEntityID;

select TerritoryID, Name from Sales.SalesTerritory where Name like 'North%';
select LocationID, Name from Production.Location where Name like 'North%';
select Name, CountryRegionCode, TerritoryID from Person.StateProvince where Name like'North%';

Territoryi 1 to 6 for group NorthAmerica in SalesTerritory Table;
Employee has Gender;

select Name,ProductCategoryID from Production.ProductCategory;
 Select distinct Color from Production.Product;

 select count(*) CustomerID from Sales.SalesOrderHeader s LEFT OUTER JOIN Sales.Customer c on s.CustomerID=c.CustomerID;
 select c.CustomerID, s.SalesOrderID from Sales.Customer c, Sales.SalesOrderHeader s;

 select count(*) CustomerID from Sales.Customer;