-- CR2. Segment sales data into weekdays and weekend to analyse perfomrance variations
-- Weekends - Sat and Sun (sunday - day 1, monday - day 2...sat - day 7)
-- We will use CASE statement, DAYOFWEEK

select 
case when dayofweek(transaction_date) in (1,7) then 'Weekends'
else 'Weekdays'
end as Day_type,
concat(round(sum(unit_price * transaction_qty)/1000,2),'K') as Total_sales
from coffee_shop
where month(transaction_date) = 5		-- May month
group by day_type;


