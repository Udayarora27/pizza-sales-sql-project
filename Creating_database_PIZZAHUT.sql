CREATE database PIZZAHUT;
USE PIZZAHUT;
CREATE TABLE orders (
order_id INT PRIMARY KEY,
order_date date not null,
order_time time not null
);

CREATE TABLE orders_details (
order_details_id INT NOT NULL PRIMARY KEY,
order_id INT ,
pizza_id text NOT NULL,
quantity INT NOT NULL
);