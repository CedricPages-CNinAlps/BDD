SELECT  number, SUM(order_product.quantity * products.price) AS total

FROM orders
         INNER JOIN order_product
                    ON orders.id = order_product.order_id
         INNER JOIN products
                    ON products.id = order_product.product_id

GROUP BY orders.number
HAVING total BETWEEN 100 AND 550
