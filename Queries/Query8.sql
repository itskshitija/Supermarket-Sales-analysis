-- Query 8. What are the minimum, maximum, and average ratings?

SELECT MAX(Rating) AS Max_rating, MIN(Rating) AS Min_rating, ROUND(AVG(Rating)) AS Average_rating FROM supermarket_sales;