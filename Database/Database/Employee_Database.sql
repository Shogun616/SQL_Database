CREATE TABLE Employee
(
	EmployeeId INT NOT NULL Identity(1,1), 
    FirstName CHAR(20) NOT NULL, 
    LastName CHAR(20) NOT NULL, 
    EmailAddress CHAR(40) NOT NULL, 
    Profession CHAR(30) NOT NULL, 
    AnnualSalary MONEY NOT NULL, 
    SpecialSkill CHAR(20) NOT NULL, 
    EmployeeStatusId INT NOT NULL
	CONSTRAINT PK_Employee_EmployeeId PRIMARY KEY(EmployeeId)
)
GO

CREATE TABLE EmployeeStatus
(
	EmployeeStatusId INT NOT NULL Identity(1,1), 
    StatusDescription CHAR(10) NOT NULL
	CONSTRAINT PK_EmployeeStatus_EmployeeStatusId PRIMARY KEY(EmployeeStatusId)
)
GO

CREATE TABLE ServiceActivity
(
	ServiceActivityId INT NOT NULL Identity(1,1),
    EmployeeId INT NOT NULL, 
    ElevatorId INT NOT NULL, 
    ServiceDateTime DATE NOT NULL, 
    ServiceDescription CHAR(30) NOT NULL, 
    ServiceStatusId INT NOT NULL
	CONSTRAINT PK_ServiceActivity_ServiceActivityId PRIMARY KEY (ServiceActivityId)
)
GO
CREATE TABLE ServiceStatus
(
	ServiceStatusId INT NOT NULL Identity(1,1), 
    StatusDescription CHAR(10) NOT NULL
	CONSTRAINT PK_ServiceStatus_ServiceStatusId PRIMARY KEY (ServiceStatusId)
)
GO

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_EmployeeStatus_EmployeeStatusId FOREIGN KEY (EmployeeStatusId) REFERENCES EmployeeStatus (EmployeeStatusId)
GO
ALTER TABLE ServiceActivity ADD CONSTRAINT FK_ServiceActivity__ServiceStatus_ServiceStatusId FOREIGN KEY (ServiceStatusId) REFERENCES ServiceStatus (ServiceStatusId)
GO