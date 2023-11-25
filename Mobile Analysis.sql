create schema mobile;
use Mobile;
select * from Mobile;
-- 01. Check Mobile price and Features --
select phone_name, price from Mobile;
-- 02. Find out Most expensive Mobile --
select * from Mobile
order by price desc
limit 5;
-- 03. Find out Cheapest Mobiles --
select * from Mobile
order by price asc
limit 5;
-- 04. List of 5 Samsung mobileprice and Features --
select*from Mobile where brands = "samsung"
order by price desc
limit 5;
-- 05. High price android Mobiles --
select * from Mobile where Operating_System_Type = "Android"
order by price desc
limit 5;
-- 06. Lower price Android mobile --
select * from Mobile where Operating_System_Type = "Android"
order by price asc
limit 5;
-- 07. IOS mobile high price Mobile --
select * from Mobile where Operating_System_Type = "IOS"
order by price desc
limit 5;
-- 08. IOS mobile Low price Mobile --
select * from Mobile where Operating_System_Type = "IOS"
order by price asc
limit 5;
-- 09. Five 5g support Mobile --
select * from Mobile where 5G_Availability = "yes"
order by price desc
limit 5;
-- 10. Total price all mobile to be found a brand name --
select brands, sum(price)from Mobile group by brands;