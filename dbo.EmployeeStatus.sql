CREATE TABLE EmployeeStatus
(
	EmployeeStatusId INT NOT NULL, 
    StatusDescription CHAR(10) NOT NULL

	CONSTRAINT PK_EmployeeStatus PRIMARY KEY(EmployeeStatusId)
);
GO

INSERT INTO EmployeeStatus(EmployeeStatusId, StatusDescription)
VALUES(1,'Unavailable');
GO

INSERT INTO EmployeeStatus(EmployeeStatusId, StatusDescription)
VALUES(2, 'Available');
GO

SELECT * FROM EmployeeStatus
