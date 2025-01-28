-- CR6. Top 10 products (product_types) by sales

select product_type, 
round(sum(unit_price * transaction_qty),2) as Total_sales
from coffee_shop
where month(transaction_date) = 5 and product_category = 'coffee'		-- we can use WHERE to filter out things
group by product_type
order by total_sales desc
limit 10;