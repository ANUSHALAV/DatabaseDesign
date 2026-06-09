USE TMS;

DELIMITER $$
CREATE PROCEDURE GetCountry(IN s_Status INT) BEGIN
SELECT * FROM Country WHERE Status = s_Status;
END $$
DELIMITER ;

CALL GetCountry(1);

DELIMITER $$
CREATE PROCEDURE GetStateByCountryId(IN p_CountryId INT) BEGIN
SELECT s.StateId,s.StateName,s.CountryId,c.CountryName,s.Status FROM State AS s LEFT JOIN Country AS c ON c.CountryId = s.CountryId WHERE p_CountryId = s.CountryId;
END $$
DELIMITER ;

CALL GetStateByCountryId(1);


DELIMITER $$
CREATE PROCEDURE GetDistrictByCountryIdAndStateId
(
    IN c_CountryId INT,
    IN s_StateId INT
)
BEGIN
    SELECT
      d.DistrictId , d.DistrictName,s.StateId,s.StateName,s.CountryId,c.CountryName,s.Status
    FROM District AS d
    INNER JOIN Country AS c
        ON c.CountryId = d.CountryId
    INNER JOIN State AS s
        ON s.StateId = d.StateId
    WHERE d.CountryId = c_CountryId
      AND d.StateId = s_StateId;

END $$
DELIMITER ;

CALL GetDistrictByCountryIdAndStateId(1,1);


DELIMITER $$
CREATE PROCEDURE GetUserDetails(IN u_Status INT)
BEGIN 
SELECT u.UserId,u.UserTypeId,u.FirstName,u.LastName,u.Address,u.State,s.StateName,
u.District,d.DistrictName,u.PinCode,u.AadharNumber,u.LisenseNumber,u.PenCardNumber,
u.Gender,u.Phone,u.Status FROM User AS u 
INNER JOIN State AS s on u.State = s.StateId
INNER JOIN District AS d on u.District = d.DistrictId
WHERE u.Status = u_Status ;
END $$
DELIMITER ;

CALL GetUserDetails(1);

-- DELIMITER $$
-- CREATE PROCEDURE GetUserDetails(IN u_Status INT)
-- BEGIN 
-- SELECT * FROM User AS u 
-- INNER JOIN Country AS c ON u.Country = c.CountryId
-- INNER JOIN Route AS r on u.RouteId = r.RouteId
-- INNER JOIN State AS s on u.Stateid = s.StateId
-- WHERE u.Status = u_Status ;
-- END $$
-- DELIMITER ;-- 




 