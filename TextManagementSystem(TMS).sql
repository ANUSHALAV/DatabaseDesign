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
State INT NOT NULL,
District INT NOT NULL,
PinCode INT NOT NULL,
AadharNumber VARCHAR(255) DEFAULT NULL,
LisenseNumber VARCHAR(255) DEFAULT NULL,
PenCardNumber VARCHAR(255) DEFAULT NULL,
Gender VARCHAR(255) NOT NULL,
Phone VARCHAR(255) NOT NULL,
Email VARCHAR(255) DEFAULT Null,
LoginId VARCHAR(255) NOT NULL,
Password VARCHAR(255) NOT NULL,
Status INt NOT NULL DEFAULT 1
) AUTO_INCREMENT = 101;


INSERT INTO User (UserTypeId,FirstName,LastName,Address,Gender,Phone,Email,LoginId,Password) VALUES
(1,"Anushalav","Bhatt","Dhalwala","Male","8909506360","superAdmin@gmail.com","superAdmin","superAdmin"),
(2,"Aman","Singh","Dhalwala","Male","9876543234","admin@gmail.com","admin","admin");


SELECT * FROM User;

CREATE TABLE Route(
 RouteId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 RouteName VARCHAR(255),
 PricePerPerson VARCHAR(255),
 Status INT DEFAULT 1
);

INSERT INTO Route (RouteName,PricePerPerson) VALUES
("Rishikesh To Dehraedun" , "100"),
("Prshikesh To Devprayad","150"),
("Rishikesh To Haridwar","60"),
("Rishikesh To Delhi","550"),
("Rishkesh To Mohali","500");

SELECT * FROM Route;

-- For driver we can add some more columns..
ALTER TABLE User ADD(
AadharNumber VARCHAR(255),
LisenseNumber VARCHAR(255),
PenCardNumber VARCHAR(255)
 );
 
-- For any types of user add some columns.. 
 ALTER TABLE User ADD(
 State INT NOT NULL,
 District INT NOT NULL,
 PinCode INT NOT NULL
 );
 



