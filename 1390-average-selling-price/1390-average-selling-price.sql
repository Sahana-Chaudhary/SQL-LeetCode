WITH cte AS
(SELECT p.product_id, SUM(p.price * u.units) AS total_price, SUM(u.units) AS total_units
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id=u.product_id AND
u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id)

SELECT c.product_id,COALESCE(ROUND(AVG(c.total_price/NULLIF(c.total_units,0)),2),0) AS average_price
FROM cte c
GROUP BY c.product_id;  