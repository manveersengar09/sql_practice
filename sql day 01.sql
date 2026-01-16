-- DAY :- 1 {download and practice}
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
