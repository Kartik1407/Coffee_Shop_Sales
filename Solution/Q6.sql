-- Q6. Determine the month on month increase or decrease in qty sold

select month(transaction_date) as Months, round(sum(transaction_qty),2) as Order_qty,
(round(sum(transaction_qty),2) - lag(round(sum(transaction_qty),2),1)
over (order by month(transaction_date)))/ lag(round(sum(transaction_qty),2),1)
over (order by month(transaction_date)) * 100 as MOM_change_percentage
from coffee_shop
where 
month(transaction_date)
group by 
month(transaction_date)
order by 
month(transaction_date);