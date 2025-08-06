--Lab 7 Perform SQL queries for Aggerate function and group by (without having)
USE CSE_3A_238
--Part – A:
--Create table and inset records as per below.
--EMP
--EID EName Department Salary JoiningDate City Gender
--101 Rahul Admin 56000 1-Jan-90 Rajkot Male
--102 Hardik IT 18000 25-Sep-90 Ahmedabad Male
--103 Bhavin HR 25000 14-May-91 Baroda Male
--104 Bhoomi Admin 39000 8-Feb-91 Rajkot Female
--105 Rohit IT 17000 23-Jul-90 Jamnagar Male
--106 Priya IT 9000 18-Oct-90 Ahmedabad Female
--107 Bhoomi HR 34000 25-Dec-91 Rajkot Female

CREATE TABLE EMP (
	EID INT ,
	ENAME VARCHAR(20) ,
	DEPARTMENT VARCHAR(25) ,
	SALARY INT ,
	JoiningDATE DATETIME ,
	CITY VARCHAR(30) ,
	GENDER VARCHAR(10) ,
	);

INSERT INTO EMP VALUES 
(101, 'Rahul',  'Admin', 56000, '1990-Jan-1',   'Rajkot',    'Male') ,
(102, 'Hardik', 'IT',    18000, '1990-Sep-25',  'Ahmedabad', 'Male') ,
(103, 'Bhavin', 'HR',    25000, '1991-May-14',  'Baroda',    'Male') ,
(104, 'Bhoomi', 'Admin', 39000, '1991-Feb-8',   'Rajkot',    'Female') ,
(105, 'Rohit',  'IT',    17000, '1990-Jul-23',  'Jamnagar',   'Male') ,
(106, 'Priya',  'IT',    9000,  '1990-Oct-18',  'Ahmedabad',  'Female') ,
(107, 'Bhoomi', 'HR',    34000, '1991-Dec-25',  'Rajkot',     'Female')


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS 'Highest' ,MIN(SALARY) AS Lowest
FROM EMP 

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS Total_Sal , AVG(SALARY) Average_Sal 
FROM EMP

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS 'TOTAL EMP'
FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) 
FROM EMP 
WHERE CITY = 'RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) 
FROM EMP 
WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) 
FROM EMP 
WHERE JoiningDATE > '1991-FEB-8'

--7. Display average salary of Admin department.
SELECT AVG(SALARY)
FROM EMP
WHERE DEPARTMENT = 'ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY)
FROM EMP
WHERE DEPARTMENT ='HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS 'cities of employee without duplication' 
FROM EMP 

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) 
FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) 
FROM EMP 
WHERE CITY = 'AHMEDABAD'

--12. Find city wise highest salary.
SELECT CITY , MAX(SALARY) 
FROM EMP 
GROUP BY CITY

--13. Find department wise lowest salary.
SELECT DEPARTMENT , MIN(SALARY) 
FROM EMP 
GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT CITY , COUNT(ENAME)
FROM EMP
GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT , SUM(SALARY)
FROM EMP
GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
SELECT AVG(SALARY) 
FROM EMP
GROUP BY DEPARTMENT

--17. Count the number of employees for each department in every city.
SELECT DEPARTMENT , CITY , COUNT(EID)
FROM EMP
GROUP BY DEPARTMENT , CITY

--18. Calculate the total salary distributed to male and female employees.
SELECT GENDER , SUM(SALARY) 
FROM EMP
GROUP BY GENDER 

--19. Give city wise maximum and minimum salary of female employees.
SELECT CITY , MAX(SALARY) AS MAXIMUM , MIN(SALARY) AS MINIMUM
FROM EMP
WHERE GENDER = 'FEMALE'
GROUP BY CITY

--20. Calculate department, city, and gender wise average salary.
SELECT DEPARTMENT , CITY , GENDER , AVG(SALARY) AS 'average salary'
FROM EMP
GROUP BY DEPARTMENT , CITY , GENDER

--Part – B:

--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) 
FROM EMP
WHERE CITY = 'RAJKOT'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE
FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID)
FROM EMP
WHERE JoiningDATE < '1991-JAN-1'

--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) 
FROM EMP
WHERE CITY IN ('RAJKOT','BARODA')

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID)
FROM EMP
WHERE DEPARTMENT = 'IT' AND JoiningDATE < '1991-JAN-1'


--3. Find the Joining Date wise Total Salaries.
SELECT JOININGDATE , SUM(SALARY) 
FROM EMP
GROUP BY JoiningDATE

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT , CITY ,MAX(SALARY)
FROM EMP
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT , CITY