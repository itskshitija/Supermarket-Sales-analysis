-- Query20. Is there a difference in gross income between members and non-members?
SELECT 
    `Customer type`, 
    AVG(`gross income`) AS avg_gross_income, 
    SUM(`gross income`) AS total_gross_income
FROM 
    supermarket_sales
GROUP BY 
    `Customer type`
ORDER BY 
    avg_gross_income DESC;
