CREATE TABLE products2 (
	id INT NOT NULL,
  	name VARCHAR(10),
  	price MONEY,
    PRIMARY KEY (id)
);

INSERT INTO products2
VALUES (1, 'Pen', 1.60);

INSERT INTO products2(id, name)
VALUES (2, 'Pencil');

SELECT * FROM products2;

SELECT * FROM products2 where id=2;

SELECT name, price FROM products2;

UPDATE products2 SET price=0.80 WHERE id=2;

SELECT * FROM products2;

ALTER TABLE products2 ADD stock INT;

SELECT * FROM products2;

UPDATE products2 SET stock=32 WHERE ID=1;
UPDATE products2 SET stock=12 WHERE ID=2;

SELECT * FROM products2;

DELETE FROM products2 WHERE id=2;

SELECT * FROM products2;

INSERT INTO products2
VALUES (2, 'Pencil', 0.8, 12);

SELECT * FROM products2;

CREATE TABLE customers2 (
	id INT NOT NULL,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	address VARCHAR(20),
	PRIMARY KEY (id)
);

INSERT INTO customers2
VALUES (1, 'John', 'Doe', '32 Cherry Blvd');

INSERT INTO customers2
VALUES (2, 'Angela', 'Yu', '12 Sunset Drive');

SELECT * FROM customers2;

CREATE TABLE orders (
	id INT NOT NULL,
	order_number INT,
	customer_id INT,
	product_id INT,
	PRIMARY KEY (id),
	FOREIGN KEY (customer_id) REFERENCES customers2(id),
	FOREIGN KEY (product_id) REFERENCES products2(id)
);

INSERT INTO orders
VALUES (1, 4362, 2, 1);

INSERT INTO orders
VALUES (2, 3254, 1, 1);

SELECT * FROM orders;

SELECT orders.order_number, customers2.first_name, customers2.last_name, customers2.address 
FROM orders 
INNER JOIN customers2 ON orders.customer_id = customer_id;

SELECT orders.order_number, products2.name, products2.price, products2.stock 
FROM orders 
INNER JOIN products2 ON orders.product_id = product_id;