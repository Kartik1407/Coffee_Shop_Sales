-- CR5. Sales analyses by Product category

select product_category, 
round(sum(unit_price * transaction_qty),2) as Total_sales
from coffee_shop
where month(transaction_date) = 5
group by product_category
order by Total_sales desc;