create database customer_sales;
use customer_sales;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    State VARCHAR(50),
    Customer_Type VARCHAR(20)
);
CREATE TABLE Sales (
    Sale_ID INT,
    Customer_ID INT,
    Product VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Quantity FLOAT,
    Sale_Date DATE
);
