--Sub Queries:


--1. List employees whose job is same as that of ‘JOHN SMITH’

SELECT * FROM EMPLOYEE WHERE
DESIGNATION=(SELECT DESIGNATION FROM EMPLOYEE WHERE Ename='JOHN SMITH');


--2. List employees who have joined after ‘ADAM WILSON’

SELECT * FROM EMPLOYEE WHERE 
Date_of_joining>(SELECT Date_of_joining FROM EMPLOYEE WHERE Ename='Adam Wilson');


--3. List employees who salary is greater than ‘Michael Johnson’s salary

SELECT * FROM EMPLOYEE WHERE 
Basic_Salary>(SELECT Basic_Salary FROM EMPLOYEE WHERE Ename='Michael Johnson');


--4. List employees getting the maximum salary

SELECT * FROM EMPLOYEE WHERE
Basic_Salary=(SELECT MAX(Basic_Salary) FROM EMPLOYEE);


--5. List employees whose salary is > the max salary of all employees in deptno 4

SELECT * FROM EMPLOYEE WHERE 
Basic_Salary>(SELECT MAX(Basic_Salary) FROM EMPLOYEE WHERE Deptno=4);


