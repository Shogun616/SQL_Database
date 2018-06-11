CREATE TABLE Street
(
	StreetId INT NOT NULL, 
    Name NCHAR(10) NOT NULL, 
    Number NCHAR(10) NOT NULL,
	ZipCode CHAR(20) NOT NULL
    
	CONSTRAINT PK_Street PRIMARY KEY(StreetId)
);
GO 

INSERT INTO Street(Id, Name, Number, ZipCode)
  VALUES(2,'Kungsgatan 109','75318', 'Uppsala');

INSERT INTO Street(Id, Name, Number, ZipCode)
  VALUES(4,'Valhallavägen 10','11422', 'Stockholm');

INSERT INTO Street(Id, Name, Number, ZipCode)
  VALUES(1,'Stora Marknadsvägen 15','18370', 'Täby');

INSERT INTO Street(Id, Name, Number, ZipCode)
  VALUES(3,'Tennisvägen','75460', 'Uppsala');

  Select * FROM Street