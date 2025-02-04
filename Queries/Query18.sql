-- Query 18. What are the peak hours for sales across branches?

SELECT * FROM supermarket_sales;

SELECT 
    HOUR(STR_TO_DATE(`Time`, '%h:%i %p')) AS sale_hour,
    `Branch`,
    SUM(`Total`) AS total_sales
FROM 
    supermarket_sales
GROUP BY 
    `Branch`, sale_hour
ORDER BY 
    `Branch`, total_sales DESC;
