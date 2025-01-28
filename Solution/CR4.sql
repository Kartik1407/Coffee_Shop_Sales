-- CR4. Daily sales analysis with average line

select avg(unit_price * transaction_qty) as Average_sales
from coffee_shop
where
month(transaction_date)='5';  				-- this query doesnot show correct result

select 
concat(round(avg(Total_sales)/1000,2),'K') as Average_sales
from( 
select sum(unit_price * transaction_qty) as Total_sales
from coffee_shop
where month(transaction_date) = 5
group by transaction_date
) as Internal_query;						-- this has provided correct result

-- now to find out the daily sales
SELECT 
    DAY(transaction_date) AS Day_of_Month,
    CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000,
                    2),
            'K') AS Total_sales
FROM
    coffee_shop
WHERE
    MONTH(transaction_date) = '5'
GROUP BY day_of_month;

