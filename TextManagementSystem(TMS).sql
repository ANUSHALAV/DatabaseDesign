CREATE DATABASE TMS;

USE TMS;

SET autocommit = 1;

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


CREATE TABLE IF NOT EXISTS Country (
CountryId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CountryName VARCHAR(255) NOT NULL,
Status INT DEFAULT 1
);

INSERT INTO Country (CountryName) VALUES
('India'),
('United States'),
('Canada');

SELECT * FROM Country;

CREATE TABLE IF NOT EXISTS State (
StateId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CountryId INT NOT NULL, FOREIGN KEY(CountryId) REFERENCES Country(CountryId),
StateName VARCHAR(255),
Status INT DEFAULT 1
);

INSERT INTO State (CountryId, StateName) VALUES
(1, 'Uttarakhand'),
(1, 'Uttar Pradesh'),
(1, 'Delhi'),
(2, 'California'),
(2, 'Texas'),
(3, 'Ontario');

SELECT * FROM State;

CREATE TABLE IF NOT EXISTS District(
DistrictId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
CountryId INT NOT NULL , FOREIGN KEY(CountryId) REFERENCES Country(CountryId),
StateId INT NOT NULL, FOREIGN KEY(StateId) REFERENCES State(StateId),
DistrictName VARCHAR(255),
Status INT DEFAULT 1
);

INSERT INTO District (CountryId, StateId, DistrictName) VALUES
(1, 1, 'Dehradun'),
(1, 1, 'Haridwar'),
(1, 1, 'Nainital'),

(1, 2, 'Lucknow'),
(1, 2, 'Kanpur'),
(1, 2, 'Varanasi'),

(1, 3, 'New Delhi'),

(2, 4, 'Los Angeles'),
(2, 4, 'San Diego'),

(2, 5, 'Houston'),
(2, 5, 'Dallas'),

(3, 6, 'Toronto'),
(3, 6, 'Ottawa');


SELECT * FROM District;




CREATE TABLE User(
UserId INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
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

-- insert query for super admin and admin 
INSERT INTO User (UserTypeId,FirstName,LastName,Address,State,District,PinCode,Gender,Phone,Email,LoginId,Password) VALUES
(1,"Anushalav","Bhatt","Dhalwala",3,3,456754,"Male","8909506360","superAdmin@gmail.com","superAdmin","superAdmin"),
(2,"Aman","Singh","Dhalwala",1,2,345634,"Male","9876543234","admin@gmail.com","admin","admin");


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
 
 CREATE TABLE Passenger(
 PassengerId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 FirstName VARCHAR(255),
 LastName VARCHAR(255),
 Phone VARCHAR(255),
 Address VARCHAR(255),
 RouteId INT NOT NULL, FOREIGN KEY(RouteId) REFERENCES Route(RouteId),
 DriverId Int NOT NULL, FOREIGN KEY(DriverId) REFERENCES User(UserId),
 IsAlone bool NOT NULL DEFAULT TRUE,
 TotalPassengerWhoTraval Int NOT NULL,
 Status INT DEFAULT 1
 );
 
 INSERT INTO User (UserTypeId,FirstName,LastName,Address,Gender,State,District,PinCode,AadharNumber,LisenseNumber,PenCardNumber,Phone,Email,LoginId,Password) VALUES
(3,"Anushalav","Bhatt","Dhalwala","Male",1,1,789098,"656565432123","UK6545TY67876","FLPIY6543","8909506360","anushalav@gmail.com","anushalav","anushalav"),
(3,"Aman","Singh","Dhalwala","Male",1,1,789048,"656535432123","UK6545TY611111","FLPIY1111","9876543234","aman@gmail.com","aman","aman");
 
 ALTER TABLE Passenger DROP COLUMN Address;
 
 ALTER TABLE Passenger MODIFY COLUMN TotalPassengerWhoTraval INT NOT NULL DEFAULT 1;
 
 SELECT * FROM Passenger;
 
 INSERT INTO Passenger (FirstName,LastName,Phone,RouteId,DriverId,IsAlone,TotalPassengerWhoTraval) VALUES
 ("Anushaalav","Bhatt","8909506360",1,101,true,1),
 ("Aman","Singh","9876543456",2,102,false,3);



