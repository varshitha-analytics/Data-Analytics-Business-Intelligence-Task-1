USE retail_sales;

-- Total Sales by Region
SELECT region,
       SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- Profit by Category
SELECT category,
       SUM(profit) AS total_profit
FROM sales
GROUP BY category;

-- Top 5 Products
SELECT sub_category,
       SUM(sales) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 5;

-- Sales by Segment
SELECT segment,
       SUM(sales) AS total_sales
FROM sales
GROUP BY segment;