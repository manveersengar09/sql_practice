-----------------------------------------------------------------------------------
-- DAY :- 1 {download and practice}+{create handwritten notes}---------------------
-----------------------------------------------------------------------------------
select * from employee;
create table employee(
		employee_id SERIAL PRIMARY KEY ,
		name varchar(100) not null,
		position VARCHAR(50),
		department VARCHAR(50),
		hire_date DATE,
		salary numeric(10,2)	
		);
select * from employee;
insert into employee(name,position,department,salary)

VALUES
(1, 'Ajeet', 'Data Analyst', 'Data Science', 65000.00),
(2, 'Jeet', 'Software Engineer', 'IT', 32000.00),
(3, 'Ranjeet', 'HR Manager', 'Human Resources', 88000.00),
(4, 'Abhijeet', 'Marketing Specialist', 'Marketing', 55000.00),
(5, 'Manjeet', 'Sales Manager', 'Sales', 98730.00),
(6, 'Ajeet', 'Data Analyst', 'Data Science', 65000.00),
(7, 'Jeet', 'Software Engineer', 'IT', 32000.00),
(8, 'Ranjeet', 'HR Manager', 'Human Resources', 88000.00),
(9, 'Abhijeet', 'Marketing Specialist', 'Marketing', 55000.00),
(10, 'Manjeet', 'Sales Manager', 'Sales', 98730.00),
(11, 'Aarav', 'Sales Manager', 'Sales', 98730.00),
(12, 'Rohan', 'Marketing Executive', 'Marketing', 65320.00),
(13, 'Kunal', 'HR Manager', 'HR', 74300.00),
(14, 'Sandeep', 'Accountant', 'Finance', 58300.00),
(15, 'Vikram', 'Software Engineer', 'IT', 81200.00),
(16, 'Harsh', 'Data Analyst', 'Analytics', 70500.00),
(17, 'Deepak', 'Team Lead', 'Operations', 79200.00),
(18, 'Anmol', 'Business Analyst', 'Business', 68100.00),
(19, 'Yash', 'Sales Executive', 'Sales', 55200.00),
(20, 'Pranay', 'Graphic Designer', 'Design', 47800.00);
-----------------------------------------------------------------------------------
-- DAY :-2 {mainly theory and some commands}+{create handwritten notes}------------
-----------------------------------------------------------------------------------
				select * from employee;

			DELETE FROM employee
			WHERE employee_id>20;
			select * from employee; 
			
insert into employee(name,position,department,salary)
values ('ajeet','data analyst','data science',65000.00);

  select * from employee ORDER BY employee_ID ASC;
  delete from employee
  where employee_id = 191;
  select * from employee;

  
  UPDATE employee
  SET position='data analyst'
  WHERE salary = 65000.00;
  
  select * from employee;
  select * from employee ORDER BY employee_ID ASC;
-----------------------------------------------------------------------------------
 --DAY :-3 {assignment}------------------------------------------------------------
-----------------------------------------------------------------------------------

  
  DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

SELECT * FROM employees;

insert into employees(first_name,last_name,department,salary,joining_date,age)
VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

select * from employees;

-- 5 Assignment Questions for day :- 3;

--Q1: Retrieve all employees’ first_name and their departments.

SELECT first_name ,
department
from employees;


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE employees
set salary=salary + (salary*0.1)
where department ='IT';

select * from employees;
select * from employees ORDER BY employee_id ASC;


--Q3: Delete all employees who are older than 34 years.

DELETE FROM employees
WHERE age>34;

select * from employees;
select * from employees ORDER BY employee_id ASC;
--Q4: Add a new column `email` to the `employees` table.

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


select * from employees;
select * from employees ORDER BY employee_id ASC;


--Q5: Rename the `department` column to `dept_name`.

ALTER TABLE employees
RENAME COLUMN department TO dept_name;

select * from employees;
select * from employees ORDER BY employee_id ASC;
------------------------------------------------------------------------------------
-- day :-4 {5 assignment question}--------------------------------------------------
------------------------------------------------------------------------------------


SELECT * FROM employees;

--Q6: Retrieve the names of employees who joined after January 1, 2021.

SELECT first_name, last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';

select * from employees ORDER BY employee_id ASC;
SELECT * FROM employees;
--Q7: Change the data type of the `salary` column to `INTEGER`.

ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

SELECT * FROM employees;
select * from employees ORDER BY employee_id ASC;

--Q8: List all employees with their age and salary in descending order of salary.

SELECT first_name, age, salary FROM employees 
ORDER BY salary DESC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees(first_name, last_name, department, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);
		
select * from employees ORDER BY employee_id ASC;

