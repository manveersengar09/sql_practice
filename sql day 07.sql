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
-- day :-6 {theory +notes }--------------------------------------------------
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- day :-7 {theory+notes}--------------------------------------------------
------------------------------------------------------------------------------------