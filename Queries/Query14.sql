-- Query 14. How does gross income vary across branches and cities?

SELECT * FROM supermarket_sales;

SELECT  Branch, City, SUM(`gross income`) AS `Gross Income`
FROM supermarket_sales
GROUP BY Branch, City
ORDER BY `Gross Income` DESC;