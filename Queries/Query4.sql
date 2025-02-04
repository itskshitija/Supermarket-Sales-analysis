-- Query4. How many unique cities, branches, and product lines are there?

SELECT count(DISTINCT city)AS Total_Cities, count(DISTINCT branch) AS Total_Branches, count(DISTINCT `Product line`) AS Total_ProductLines
FROM supermarket_sales;