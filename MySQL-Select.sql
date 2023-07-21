--select;


Create table employees(
Name Varchar(50),
Departments Varchar(50),
Deptno INT,
Job Varchar(50),
Salary INT,
JoiningDate DATE
);

INSERT INTO employees(Name, Departments, Deptno, Job, Salary, JoiningDate) VALUES
('John Doe', 'Sales', 1, 'Salesperson', 3500, '2022-01-15'),
('Jane Smith', 'HR', 2, 'HR Manager', 6000, '2021-09-03'),
('Michael Johnson', 'IT', 3, 'Systems Admin', 5000, '2023-04-20'),
('Sarah Williams', 'Finance', 4, 'Accountant', 4500, '2022-11-10'),
('Robert Brown', 'Marketing', 5, 'Marketing Exec', 4000, '2023-02-18'),
('Emily Davis', 'Sales', 6, 'Sales Manager', 6500, '2021-12-05'),
('Adam Wilson', 'HR', 7, 'HR Assistant', 3000, '2022-06-30'),
('Rachel Lee', 'IT', 8, 'Developer', 5500, '2023-01-22'),
('Chris Miller', 'Finance', 9, 'Financial Ana', 3800, '2022-08-14'),
('Jessica Turner', 'Marketing', 10, 'Marketing Ass', 3200, '2023-06-07'),
('_tonny','IT',20,'Developer',2500,'2023-06-03');


--1. List employees in ascending order of job within descending order of deptno.

SELECT * FROM employees
ORDER BY 
Departments ASC,
Deptno DESC;


--2. List distinct departments from employee table.

SELECT DISTINCT Departments FROM employees;


--3. List distinct jobs in each department from employee table.

SELECT DISTINCT Job FROM employees;


--4. List name, salary and annual salary in the descending order of annual salary – annual salary is a

-- computed column – SAL * 12.

SELECT Name,Salary,12*Salary Annual_Salary FROM employees 
ORDER BY 
Annual_salary DESC;


--5. List employees whose salary is not in the range of 2000 and 3000.

SELECT * FROM employees where Salary<2000 or Salary>3000;


--6. List name and the deptno for all employees who are NOT members of departments 10 and 20.

SELECT Name,Deptno FROM employees where Deptno!=10 and Deptno!=20;


--7. List employees whose names start with ‘Jane’.

SELECT * FROM employees where Name like 'Jane%';


--8. List employees whose name contain the ‘MI’.

SELECT * FROM employees where Name like '%MI%';


--9. List employees whose name start with an _ (underscore) char.

SELECT * FROM employees where Name like '/_%';


--10. List all employees joined between two given dates.

SELECT * FROM employees where JoiningDate>'2023-01-22' and JoiningDate<'2023-06-07';




