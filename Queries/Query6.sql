-- Query 6. What is the gender distribution of customers?

SELECT 
    Gender, 
    COUNT(*) AS count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supermarket_sales)) AS percentage
FROM 
    supermarket_sales
GROUP BY 
    Gender;
