-- Customers
INSERT INTO customers(name,email,phone) VALUES
('Rahul Kumar','rahul@gmail.com','9876543210'),
('Amit Singh','amit@gmail.com','9876543211');

-- Products
INSERT INTO products(name,price,stock,category) VALUES
('Laptop',50000,10,'Electronics'),
('Mobile',20000,20,'Electronics'),
('Shoes',1500,50,'Fashion');

-- Orders
INSERT INTO orders(customer_id,status) VALUES
(1,'Completed'),
(2,'Pending');

-- Order Items
INSERT INTO order_items(order_id,product_id,quantity,price) VALUES
(1,1,1,50000),
(1,3,2,1500),
(2,2,1,20000);

-- Payments
INSERT INTO payments(order_id,amount,payment_method) VALUES
(1,53000,'UPI'),
(2,20000,'Card');