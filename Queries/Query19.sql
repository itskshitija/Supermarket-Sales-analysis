-- Query19. How does revenue vary across different payment methods by city?

SELECT 
    `City`, 
    `Payment`, 
    SUM(`Total`) AS total_revenue
FROM 
    supermarket_sales
GROUP BY 
    `City`, `Payment`
ORDER BY 
    `City`, total_revenue DESC;
