-- Calculate the percentage contribution(each pizza type's contribution in percent) of each pizza type to total revenue.
--  type to total revenue.

select pizza_types.category as pizza_type,
round((sum(pizzas.price*orders_details.quantity) / (SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id)) * 100, 2) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details on orders_details.pizza_id = pizzas.pizza_id
group by pizza_type order by revenue desc;