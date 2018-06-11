CREATE TABLE ServiceActivity
(
	ServiceActivityId INT NOT NULL,
    EmployeeId INT NOT NULL, 
    ElevatorId INT NOT NULL, 
    ServiceDateTime DATE NOT NULL, 
    ServiceDescription CHAR(30) NOT NULL, 
    ServiceStatusId INT NOT NULL
	CONSTRAINT PK_ServiceActivity PRIMARY KEY (ServiceActivityId), 
    CONSTRAINT FK_ServiceActivity_ServiceStatus FOREIGN KEY (ServiceStatusId) REFERENCES ServiceStatus(ServiceStatusId)
);
GO

INSERT INTO ServiceActivity(ServiceActivityId,EmployeeId,ElevatorId, ServiceDateTime, ServiceDescription,ServiceStatusId)
VALUES(1, 1, 2, '30/2-2012', 'Service Maintance', 1);

INSERT INTO ServiceActivity(ServiceActivityId,EmployeeId, ElevatorId, ServiceDateTime, ServiceDescription, ServiceStatusId)
VALUES(1, 2, 3, '12/4-2016', 'Repairs', 1);
GO

SELECT * FROM ServiceActivity