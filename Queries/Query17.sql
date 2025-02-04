-- Which product line has the highest average customer rating?

SELECT 
    `Product line`, 
    AVG(`Rating`) AS Avg_Cust_Rating
FROM 
    supermarket_sales
GROUP BY 
    `Product line`
ORDER BY 
    Avg_Cust_Rating DESC;

