CREATE TABLE Building
(
	BuildingId INT NOT NULL, 
    CityId INT NOT NULL, 
    Floors INT NOT NULL,
	NroElevator INT NOT NULL
	CONSTRAINT PK_Building_BuildingId PRIMARY KEY(BuildingId), 
    CONSTRAINT FK_CityId_City FOREIGN KEY (CityId) REFERENCES City(CityId)
)

INSERT INTO Building(BuildingId, CityId, Floors, NroElevator)
VALUES(1, 2, '25', '5');

INSERT INTO Building(BuildingId, CityId, Floors, NroElevator)
VALUES(2, 1, '5', '2');

SELECT * FROM Building