USE AdventureWorks2008R2;

/* Write a query to calculate the total sales difference
between the best performing sales territory and the worst
performing sales territory. The best performing sales territory
has the highest total sales amount. The worst performing sales
territory has the lowest total sales amount. Use TotalDue of
SalesOrderHeader for calculating the total sales amount.
*/

WITH Temp as
(select
RANK() OVER(ORDER BY SUM(sh.TotalDue)desc) as [RANK], SUM(sh.TotalDue) as [Total Sales Amount],sh.TerritoryID
from Sales.SalesOrderHeader sh LEFT OUTER JOIN Sales.SalesTerritory st 
on sh.TerritoryID=st.TerritoryID
GROUP BY sh.TerritoryID)
select
((select [Total Sales Amount] from Temp where [RANK]=1)
-
(select [Total Sales Amount] from Temp where [RANK]=10))
;







Question 4 (2 points) /* Write a query to return the sales territories which have
never had an order worth more than $120000. Include the
territory id, territory name and highest order value
in the returned data. Use TotalDue of SalesOrderHeader as
the order value. Sort the returned data by the territory id.
*/

Select MAX(sh.TotalDue) as [Highest Order Value],sh.TerritoryID,st.Name
from Sales.SalesOrderHeader sh INNER JOIN Sales.SalesTerritory st
ON sh.TerritoryID=st.TerritoryID where sh.TerritoryID not in(select 
TerritoryID from Sales.SalesOrderHeader where TotalDue>'120000')
group by sh.TerritoryID, st.Name
order by  TerritoryID;




Question 5 (3 points) /* Write a query to retrieve the most valuable customer
for each year. The most valuable customer had the highest
total purchase dollar amount of the year. Use TotalDue in
SalesOrderHeader to calculate the yearly total purchase
dollar amount for each customer. If there is a tie,
it needs to be retrieved.
Include the following columns in the returned data:
Year
Customer's id
Customer's last and first names
Customer's total purchase dollar amount
Sort the returned data by the year.*/

with temp as (
select year(OrderDate) Year, CustomerID, sum(TotalDue) TotalPurchase,
 rank() over (partition by year(OrderDate) order by sum(TotalDue) desc) TopCustomer
from Sales.SalesOrderHeader
group by year(OrderDate), CustomerID)
select year, c.CustomerID, pc.LastName, pc.FirstName,
 round(TotalPurchase, 2) as TotalMoneySpent, TopCustomer
from temp t
join Sales.Customer c
on t.CustomerID = c.CustomerID
join Person.Person pc
on c.PersonID = pc.BusinessEntityID
where TopCustomer = 1
order by year;

