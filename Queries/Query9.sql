-- Query 9. Which city generates the highest total revenue?

SELECT City, (`Unit price` * Quantity) AS Total_Revenue 
FROM supermarket_sales
GROUP BY City, Total_Revenue
ORDER BY Total_Revenue DESC
LIMIT 1;