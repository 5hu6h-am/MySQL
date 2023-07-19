--Functions


-- 1. Write a query that displays the name (with the first letter in lowercase and all the other letters in uppercase) and

-- the length of the name for all employees whose name starts with the letters "J", "A" or "M"

-- Give each column an appropriate label. Sort the results by the employees’ name length.

SELECT CONCAT(LOWER(LEFT(Ename,1)),UPPER(SUBSTRING(Ename,2))) AS "Name",
LENGTH(Ename) AS "Name Length"
FROM EMPLOYEE
WHERE Ename LIKE 'J%' OR Ename LIKE 'A%' OR Ename LIKE 'M%'
ORDER BY LENGTH(Ename);



-- 2. The HR department wants to find the duration of employment for each employee.

-- For each employee, display the name and calculate the number of months between today and the date on which the employee was hired. Label the column as MONTHS_WORKED.

-- Order your results by the number of months employed.

-- Round the number of months up to the closest whole number.

SELECT Ename AS Name,
CEIL(DATEDIFF(CURDATE(), Date_of_joining) / 30) AS MONTHS_WORKED
FROM EMPLOYEE
ORDER BY MONTHS_WORKED;


-- 3. Create a query to display the name and salary for all employees.

-- Format the salary to be 15 characters long, left-padded with the $ symbol.

-- Label the column SALARY.

SELECT Ename AS Name,
CONCAT('$', LPAD(Basic_Salary, 15, '$')) AS SALARY
FROM EMPLOYEE;