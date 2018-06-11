CREATE TABLE Employee
(
	EmployeeId INT NOT NULL, 
    FirstName CHAR(20) NOT NULL, 
    LastName CHAR(20) NOT NULL, 
    EmailAddress CHAR(40) NOT NULL, 
    Profession CHAR(30) NOT NULL, 
    AnnualSalary MONEY NOT NULL, 
    SpecialSkill CHAR(20) NOT NULL, 
    EmployeeStatusId INT NOT NULL,
	StreetId INT NOT NULL

	CONSTRAINT PK_Employee PRIMARY KEY(EmployeeId)
	CONSTRAINT FK_Employee_EmployeeStatus FOREIGN KEY(EmployeeStatusId) REFERENCES EmployeeStatus(EmployeeStatusId)
	CONSTRAINT FK_Employee_Street FOREIGN KEY (StreetId) REFERENCES Street(StreetId)
);
GO


INSERT INTO Employee(Id, FirstName, LastName, EmailAddress, Profession, AnnualSalary, SpecialSkill, EmployeeStatusId, StreetId)
   VALUES(1,'Hans','Mattin-Lassei','hans@shhiss.se', 'Technician', 2500.00, 'Tennis', 3, 2);
   
INSERT INTO Employee(Id, FirstName, LastName, EmailAddress, Profession, AnnualSalary, SpecialSkill, EmployeeStatusId, StreetId)
   VALUES(2,'Lisa','Gustavsson','lisa@shhiss.se', 'Technician', 2500.00, 'Ballet', 5, 4);
   GO

SELECT * FROM Employee








