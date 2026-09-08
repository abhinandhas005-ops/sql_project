# Customer Sales Management and Analysis

A MySQL project focused on managing customer and sales data and performing SQL-based analysis using beginner, intermediate, and advanced queries.

## Project Overview

This project demonstrates how SQL can be used to create a database, store customer and sales information, and extract meaningful insights from the data.

The project includes:

* Database and table creation
* Customer and sales data insertion
* Filtering and sorting records
* Aggregate functions and grouping
* Joins between tables
* Subqueries and Common Table Expressions (CTEs)
* Window functions
* Views for summarized data

## Database Structure

### Database Name

`customer_sales`

### Tables

**1. Customers**

Stores customer information.

| Column        | Data Type    | Description         |
| ------------- | ------------ | ------------------- |
| Customer_ID   | INT          | Primary key         |
| Customer_Name | VARCHAR(100) | Customer name       |
| City          | VARCHAR(50)  | Customer's city     |
| State         | VARCHAR(50)  | Customer's state    |
| Customer_Type | VARCHAR(20)  | Retail or Wholesale |

**2. Sales**

Stores sales transaction details.

| Column      | Data Type    | Description          |
| ----------- | ------------ | -------------------- |
| Sale_ID     | INT          | Sales transaction ID |
| Customer_ID | INT          | Customer identifier  |
| Product     | VARCHAR(100) | Product name         |
| Category    | VARCHAR(50)  | Product category     |
| Quantity    | FLOAT        | Quantity sold        |
| Sale_Date   | DATE         | Date of sale         |

## Project Contents

### 1. Database Creation

Creates the `customer_sales` database and the `Customers` and `Sales` tables.

### 2. Data Insertion

Includes sample customer and sales records for analysis.

The dataset contains:

* **20 customers**
* **20 sales records**
* **Electronics and Furniture** product categories
* Customer locations across Kerala

### 3. SQL Queries

The project contains **19 SQL questions** divided into three levels.

#### Beginner — SELECT, WHERE, ORDER BY, LIMIT

* List customers from Kochi
* Display retail customers
* Show electronics sales
* Find sales with quantity greater than 5
* Sort sales by date
* Display the 5 sales records with the highest quantity

#### Intermediate — JOIN, GROUP BY, HAVING, Aggregates

* Display customer names with sales details
* Find total quantity sold in each category
* Count sales made by each customer
* Find the top 5 customers by total quantity purchased
* Find customers with more than 2 sales
* Find average quantity sold by category
* Find the highest quantity sold for each product

#### Advanced — Subqueries, CTEs, Window Functions, Views

* Find customers whose total quantity purchased is greater than the average customer quantity
* Rank products by total quantity sold
* Find the top 3 products in each category
* Use a CTE to find the top 5 customers
* Create a customer sales summary view
* Find the customer with the highest total quantity purchased
* Create a product sales summary view

## SQL Concepts Used

`CREATE DATABASE` • `CREATE TABLE` • `INSERT INTO` • `SELECT` • `WHERE` • `ORDER BY` • `LIMIT` • `JOIN` • `GROUP BY` • `HAVING` • `SUM()` • `COUNT()` • `AVG()` • `MAX()` • Subqueries • CTEs • `RANK()` • Views

## Tools Used

* **MySQL**
* **MySQL Workbench**

## How to Run the Project

1. Open MySQL Workbench.
2. Run the database and table creation script.
3. Insert the customer and sales data.
4. Execute the SQL questions to explore the dataset.
5. Run the view queries to create summary views.

## Learning Outcomes

Through this project, I practiced:

* Creating and managing relational database tables
* Writing SQL queries to retrieve and filter data
* Using joins to combine information from multiple tables
* Applying aggregate functions for data analysis
* Using subqueries and CTEs to solve analytical problems
* Ranking data using window functions
* Creating views for reusable summaries

## Conclusion

This project provides practical experience in SQL database management and data analysis. It demonstrates how customer and sales data can be organized, queried, and summarized to answer business-related questions.

## Author

Abhinandh A S 
Aspiring data analyst
