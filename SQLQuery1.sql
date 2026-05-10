CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE superstore (
   Order_ID VARCHAR(50),
   Order_Date DATE,
   Ship_Date DATE ,
   Customer_Name VARCHAR(100),
   Region VARCHAR(50),
   Category VARCHAR(50),
   Sub_Category VARCHAR(50),
   Product_Name VARCHAR(225),
   Sales FLOAT,
   Quantity FLOAT,
   Profit FLOAT );

Select TOP 10* FROM superstore_data;
--- Total Sales 
SELECT 
SUM (sales) as Total_Sales 
from
superstore_data
---Total Profit 
SELECT 
sum(profit) as total_Profit
from
superstore_data
----Total Orders 
Select 
Count(Distinct Order_ID) as Total_Orders
FROM
superstore_data
----Monthly Sales Trends 
SELECT 
    FORMAT(ORDER_DATE, 'yyyy-MM') AS Month,
	SUM(Sales) AS Monthly_Sales 
FROM superstore_data
GROUP BY FORMAT(Order_Date , 'yyyy-MM')
ORDER BY Month;
-----TOP 5 Product 
SELECT TOP 5
   Product_Name,
   SUM(Sales) AS Total_Sales 
   FROM superstore_data 
   GROUP BY Product_Name 
   ORDER BY Total_Sales DESC;
----- Category-Wise Sales 
SELECT 
category,
SUM(Sales) AS Total_sales 
FROM superstore_data
Group by Category ;
---Region - wise Sales 
select 
sum(Sales) as Total_Sales,
Region 
from
superstore_data 
group by region ;
----Top Customers 
Select TOP 5 
Customer_Name,
Sum(sales) as Total_Sales 
from 
superstore_data 
Group by Customer_Name
Order by Total_Sales DESC;

















