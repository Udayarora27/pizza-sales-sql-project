-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    pizza_types.category, 
    ROUND(
        SUM(orders_details.quantity * pizzas.price) / 
        (SELECT SUM(orders_details.quantity * pizzas.price)
         FROM orders_details
         JOIN pizzas ON orders_details.pizza_id = pizzas.pizza_id) * 100, 2
    ) AS revenue_percentage
FROM 
    pizzas
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue_percentage DESC;

