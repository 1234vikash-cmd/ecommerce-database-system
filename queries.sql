-- Top 5 expensive products
SELECT * FROM products
ORDER BY price DESC
LIMIT 5;

-- Customer with most orders
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC
LIMIT 1;

-- Total revenue
SELECT SUM(amount) AS total_revenue FROM payments;

-- Out of stock products
SELECT * FROM products
WHERE stock = 0;

-- Monthly sales
SELECT 
    DATE_TRUNC('month', payment_date) AS month,
    SUM(amount) AS total_sales
FROM payments
GROUP BY month
ORDER BY month;