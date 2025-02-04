# Supermarket Sales Analysis - MySQL Case Study

## Dataset 
The dataset contains 1,000 entries and 17 columns. Here's a summary of the columns:

- **Invoice ID**: Unique identifier for each transaction.  
- **Branch**: Branch of the supermarket (e.g., A, B, C).  
- **City**: City where the branch is located.  
- **Customer type**: Membership status (Member or Normal).  
- **Gender**: Gender of the customer.  
- **Product line**: Category of products purchased.  
- **Unit price**: Price per unit of the product.  
- **Quantity**: Number of units purchased.  
- **Tax 5%**: Tax applied (5% of the purchase).  
- **Total**: Total amount (including tax).  
- **Date**: Date of purchase.  
- **Time**: Time of purchase.  
- **Payment**: Payment method (e.g., Cash, Credit card, Ewallet).  
- **COGS**: Cost of goods sold.  
- **Gross margin percentage**: Fixed percentage for gross margin.  
- **Gross income**: Gross income from the sale.  
- **Rating**: Customer rating for the transaction.  

## Business Queries
```
CREATE DATABASE superstore_sales_analysis;
USE superstore_sales_analysis;

-- Query 1: Select all the records
SELECT * FROM supermarket_sales;


-- Query 2: What is the size of the dataset?

SELECT COUNT(*) FROM supermarket_sales;


-- Query 3. What are the data types of each column?

DESCRIBE supermarket_sales;



-- Query4. How many unique cities, branches, and product lines are there?

SELECT count(DISTINCT city)AS Total_Cities, count(DISTINCT branch) AS Total_Branches, count(DISTINCT `Product line`) AS Total_ProductLines
FROM supermarket_sales;



-- Query 5. What is the distribution of customer types (Member vs. Normal)?

SELECT 
    `Customer type`, 
    COUNT(*) AS count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supermarket_sales)) AS percentage
FROM 
    supermarket_sales
GROUP BY 
    `Customer type`;


-- Query 6. What is the gender distribution of customers?

SELECT 
    Gender, 
    COUNT(*) AS count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supermarket_sales)) AS percentage
FROM 
    supermarket_sales
GROUP BY 
    Gender;


-- Query 7. Which payment methods are most commonly used?

SELECT DISTINCT Payment,COUNT(Payment) AS Count_of_payment_method
FROM supermarket_sales
GROUP BY Payment
ORDER BY Count_of_payment_method DESC;


-- Query 8. What are the minimum, maximum, and average ratings?

SELECT MAX(Rating) AS Max_rating, MIN(Rating) AS Min_rating, ROUND(AVG(Rating)) AS Average_rating FROM supermarket_sales;


-- Query 9. Which city generates the highest total revenue?

SELECT City, (`Unit price` * Quantity) AS Total_Revenue 
FROM supermarket_sales
GROUP BY City, Total_Revenue
ORDER BY Total_Revenue DESC
LIMIT 1;


-- Query 10. Which branch has the most transactions?

SELECT Branch, COUNT(*) AS Total_Transactions 
FROM supermarket_sales
GROUP BY Branch
ORDER BY Total_Transactions DESC
LIMIT 1;


-- Query 11. What is the average total purchase amount per transaction?

SELECT DISTINCT `Invoice ID`, AVG(`Unit price` * Quantity) AS Total_Purchase
FROM supermarket_sales
GROUP BY `Invoice ID`
ORDER BY AVG(Total) DESC;



-- Query 12: Which product line has the highest revenue?


SELECT DISTINCT `Product line`, (`Unit price`* Quantity) AS Revenue
FROM supermarket_sales
GROUP BY `Product line`, Revenue
ORDER BY Revenue DESC
LIMIT 1;



USE superstore_sales_analysis;

-- Query 13. What is the average unit price and quantity sold for each product line?

SELECT DISTINCT `Product line`, AVG(`Unit price`) AS Avg_Unit_Price, SUM(Quantity) AS Total_Qty_Sold
FROM supermarket_sales
GROUP BY `Product line`;


-- Query 14. How does gross income vary across branches and cities?

SELECT * FROM supermarket_sales;

SELECT  Branch, City, SUM(`gross income`) AS `Gross Income`
FROM supermarket_sales
GROUP BY Branch, City
ORDER BY `Gross Income` DESC;


-- Query 15. What is the most common time of purchase?

SELECT 
    `Time`, 
    COUNT(*) AS count
FROM 
    supermarket_sales
GROUP BY 
    `Time`
ORDER BY 
    count DESC
LIMIT 1;


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


```
