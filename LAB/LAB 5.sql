--Lab 5 Perform SQL queries for Alter, Rename, Delete, Truncate, and Drop
--Alter, Rename Operation
--Part – A:

	USE CSE_3A_238
--Use Deposit table of lab-1.
--DEPOSIT
--Column_Name DataType
--ACTNO INT
--CNAME VARCHAR(50)
--BNAME VARCHAR(50)
--AMOUNT DECIMAL(8,2)
--ADATE DATETIME
--From the above given tables perform the following queries (ALTER, RENAME Operation):
--1. Add two more columns City VARCHAR (20) and Pincode INT.
	ALTER TABLE DEPOSIT
	ADD CITY VARCHAR(20) , PINCODE INT

	SELECT * FROM DEPOSIT

--2. Add column state VARCHAR(20).
	ALTER TABLE DEPOSIT 
	ADD STATE VARCHAR(20)

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
	ALTER TABLE DEPOSIT
	ALTER COLUMN CNAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in amount Column.
	ALTER TABLE DEPOSIT
	ALTER COLUMN AMOUNT INT	

--5. Delete Column City from the DEPOSIT table.
	ALTER TABLE DEPOSIT
	DROP COLUMN CITY

--6. Rename Column ActNo to ANO.
	SP_RENAME 'DEPOSIT.ACTNO' , 'ANO'

	SELECT * FROM DEPOSIT_DETAIL

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL.
	SP_RENAME 'DEPOSIT' , 'DEPOSIT_DETAIL'	

--Part – B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
	SP_RENAME 'DEPOSIT_DETAIL.ADATE' , 'AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
	ALTER TABLE DEPOSIT_DETAIL
	DROP COLUMN AOPENDATE

	SELECT * FROM DEPOSIT_DETAIL

--3. Rename Column CNAME to CustomerName.
	SP_RENAME 'DEPOSIT_DETAIL.CNAME' , 'CustomerName'

--4. Add Column country.
	ALTER TABLE DEPOSIT 
	ADD COUNTRY VARCHAR(20)

--Computer Science & Engineering
--A.Y. 2025 | Semester - III
--Lab Manual
--2301CS302 – Database Management System - I
--Page 5 of 17


--Part – C:
--Create following table using query according to the definition.
--STUDENT_DETAIL
--Column_Name DataType
--Enrollment_No VARCHAR(20)
--Name VARCHAR(25)
--CPI DECIMAL(5,2)
--Birthdate DATETIME
	CREATE TABLE STUDENT_DETAIL 
	(Enrollment_No VARCHAR(20) , 
	Name VARCHAR(25) ,
	CPI DECIMAL(5,2) ,
	Birthdate DATETIME )


--From the above given tables perform the following queries (ALTER, RENAME Operation):
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
	ALTER TABLE STUDENT_DETAIL
	ADD City VARCHAR (20) NOT NULL , Backlog INT

--2. Add column department VARCHAR (20) Not Null.
	ALTER TABLE STUDENT_DETAIL
	ADD department VARCHAR (20) NOT NULL 

	SELECT * FROM STUDENT_DETAIL

--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
	ALTER TABLE STUDENT_DETAIL
	ALTER COLUMN NAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in CPI Column.
	ALTER TABLE STUDENT_DETAIL
	ALTER COLUMN CPI INT

--5. Delete Column City from the student_detail table.
	ALTER TABLE STUDENT_DETAIL
	DROP COLUMN CITY

--6. Rename Column Enrollment_No to ENO.
	SP_RENAME 'STUDENT_DETAIL.Enrollment_No' , 'ENO'

--7. Change name of table student_detail to STUDENT_MASTER
	SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER'


--DELETE, Truncate, Drop Operation

--Part – A:
--Use Deposit_Detail table (Altered table of DEPOSIT)
--DEPOSIT_DETAIL
--Column_Name DataType
--ANO INT
--CustomerName VARCHAR(35)
--BNAME VARCHAR(50)
--AMOUNT INT
--PINCODE INT
--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.
	DELETE FROM DEPOSIT_DETAIL
	WHERE AMOUNT<=4000

	SELECT * FROM DEPOSIT_DETAIL

--2. Delete all the accounts CHANDI BRANCH.
	DELETE FROM DEPOSIT_DETAIL
	WHERE BNAME = 'CHANDI'

	SELECT * FROM DEPOSIT_DETAIL

