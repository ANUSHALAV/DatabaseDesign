USE TMS;

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



 