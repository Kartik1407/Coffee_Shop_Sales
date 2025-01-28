-- Q4. Determine the month on month increase or decrease in the number of orders

select month(transaction_date) as Months, round(count(transaction_id),2) as Orders_count,
(round(count(transaction_id),2) - lag(round(count(transaction_id),2),1)
over (order by month(transaction_date)))/ lag(round(count(transaction_id),2),1)
over (order by month(transaction_date)) * 100 as MOM_change_percentage
from coffee_shop
where 
month(transaction_date)
group by 
month(transaction_date)
order by 
month(transaction_date);