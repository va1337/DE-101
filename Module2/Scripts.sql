-- Sales and Profit by Customer
select customer_name, sum(sales), sum(profit) from orders
group by customer_name
;

--Sales per region
select region, sum(sales) from orders 
group by region
order by sum(sales) desc
;

--Total Sales 
select extract (year from order_date) as year_date, sum(sales) from orders 
group by year_date
;

--Profit per order
select order_id, sum(profit) as profits from orders
group by order_id
having sum(profit) > 0
order by profits desc
;
-- Monthly Sales by Segment
select segment, extract (year from order_date) as order_year, extract (month from order_date) as order_month, sum(sales) from orders 
group by segment, order_year, order_month
order by order_year desc, order_month desc