--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105.
	DELETE FROM DEPOSIT_DETAIL
	WHERE ANO > 102 AND ANO<105

	SELECT * FROM DEPOSIT_DETAIL

--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’
	DELETE FROM DEPOSIT_DETAIL
	WHERE BNAME IN('AJNI' , 'POWAI')

	SELECT * FROM DEPOSIT_DETAIL

--5. Delete all the accounts whose account number is NULL.
	DELETE FROM DEPOSIT_DETAIL
	WHERE AMOUNT IS NULL

	SELECT * FROM DEPOSIT_DETAIL

--6. Delete all the remaining records using Delete command.
	DELETE FROM DEPOSIT_DETAIL

	SELECT * FROM DEPOSIT_DETAIL

--7. Delete all the records of Deposit_Detail table. (Use Truncate)
	TRUNCATE TABLE DEPOSIT_DETAIL

--8. Remove Deposit_Detail table. (Use Drop)
	DROP TABLE DEPOSIT_DETAIL

--Part – B:
--Create following table using query according to the definition.
--EMPLOYEE_MASTER
--Column_Name DataType
--EmpNo INT
--EmpName VARCHAR(25)
--JoiningDate DATETIME
--Salary DECIMAL (8,2)
--City VARCHAR(20)

CREATE TABLE EMPLOYEE_MASTER
(EmpNo INT ,
EmpName VARCHAR(25) , 
JoiningDate DATETIME , 
Salary DECIMAL (8,2) ,
City VARCHAR(20))

--Insert the following records in the EMPLOYEE_MASTER table.
--EmpNo EmpName JoiningDate Salary City
--101 Keyur 5-1-02 12000.00 Rajkot
--102 Hardik 15-2-04 14000.00 Ahmedabad
--103 Kajal 14-3-06 15000.00 Baroda
--104 Bhoomi 23-6-05 12500.00 Ahmedabad
--105 Harmit 15-2-04 14000.00 Rajkot
--106 Mitesh 25-9-01 5000.00 Jamnagar
--107 Meera Null 7000.00 Morbi
--108 Kishan 6-2-03 10000.00 NULL

	INSERT INTO EMPLOYEE_MASTER VALUES 
	(101, 'Keyur' , '2002-1-5' ,12000.00 ,'Rajkot') ,
	(102, 'Hardik', '2004-2-15', 14000.00 ,'Ahmedabad') ,
	(103, 'Kajal', '2006-3-14' , 15000.00 ,'Baroda') ,
	(104, 'Bhoomi', '2005-6-23', 12500.00 ,'Ahmedabad') ,
	(105, 'Harmit', '2004-2-15', 14000.00 ,'Rajkot') ,
	(106, 'Mitesh', '2001-9-25', 5000.00 ,'Jamnagar') ,
	(107, 'Meera', Null , 7000.00, 'Morbi') ,
	(108, 'Kishan', '2003-2-6', 10000.00 ,NULL)

	SELECT * FROM EMPLOYEE_MASTER


--From the above given tables perform the following queries (DELETE Operation):
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
	DELETE FROM EMPLOYEE_MASTER
	WHERE SALARY >= 14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
	DELETE FROM EMPLOYEE_MASTER
	WHERE CITY = 'RAJKOT'
		SELECT * FROM EMPLOYEE_MASTER

--3. Delete all the Employees who joined after 1-1-2007.
	DELETE FROM EMPLOYEE_MASTER
	WHERE JOININGDATE > '2007-1-1'

--4. Delete the records of Employees whose joining date is null and Name is not null.
	DELETE FROM EMPLOYEE_MASTER
	WHERE JOININGDATE IS NULL AND EMPNAME  IS NOT NULL

--5. Delete the records of Employees whose salary is 50% of 20000.
	DELETE FROM EMPLOYEE_MASTER
	WHERE SALARY = (20000 * (0.5))

--6. Delete the records of Employees whose City Name is not empty.
	DELETE FROM EMPLOYEE_MASTER
	WHERE City IS NOT NULL

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
	TRUNCATE TABLE EMPLOYEE_MASTER
	
--8. Remove Employee_MASTER table. (Use Drop)
	DROP TABLE EMPLOYEE_MASTER

--Part – C:
--1. Summarize Delete, Truncate and Drop

	SELECT * FROM EMPLOYEE45/7_MASTER