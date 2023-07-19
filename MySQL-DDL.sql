-- DDL:



-- 1. Create DEPARTMENT table with the following columns with appropriate data type and width

-- a) Deptno PK

-- b) Danme

-- c) Location


CREATE TABLE DEPARTMENT(
Deptno INT PRIMARY KEY,
Dname VARCHAR(50),
Location Varchar(50)
);



-- 2. Create EMPLOYEE table with the following columns with appropriate data type and width

-- a. empno PK

-- b. ename not null

-- c. designation

-- d. gender

-- e. basic_salary (> 0 and < 500000)

-- f. Date of joining

-- g. Deptno reference deptno of DEPARTMENT table


CREATE TABLE EMPLOYEE(

  Empno INT PRIMARY KEY,
  Ename Varchar(50) NOT NULL,
  Designation Varchar(50),
  Gender CHAR(1),
  Basic_Salary INT CHECK (Basic_Salary>0 AND Basic_Salary<500000),
  Date_of_joining DATE,
  Deptno INT,
  FOREIGN KEY (Deptno) REFERENCES DEPARTMENT(Deptno)
);


--3. Alter table EMPLOYEE add column commission

ALTER TABLE EMPLOYEE
ADD COMMISSION INT;


--4. Alter table EMPLOYEE add constraint GENDER in (‘M’, ‘F’)

ALTER TABLE EMPLOYEE
ADD CONSTRAINT CHK_GENDER CHECK(Gender IN('M','F'));