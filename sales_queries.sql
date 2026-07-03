USE retail_sales;
CREATE TABLE sales (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    profit_margin DECIMAL(10,2),
    sales_category VARCHAR(50),
    profit_status VARCHAR(50)
);
SHOW TABLES;
DESCRIBE sales;
SELECT COUNT(*) FROM sales; 
SELECT COUNT(*) FROM sales; 
SELECT * FROM sales
LIMIT 10;
SELECT region,
       SUM(sales) AS total_sales
FROM sales
GROUP BY region;
SELECT category,
       SUM(profit) AS total_profit
FROM sales
GROUP BY category;
SELECT sub_category,
       SUM(sales) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 5;
SELECT segment,
       SUM(sales) AS total_sales
FROM sales
GROUP BY segment;
SELECT COUNT(*) FROM sales;