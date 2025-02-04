-- How does the total revenue vary by customer type and gender?

SELECT 
    `Customer type`, 
    `Gender`, 
    SUM(`Total`) AS total_revenue
FROM 
    supermarket_sales
GROUP BY 
    `Customer type`, `Gender`
ORDER BY 
    `Customer type`, `Gender`;
