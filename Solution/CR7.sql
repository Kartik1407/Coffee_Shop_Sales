-- CR7. Sales analyses by days and hours

Select 
round(Sum(unit_price * transaction_qty),2) as Total_sales,
sum(transaction_qty) as Total_qty,
count(transaction_id) as Number_of_txn
from coffee_shop
where 
month(transaction_date) = 5
-- and dayofweek(transaction_date) = 2                -- this will calculate for all mondays in the month
-- and hour(transaction_time) = 8
and dayofweek(transaction_date) = 1                -- this will calculate for all mondays in the month
and hour(transaction_time) = 14;

-- Finding peak hours
Select
hour(transaction_time) as Time,
round(Sum(unit_price * transaction_qty),2) as Total_sales
from coffee_shop
where month(transaction_date) = 5
group by time
order by Total_sales desc;


