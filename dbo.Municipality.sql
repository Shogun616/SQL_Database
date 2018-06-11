CREATE TABLE Municipality
(
	MunicipalityId INT NOT NULL, 
    MunicipalityName CHAR(30) NOT NULL, 
    Population INT NOT NULL, 
    GeographicalLocation INT NOT NULL
	CONSTRAINT PK_Municipality_MunicipalityId PRIMARY KEY(MunicipalityId)
)
GO

INSERT INTO Municipality(MunicipalityId, MunicipalityName, Population, GeographicalLocation)
VALUES(1, 'Uppsala Kommun', '216,542 (Dec 31, 2017)', '59°52′N 17°38′Ö');

INSERT INTO Municipality(MunicipalityId, MunicipalityName, Population, GeographicalLocation)
VALUES(2, 'Täby Kommun', '69,869 (Dec 31, 2017)', '59°26′N 18°05′E');
GO

SELECT * FROM Municipality