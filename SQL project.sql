-- Team members:
-- D.Kavyasri-2K22/MAE/08
-- Vanshika Maurya-2K22/MAE/27
-- Mridu-2K22/MAE/29
-- Sonia Khan-2K22/MAE/61
-- Sonia Rathi-2K22/MAE/05

CREATE DATABASE FoodieDB;
USE FoodieDB;
CREATE TABLE CUSTOMER(
Cid INTEGER PRIMARY KEY  NOT NULL,
Cname VARCHAR(20) NULL,
phonenumber NUMERIC NOT NULL,
emailid VARCHAR(50) UNIQUE,
address VARCHAR(500) NOT NULL
);
CREATE TABLE EMPLOYEE_DETAILS(
Eid INTEGER PRIMARY KEY NOT NULL,
Ename VARCHAR(20) NULL,
Ephonenumber NUMERIC NOT NULL,
Erating INTEGER NULL
);

CREATE TABLE Products (
    Pid integer primary key  not null,
    Pname VARCHAR(20),
    P_description TEXT,
    price int
);

CREATE TABLE Orders (
	Oid INTEGER PRIMARY KEY NOT NULL , 
	Pid int,
    Cid INT,
    quantity_ordered INT,
    order_date DATETIME,
    delivery_status BOOLEAN,
    FOREIGN KEY (Pid) REFERENCES products(Pid),
    FOREIGN KEY (Cid) REFERENCES customer(Cid)
    );

-- Insert data for Customer 1
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (101, 'John Doe', '9234567890', 'johndoe@gmail.com', '123 Main St');

-- Insert data for Customer 2
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (102, 'Jane Smith', '9876543210', 'janesmith@gmail.com', '456 Elm St');
-- Insert data for Customer 3
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (103, 'Alice Johnson', '7551234567', 'alice@gmail.com', '789 Oak Ave');

-- Insert data for Customer 4
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (104, 'Bob Brown', '9879876543', 'bob@gmail.com', '456 Pine St');

-- Insert data for Customer 5
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (105, 'Sarah White', '7235557777', 'sarah@gmail.com', '999 Cedar Rd');

-- Insert data for Customer 6
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (106, 'Michael Black', '7771235555', 'michael@gmail.com', '111 Maple St');

-- Insert data for Customer 7
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (107, 'Linda Green', '9881234444', 'linda@gmail.com', '555 Birch Ave');

-- Insert data for Customer 8
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (108, 'Chris Red', '9666669666', 'chris@gmail.com', '123 Redwood Rd');

-- Insert data for Customer 9
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (109, 'Emily Blue', '7915559999', 'emily@gmail.com', '333 Elm Rd');

-- Insert data for Customer 10
INSERT INTO CUSTOMER (Cid, Cname, phonenumber, emailid, address)
VALUES (110, 'Tom Davis', '9641232111', 'tom@gmail.com', '222 Oak Rd ');


-- Insert data for Employee 1
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (201, 'John Doe', '7986549870', 4);

-- Insert data for Employee 2
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (202, 'Jane Smith', '9876543210', NULL);

-- Insert data for Employee 3
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (203, 'Bob Johnson', '7895585550', 3);

-- Insert data for Employee 4
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (205, 'Sara Brown', '7778777890', 5);

-- Insert data for Employee 5
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (206, 'Mike Davis', '9872228220', 2);

-- Insert data for Employee 6
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (207, 'Linda Wilson', '9998999801', 4);

-- Insert data for Employee 7
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (208, 'Tom Green', '9888988869', 1);

-- Insert data for Employee 8
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (204, 'Emily White', '7676468696', NULL);

-- Insert data for Employee 9
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (209, 'Chris Black', '7843446542', 3);

-- Insert data for Employee 10
INSERT INTO EMPLOYEE_DETAILS (Eid, Ename, Ephonenumber, Erating)
VALUES (210, 'Alice Red', '987067853', 5);

