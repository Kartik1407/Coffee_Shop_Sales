create database coffee_shop_sales;

use coffee_shop_sales;
describe coffee_shop;

select * from coffee_shop;

-- updating the date format of transaction_date column
UPDATE coffee_shop
SET transaction_date = str_to_date(transaction_date, '%d-%m-%Y');

-- To change the data in a SQL database column from the format 7.06.11 to 7:06:11, you can use the REPLACE function 
update coffee_shop
set transaction_time = replace(transaction_time, ".", ":")
where transaction_time like '%.%.%';

-- updating the time format
UPDATE coffee_shop
SET transaction_time = str_to_date(transaction_time,'%H:%i:%s');

describe coffee_shop;

alter table coffee_shop
modify column transaction_time time;

-- change the name of first column
alter table coffee_shop
change column ï»¿transaction_id transaction_id int;



