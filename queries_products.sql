-- Comments in SQL Start with dash-dash --

INSERT INTO products (name, price, can_be_returned)
    VALUES ('chair', 44.00, false);

-- insert product --

INSERT INTO products (name, price, can_be_returned)
    VALUES ('stool', 25.99, true);

-- insert product --

INSERT INTO products (name, price, can_be_returned) 
    VALUES ('table', 124.00, false);

-- insert product --

\d products

-- display table --

SELECT name from products;

-- read names of products --

SELECT name, price FROM products;

-- read names and prices of products --

INSERT INTO products (name, price, can_be_returned) 
    VALUES ('soccer ball', 14.99, true);

-- insert product --

SELECT name FROM products WHERE can_be_returned = 'true';

-- read names of products that can be returned --

SELECT name, price FROM products WHERE price < 44.00;

-- read names of products that cost less than 44.00 --

SELECT name, price FROM products WHERE price < 99.99 AND price > 22.50;

-- read names of products that cost less than 99.99 but more than 22.50 --

UPDATE products SET price = price - 20 WHERE price > 20;

-- update prices to take $20 off of products that cost more than $20 --

DELETE FROM products WHERE price < 25;

-- remove all products that cost less than $25 from the db --

UPDATE products SET price = price + 20;

-- increase prices of all remaining products by $20 --

UPDATE products SET can_be_returned = 'true';

-- changed can_be_returned to true for all products --