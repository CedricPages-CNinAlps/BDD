SELECT *
FROM orders
WHERE DATE(date) = DATE( NOW() ) -- date prend en compte la date du jour
ORDER BY id DESC; -- on tri les numéros de la colonne 'number' par ordre décroissant(DESC) / croissant(ASC)

