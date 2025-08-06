--Lab 11 Implement SQL Joins
--Create below tables as per following data
--STU_INFO RESULT EMPLOYEE_MASTER
--Rno(
--PK)
--Name Branch Rno(FK) SPI EmployeeNo Name ManagerNo
--101 Raju CE 101 8.8 E01 Tarun NULL
--102 Amit CE 102 9.2 E02 Rohan E02
--103 Sanjay ME 103 7.6 E03 Priya E01
--104 Neha EC 104 8.2 E04 Milan E03
--105 Meera EE 105 7.0 E05 Jay E01
--106 Mahesh ME 107 8.9 E06 Anjana E04
USE CSE_3A_238

CREATE TABLE STU_INFO(
	RNO INT ,
	NAME VARCHAR(25),
	BRANCH VARCHAR(10)
);

INSERT INTO STU_INFO (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

CREATE TABLE RESULT (
    Rno INT,
    SPI DECIMAL(3,1),
   
);

INSERT INTO RESULT (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9); 

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(10) ,
    Name VARCHAR(50),
    ManagerNo VARCHAR(10),
    
);

INSERT INTO EMPLOYEE_MASTER (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun' , NULL),
('E02', 'Rohan', 'E02'),   
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');


--Part – A:
--1. Combine information from student and result table using cross join or Cartesian product.
SELECT *
FROM STU_INFO , RESULT

--2. Perform inner join on Student and Result tables.
SELECT *
FROM STU_INFO JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

--3. Perform the left outer join on Student and Result tables.
SELECT *
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno

--4. Perform the right outer join on Student and Result tables.
SELECT *
FROM STU_INFO RIGHT JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno

--5. Perform the full outer join on Student and Result tables.
SELECT *
FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO , NAME ,BRANCH , SPI
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO , NAME ,BRANCH , SPI
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno
WHERE BRANCH = 'CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO , NAME ,BRANCH , SPI
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.Rno
WHERE BRANCH != 'EC'

--9. Display average result of each branch.
SELECT BRANCH , AVG(SPI)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH

--10. Display average result of CE and ME branch.
SELECT BRANCH , AVG(SPI)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH IN ('CE','ME')
GROUP BY BRANCH

--11. Display Maximum and Minimum SPI of each branch.
SELECT BRANCH , MAX(SPI) , MIN(SPI)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH

--12. Display branch wise student’s count in descending order
SELECT BRANCH ,  COUNT(STU_INFO.RNO)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH 
ORDER BY COUNT(STU_INFO.RNO) DESC

--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT BRANCH , AVG(SPI)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY AVG(SPI) 

--2. Display highest SPI from each branch and sort them in descending order.
SELECT BRANCH , MAX(SPI)
FROM STU_INFO LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY MAX(SPI) DESC

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT E.NAME , M.NAME
FROM EMPLOYEE_MASTER E INNER JOIN EMPLOYEE_MASTER M
ON E.ManagerNo = M.EmployeeNo