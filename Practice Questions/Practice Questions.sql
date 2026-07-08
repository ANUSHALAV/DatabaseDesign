CREATE DATABASE PracticeDb;
USE PracticeDb;


-- write a query to create a new table called Employee.
CREATE TABLE Employees(
EmpId INT NOT NULL PRIMARY KEY,
Name VARCHAR(250) NOT NULL,
Email VARCHAR(250) NOT NULL,
Address VARCHAR(250) NOT NULL,
DateOfBirth DATE NOT NULL,
Gender VARCHAR(250) NOT NULL,
PhoneNumber VARCHAR(250) NOT NULL,
Salary VARCHAR(250) NOT NULL,
Department VARCHAR(250) NOT NULL,
RMId INT NOT NULL,
ManagerId INT NOT NULL,
JoiningDate DATE NOT NUll,

FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId),
FOREIGN KEY(RMId) REFERENCES Employees(EmpId),
FOREIGN KEY(ManagerId) REFERENCES Employees(EmpId)
);


-- Write a query to select all columns from a table called employees.
SELECT * FROM Employees;


-- Select only the name and email columns from employees.
SELECT Name,Email FROM Employees;

-- Select all employees and give the table an alias e.
SELECT * FROM Employees AS e;


-- How do you select the first 10 rows from a Employee table
SELECT * FROM Employees ORDER BY JoiningDate LIMIT 10;


-- Select all employees where department = 'IT'
SELECT * FROM Employees WHERE Department = 'IT';


-- select employees where age is between 25 and 35. 
SELECT * FROM Employees WHERE Age BETWEEN 25 AND 35;


-- Select employees where name starts with the letter 'A'
SELECT * FROM Employees WHERE Name LIKE 'A%';

-- select all employees ordered by salary in descending order. 
SELECT * FROM Employees ORDER BY Salary DESC;


-- Select the top 5 highest-paid employees. 
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 5;


-- select all employees ordered by salary ascending, then by name ascending. 
SELECT * FROM Employees ORDER BY Salary ASC , Name ASC;
-- second answere
SELECT * FROM Employees ORDER BY Salary,Name;


-- Select the last 5 records inserted in an Employees table (assume id is auto-increment).
SELECT * FROM Employees ORDER BY Id DESC LIMIT 5;


-- Select employees ordered by department A–Z and within each department by name A–Z.
SELECT * FROM Employees ORDER BY Department;


-- Select all employees where PhoneNumber is NULL. 
SELECT * FROM Employees WHERE PhoneNumber IS NULL;


-- select all employees where email is NOT NULL. 
SELECT * FROM Employees WHERE Email IS NOT NUll;


-- Select all records where ManagerId is NULL (top-level managers). 
SELECT * FROM Employees WHERE ManagerId IS NUll;


-- Replace NULL values in phone_number with 'N/A' using COALESCE. 
SELECT *,COALESCE(PhoneNumber,'N/A') AS PhoneNumber FROM Employees;


-- Count the total number of rows in the employees table. 
SELECT COUNT(*) FROM Employees;


-- Find the maximum salary in the employees table. 
SELECT MAX(Salary) AS MaxSalary FROM Employees;


-- Find the minimum salary in the employees table.
SELECT MIN(Salary) AS MinSalary FROM Employees;


-- Find the average salary of all employees.
SELECT AVG(Salary) AS AverageSalary FROM Employees; 


-- Find the total sum of all Salary in the employees table. 
SELECT SUM(Salary) AS TotalAmount FROM Employees;


-- Count the number of employees in each department.
SELECT Department,COUNT(*) AS NoOfEmployees FROM Employees GROUP BY Department;


-- Find the average salary per department.
SELECT Department,AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department;


-- Find departments where the average salary is greater than 50,000.
SELECT Department,AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department HAVING AVG(Salary)>50000; 


-- Find the highest salary in each department. 
SELECT Department,MAX(Salary) AS HighestSalary FROM Employees GROUP BY Department;


-- Find the smallest salary in each department
SELECT Department,MIN(Salary) AS SmallestSalary FROM Employees GROUP BY Department;


-- Select the full name by concatenating first_name and last_name with a space. 
SELECT CONCAT(FirstName,' ',LastName) AS FullName FROM Employees;

 
--  Convert all email values to uppercase. 
SELECT UPPER(Email) AS EmailIds FROM Employees;


-- Find the length of each employee's name. 
SELECT LENGTH(FirstName) AS FirstNameLetterCount FROM Employees;


-- Extract only the domain part from an email (e.g., gmail.com from user@gmail.com). 
SELECT SUBSTRING_INDEX(Email,'@',-1) AS EmailDomain FROM Employees;


-- Select employees whose name contains the word 'kumar' (case-insensitive). 
SELECT * FROM Employees WHERE LOWER(LastName) LIKE 'kumar';


-- Trim whitespace from the name column. 
SELECT TRIM(CONCAT(FirstName,' ',LastName)) AS Name FROM Employees;


-- Replace all occurrences of 'Pvt Ltd' with 'Private Limited' in the company column. 
SELECT REPLACE(PriviewsCompanyName,'Pvt Ltd','Private Limited') AS PriviewsCompanyName FROM Employees;


-- reverse the name column values. 
SELECT REVERSE(CONCAT(FirstName,' ',LastName)) AS FullName FROM Employees;


-- Select all employees who join today.   
SELECT * FROM Employees WHERE Date(JoiningDate)=CURRENT_Date();


-- select all employees who joined in the year 2023.
 SELECT * FROM Employees WHERE YEAR(JoiningDate) =2023;
 