-- Inserting sample food-related names and setting prices accordingly
INSERT INTO Products (Pid, Pname, P_description, Price)
VALUES
    (3001,'Margherita Pizza', 'Classic margherita pizza with tomato, mozzarella, and basil', 212.99),
    (3002,'Spaghetti', 'Spaghetti with rich meat sauce and Parmesan cheese', 115.95),
    (3003,'Sushi Platter', 'Assorted vegetarian sushi rolls with soy sauce', 150.50),
    (3004,'Cheeseburger', 'Juicy beef patty with cheese, lettuce, and tomato in a sesame seed bun', 99.99),
    (3005,' Salad Bowl', 'Fresh romaine lettuce, croutons, parmesan cheese, and Caesar dressing', 90.75),
    (3006,'Chicken Tikka', 'Grilled chicken tikka wrapped in a soft tortilla', 130.99),
    (3007,'Stir-Fry Bowl', 'Assorted vegetables stir-fried in a savory sauce served over rice', 9.50),
    (3008,'Chocolate Brownie', 'Warm chocolate brownie topped with vanilla ice cream and chocolate sauce', 75.25),
    (3009,'Shrimp Pad Thai', 'Stir-fried rice noodles with shrimp, peanuts, and vegetables', 132.95),
    (3010,'Mango Tango Dessert', 'Sweet sticky rice topped with fresh mango slices and coconut milk', 112.99);

INSERT INTO Orders (Oid,Pid, Cid, quantity_ordered, order_date, delivery_status)
VALUES
    (2001, 3001, 101, 5, '2023-11-11 10:00:00', 0),
    (2002, 3002, 101, 3, '2023-11-12 12:30:00', 1),
    (2003, 3003, 101, 2, '2023-11-13 15:45:00', 0),
    (2004, 3010, 101, 8, '2023-11-14 08:15:00', 1),
    (2005, 3009, 101, 6, '2023-11-15 14:00:00', 0),
    (2006, 3008, 101, 4, '2023-11-16 11:45:00', 1),
    (2007, 3006, 101, 1, '2023-11-17 09:30:00', 0),
    (2008, 3002, 101, 7, '2023-11-18 16:20:00', 1),
    (2009, 3001, 101, 3, '2023-11-19 13:10:00', 0),
    (2010, 3007, 101, 5, '2023-11-20 17:00:00', 1),
	(2013, 3003, 103, 2, '2023-11-24 08:00:00', 0),
    (2014, 3004, 103, 2, '2023-11-24 12:15:00', 1),
    (2021, 3001, 102, 3, '2023-11-27 14:45:00', 0),
    (2022, 3002, 107, 3, '2023-11-27 09:00:00', 1),
    (2015, 3005, 109, 4, '2023-11-25 09:45:00', 0),
    (2016, 3006, 109, 4, '2023-11-25 15:30:00', 1),
    (2017, 3007, 109, 4, '2023-11-25 11:00:00', 0),
    (2018, 3008, 109, 4, '2023-11-25 14:45:00', 1),
	(2023, 3007, 108, 6, '2023-11-23 09:30:00', 0),
    (2024, 3008, 108, 6, '2023-11-23 16:20:00', 1),
    (2025, 3009, 108, 6, '2023-11-23 13:10:00', 0),
    (2026, 3010, 108, 6, '2023-11-23 17:00:00', 1),
    (2011, 3001, 108, 6, '2023-11-23 10:30:00', 0),
    (2012, 3002, 108, 6, '2023-11-23 14:45:00', 1),
    (2019, 3005, 105, 2, '2023-11-22 14:00:00', 0),
    (2027, 3006, 105, 2, '2023-11-22 11:45:00', 1),
    (2028, 3001, 104, 4, '2023-11-21 10:00:00', 0),
    (2029, 3002, 104, 4, '2023-11-21 12:30:00', 1),
    (2030, 3003, 104, 4, '2023-11-21 15:45:00', 0),
    (2031, 3004, 104, 4, '2023-11-21 08:15:00', 1),
	(2032, 3009, 106, 1, '2023-11-26 12:00:00', 0);

-- Selecting customer information based on a specific condition
SELECT Cid, Cname, phonenumber
FROM CUSTOMER
WHERE address = '123 Main St';

-- Which products a particular customer has ordered
SELECT C.Cname AS Customer_Name, P.Pname AS Product_Name
FROM Orders AS O
JOIN CUSTOMER AS C ON O.Cid = C.Cid
JOIN Products AS P ON O.Pid = P.Pid;

-- Selecting products with prices greater than all prices in a specific category
SELECT Pname, Price
FROM Products
WHERE Price > ALL (SELECT Price FROM Products WHERE P_description LIKE 'Grilled%');

-- Total quantity and total price for each order
SELECT Oid, SUM(quantity_ordered) AS TotalQuantity, SUM(quantity_ordered * price) AS TotalPrice
FROM Orders
JOIN Products ON Orders.Pid = Products.Pid
GROUP BY Oid;

-- Selecting employees with a specific rating and phone number
SELECT Ename, Ephonenumber
FROM EMPLOYEE_DETAILS
WHERE Erating = 4 AND Ephonenumber = '7986549870';

