CREATE TABLE Elevator
(
	ElevatorId INT NOT NULL Identity(1,1), 
    ElevatorModelId INT NOT NULL, 
    BuildingId INT NOT NULL, 
    InstallationDate DATE NOT NULL
	CONSTRAINT PK_Elevator_ElevatorId PRIMARY KEY(ElevatorId)
)
GO

CREATE TABLE ElevatorModel
(
	ElevatorModelId INT NOT NULL Identity(1,1), 
    ModelName INT NOT NULL, 
    Speed INT NOT NULL, 
    MaxWeight INT NOT NULL, 
    PeopleLimit INT NOT NULL, 
    ElevatorTypeId INT NOT NULL
	CONSTRAINT PK_ElevatorModel_ElevatorModelId PRIMARY KEY(ElevatorModelId)
)
GO

CREATE TABLE ElevatorType
(
	ElevatorTypeId INT NOT NULL Identity(1,1), 
    TypeName CHAR(20) NOT NULL
	CONSTRAINT PK_ElevatorType_ElevatorTypeId PRIMARY KEY(ElevatorTypeId)
)
GO

CREATE TABLE Building
(
	BuildingId INT NOT NULL Identity(1,1), 
    CityId INT NULL, 
    Floors INT NULL
	CONSTRAINT PK_Building_BuildingId PRIMARY KEY(BuildingId)
)
GO

CREATE TABLE Customer
(
	CustomerId INT NOT NULL PRIMARY KEY, 
    CustomerNumber INT NULL, 
    BuildingId INT NULL
)
GO

CREATE TABLE City
(
	CityId INT NOT NULL PRIMARY KEY, 
    CityName CHAR(30) NULL, 
    Population INT NULL, 
    GeographicalLocation INT NULL, 
    CommunityId INT NULL
)
GO

CREATE TABLE Community
(
	CommunityId INT NOT NULL Identity(1,1), 
    CommunityName CHAR(30) NULL, 
    Population INT NULL, 
    GeographicalLocation INT NULL
	CONSTRAINT PK_Community_CommunityId PRIMARY KEY(CommunityId)
)
GO

ALTER TABLE Elevator ADD CONSTRAINT FK_Elevator__Building_BuildingId FOREIGN KEY (BuildingId) REFERENCES Building (BuildingId)
GO
ALTER TABLE Building ADD CONSTRAINT FK_Building_Customer_CustomerId FOREIGN KEY (BuildingId) REFERENCES Customer (CustomerId)
GO
ALTER TABLE Building ADD CONSTRAINT FK_Building__City_CityId FOREIGN KEY (CityId) REFERENCES City (CityId)
GO
ALTER TABLE City ADD CONSTRAINT FK_City_Community_CommunityId FOREIGN KEY (CommunityId) REFERENCES Community (CommunityId)
