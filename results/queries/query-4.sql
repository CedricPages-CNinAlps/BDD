SELECT *
FROM orders
WHERE date BETWEEN ADDDATE(NOW(), INTERVAL -10 DAY) AND NOW(); -- prends les commandes entre la date du jour et les 10 derniers jours
