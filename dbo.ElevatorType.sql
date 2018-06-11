CREATE TABLE ElevatorType
(
	ElevatorTypeId INT NOT NULL, 
    TypeName CHAR(20) NOT NULL
	CONSTRAINT PK_ElevatorType_ElevatorTypeId PRIMARY KEY(ElevatorTypeId)
);
GO

INSERT INTO ElevatorType(ElevatorTypeId, TypeName)
  VALUES(1,'Cargo');
  GO

INSERT INTO ElevatorType(ElevatorTypeId, TypeName)
  VALUES(2,'Personal');
  GO

  SELECT * FROM ElevatorType


