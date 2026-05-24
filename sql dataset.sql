CREATE DATABASE student_dashboard;
USE student_dashboard;
SELECT * FROM dataset_clean;

Top 10 Profitable Products
SELECT product_name, SUM(profit) AS total_profit
FROM dataset_clean
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
2. Top 10 Customers by Sales

SELECT customer_name, SUM(sales) AS total_sales
FROM dataset_clean
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

3. Region-wise Total Sales
SELECT region, SUM(sales) AS total_sales
FROM dataset_clean
GROUP BY region;

4. Category-wise Average Profit
SELECT category, AVG(profit) AS avg_profit
FROM dataset_clean
GROUP BY category;

5. Highest Discount Category
SELECT category, AVG(discount) AS avg_discount
FROM dataset_clean
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 1;

6. Orders with Negative Profit
SELECT order_id, product_name, profit
FROM dataset_clean
WHERE profit < 0;

7. Monthly Sales Trend
SELECT MONTH(order_date) AS month,
       SUM(sales) AS total_sales
FROM dataset_clean
GROUP BY MONTH(order_date)
ORDER BY month;

8. Market-wise Revenue Analysis
SELECT market, SUM(sales) AS revenue
FROM dataset_clean
GROUP BY market
ORDER BY revenue DESC;

9. Top-performing Sub-Categories
SELECT sub_category, SUM(profit) AS total_profit
FROM dataset_clean
GROUP BY sub_category
ORDER BY total_profit DESC;

10. Ship Mode Usage Analysis
SELECT ship_mode, COUNT(*) AS usage_count
FROM dataset_clean
GROUP BY ship_mode
ORDER BY usage_count DESC;

Highest Revenue Market
SQL Query
SELECT market, SUM(sales) AS total_revenue
FROM dataset_clean
GROUP BY market
ORDER BY total_revenue DESC;

Least Profitable Category
SQL Query
SELECT category, SUM(profit) AS total_profit
FROM dataset_clean
GROUP BY category
ORDER BY total_profit ASC;

.Most Used Shipping Mode
SQL Query
SELECT ship_mode, COUNT(*) AS total_orders
FROM dataset_clean
GROUP BY ship_mode
ORDER BY total_orders DESC;

 Top Profitable Products
SQL Query
SELECT product_name, SUM(profit) AS total_profit
FROM dataset_clean
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

Loss-Making Products
SELECT product_name, profit
FROM dataset_clean
WHERE profit < 0;