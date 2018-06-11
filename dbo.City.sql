CREATE TABLE City
(
	CityId INT NOT NULL, 
    CityName CHAR(30) NOT NULL, 
    Population INT NOT NULL, 
    GeographicalLocation INT NOT NULL, 
    MunicipalityId INT NOT NULL
	CONSTRAINT PK_Building_CityId PRIMARY KEY(CityId), 
    CONSTRAINT FK_MunicipalityId_V FOREIGN KEY (MunicipalityId) REFERENCES Municipality(MunicipalityId)
)
GO

INSERT INTO City(CityId, CityName, Population, GeographicalLocation, MunicipalityId)
VALUES(1,'Uppsala','149,245 (Dec 31, 2015)', '59°50′59″N 17°38′20″Ö',1);

INSERT INTO City(CityId, CityName, Population, GeographicalLocation, MunicipalityId)
VALUES(2,'Täby','65,364 (Dec 31, 2012)', '59°26′N 18°05′E',2);

SELECT * FROM City