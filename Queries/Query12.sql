-- Query 12: Which product line has the highest revenue?


SELECT DISTINCT `Product line`, (`Unit price`* Quantity) AS Revenue
FROM supermarket_sales
GROUP BY `Product line`, Revenue
ORDER BY Revenue DESC
LIMIT 1;