--Q10: Update age of employee +1 to every employee 

UPDATE employees
SET age=age+1;


select * from employees ORDER BY employee_id ASC;


------------------------------------------------------------------------------------
-- day :-5 {theory+notes}--------------------------------------------------
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- day :-6 {theory + handwritten notes }--------------------------------------------------
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- day :-7 {theory+ handwritten notes}--------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-- day :-8 {TYPE OF COMMANDS + handwritten NOTES}--------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-- day :-9 {types of operators+ handwritten NOTES}--------------------------------------------------
------------------------------------------------------------------------------------
--TYPES OF OPERATORS 
--1} Airthmatic operators(+,-,*,/,%)
--2} Comparision operators(=,!=,<>,>,<.<=,>=)
--3}logical operators(AND,OR,NOT,)
--4}bitwise operators
--5} set operators
--6} string operators
--7}other operators
--PRACTICE ON OPERATORS



--1} Airthmatic operators:-

--ques} retrieve the first_name , salary , and calculate a 10% bonus on the salary.

select * from employee3;
SELECT
first_name,salary,
(salary*0.10) as bonus
from employee3;


--ques}Calculate the Annual Salary and Salary Increment by 5% – show the monthly new salary as well.
SELECT 
    first_name,last_name,salary,
    (salary * 12) AS annual_salary,
    (salary * 0.05) AS increment_amount,
    (salary * 1.05) AS new_salary,
    (salary * 1.05) / 12 AS new_monthly_salary
FROM employee3;




--2} Comparision operators


select * from employee3;

--matches age 46
select * from employee3
WHERE 
age = 46;

-- matches all except 46
SELECT * FROM employee3
WHERE 
age <> 46;

-- age greater than 46
SELECT * FROM employee3
WHERE
age > 46;

-- age LESS than 46
SELECT * FROM employee3
WHERE
age < 46;

-- age greater than or equal to 46
SELECT * FROM employee3
WHERE 
age >= 46;

-- age lesser than or equal to 46
SELECT * FROM employee3
WHERE
age <= 46;

-- salary greater than or equal to 50,000
SELECT * FROM employee3
WHERE
salary >= 50000;

-- find a employee name  whose employee id is 18.
SELECT employee_id,first_name FROM employee3
WHERE
employee_id = 18;

------------------------------------------------------------------------------------
-- day :-10 {logical operators + handwritten NOTES}--------------------------------------------------
------------------------------------------------------------------------------------

--3}logical operators(AND,OR,NOT,)


--age more than or equal to 40 and salary morethan or equal to 50,000.

SELECT * FROM employee3
WHERE
age >= 40 AND salary >= 50000;

--age more than or equal to 40 or salary morethan or equal to 50,000.

SELECT * FROM employee3
WHERE
age >= 40 OR salary >= 50000;

--remove all employees whose belongs to IT department.
 
SELECT * FROM employee3
WHERE NOT (department =  'IT' );


------------------------------------------------------------------------------------
-- day :-11 {BETWEEN,LIKE,IN operator + handwritten NOTES}--------------------------
------------------------------------------------------------------------------------

SELECT * FROM employee3;
--1) Retrieve employees whose salary is between 40,000 and 60,000 -- use BETWEEN operators

SELECT first_name , last_name , salary
FROM employee3
where salary BETWEEN 40000 and 60000;

--2) Find employees whose email addresses end with gmail.com -- use LIKE operators.

SELECT * FROM employee3;
SELECT first_name , last_name , email
FROM employee3
WHERE email like '%@gmail.com';


--3) Find employees whose name start with 'J' -- use LIKE operators.
SELECT * FROM employee3;
SELECT first_name
FROM employee3
WHERE first_name like 'J%';


--4) Find employees whose name end with 'a' -- use LIKE operators.
SELECT * FROM employee3;
SELECT first_name
FROM employee3
WHERE first_name like '%a';


--5) RETRIVE employees who belongs to either the 'finance' or 'marketing' departments -- use IN operator.

SELECT first_name,last_name,department
FROM employee3
WHERE department IN ('Marketing','Finance');


------------------------------------------------------------------------------------
-- day :-12 {LIMIT,ORDER BY,IS NULL,DISTINCT operator + handwritten NOTES}----------
------------------------------------------------------------------------------------
SELECT * from employee3;

-- Find employees where the email column is NULL (if applicable)

SELECT first_name, last_name, email
FROM employee3
WHERE email IS NULL;


-- List employees sorted by salary in descending order

SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary DESC;


-- Retrieve the top 5 highest-paid employees
SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary DESC
LIMIT 5;

