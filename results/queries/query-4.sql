SELECT *
FROM orders
WHERE date BETWEEN DATE( NOW()) AND (DATE( NOW()) - INTERVAL 10 DAY); -- prends les commandes entre la date du jour et les 10 derniers jours
