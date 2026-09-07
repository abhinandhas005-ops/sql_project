INSERT INTO Customers
(Customer_ID, Customer_Name, City, State, Customer_Type)
VALUES
('001', 'Rahul Traders', 'Kochi', 'Kerala', 'Retail'),
('002', 'ABC Stores', 'Thrissur', 'Kerala', 'Retail'),
('003', 'Metro Mart', 'Kozhikode', 'Kerala', 'Wholesale'),
('004', 'Green Shop', 'Kollam', 'Kerala', 'Retail'),
('005', 'Star Enterprises', 'Kannur', 'Kerala', 'Wholesale'),
('006', 'City Mart', 'Kottayam', 'Kerala', 'Retail'),
('007', 'Royal Stores', 'Alappuzha', 'Kerala', 'Retail'),
('008', 'Mega Traders', 'Palakkad', 'Kerala', 'Wholesale'),
('009', 'Fresh Mart', 'Ernakulam', 'Kerala', 'Retail'),
('010', 'Smart Traders', 'Malappuram', 'Kerala', 'Wholesale'),
('011', 'Kerala Stores', 'Wayanad', 'Kerala', 'Retail'),
('012', 'City Traders', 'Idukki', 'Kerala', 'Wholesale'),
('013', 'Best Mart', 'Pathanamthitta', 'Kerala', 'Retail'),
('014', 'Prime Stores', 'Kasaragod', 'Kerala', 'Retail'),
('015', 'New Traders', 'Changanassery', 'Kerala', 'Wholesale'),
('016', 'Super Mart', 'Varkala', 'Kerala', 'Retail'),
('017', 'Daily Needs', 'Perumbavoor', 'Kerala', 'Retail'),
('018', 'Grand Traders', 'Ottapalam', 'Kerala', 'Wholesale'),
('019', 'Family Store', 'Tirur', 'Kerala', 'Retail'),
('020', 'Mega Mart', 'Muvattupuzha', 'Kerala', 'Wholesale');


INSERT INTO Sales
(Sale_ID, Customer_ID, Product, Category, Quantity, Sale_Date)
VALUES
('1001', '001', 'Laptop', 'Electronics', 2, '2026-01-05'),
('1002', '002', 'Mouse', 'Electronics', 5, '2026-01-07'),
('1003', '003', 'Keyboard', 'Electronics', 3, '2026-01-10'),
('1004', '004', 'Office Chair', 'Furniture', 4, '2026-01-12'),
('1005', '005', 'Desk', 'Furniture', 2, '2026-01-15'),
('1006', '006', 'Monitor', 'Electronics', 5, '2026-01-18'),
('1007', '007', 'Printer', 'Electronics', 1, '2026-01-20'),
('1008', '008', 'Office Chair', 'Furniture', 3, '2026-01-22'),
('1009', '009', 'Laptop', 'Electronics', 1, '2026-01-25'),
('1010', '010', 'Keyboard', 'Electronics', 4, '2026-01-28'),
('1011', '011', 'Desk', 'Furniture', 3, '2026-02-02'),
('1012', '012', 'Monitor', 'Electronics', 6, '2026-02-05'),
('1013', '013', 'Mouse', 'Electronics', 8, '2026-02-08'),
('1014', '014', 'Laptop', 'Electronics', 2, '2026-02-10'),
('1015', '015', 'Office Chair', 'Furniture', 5, '2026-02-12'),
('1016', '016', 'Printer', 'Electronics', 2, '2026-02-15'),
('1017', '017', 'Desk', 'Furniture', 4, '2026-02-18'),
('1018', '018', 'Monitor', 'Electronics', 3, '2026-02-20'),
('1019', '019', 'Keyboard', 'Electronics', 6, '2026-02-23'),
('1020', '020', 'Mouse', 'Electronics', 10, '2026-02-25');
