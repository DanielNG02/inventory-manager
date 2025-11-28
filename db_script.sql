CREATE DATABASE inventory_db;
USE inventory_db;

CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
quantity INT DEFAULT 0,
price DECIMAL(10,2),
last_updated DATE NOT NULL
);

INSERT INTO products (name, quantity, price, last_updated) VALUES
('Laptop', 5, 1200.00, '2023-01-01'),
('Mouse', 15, 25.50, '2023-01-05'),
('Keyboard', 8, 45.99, '2023-01-10');

SELECT name, price 
FROM products

SELECT name, price 
FROM products
WHERE price > 100.00;

UPDATE products
SET quantity = 20
WHERE product_id = 2;