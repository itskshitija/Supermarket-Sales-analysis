-- Query 5. What is the distribution of customer types (Member vs. Normal)?

SELECT 
    `Customer type`, 
    COUNT(*) AS count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supermarket_sales)) AS percentage
FROM 
    supermarket_sales
GROUP BY 
    `Customer type`;
