-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name AS pizza_name,
    ROUND(SUM(pizzas.price * orders_details.quantity),
            0) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_name
ORDER BY revenue DESC
LIMIT 3;