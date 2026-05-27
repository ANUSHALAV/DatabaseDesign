CREATE DATABASE TMS;

USE TMS;

CREATE TABLE UserType(
UserTypeId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
UserType VARCHAR(255) NOT NULL,
Status INT NOT NULL DEFAULT 1
);

INSERT INTO UserType(UserType) VALUES
("SuperAdmin"),
("Admin"),
("Driver"),
("Passenger");

SELECT * FROM UserType;


CREATE TABLE User(
UserId INT PRIMARY KEY AUTO_INCREMENT,
UserTypeId INT, FOREIGN KEY(UserTypeId) REFERENCES UserType(UserTypeId),
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255) NOT NULL,
Address VARCHAR(255) DEFAULT Null,
Gender VARCHAR(255) NOT NULL,
Phone VARCHAR(255) NOT NULL,
Email VARCHAR(255) DEFAULT Null,
LoginId VARCHAR(255) NOT NULL,
Password VARCHAR(255) NOT NULL,
Status INt NOT NULL DEFAULT 1
) AUTO_INCREMENT = 1001;


INSERT INTO User (UserTypeId,FirstName,LastName,Address,Gender,Phone,Email,LoginId,Password) VALUES
(1,"Anushalav","Bhatt","Dhalwala","Male","8909506360","superAdmin@gmail.com","superAdmin","superAdmin"),
(2,"Aman","Singh","Dhalwala","Male","9876543234","admin@gmail.com","admin","admin");


SELECT * FROM User;