-- Retrieve a list of unique departments
SELECT COUNT(DISTINCT department) AS DEP_UNIQUE_COUNT
FROM employee3;

------------------------------------------------------------------------------------
-- day :-13 {SET operator(UNION,UNION ALL,INTERSECTION,EXCEPT) + handwritten NOTES}-
------------------------------------------------------------------------------------

-- Drop table if already exists

DROP TABLE IF EXISTS students_2023;

-- Create table

CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

-- Insert records into students_2023

INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

-- Display records
SELECT * FROM students_2023;


DROP TABLE IF EXISTS students_2024;

CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

SELECT * FROM students_2024;

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),        -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Neera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


SELECT * FROM students_2024;

--UNION-- Combine results and remove duplicates.

select student_name,course 
FROM students_2023

UNION

SELECT student_name,course 
FROM students_2024

--UNION ALL-- Combines resilts and keep duplicates.
SELECT student_name,course 
FROM students_2023

UNION ALL

SELECT student_name,course 
FROM students_2024

--INTERSECT-- returns common results in both tables.

SELECT student_name,course 
FROM students_2023

INTERSECT

SELECT student_name,course 
FROM students_2024

-- EXCEPT -- Returns results in the first table but not in second.

SELECT student_name,course 
FROM students_2023

EXCEPT

SELECT student_name,course 
FROM students_2024


------------------------------------------------------------------------------------
-- day :-14 {IMPORT CSV FILE INTO SQL + handwritten NOTES}--------------------------
------------------------------------------------------------------------------------


DROP TABLE IF EXISTS employee2;

CREATE TABLE employee2 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    department VARCHAR(20),
    salary NUMERIC(10,2),
    joining_date DATE,
    age INT
);

SELECT * FROM employee2;


COPY employee2 (employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\HP\OneDrive\Desktop\rohit sql\day8employee_datasql.csv'
DELIMITER ','
CSV HEADER;



------------------------------------------------------------------------------------
-- day :-15 {IMPORT CSV FILE DIRECTLY INTO SQL + handwritten NOTES}-----------------
------------------------------------------------------------------------------------

DROP TABLE IF EXISTS employee3;

CREATE TABLE employee3 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50),
    department VARCHAR(20),
    salary NUMERIC(10,2),
    joining_date DATE,
    age INT
);

SELECT * FROM employee3;


--STEP 1 :- CLICK ON DATABASE (LEFT SIDE)
--STEP 2 :- CLICK ON TABLE (LEFT SIDE)
--STEP 3 :- CLICK ON EMPLOYEE3(RIGHT CLICK)
--STEP 4 :- CLICK ON IMPORT DATA 
--STEP 5 :- CLICK ON FILE OPTION 
--STEP 6 :- THEN CLICK ON CSV FILE FROM FOLDER U WANT TO USE IN SQL
--STEP 7 :- THEN SECOND LAST, REMEMBER HEADER IS ON 
--STEP 8 :- THEN LAST CLICK ON (OK).


SELECT * FROM employee3;



------------------------------------------------------------------------------------
-- day :-16 {FUNCTION IN SQL + handwritten NOTES}-----------------------------------
------------------------------------------------------------------------------------

--LIST OF FUNCTION IN SQL
--1} Aggregate FUNCTION(COUNT(),SUM(),AVG(),MAX(),MIN())
--2} String FUNCTION(UPPER(),LOWER(),LENGTH(),CONCAT(),SUBSTRING(),TRIM(),REPLACE())
--3} date and time FUNCTION
--4} mathematical FUNCTION
--5} conditional FUNCTION
--6} Window/Analytical FUNCTION 


--1} Aggregate FUNCTION(COUNT(),SUM(),AVG(),MAX(),MIN())


DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products;

 --Total quantity available of all products

 SELECT SUM(quantity) AS total_quantity 
 FROM products;

  --Total quantity available of electronins.
SELECT SUM(quantity) AS quantity_of_electronics 
FROM products
WHERE category = 'Electronics';

-- total numbers of products

SELECT COUNT (*) AS total_products
FROM products;

--count with conditions

SELECT COUNT (*) AS total_products
FROM products
WHERE product_name LIKE '%phone%'

-- Average price of products

SELECT AVG (price) AS average_price
FROM products;


-- Average price of products with condition

SELECT AVG (price) AS average_price
FROM products
WHERE category = 'Accessories';

-- Average price of products with condition and also use (OR) 

SELECT AVG (price) AS average_price
FROM products
WHERE category = 'Accessories' OR added_date > '2024-02-01';


SELECT * FROM products;

-- Maximum and minimum price

SELECT max(price) as MAX_PRICE,
       min(price) as MIN_PRICE
	   FROM products;


