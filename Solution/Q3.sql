-- Q3. Calculate total number of orders for each respective month

select month(transaction_date) as Months, 
count(transaction_id) as Orders_count
from coffee_shop
group by month(transaction_date) with rollup     -- ROLLUP is used to show total at top of a column, but null value will show in other columns
order by month(transaction_date);