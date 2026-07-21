
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