CREATE TABLE Elevator
(
	ElevatorId INT NOT NULL, 
    ElevatorModelId INT NOT NULL, 
    BuildingId INT NOT NULL, 
    InstallationDate DATE NOT NULL
	CONSTRAINT PK_Elevator_ElevatorId PRIMARY KEY(ElevatorId), 
    CONSTRAINT FK_ElevatorModelId_ElevatorModelId FOREIGN KEY (ElevatorModelId) REFERENCES ElevatorModel(ElevatorModelId)
)
GO

INSERT INTO Elevator(ElevatorId, ElevatorModelId, InstallationDate, BuildingId)
VALUES(1, 2, '10/1-2008', 1);

INSERT INTO Elevator(ElevatorId, ElevatorModelId, InstallationDate, BuildingId)
VALUES(2,1, '20/5-2011',2);
GO

SELECT * FROM Elevator
