CREATE TABLE ElevatorModel
(
	ElevatorModelId INT NOT NULL, 
    ModelName INT NOT NULL, 
    Speed INT NOT NULL, 
    MaxWeight INT NOT NULL, 
    PeopleLimit INT NOT NULL, 
    ElevatorTypeId INT NOT NULL

	CONSTRAINT PK_ElevatorModel_ElevatorModelId PRIMARY KEY(ElevatorModelId), 
    CONSTRAINT FK_ElevatorType_ElevatorTypeId FOREIGN KEY (ElevatorTypeId) REFERENCES ElevatorType(ElevatorTypeId)
)
GO

INSERT INTO ElevatorModel(ElevatorModelId, ModelName, Speed, MaxWeight, PeopleLimit, ElevatorTypeId)
VALUES(1, 'Icarus', '15.5', '1000', '15', 1);

INSERT INTO ElevatorModel(ElevatorModelId, ModelName, Speed, MaxWeight, PeopleLimit, ElevatorTypeId)
VALUES(2, 'Chronus', '20.6', '5000', '25', 1);
GO

SELECT * FROM ElevatorModel
