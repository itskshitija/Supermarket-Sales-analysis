-- Query 7. Which payment methods are most commonly used?

SELECT DISTINCT Payment,COUNT(Payment) AS Count_of_payment_method
FROM supermarket_sales
GROUP BY Payment
ORDER BY Count_of_payment_method DESC;