------------------------------------------------------------------------------------
-- day :-17 { String FUNCTION + handwritten NOTES}----------------------------------
------------------------------------------------------------------------------------

--2} String FUNCTION(UPPER(),LOWER(),LENGTH(),CONCAT(),SUBSTRING(),TRIM(),REPLACE())


SELECT * FROM products;

-- Get all the categories in UPPER CASE 

SELECT UPPER(category) AS Catergory_Capital
	   FROM products;
	   
-- Get all the categories in LOWER CASE 

SELECT LOWER(category) AS Catergory_Capital
	   FROM products;

--join Product_name adn category text with hypen.

SELECT CONCAT(PRODUCT_NAME,'-',category) AS product_details
FROM products;

--Extract the first 5 characters from products_name

SELECT SUBSTRING(PRODUCT_NAME,1,5) AS short_name
FROM products;

--Count Lengths

SELECT product_name,LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;

--Remove leading and trailing spaces from string 

SELECT TRIM ('    MONITOR    ') AS TRIMMED_TEXT;


--Remove leading and trailing spaces from string also find length 

SELECT LENGTH ('    MONITOR    ') AS TRIMMED_TEXT;


--Remove leading and trailing spaces from string also find length with using TRIM.

SELECT LENGTH (TRIM('    MONITOR    ')) AS TRIMMED_TEXT;


--Replace the word "phone" with "device" in product names

SELECT REPLACE (product_name, 'phone','device') AS updated
FROM products;


-- Get the first 3 characters from category 

SELECT LEFT(category,3) AS Catergory_Capital
	   FROM products;
	   

-- Get the last 3 characters from category 

SELECT RIGHT(category,3) AS Catergory_Capital
	   FROM products;


	   
------------------------------------------------------------------------------------
-- day :-18 { DATE AND TIME FUNCTION + handwritten NOTES}---------------------------
------------------------------------------------------------------------------------



select * from products;


-- 1. NOW() - Get Current Date and Time
SELECT NOW() AS Current_Datetime;

-- 2. CURRENT_DATE() - Get Current Date
SELECT CURRENT_DATE AS today_date;

-- 3. Calculate difference between current date and added_date
SELECT Added_date,Current_Date,(CURRENT_DATE - added_date) AS days_difference
FROM products;

-- 4. EXTRACT() - Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.

SELECT 
    product_name,
    EXTRACT(YEAR FROM added_date) AS Year_Added,
    EXTRACT(MONTH FROM added_date) AS Month_Added,
    EXTRACT(DAY FROM added_date) AS Day_Added
FROM products;

-- 5. AGE() - Calculate Age Between Dates
-- Calculate the time difference between added_date and today's date

SELECT 
    product_name,
    AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;

-- 6. TO_CHAR() - Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY)

SELECT 
    product_name,
    TO_CHAR(added_date, 'DD-Mon-YYYY') AS formatted_date
FROM products;


-- 7. TO_CHAR() - Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YY)


SELECT 
    product_name,
    TO_CHAR(added_date, 'DD-Mon-YY') AS formatted_date
FROM products;


	   
------------------------------------------------------------------------------------
-- day :-19 { DATE AND TIME FUNCTION PART--2 + handwritten NOTES}-------------------
------------------------------------------------------------------------------------


-- 8. DATE_PART() - Get Specific Date Part
-- Extract the day of the week from added_date

SELECT 
    product_name,
    added_date,
    DATE_PART('dow', added_date) AS day_of_week
FROM products;

-- 9. DATE_TRUNC() - Truncate Date to Precision
-- Truncate added_date to the start of the month

SELECT 
    product_name,
    DATE_TRUNC('month', added_date) AS month_start
FROM products;



-- 10. DATE_TRUNC() - Truncate Date to Precision
-- Truncate added_date to the start of the day

SELECT 
    product_name,
    DATE_TRUNC('day', added_date) AS day_start
FROM products;


-- 11. DATE_TRUNC() - Truncate Date to Precision
-- Truncate added_date to the start of the year

SELECT 
    product_name,
    DATE_TRUNC('year', added_date) AS year_start
FROM products;

-- 12. INTERVAL - Add or Subtract Time Intervals
-- Add 6 days to the added_date

SELECT 
    product_name,
    added_date,
    added_date + INTERVAL '6 days' AS new_date
FROM products;

-- 13. INTERVAL - Add or Subtract Time Intervals
-- Add 6 months to the added_date

SELECT 
    product_name,
    added_date,
    added_date + INTERVAL '6 months' AS new_date
FROM products;

-- 14. CURRENT_TIME() - Get Current Time
-- Retrieve only the current time

