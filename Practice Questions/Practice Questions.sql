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

FOREIGN KEY(DepartmentId) REFERENCES Departments(DepartmentId),
FOREIGN KEY(RMId) REFERENCES Employees(EmpId),
FOREIGN KEY(ManagerId) REFERENCES Employees(EmpId)
);


-- Write a query to select all columns from a table called employees.
SELECT * FROM Employee;


-- Select only the name and email columns from employees.
SELECT Name,Email FROM Employees;



