-- CR4.1. Comparing the daily sales with average sales - if > "above avg", and < "below avg"

select
day_of_month,
case
when total_sales > Average_sales then 'Above Avg'
when total_sales < Average_sales then 'Below Avg'
else 'Equal to Average'
end as Sales_status,
total_sales
from (
select 
	day(transaction_date) as day_of_month,
	round(SUM(unit_price * transaction_qty),1) AS total_sales,
	avg(sum(unit_price * transaction_qty))
    OVER()as Average_sales
FROM
    coffee_shop
WHERE
    MONTH(transaction_date) = 5
GROUP BY day_of_month 
)
as Sales_data
order by Day_of_month;