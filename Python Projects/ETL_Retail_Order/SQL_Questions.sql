# Find top highest revenue generating products
select product_id, sum(sale_price) as sales
from df_order
group by product_id
order by sales desc
limit 10;


# Find top 5 highest selling products in each region
With h_sales as (
select region, product_id, sub_category, sum(sale_price) as total_sales,
rank() over (partition by region order by sum(sale_price) desc) as r_sale
from df_order
group by region, product_id, sub_category)
select region, product_id, sub_category, total_sales
from h_sales
where r_sale <=5;


# Find month over month growth camparision for 2022 and 2023 sales eg: jan 2022 vs jan 2023
with cte as (
select year(order_date) as yr_order, month(order_date) as m_order, sum(sale_price) as sales
from df_order
group by yr_order, m_order
order by yr_order, m_order)
select m_order,
	sum(case when yr_order = 2022 then sales else 0 end) as sales_2022,
	sum(case when yr_order = 2023 then sales else 0 end) as sales_2023
from cte
group by m_order
order by m_order;

# For each category which month has highest sales
with cte as (
select category, format(order_date,'%Y%m') as order_yr_month, sum(sale_price) as sales 
from df_order
group by category, format(order_date,'%Y%m')
)
select *
from (
select *,
row_number() over (partition by category order by sales desc) as h_sales
from cte) as a
where h_sales = 1;

# Which sub-category had highest growth by profit in 2023 compare to 2022
with cte as (
select sub_category, year(order_date) as yr_order, sum(sale_price) as sales
from df_order
group by sub_category, yr_order
),
cte2 as ( 
select sub_category,
	sum(case when yr_order = 2022 then sales else 0 end) as sales_2022,
	sum(case when yr_order = 2023 then sales else 0 end) as sales_2023
from cte
group by sub_category)
select *, (sales_2022-sales_2023)*100/sales_2022
from cte2
order by (sales_2022-sales_2023)*100/sales_2022 desc;





