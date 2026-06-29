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
DepartmentId INT NOT NULL,
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
SELECT * FROM Employees WHERE DepartmentId = 1;

-- select employees where age is between 25 and 35. 
SELECT * FROM Employees WHERE Age BETWEEN 25 AND 35;

-- Select employees where name starts with the letter 'A'
SELECT * FROM Employees WHERE Name LIKE "A%";









