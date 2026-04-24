-- =============================================
-- Addis Retail Hub Sales Database - Full Setup
-- For Kalkidan's SQL Learning Journey
-- Created: April 21, 2026
-- Topics: SELECT, Aliasing, WHERE, GROUP BY, ORDER BY, HAVING, LIMIT
-- =============================================

-- 1. Create the database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS addis_retail_hub;

-- 2. Use the database
USE addis_retail_hub;

-- 3. Drop the table if it already exists (safe)
DROP TABLE IF EXISTS sales;

-- 4. Create the sales table
CREATE TABLE sales (
    sale_id         INT PRIMARY KEY AUTO_INCREMENT,
    sale_date       DATE NOT NULL,
    customer_name   VARCHAR(100),
    product_name    VARCHAR(100),
    category        VARCHAR(50),
    quantity        INT,
    unit_price      DECIMAL(10,2),
    total_amount    DECIMAL(10,2),
    region          VARCHAR(50),
    payment_method  VARCHAR(20)
);

-- 5. Insert realistic sample data (15 records)
INSERT INTO sales (sale_date, customer_name, product_name, category, quantity, unit_price, total_amount, region, payment_method) VALUES
('2026-01-05', 'Abebe Kebede', 'Laptop Dell XPS', 'Electronics', 1, 45000.00, 45000.00, 'Addis Ababa', 'Card'),
('2026-01-10', 'Sara Tesfaye', 'Wireless Headphones', 'Electronics', 2, 850.00, 1700.00, 'Addis Ababa', 'Cash'),
('2026-01-12', 'Yonas Alemayehu', 'Office Chair', 'Furniture', 1, 3200.00, 3200.00, 'Bahir Dar', 'Card'),
('2026-01-15', 'Meron Haile', 'Rice 5kg', 'Groceries', 10, 450.00, 4500.00, 'Addis Ababa', 'Mobile Money'),
('2026-01-18', 'Dawit Girma', 'Smartphone Samsung', 'Electronics', 1, 18500.00, 18500.00, 'Mekelle', 'Card'),
('2026-01-20', 'Abebe Kebede', 'Desk Lamp', 'Furniture', 3, 450.00, 1350.00, 'Addis Ababa', 'Cash'),
('2026-01-22', 'Tigist Bekele', 'Cooking Oil 5L', 'Groceries', 8, 650.00, 5200.00, 'Gondar', 'Mobile Money'),
('2026-01-25', 'Yonas Alemayehu', 'Laptop Dell XPS', 'Electronics', 1, 45000.00, 45000.00, 'Bahir Dar', 'Card'),
('2026-01-28', 'Sara Tesfaye', 'Notebooks Pack', 'Stationery', 15, 120.00, 1800.00, 'Addis Ababa', 'Cash'),
('2026-02-01', 'Meron Haile', 'Wireless Headphones', 'Electronics', 1, 850.00, 850.00, 'Addis Ababa', 'Card'),
('2026-02-03', 'Dawit Girma', 'Office Chair', 'Furniture', 2, 3200.00, 6400.00, 'Mekelle', 'Mobile Money'),
('2026-02-05', 'Tigist Bekele', 'Rice 5kg', 'Groceries', 20, 450.00, 9000.00, 'Gondar', 'Cash'),
('2026-02-08', 'Abebe Kebede', 'Smartphone Samsung', 'Electronics', 1, 18500.00, 18500.00, 'Addis Ababa', 'Card'),
('2026-02-10', 'Sara Tesfaye', 'Desk Lamp', 'Furniture', 5, 450.00, 2250.00, 'Addis Ababa', 'Cash'),
('2026-02-12', 'Yonas Alemayehu', 'Cooking Oil 5L', 'Groceries', 12, 650.00, 7800.00, 'Bahir Dar', 'Card');

-- 6. Quick verification query
SELECT 'Database setup completed successfully!' AS message;
SELECT COUNT(*) AS total_sales_records FROM sales;