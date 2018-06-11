CREATE TABLE Customer
(
	CustomerId INT NOT NULL, 
	CustomerName CHAR(50) NOT NULL,
    CustomerNumber INT NULL, 
    BuildingId INT NULL,
	StreetId INT NOT NULL
	CONSTRAINT PK_Customer_CustomerId PRIMARY KEY(CustomerId)
	CONSTRAINT FK_Customer_BuildinfId FOREIGN KEY(BuildingId) REFERENCES Building(BuildingId)
	CONSTRAINT FL_Customer_StreetId FOREIGN KEY(StreetId) REFERENCES Street(StreetId)
)
GO

INSERT INTO Customer(CustomerId,CustomerName,CustomerNumber,BuildingId,StreetId)
VALUES(1,'Täby Centrum', '15649780', 2);

INSERT INTO Customer(CustomerId,CustomerName,CustomerNumber,BuildingId,StreetId)
VALUES(2,'Arenahotellet', '49230761', 3);
GO

SELECT * FROM Customer