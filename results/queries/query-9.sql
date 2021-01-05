SELECT  number, SUM(order_product.quantity * products.price) AS total

FROM order_product
         INNER JOIN orders
                    ON orders.id = order_product.order_id
         INNER JOIN products
                    ON products.id = order_product.product_id
         INNER JOIN customers
                    ON customers.id = orders.customer_id

GROUP BY orders.number
WHERE EXISTS
(SELECT customer_id FROM orders WHERE customer_id=2);

