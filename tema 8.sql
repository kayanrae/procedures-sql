select from Materie
create procedure InsertMaterie
@Denumire NVARCHAR (50),
@AnDeStudiu NVARCHAR (3)
AS
BEGIN
INSERT INTO Materie(Denumire,AnDeStudiu) Values (@Denumire,@AnDeStudiu)
END;
 
select from Profesor
create procedure InsertProfesor
@Nume NVARCHAR (20),
@Prenume NVARCHAR (20)
AS
BEGIN
INSERT INTO Profesor(Nume,Prenume) Values (@Nume,@Prenume)
END;

create procedure UpdateMaterie
@ID INT,
@Denumire NVARCHAR (50),
@AnDeStudiu NVARCHAR (3)
AS
BEGIN
UPDATE Materie
SET Denumire = @Denumire,AnDeStudiu = @AnDeStudiu
WHERE ID = @ID
END;

create procedure UpdateProfesor
@ID INT,
@Nume NVARCHAR(20),
@Prenume NVARCHAR(20)
AS
BEGIN
UPDATE Profesor
SET Nume = @Nume,Prenume = @Prenume
WHERE ID = @ID
END;

create procedure DeleteMaterie
@ID INT
AS 
BEGIN
DELETE FROM Materie
WHERE ID = @ID
END;

create procedure DeleteProfesor
@ID INT
AS
BEGIN
DELETE FROM Profesor
WHERE ID = @ID
END