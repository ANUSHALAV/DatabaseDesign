
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


--  Salary ASC
SELECT Salary FROM Employees ORDER BY Salary;


-- Salary DESC
SELECT Salary FROM Employees ORDER BY Salary DESC; 


--  FirstName A-Z
SELECT FirstName FROM Employees ORDER BY FirstName;


-- FirstName Z-A
SELECT FirstName FROM Employees ORDER BY FirstName DESC;


-- Latest HireDate
SELECT HireDate FROM Employees ORDER BY HireDate DESC LIMIT 1;


-- Age DESC
SELECT Age FROM Employees ORDER BY Age DESC;


-- Salary DESC then First Name ASC
SELECT * FROM Employees ORDER BY Salary DESC , FirstName;  


-- DESC City then Salary
SELECT * FROM Employees ORDER BY City DESC , Salary DESC;


-- ASC Department then Salary DESC
 SELECT * FROM Employees ORDER BY DepartmentId , Salary DESC;
 
 
 -- LastName ASC
 SELECT * FROM Employees ORDER BY LastName;
 
 
 -- Unique Cities
 SELECT DISTINCT City FROM Employees;
 
 
 -- Unique Departments
 SELECT DISTINCT DepartmentId FROM Employees;
 
 
 -- Unique Salary
 SELECT DISTINCT Salary FROM Employees;
 
 
 -- Unique ManagerID
 SELECT DISTINCT ManagerID FROM Employees;
 
 
 -- Unique Age
 SELECT DISTINCT Age FROM Employees;
 
 
 -- City+Gender
 SELECT DISTINCT City,Gender FROM Employees;
 
 
 -- Department+City
 SELECT DISTINCT DepartmentId,City FROM Employees;
 
 
 -- Top 3 Salary
 SELECT * FROM Employees ORDER BY Salary DESC LIMIT 3;
 
 
 -- Top 10 Employees
 SELECT * FROM Employees LIMIT 10;
 
 
 -- Top 5 Youngest
 SELECT * FROM Employees ORDER BY Age LIMIT 5;
 
 
 -- Top 7 Oldest
 SELECT * FROM Employees ORDER BY Age DESC LIMIT 7;
 
 
 -- Top 5 Recently Joined
 SELECT * FROM Employees ORDER BY HireDate DESC LIMIT 5;
 
 
 -- Top 5 Lowest Salary
 SELECT Salary FROM Employees ORDER BY Salary LIMIT 5;
 
 
 -- Top 2 Female Highest Salary
 SELECT * FROM Employees WHERE Gender = 'Female' ORDER BY Salary DESC LIMIT 2;
 
 
 -- Top 4 Male Lowest Salary
 SELECT * FROM Employees WHERE Gender = 'Male' ORDER BY Salary LIMIT 4;
 
 
 -- Name starts with A
 SELECT FirstName FROM Employees WHERE FirstName LIKE 'A%';
 
 
 -- Ends with n
 SELECT LastName FROM Employees WHERE LastName LIKE '%n';
 
 
 -- Contains 'ra'
 SELECT FirstName FROM Employees WHERE FirstName LIKE '%ra%';
 
 
 -- Email contains gmail
 SELECT * FROM Employees WHERE Email LIKE '%gmail%';
 
 
 -- City starts M
 SELECT City FROM Employees WHERE City LIKE 'M%';
 
 
 -- Second letter a
 SELECT FirstName FROM Employees WHERE FirstName LIKE '_a%';
 
 
 -- LastName starts S
 SELECT LastName FROM Employees WHERE LastName LIKE 'S%';
 
 
 -- Email ends .com
 SELECT Email FROM Employees WHERE Email LIKE '%.com';
 
 
 -- Name length 5
 SELECT * FROM Employees WHERE FirstName LIKE '_____';
 
 
 -- City contains pur
 SELECT * FROM Employees WHERE City LIKE '%pur%';
 
 
 -- Salary 30000-60000
 SELECT * FROM Employees WHERE Salary BETWEEN 30000 AND 60000;
 
 
 -- Age 25-35
 SELECT * FROM Employees WHERE Age BETWEEN 25 AND 35;
 
 
 -- HireDate in 2024
 SELECT * FROM Employees WHERE HireDate BETWEEN '2024-01-01' AND '2024-12-31';
 
 
 -- EmployeeID 20-50
 SELECT * FROM Employees WHERE EmployeeId BETWEEN 20 AND 50;
 
 
 -- DepartmentID 2-5
 SELECT * FROM Employees WHERE DepartmentId BETWEEN 2 AND 5;
 
 
 -- Salary 70000-100000
 SELECT * FROM Employees WHERE Salary BETWEEN 70000 AND 100000;
 
 
 -- Age 40-60
 SELECT * FROM Employees WHERE Age BETWEEN 40 AND 60;
 
 
 -- HireDate 2022-2025
 SELECT * FROM Employees WHERE HireDate BETWEEN '2022-01-01' AND '2025-12-31';
 
 
 -- City IN Delhi,Mumbai
 SELECT * FROM Employees WHERE City IN ('Delhi','Mumbai');
 -- -------------------------------------Ya -----------------------------
 SELECT * FROM Employees WHERE City = 'Delhi' OR City = 'Mumbai';
 
 
 -- DepartmentID IN 1,3,5
 SELECT * FROM Employees WHERE DepartmentId IN (1,3,5);
 
 
 -- Salary IN 30000,50000,70000
 SELECT * FROM Employees WHERE Salary IN (30000,50000,70000);
 
 
 -- Age IN 25,30,35
 SELECT * FROM Employees WHERE Age IN (25,30,35);
 
 
 -- Gender IN Male,Female
 SELECT * FROM Employees WHERE Gender IN ('Male','Female');
 -- ---------------------------Ya ------------------------------------
 SELECT * FROM Employees WHERE Gender = 'Male' OR Gender = 'Female';
 
 
 -- EmployeeId IN 10,20,30
 SELECT * FROM Employees WHERE EmployeeId IN (10,20,30);
 
 
 -- ManagerID IN 2,5
 SELECT * FROM Employees WHERE ManagerId IN (2,5);
 
 
 -- City IN Noida,Gurgaon
 SELECT * FROM Employees WHERE City IN ('Noida','Gurgaon');
 
 
 -- Total Employees
 SELECT COUNT(*) AS TotalEmployees FROM Employees;
 
 
 -- Average Salary
 SELECT AVG(Salary) AS AverageSalary FROM Employees;
 
 
 -- Maximum Salary
 SELECT MAX(Salary) AS MaximumSalary FROM Employees;
 
 
 -- Minimum Salary
 SELECT MIN(Salary) AS MinimumSalary FROM Employees;
 
 
 -- Total Salary
 SELECT SUM(Salary) AS TotalSalary FROM Employees;
 
 
 -- Average Age
 SELECT AVG(Age) AS AverageAge FROM Employees;
 
 
 -- Highest Age
 SELECT MAX(Age) AS HighestAge FROM Employees;
 
 
 -- Lowest Age
 SELECT MIN(Age) AS LowestAge FROM Employees;
 
 
 -- Count Female
 SELECT COUNT(*) AS CountFemale FROM Employees WHERE Gender = 'Female';
 
 
 -- Count Male
 SELECT COUNT(*) AS CountMale FROM Employees WHERE Gender = 'Male';
 
 
 -- Department employee count
 SELECT DepartmentId,COUNT(*) AS EmployeesCount FROM Employees GROUP BY DepartmentId;
 
 
 -- Department avg salary
 SELECT DepartmentId,AVG(Salary) AS AvgSalary FROM Employees GROUP BY DepartmentId;
 
 
 -- Gender count
 SELECT Gender,COUNT(*) AS GenderCount FROM Employees GROUP BY Gender;
 
 
 -- City count
 SELECT City,COUNT(*) AS CityCount FROM Employees GROUP BY City;
 
 
 -- City avg salary
 SELECT City ,AVG(Salary) AS CityAvgSalary FROM Employees GROUP BY City;
 
 
 -- Department max salary
 SELECT DepartmentId , MAX(Salary) AS MaxSalary FROM Employees GROUP BY DepartmentId;
 
 
 -- . Department min salary
 SELECT DepartmentId ,MIN(Salary) AS MinSalary FROM Employees GROUP BY DepartmentId;
 
 
 -- Gender avg age
 SELECT Gender,AVG(Age) AS AvgAge FROM Employees GROUP BY Gender;
 
 
 -- Manager employee count
 SELECT ManagerId , COUNT(*) AS EmployeeCount FROM Employees GROUP BY ManagerId;
 
 
 -- Year wise hiring
 SELECT YEAR(HiringDate) AS HiringYear ,COUNT(*) AS EmployeesCount FROM Employees GROUP BY YEAR(HiringDate);
 
 
 -- Departments >5 employees
 SELECT DepartmentId,COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY DepartmentId HAVING COUNT(*)>5;
 
 
 -- Avg salary >50000
 SELECT DepartmentId,AVG(Salary) AS AvgSalary FROM Employees GROUP BY DepartmentId HAVING AVG(Salary)>50000;
 
 
 -- Cities >3 employees
 SELECT City,COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY City HAVING COUNT(*) >3;
 
 
 -- Max salary >80000
 SELECT DepartmentId , MAX(Salary) AS MaxSalary FROM Employees GROUP BY DepartmentId HAVING MAX(Salary)>80000;
 
 
 -- Gender count >10
 SELECT Gender,COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY Gender HAVING COUNT(*)>10;
 
 
 -- Managers >5 employees
 SELECT ManagerId ,COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY ManagerId HAVING COUNT(*)>5;
 
 
 -- Department avg age >30
 SELECT DepartmentId,AVG(Age) AS AvgAge FROM Employees GROUP BY DepartmentId HAVING AVG(Age)>30;
 
 
 -- Salary sum >500000
 SELECT DepartmentId, SUM(Salary) AS SumOfSalary FROM Employees GROUP BY DepartmentId HAVING SUM(Salary)>500000;
 
 
 -- City avg salary >60000
 SELECT City,AVG(Salary) AS AvgSalary FROM Employees GROUP BY City HAVING AVG(Salary)>60000;
 
 
 -- Hiring year >20 employees 
 SELECT YEAR(HiringDate),COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY YEAR(HiringDate) HAVING COUNT(*) > 20;
 
 
 -- Employee with department
 SELECT emp.FirstName,emp.LastName,dept.DepartmentId,dept.DepartmentName FROM 
 Employees AS emp INNER JOIN Department AS dept ON
 emp.DepartmentId = dept.DepartmentId;
 
 
 -- Employees in IT
 SELECT emp.FirstName,emp.LastName,dept.DepartmentId,dept.DepartmentName FROM 
 Employees AS emp INNER JOIN Department AS dept ON 
 emp.DepartmentId = dept.DepartmentId WHERE dept.DepartmentName = 'IT';
 
 
 -- Employees in HR
 SELECT emp.FirstName,emp.LastName,dept.DepartmentId,dept.DepartmentName FROM 
 Employees AS emp INNER JOIN Department AS dept ON 
 emp.DepartmentId = dept.DepartmentId WHERE dept.DepartmentName = 'HR';
 
 
 -- Department employee count
 SELECT dept.DepartmentName,COUNT(*) AS NumberOfEmployees FROM Employees AS emp INNER JOIN Department AS dept ON
 emp.DepartmentId = dept.DepartmentId GROUP BY dept.DepartmentName;
 
 
 -- Highest salary department
 SELECT dept.DepartmentName,MAX(Salary) AS HighestSalary FROM Employees AS emp INNER JOIN Department AS dept ON
 emp.DepartmentId = dept.DepartmentId GROUP BY dept.DepartmentName;


