SELECT * FROM pizza_sales

--ALTER TABLE pizza_sales
--ALTER COLUMN order_id int

select SUM(total_price) / Count(distinct(order_id) as Avr_Order_Value from pizza_sales

SELECT SUM(quantity) as Total_Pizza_Sold from pizza_sales

SELECT COUNT(DISTINCT order_id) AS Total_orders from pizza_sales

SELECT SUM(quantity) / COUNT(DISTINCT order_id) as Avr_Pizza_Per_Order from pizza_sales

SELECT DATENAME(DW, order_date) as order_day , COUNT(DISTINCT order_id) as Total_oders
from pizza_sales
GROUP BY DATENAME(DW, order_date)

SELECT DATENAME(MONTH , order_date) AS Month_name , COUNT(DISTINCT order_id) as Total_oders
from pizza_sales
GROUP BY DATENAME(MONTH , order_date)
ORDER BY Total_oders DESC

SELECT pizza_category ,SUM(total_price) as total_sales , SUM(total_price) * 100 /( SELECT SUM(total_price) from pizza_sales) as PCT
from pizza_sales
where MONTH(order_date) = 1
GROUP BY pizza_category

SELECT pizza_size ,CAST(SUM(total_price) AS DECIMAL(10,2)) as total_sales , CAST(SUM(total_price) * 100 /
(SELECT SUM(total_price) from pizza_sales WHERE DATEPART (QUARTER , order_date) =1 ) AS DECIMAL(10,2)) as PCT
from pizza_sales
WHERE DATEPART (QUARTER , order_date) = 1
GROUP BY pizza_size
ORDER BY PCT DESC

SELECT TOP 5 pizza_name , SUM(total_price) as total_Revenu FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_Revenu DESC

SELECT TOP 5 pizza_name , SUM(total_price) as total_Revenu FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_Revenu ASC

SELECT TOP 5 pizza_name , SUM(quantity) as total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_Quantity ASC













