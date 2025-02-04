-- Query 10. Which branch has the most transactions?

SELECT Branch, COUNT(*) AS Total_Transactions 
FROM supermarket_sales
GROUP BY Branch
ORDER BY Total_Transactions DESC
LIMIT 1;