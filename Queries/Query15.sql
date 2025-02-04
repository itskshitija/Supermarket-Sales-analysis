-- Query 15. What is the most common time of purchase?

SELECT 
    `Time`, 
    COUNT(*) AS count
FROM 
    supermarket_sales
GROUP BY 
    `Time`
ORDER BY 
    count DESC
LIMIT 1;
