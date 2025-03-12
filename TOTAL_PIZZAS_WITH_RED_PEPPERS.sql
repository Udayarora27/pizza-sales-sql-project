-- TOTAL_PIZZAS_WITH_RED_PEPPERS
SELECT name, ingredients 
FROM pizza_types 
WHERE ingredients LIKE '%Red Peppers%'; 

SELECT COUNT(*) AS total_pizzas_with_red_peppers
FROM pizza_types 
WHERE LOWER(ingredients) LIKE '%red peppers%';


