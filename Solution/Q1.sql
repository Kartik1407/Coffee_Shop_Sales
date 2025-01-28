-- Q1. Calculation of total sales for each respective month
select * from coffee_shop;

-- this query will show data for particular month
select round(sum(transaction_qty * unit_price),2) as total_sales
from coffee_shop
where 
month(transaction_date) = 5;  -- May Month

-- this query will show data for each month
select month(transaction_date) as Months, 
round(sum(transaction_qty * unit_price),2) as total_sales
from coffee_shop
group by month(transaction_date)
order by month(transaction_date);