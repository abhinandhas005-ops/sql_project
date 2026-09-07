

 ## Beginner — SELECT, WHERE, ORDER BY, LIMIT

 #1. List all customers from **Kochi**.
SELECT * FROM Customers WHERE City = 'Kochi';

#2. Display all customers whose `Customer_Type` is **Retail**.
SELECT * FROM Customers WHERE Customer_Type = 'Retail';

#3. Show all sales from the **Electronics** category.
SELECT * FROM Sales WHERE Category = 'Electronics';

#4. Find all sales where `Quantity` is greater than **5**.
select * from sales where Quantity > 5;

#5. List all sales ordered by `Sale_Date` from newest to oldest.
SELECT * FROM Sales ORDER BY Sale_Date DESC;

#6. Display the **5 sales records with the highest quantity**.
SELECT * FROM Sales ORDER BY Quantity DESC LIMIT 5;
 
 
 
 
 
 ## Intermediate — JOIN, GROUP BY, HAVING, Aggregates
# 1. Display each customer's name along with their sales details.
SELECT c.Customer_Name, s.* FROM Customers c RIGHT JOIN Sales s ON c.Customer_ID = s.Customer_ID;

# 2. Find the **total quantity of products sold** in each category.
SELECT Category, SUM(Quantity) AS Total_Quantity FROM Sales GROUP BY Category;

# 3. Find the **number of sales made by each customer**.
SELECT c.Customer_Name, COUNT(s.Customer_ID) AS Number_of_Sales 
FROM Customers as c INNER JOIN Sales as s ON c.Customer_ID = s.Customer_ID GROUP BY c.Customer_Name;

# 4. Find the **top 5 customers** based on total quantity purchased.
SELECT c.Customer_Name, SUM(s.Quantity) AS Total_Quantity 
FROM Customers as c  INNER JOIN Sales as s ON c.Customer_ID = s.Customer_ID GROUP BY c.Customer_Name ORDER BY Total_Quantity DESC LIMIT 5;

# 5. Find customers who have made **more than 2 sales**.
SELECT c.Customer_Name, COUNT(s.Customer_ID) AS Number_of_Sales 
FROM Customers as c JOIN Sales as s ON c.Customer_ID = s.Customer_ID GROUP BY c.Customer_Name HAVING COUNT(s.Customer_ID) > 2;

# 6. Find the **average quantity sold** for each product category.
SELECT Category, AVG(Quantity) AS Average_Quantity FROM Sales GROUP BY Category;

# 7.Find the highest quantity sold for each product.
SELECT Product,MAX(Quantity) AS Highest_Quantity
FROM Sales GROUP BY Product;





 ## Advanced — Subqueries, CTEs, Window Functions, Views

 # 1. Find customers whose total quantity purchased is **greater than the average customer quantity** using a subquery.
 SELECT Customer_ID, SUM(Quantity) as Total FROM Sales 
 GROUP BY Customer_ID HAVING SUM(Quantity) > (SELECT AVG(Total) FROM
 (SELECT SUM(Quantity)  as Total FROM Sales GROUP BY Customer_ID) a);
 
# 2. Rank products based on their **total quantity sold** using `RANK()`.
SELECT Product, SUM(Quantity) Total,
RANK() OVER(ORDER BY SUM(Quantity) DESC) product_rank
FROM Sales
GROUP BY Product;


# 3. Find the **top 3 products in each category** using a window function.
SELECT * FROM (
SELECT Category,Product,SUM(Quantity) AS Total,
RANK() OVER (PARTITION BY Category ORDER BY SUM(Quantity) DESC) AS Product_Rank
FROM Sales GROUP BY Category, Product) AS ranked_products
WHERE Product_Rank <= 3;

# 4. Use a **CTE** to find the top 5 customers based on total quantity purchased.
WITH customer_total AS (
SELECT Customer_ID,SUM(Quantity) AS Total_Quantity
FROM Sales group by Customer_ID)
SELECT *FROM customer_total ORDER BY Total_Quantity DESC LIMIT 5;

# 5. Create a view called `customer_sales_summary` showing customer name, city, number of sales, and total quantity purchased.
CREATE VIEW customer_sale_summary AS SELECT c.Customer_Name, c.City, COUNT(s.Sale_ID) Sales, SUM(s.Quantity) Total 
FROM Customers c JOIN Sales s ON c.Customer_ID = s.Customer_ID GROUP BY c.Customer_ID, c.Customer_Name, c.City;

# 6.Find the customer who purchased the highest total quantity using a subquery.

SELECT Customer_ID, Total_Quantity
FROM (SELECT Customer_ID,SUM(Quantity) AS Total_Quantity
FROM Sales GROUP BY Customer_ID) AS customer_total
WHERE Total_Quantity =
(SELECT MAX(Total_Quantity)FROM (SELECT SUM(Quantity) AS Total_Quantity
FROM Sales GROUP BY Customer_ID) AS totals);

# 7.Create a view called product_sales_summary showing product name, category, number of sales, and total quantity sold.
CREATE VIEW product_sales_summary AS SELECT Product,Category,
COUNT(Sale_ID) AS Number_of_Sales,
SUM(Quantity) AS Total_Quantity FROM Sales
GROUP BY Product, Category;