--  Employee with manager
SELECT emp.FirstName,emp.LastName,emp.Address,emp.Email,emp.Gender,emp.Phone,CONCAT(mngr.FirstName,' ',mngr.LastName) AS ManagerName FROM 
Employees As emp INNER JOIN Employees AS mngr ON emp.ManagerId = mngr.EmployeeId;


-- Joined this year
SELECT * FROM Employees WHERE YEAR(JoiningDate) = YEAR(NOW());


-- Joined this month
SELECT * FROM Employees WHERE MONTH(JoiningDate) = MONTH(NOW());


-- Birth year
SELECT emp.FirstName,emp.LastName,YEAR(emp.DateOfBirth) FROM Employees;


-- Delete EmployeeID=10  
DELETE FROM Employees WHERE EmployeeId = 10;


-- Delete salary<20000
DELETE FROM Employees WHERE Salary < 20000;


-- Delete HR employees
DELETE FROM Employees WHERE Department = 'HR';


-- Delete Jaipur employees
DELETE FROM Employees WHERE City = 'Jaipur';


-- Delete age>60
DELETE FROM Employees WHERE Age > 60;


-- Delete duplicate emails
DELETE FROM Employees WHERE EmployeeId NOT IN
(
SELECT EmployeeId FROM 
(SELECT MIN(EmployeeId) AS EmployeeId FROM Employee GROUP BY Email)
);


-- Delete without manager
DELETE FROM Employees WHERE ManagerId IS NULL;      
  