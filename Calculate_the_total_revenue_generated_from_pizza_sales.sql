-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS tota_sales
FROM
    orders_Details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id