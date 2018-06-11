CREATE TABLE ServiceStatus
(
	ServiceStatusId INT NOT NULL, 
    StatusDescription CHAR(10) NOT NULL
	CONSTRAINT PK_ServiceStatus_ServiceStatusId PRIMARY KEY (ServiceStatusId)
)
GO

INSERT INTO ServiceStatus(ServiceStatusId, StatusDescription)
VALUES(1, 'Ok');

INSERT INTO ServiceStatus(ServiceStatusId, StatusDescription)
VALUES(2, 'Offline');

INSERT INTO ServiceStatus(ServiceStatusId, StatusDescription)
VALUES(3, 'Under Service');
GO

SELECT * FROM ServiceStatus