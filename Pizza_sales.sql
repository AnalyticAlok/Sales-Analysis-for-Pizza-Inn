create database demo_db;
use demo_db;
select * from pizza_sales;

# KPIS
# Total revenue
# total Pizza sold
# total orders

select round(sum(total_price)) as total_revenue from pizza_sales;
select sum(quantity) as total_pizza_sold from pizza_sales;
select (sum(total_price)/count(distinct(order_id))) as ave_order_value from pizza_sales;
select count(distinct order_id)  as total_orders from pizza_sales;

select hour(order_time) as order_hours, sum(quantity) as total_pizza_sales from pizza_sales
group by hour(order_time) order by hour(order_time);
select pizza_name, sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name 
order by total_pizza_sold desc limit 5; #top 5

select pizza_name, sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name 
order by total_pizza_sold limit 5;# bottom 5

select pizza_name, sum(total_price) as total_pizza_revenue from pizza_sales group by pizza_name 
order by total_pizza_revenue desc limit 5; #sum of price













