-- Q2. Determine the month on month increase or decrease in sales.

select month(transaction_date) as month, round(sum(transaction_qty * unit_price),2) as Total_sales,
(SUM(transaction_qty * unit_price) - lag(sum(transaction_qty * unit_price),1)				-- LAG,1 means gap by 1 month
over (order by month(transaction_date)))/ lag(sum(transaction_qty * unit_price),1)         -- Division by Previous months sales
over (order by month(transaction_date)) * 100 as MOM_increase_percentage                   -- convert it into percentage
from coffee_shop
-- where month(transaction_date) in (4,5)      -- april (PM) and may(CM), use IN if you want to see diff for specific months
where month(transaction_date) 				-- else dont need to use IN
group by month(transaction_date)
order by month(transaction_date);

-- this is basically (current month - previous month )/ previous month * 100