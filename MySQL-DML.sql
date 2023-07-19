--DML


--1. Insert at least 5 valid rows into DEPARTMENT table and commit the changes

INSERT INTO DEPARTMENT(Deptno,Dname,Location) VALUES
(1, 'Sales', 'New York'),
(2, 'HR', 'London'),
(3, 'IT', 'San Francisco'),
(4, 'Finance', 'Tokyo'),
(5, 'Marketing', 'Paris');


--2. Insert at least 15 valid rows in EMPLOYEE table and commit the changes

INSERT INTO EMPLOYEE (Empno, Ename, Designation, Gender, Basic_Salary, Date_of_joining, Deptno, Commission) VALUES
(1, 'John Smith', 'Manager', 'M', 5000.00, '2022-01-01', 1, NULL),
(2, 'Jane Doe', 'Engineer', 'F', 4000.00, '2022-02-01', 2, NULL),
(3, 'Michael Johnson', 'Analyst', 'M', 3500.00, '2022-03-01', 3, NULL),
(4, 'Sarah Williams', 'Assistant', 'F', 3000.00, '2022-04-01', 4, NULL),
(5, 'Robert Brown', 'Clerk', 'M', 2500.00, '2022-05-01', 5, NULL),
(16, 'Emily Davis', 'Manager', 'F', 5000.00, '2022-06-01', 1, NULL),
(17, 'Adam Wilson', 'Engineer', 'M', 4000.00, '2022-07-01', 2, NULL),
(18, 'Rachel Lee', 'Analyst', 'F', 3500.00, '2022-08-01', 3, NULL),
(19, 'Chris Miller', 'Assistant', 'M', 3000.00, '2022-09-01', 4, NULL),
(10, 'Jessica Turner', 'Clerk', 'F', 2500.00, '2022-10-01', 5, NULL),
(11, 'David Smith', 'Manager', 'M', 5000.00, '2022-11-01', 1, NULL),
(12, 'Olivia Johnson', 'Engineer', 'F', 4000.00, '2022-12-01', 2, NULL),
(13, 'Daniel Brown', 'Analyst', 'M', 3500.00, '2023-01-01', 3, NULL),
(14, 'Sophia Wilson', 'Assistant', 'F', 3000.00, '2023-02-01', 4, NULL),
(15, 'Ethan Miller', 'Clerk', 'M', 2500.00, '2023-03-01', 5, NULL);


--3. Update basic_salary by 10% for employees in deptno 1 and 5 and commit the changes

UPDATE EMPLOYEE
SET Basic_Salary=Basic_Salary*1.1
WHERE Deptno IN (1,5);