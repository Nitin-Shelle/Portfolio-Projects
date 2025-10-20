-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name) as Categorywise_Distribution
FROM
    pizza_types
GROUP BY category;