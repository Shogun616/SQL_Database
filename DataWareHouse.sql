CREATE TABLE Staff
(
	StaffKey INT NOT NULL PRIMARY KEY,
	FirstName CHAR(50),
	LastName CHAR(50),
	EmailAdress CHAR(50),
	Proffession CHAR(50),
	AnnualSalary INT,
	SpecialSkill CHAR(50),
	EmployeeStatus CHAR(50),
	Street CHAR(50),
	StatusDescription CHAR(50)
)
GO

CREATE TABLE Service
(
   ServiceKey INT NOT NULL PRIMARY KEY,
   ServiceDateTime DATE,
   ServiceDescription CHAR(50),
   StatusDescription CHAR(50)
)
GO

CREATE TABLE Elevator
(
   ElevatorKey INT NOT NULL PRIMARY KEY,
   InstallationDate DATE,
   ModelName INT,
   Speed INT,
   MaxWeight INT,
   PeopleLimit INT,
   ElevatorType INT,
   ElevatorName CHAR(50)
)
GO

CREATE TABLE Customer
(
  CustomerKey INT NOT NULL PRIMARY KEY,
  CustomerName CHAR(50),
  CustomerNumber INT
)
GO

CREATE TABLE Building
(
 BuildingKey INT NOT NULL PRIMARY KEY,
 Floors INT,
 NumbersOfElevator INT,
 Street CHAR(50)
)
GO

CREATE TABLE City
(
  CityKey INT NOT NULL PRIMARY KEY,
  CityName CHAR(50),
  Population INT,
  Geographical INT
)
GO

CREATE TABLE Municipathy
(
  MunicipathyKey INT NOT NULL PRIMARY KEY,
  MunicipathyName CHAR(50),
  Population INT,
  Geographical INT
)
GO

