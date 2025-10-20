-- Identify the most common pizza size ordered.
select quantity, count(order_detail_id)
from orders_details
group by quantity; 

SELECT 
    pizzas.size, COUNT(orders_details.order_detail_id) as Count_Orders
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY COUNT(order_detail_id) DESC;