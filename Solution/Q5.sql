-- Q5. Calculation of Total quantity sold for each respective month

select month(transaction_date) as Months, sum(transaction_qty) as Qty
from coffee_shop
group by months
order by months; 

select sum(transaction_qty) as Qty
from coffee_shop
where 
month(transaction_date) = 3;