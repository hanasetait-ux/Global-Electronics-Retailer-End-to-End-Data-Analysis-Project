

CREATE DATABASE GlobalElectronicsRetailer;

use GlobalElectronicsRetailer
----- first and last order dates ----

select order_date from Cleaned_Sales
select
MIN (order_date) FirstOrderDate,
MAX (order_date) LastOrderDate,
datediff(MONTH, min(order_date), max(order_date))as OrderRangesMonths
from Cleaned_Sales

------min and Max Age -----
select 
min(Birthday) as OldestBirthdate,
DATEDIFF(year, Min(Birthday), getdate ()) as OldestAge,
max (Birthday) as youngestBirthdate,
datediff(year,max(Birthday), getdate()) as youngestAge
from Cleaned_Customers

--------total orders on every age-----

SELECT 
    DATEDIFF(YEAR, Birthday, GETDATE()) AS Age,
    COUNT (Order_Number) AS TotalOrders
from Cleaned_Customers
join Cleaned_Sales
    ON Cleaned_Customers.CustomerKey = Cleaned_Sales.CustomerKey
GROUP BY DATEDIFF(YEAR,Birthday, GETDATE())
ORDER BY TotalOrders Desc;

---------sales value on every order------------

select top 10 s.Order_Number, s.Quantity, p.Product_Name,
p.Unit_Price_USD,
(s.Quantity * p.Unit_Price_USD) as SalesValue
from  Cleaned_Sales s
join  Cleaned_Products p
on s.ProductKey = p.Productkey

-------total revenue ------
SELECT 
    SUM(s.Quantity * p.Unit_Price_USD) AS TotalSalesValue
FROM Cleaned_Sales s
JOIN Cleaned_Products p
    ON p.ProductKey = s.ProductKey

------- total sales per year-----

SELECT 
 YEAR(s.Order_Date) AS SalesYear,
 SUM(s.Quantity * p.Unit_Price_USD) AS TotalSalesValue
FROM Cleaned_Sales s
JOIN Cleaned_Products p
    ON p.ProductKey = s.ProductKey
GROUP BY YEAR(s.Order_Date)
ORDER BY SalesYear;

--------average Cost ---
select AVG (Unit_Cost_USD) as average_cost from Cleaned_Products

------total number by every gender

SELECT Gender, COUNT (CustomerKey) as total from Cleaned_Customers
GROUP by Gender

------- total orders per country-------
select Country, COUNT(CustomerKey) as country_orders from Cleaned_Customers 

group by country

order by country_orders desc

-------   orders by category   --------
select Category, COUNT(Category) as orders_by_category from Cleaned_Products
group by Category
order by orders_by_category desc

-------profit by country------
select sum ((p.Unit_Price_USD-p.Unit_Cost_USD)*s.Quantity) as profit, t.country
from Cleaned_Products p
join Cleaned_Sales s 
on p.ProductKey = s.ProductKey
join Cleaned_Stores t
on t.StoreKey = s.StoreKey
group by t.Country
order by Profit desc

-----profit by category ---

select sum ((p.Unit_Price_USD-p.Unit_Cost_USD)*s.Quantity) as profit, p.Category
from Cleaned_Products p
join Cleaned_Sales s 
on p.ProductKey = s.ProductKey
group by p.Category
order by profit desc

