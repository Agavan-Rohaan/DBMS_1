--Lab 9 Implement SQL In-built functions (Math, String, and Date Functions)
--Math functions
--Part � A:
--1. Display the result of 5 multiply by 30.
SELECT (5*30)

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2, 5%3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2) , POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30) ,SQRT(50)

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5) , SQUARE(15) , SQUARE(25)

--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2);

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) , LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
--14. Find sine, cosine and tangent of 3.1415.
--15. Find sign of -25, 0 and 25.
--16. Generate random number using function.
--Part � B:
--Create and insert the following records in the EMP_MASTER table.
--EmpNo EmpName JoiningDate Salary Commission City Dept Code
--101 Keyur 5-1-02 12000.00 4500 Rajkot 3@g
--102 Hardik 15-2-04 14000.00 2500 Ahmedabad 3@
--103 Kajal 14-3-06 15000.00 3000 Baroda 3-GD
--104 Bhoomi 23-6-05 12500.00 1000 Ahmedabad 1A3D
--105 Harmit 15-2-04 14000.00 2000 Rajkot 312A
--1. Display the result of Salary plus Commission.
--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
--4. Find out remainder of 55 divided 2 and 55 divided by 3.
--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
--Part � C:
--1. Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000.
--2. Find the details of employees whose commission is more than 25% of their salary.
--3. List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater
--than 15000.
--4. Find employees whose total earnings (Salary + Commission) are at least double their salary.
--String functions
--Part � A:
--1. Find the length of following. (I) NULL (II) � hello � (III) Blank
--2. Display your name in lower & upper case.
--3. Display first three characters of your name.
--4. Display 3rd to 10th character of your name.
--5. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
--6. Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
--7. Write a query to display character based on number 97, 65,122,90,48,57.
--8. Write a query to remove spaces from left of a given string �hello world �.
--9. Write a query to remove spaces from right of a given string � hello world �.
--10. Write a query to display first 4 & Last 5 characters of �SQL Server�.
--11. Write a query to convert a string �1234.56� to number (Use cast and convert function).
--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
--13. Put 10 space before your name using function.
--14. Combine two strings using + sign as well as CONCAT ().
--15. Find reverse of �Darshan�.
--16. Repeat your name 3 times.
--Part � B: Perform following queries on EMP_MASTER table.
--1. Find the length of EMP Name and City columns.
--2. Display EMP Name and City columns in lower & upper case.
--3. Display first three characters of EMP Name column.
--4. Display 3rd to 10th character of city column.
--5. Write a query to display first 4 & Last 5 characters of EMP Name column.
--Part � C: Perform following queries on EMP_MASTER table.
--1. Put 10 space before EMP Name using function.
--2. Combine EMP Name and city columns using + sign as well as CONCAT ().
--3. Combine all columns using + sign as well as CONCAT ().
--4. Combine the result as < EMP Name > Lives in <City>.
--5. Combine the result as �EMP no of < EMP Name> is <EmpNo> .
--6. Retrieve the names of all employee where the third character of the Name is a vowel.
--7. Concatenate the name and city of students who have a name that ends with the letter 'r' and a city that
--starts with 'R'.
--Date Functions
--Part � A:
--1. Write a query to display the current date & time. Label the column Today_Date.
--2. Write a query to find new date after 365 day with reference to today.
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
--4. Display the current date in a format that appears as 03 Jan 1995.
--5. Display the current date in a format that appears as Jan 04, 96.
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
--8. Write a query to extract Day, Month, Year from given date 12-May-16.
--9. Write a query that adds 5 years to current date.
--10. Write a query to subtract 2 months from current date.
--11. Extract month from current date using datename () and datepart () function.
--12. Write a query to find out last date of current month.
--13. Calculate your age in years and months.
--Part � B: Perform following queries on EMP_MASTER table.
--1. Write a query to find new date after 365 days with reference to JoiningDate.
--2. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
--3. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
--Part � C: Perform following queries on EMP_MASTER table.
--1. Write a query to extract Day, Month, Year from JoiningDate.
--2. Write a query that adds 5 years to JoiningDate.
--3. Write a query to subtract 2 months from JoiningDate.
--4. Extract month from JoiningDate using datename () and datepart () function.
--5. Select employee who joined between the 1st and 15th of any month in any year.
--6. Find employee whose JoiningDate is the last day of any month.
--7. List employee whose JoiningDate is during a leap year.