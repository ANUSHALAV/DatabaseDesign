CREATE DATABASE TMS;

USE TMS;

CREATE TABLE UserType(
UserTypeID INT PRIMARY KEY AUTO_INCREMENT,
UserType VARCHAR(255),
Status INT
);

INSERT INTO UserType(UserType , Status) VALUES
("SuperAdmin" , 1),
("Admin",1),
("Driver",1),
("Passenger",1);

SELECT * FROM UserType;