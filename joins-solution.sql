--Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip, addresses.address_type
FROM customers
  JOIN addresses ON customers.id = addresses.customer_id;

--Get all orders and their line items.
SELECT line_items.unit_price, line_items.quantity, orders.order_date, orders.total, line_items.order_id
FROM line_items
  JOIN orders ON line_items.order_id = orders.id;

--Which warehouses have cheetos?
SELECT warehouse.warehouse, products.description
FROM warehouse
  JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
  JOIN products ON warehouse_product.product_id = products.id
  WHERE products.description = 'cheetos';

--Which warehouses have diet pepsi?
SELECT warehouse.warehouse, products.description
FROM warehouse
  JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
  JOIN products ON warehouse_product.product_id = products.id
  WHERE products.id = 6;

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT count(*), customers.first_name, customers.last_name FROM orders
  JOIN addresses ON  orders.address_id = addresses.id
  JOIN customers ON addresses.customer_id = customers.id
  GROUP BY customers.id;

--How many customers do we have?
SELECT count(*) FROM customers;

--How many products do we carry?
SELECT count(*) FROM products;

--What is the total available on-hand quantity of diet pepsi?
SELECT SUM(warehouse_product.on_hand), products.description FROM products
 JOIN warehouse_product ON products.id = warehouse_product.product_id
 WHERE products.id = 6
 GROUP BY products.id;

--everything, just for fun!
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city,
       addresses.state, addresses.zip, addresses.address_type, orders.order_date,
       orders.total, line_items.unit_price, line_items.quantity, products.description,
       products.unit_price, warehouse_product.on_hand, warehouse.warehouse, warehouse.fulfillment_days
FROM customers
  JOIN addresses ON customers.id = addresses.customer_id
  JOIN orders ON addresses.customer_id = orders.address_id
  JOIN line_items ON line_items.order_id = orders.id
  JOIN products ON line_items.product_id = products.id
  JOIN warehouse_product ON products.id = warehouse_product.product_id
  JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