SELECT CURRENT_TIME AS current_time;


-- 15. TO_DATE() - Convert String to Date
-- Convert a string to a date format

SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;




	   
------------------------------------------------------------------------------------
-- day :-20 { CONDITIONAL FUNCTION (CASE , COALESCE()) + handwritten NOTES}-------------------
------------------------------------------------------------------------------------


SELECT * FROM products;
/*
 CASE Function - Categorizing based on Conditions
 It will categorize products into price ranges.

 🏴Expensive if the price is greater than or equal to 50,000,
 🏴Moderate if the price is between 10,000 and 49,999,
 🏴Affordable if the price is less than 10,000.
*/


SELECT product_name, price,
    CASE
        WHEN price >= 50000 THEN 'Expensive'
        WHEN price >= 10000 AND price <= 49999 THEN 'Moderate'
        ELSE 'Affordable'
    END AS price_category
FROM products;


	
------------------------------------------------------------------------------------
-- day :-21 { assignment on case FUNCTION + handwritten NOTES}----------------------
------------------------------------------------------------------------------------



SELECT * from products;


/* 1. CASE Function – Categorizing Based on Conditions
 We will categorize products into price ranges:

Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000.
*/


SELECT product_name, price,
		CASE
			WHEN price>=50000 THEN 'Expensive'
			WHEN price>=10000 AND price<=49999 THEN 'Moderate'
			ELSE 'Affordable'
		END AS price_category
FROM products;
			



/* 2. CASE with AND & OR Operators – Stock Status
We will classify products based on quantity available:


In Stock if quantity is 10 or more.
Limited Stock if quantity is between 5 and 9.
Out of Stock Soon if quantity is less than 5.
*/


SELECT product_name, quantity, 
		CASE
			WHEN quantity >=10 THEN 'InStock'
			WHEN quantity BETWEEN 6 AND 9 THEN 'Limited stock'
			ELSE 'Out of stock soon'
		END AS stock_status
FROM products;




/* 3. CASE with LIKE Operator – Category Classification
Check if the category name contains "Electronics" or "Furniture" using LIKE.
*/


SELECT product_name, category, 
		CASE
			WHEN category LIKE 'Electronics%' THEN 'Electronic Item'
			WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
			ELSE 'Accessory Item'
		END AS category_Status
FROM products;

	
------------------------------------------------------------------------------------
-- day :-22 { COALESCE FUNCTION + handwritten NOTES}----------------------
------------------------------------------------------------------------------------


SELECT * FROM products;

ALTER TABLE products
DROP COLUMN discount_price;

ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);



UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop','Desk');

UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop','Desk');


SELECT product_name, price, discount_price 
FROM products;


SELECT product_name, 
		COALESCE(discount_price, price) AS Final_price
FROM products;

	
------------------------------------------------------------------------------------
-- day :-23 { WINDOW FUNCTION + handwritten NOTES}----------------------
------------------------------------------------------------------------------------

SELECT * FROM products;


-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS Ranking
FROM products;


SELECT product_name, category, price,
		sum(price) OVER(PARTITION BY category ORDER BY price ASC) AS Running_Total
FROM products;


	
------------------------------------------------------------------------------------
-- day :-23 { HOW TO USE JOINS IN SQL + handwritten NOTES}--------------------------
------------------------------------------------------------------------------------


-- Create Employees Table

CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
	
);



-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);


SELECT * FROM employees3;


-- Create Departments Table

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES

(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM Departments;


SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees3 e 
RIGHT JOIN
Departments d
ON e.department_id=d.department_id;


------------------------------------------------------------------------------------
-- day :-24 { HOW TO USE JOINS IN SQL PART:2 + handwritten NOTES}-------------------
------------------------------------------------------------------------------------

-- Create Employees Table
CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM employees3;

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);



-- Insert Data into Departments

INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM Departments;


SELECT e.employee_id, e.first_name, e.last_name, 
		d.department_id, d.department_name 
FROM Employees3 e 
FULL OUTER JOIN    -- YOU CAN CHANGE THE JOIN NAME HERE LIKE :  RIGHT JOIN, LEFT JOIN, INNER JOIN
Departments d
ON e.department_id=d.department_id;



--CROSS JOIN


SELECT e.first_name, e.last_name, d.department_name
FROM Employees3 e 
CROSS JOIN
	Departments d;


-- SELF JOIN



SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2,
	   d.department_name
FROM employees3 e1 JOIN employees3 e2
ON e1.department_id=e2.department_id AND e1.employee_id!=e2.employee_id
JOIN 
departments d
ON	
e1.department_id=d.department_id;



