-- Chart requirement: Implement tooltips to display detailed metrics when hovering over a specific day

select
concat(round(sum(unit_price * transaction_qty)/1000,2),'K') as Total_sales,
concat(round(sum(transaction_qty)/1000,2),'K') as Total_qty_sold,
concat(round(count(transaction_id)/1000,2),'K') as Total_orders
from coffee_shop
where									-- filters
 transaction_date = '2023-05-18'; 