-- Selecting orders where the quantity is either 3 or 5
SELECT *
FROM Orders
WHERE quantity_ordered = 3 OR quantity_ordered = 5;


-- Wildcard operators in SQL

SELECT * FROM Customer
WHERE Cname LIKE 'a%';

SELECT * FROM customer WHERE emailid LIKE '%gmail.com';

-- Select all customers whose names start with 'J'
SELECT * FROM CUSTOMER WHERE Cname LIKE 'J%';

-- Select all products whose names contain 'Pizza'
SELECT Pid, Pname, P_description FROM Products WHERE Pname LIKE '%Pizza%';

-- Select all customer whose names have 'i' as the second character
SELECT * FROM customer WHERE Cname LIKE '_i%';


-- Update the delivery status of an order
UPDATE Orders
SET delivery_status = 1
WHERE Oid = 2003;

-- Add a new column to the Products table
ALTER TABLE Products
ADD COLUMN is_vegetarian BOOLEAN DEFAULT false;

-- Retrieve products ordered by price in descending order
SELECT Pid, Pname, Price
FROM Products
ORDER BY Price DESC;

-- Total quantity of products ordered for each customer
SELECT C.Cid, C.Cname, SUM(O.quantity_ordered) AS total_quantity_ordered
FROM CUSTOMER C
JOIN Orders O ON C.Cid = O.Cid
GROUP BY C.Cid, C.Cname;

-- Delete a specific order
DELETE FROM Orders
WHERE Oid = 2007;

-- Drop the Orders table
DROP TABLE Orders;

-- NESTED QUERIES

-- RETRIEVING ORDERS FOR A SPECIFIC CUSTOMER JOHN DOE
SELECT *
FROM Orders
WHERE Cid = (SELECT Cid FROM CUSTOMER WHERE Cname = 'John Doe');


-- Retrieve Products for Orders with a Quantity Greater Than 5:
SELECT *
FROM Products
WHERE Pid IN (SELECT Pid FROM Orders WHERE quantity_ordered > 5);

-- Retrieve order details for the orders that were not delivered
SELECT *
FROM orders
WHERE oid in (SELECT oid FROM orders WHERE delivery_status = 0);



-- Using EXISTS to Find Customers who Ordered a Specific Product:
SELECT *
FROM CUSTOMER
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE Orders.Cid = CUSTOMER.Cid AND Orders.Pid = 3001
);


-- Using NOT EXISTS to Find Products that Were Never Ordered:
SELECT *
FROM Products
WHERE NOT EXISTS (
    SELECT *
    FROM Orders
    WHERE Orders.Pid = Products.Pid
);


-- Using NOT EXISTS to Find Customers who Never Placed an Order:
SELECT *
FROM CUSTOMER
WHERE NOT EXISTS (
    SELECT *
    FROM Orders
    WHERE Orders.Cid = CUSTOMER.Cid
);



-- GROUP BY

-- Customers with More Than 5 Orders:
SELECT Cid, COUNT(Oid) AS TotalOrders
FROM Orders
GROUP BY Cid
HAVING TotalOrders > 5;


-- Orders Count and Total Sales by Date:
SELECT DATE(order_date) AS OrderDate, COUNT(Oid) AS OrderCount, SUM(quantity_ordered * price) AS TotalSales
FROM Orders
JOIN Products ON Orders.Pid = Products.Pid
GROUP BY OrderDate
ORDER BY orderdate;


-- Employees with Average Rating Above 4:
SELECT Eid, Ename, AVG(Erating) AS AvgRating
FROM EMPLOYEE_DETAILS
GROUP BY Eid
HAVING AvgRating > 4;


-- Products with Total Sales Greater Than $500:
SELECT Orders.Pid, Pname, SUM(quantity_ordered * price) AS TotalSales
FROM Orders
JOIN Products ON Orders.Pid = Products.Pid
GROUP BY Orders.Pid
HAVING TotalSales > 500;


-- JOINS

-- INNER JOIN - Retrieving Customer and Order Information:
SELECT *
FROM CUSTOMER
INNER JOIN Orders ON CUSTOMER.Cid = Orders.Cid;


-- LEFT OUTER JOIN - Retrieving All Customers and Their Orders (if any):
SELECT *
FROM CUSTOMER
LEFT OUTER JOIN Orders ON CUSTOMER.Cid = Orders.Cid;


-- RIGHT OUTER JOIN - Retrieving All Orders and Corresponding Customer Information (if any):*
SELECT *
FROM CUSTOMER
RIGHT OUTER JOIN Orders ON CUSTOMER.Cid = Orders.Cid;