
-- --------------------------------------------------------------- SQL Practice ---------------------------------------------------------------------- 

-- create Employees table with EmployeeId , FirstName,LastName,DateOfBirth,Gender,Salary.DepartmentId,ManagerId,HireDate,City,Email
CREATE TABLE Employees(
EmployeeId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
DateOfBirth DATE NOT NULL,
Gender VARCHAR(10) NOT NULL,
Salary DECIMAL(10,2) NOT NULL,
DepartmentId INT NOT NULL,
ManagerId INT NOT NULL,
HireDate DATE NOT NULL,
City VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL UNIQUE,
Status INT NOT NULL DEFAULT 1,

CONSTRAINT FK_Empolyee_Department
FOREIGN KEY(DepartmentId) REFERENCES Department(DeparmentId)
); 


-- create department table
CREATE TABLE Department(
DepartmentId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
DepartmentName VARCHAR(255) NOT NULL,
Status INT NOT NULL DEFAULT 1
); 


-- Employees table ke saare records nikalo.
SELECT * FROM Employees;


-- Sirf FirstName aur Salary dikhao.
SELECT FirstName,Salary FROM Employees;


-- Sirf unique City dikhao.
SELECT DISTINCT City FROM Employees; 


-- Salary 50000 se jyada wale employees.
SELECT * FROM Employees WHERE Salary > 50000;


-- Female employees.
SELECT * FROM Employees WHERE Gender = 'Female';


-- Delhi city ke employees.
SELECT * FROM Employees WHERE City = 'Delhi';


-- Salary 40000-70000 ke beech
SELECT * FROM Employees Where Salary BETWEEN 40000 AND 70000;   


-- Age 25 se kam.
SELECT * FROM Employees WHERE Age < 25;


-- HireDate ke according sort.
SELECT * FROM Employees ORDER BY HireDate ASC;


-- Top 5 highest salary employees    
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 5;  


--  Salary >60000
SELECT * FROM Employees WHERE Salary > 60000;


-- Salary <30000
SELECT * FROM Employees WHERE Salary < 30000;


-- Age>=30
SELECT * FROM Employees WHERE Age >= 30;


-- Gender='Male'
SELECT * FROM Employees WHERE Gender = 'Male';   


--  City='Mumbai'
SELECT * FROM Employees WHERE City = 'Mumbai';


-- DepartmentID=3
SELECT * FROM Employees WHERE DepartmentId = 3;


-- Salary!=50000
SELECT * FROM Employees WHERE Salary != 50000;
-- ---------------- ya fir aise --------------------------
SELECT * FROM Employees WHERE Salary <> 50000;


-- Age<>25
SELECT * FROM Employees WHERE Age <> 25;
-- -------------------ya fir aise --------------------
SELECT * FROM Employees WHERE Age != 25;


-- EmployeeID>50
SELECT * FROM Employees WHERE EmployeeId > 50;


-- HireDate after 2023-01-01
SELECT * FROM Employees WHERE HireDate > '2023-01-01';     