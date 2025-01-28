--  CR3. Sales data by different store location

select store_location, 
concat(round(sum(unit_price * transaction_qty)/1000,2),'K') as Total_sales
from coffee_shop
where
month(transaction_date) = '5'
group by store_location
order by Total_sales desc;