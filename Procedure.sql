USE TMS;

DELIMITER $$
CREATE PROCEDURE GetStateByCountryId(IN p_CountryId INT) BEGIN
SELECT s.StateId,s.StateName,s.CountryId,c.CountryName,s.Status FROM State AS s LEFT JOIN Country AS c ON c.CountryId = s.CountryId WHERE p_CountryId = s.CountryId;
END $$
DELIMITER ;

CALL GetStateByCountryId(1);

 