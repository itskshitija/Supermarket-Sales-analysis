USE superstore_sales_analysis;

-- Query 13. What is the average unit price and quantity sold for each product line?

SELECT DISTINCT `Product line`, AVG(`Unit price`) AS Avg_Unit_Price, SUM(Quantity) AS Total_Qty_Sold
FROM supermarket_sales
GROUP BY `Product line`;