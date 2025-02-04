-- Query 11. What is the average total purchase amount per transaction?

SELECT DISTINCT `Invoice ID`, AVG(`Unit price` * Quantity) AS Total_Purchase
FROM supermarket_sales
GROUP BY `Invoice ID`
ORDER BY AVG(Total) DESC;
