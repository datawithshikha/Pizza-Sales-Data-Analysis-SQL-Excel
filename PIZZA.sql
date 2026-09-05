select * from pizza_sales

-- Total revenue
select SUM(total_price) as total_Revenue from pizza_sales

-- average order value
select sum(total_price)/count(Distinct order_id) as Avg_order_Value from pizza_sales

-- Total Pizza Sold
select sum(quantity) AS Total_pizza_sold from pizza_sales

--Total order
select COUNT(DISTINCT order_id)AS Total_orders from pizza_sales


select SUM(quantity)/COUNT(DISTINCT order_id) from pizza_sales

--Average  Pizzas per order
select CAST(CAST(SUM(quantity) AS decimal(10,2))/CAST(COUNT(DISTINCT order_id)AS decimal(10,2))  AS decimal(10,2))from pizza_sales

--Daily treand
select DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(DW, order_date)

--hourly trend
SELECT DATEPART(HOUR, order_time) AS order_hours, COUNT(DISTINCT order_id) As total_orders
from pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)


SELECT pizza_category, sum(total_price) * 100/ (SELECT sum (total_price) from pizza_sales) AS PCT
from pizza_sales
group by pizza_category

SELECT pizza_category, sum(total_price) * 100/ (SELECT sum (total_price) from pizza_sales) AS PCT
from pizza_sales
WHERE MONTH(order_date)=1
group by pizza_category

--% of sales by size
SELECT pizza_size,CAST(sum(total_price) AS DECIMAL(10,2)) as Total_sales,CAST(sum(total_price) * 100/
(SELECT sum (total_price) from pizza_sales) AS  DECIMAL(10,2)) AS PCT
from pizza_sales
group by pizza_size
ORDER BY PCT DESC


SELECT pizza_size,CAST(sum(total_price) AS DECIMAL(10,2)) as Total_sales,CAST(sum(total_price) * 100/
(SELECT sum (total_price) from pizza_sales) AS  DECIMAL(10,2)) AS PCT
from pizza_sales
WHERE DATEPART(quarter, order_date)=1
group by pizza_size
ORDER BY PCT DESC

SELECT pizza_category, sum(quantity) as Total_pizza_sold
from pizza_sales
GROUP BY pizza_category

--Top 5 Best Sellers by Total Pizzas sold
SELECT  TOP 5 pizza_name, sum(quantity) as total_pizza_sold
from pizza_sales
GROUP BY pizza_name
order by sum(quantity)DESC

--Bottom 5 Best Sellers by Total Pizzas sold
SELECT  TOP 5 pizza_name, sum(quantity) as total_pizza_sold
from pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_name
order by sum(quantity) ASC