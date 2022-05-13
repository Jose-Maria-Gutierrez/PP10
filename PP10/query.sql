/*
INSERT INTO Proveedor(Id,Nombre) VALUES(1,'Sony');
INSERT INTO Proveedor(Id,Nombre) VALUES(2,'Creative Labs');
INSERT INTO Proveedor(Id,Nombre) VALUES(3,'Hewlett-Packard');
INSERT INTO Proveedor(Id,Nombre) VALUES(4,'Iomega');
INSERT INTO Proveedor(Id,Nombre) VALUES(5,'Fujitsu');
INSERT INTO Proveedor(Id,Nombre) VALUES(6,'Winchester');
INSERT INTO Proveedor(Id,Nombre) VALUES(7,'Bose');*/--DROP TABLE Producto/*INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(1,'Harddrive',240,5);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)
VALUES(2,'Memory',120,6);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(3,'ZIPdrive',150,4);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(4,'Floppydisk',5,6);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)
VALUES(5,'Monitor',240,1);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(6,'DVDdrive',180,2);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(7,'CDdrive',90,2);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)VALUES(8,'Printer',270,3);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(9,'Tonercartridge',66,3);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(10,'DVDburner',180,2);*/--SELECT [Nombre] FROM Producto --SELECT [Nombre],[Precio] FROM Producto--SELECT [Nombre] FROM Producto WHERE [Precio] <= 200--SELECT * FROM Producto WHERE [Precio] BETWEEN 60 AND 120--SELECT [Nombre], [Precio] * 100 FROM Producto --SELECT AVG([Precio]) FROM Producto--SELECT AVG([Precio]) FROM Producto WHERE [ProveedorId] = 2--SELECT COUNT([Precio]) FROM Producto WHERE [Precio] >= 180--SELECT [Nombre],[Precio] FROM Producto WHERE [Precio] >= 180 ORDER BY [Precio] DESC--SELECT [Nombre],[Precio] FROM Producto WHERE [Precio] >= 180 ORDER BY [Nombre] ASC--SELECT * FROM Producto INNER JOIN Proveedor ON Producto.[ProveedorId] = Proveedor.[Id]--SELECT Producto.[Nombre],Producto.[Precio],Proveedor.[Nombre] FROM Producto --INNER JOIN Proveedor ON Producto.[ProveedorId] = Proveedor.[Id]--INSERT INTO Producto ([Nombre],[Precio],[ProveedorId]) VALUES ('Altavoces',70,2)--UPDATE Producto SET [Nombre] = 'Impresora Laser' WHERE [Id] = 8--UPDATE Producto SET [Precio] = [Precio] * 0.9--UPDATE Producto SET [Precio] = [Precio] * 0.9 WHERE [Precio] >= 120--SELECT [Nombre],[Precio] FROM Producto WHERE [Precio] = ( SELECT MIN([Precio]) FROM Producto )--SELECT [Nombre],[Precio] FROM Producto WHERE [Precio] = ( SELECT MAX([Precio]) FROM Producto )--SELECT [ProveedorID],AVG([Precio]) FROM Producto GROUP BY [ProveedorId]--SELECT Proveedor.[Nombre],AVG([Precio]) FROM Producto --INNER JOIN Proveedor ON Proveedor.[Id] = Producto.[ProveedorId]--GROUP BY Proveedor.[Nombre]--HAVING AVG([Precio]) >=150SELECT Proveedor.[Nombre],AVG([Precio]) FROM Producto INNER JOIN Proveedor ON Proveedor.[Id] = Producto.[ProveedorId]GROUP BY Proveedor.[Nombre]HAVING AVG([Precio]) >=145 AND COUNT(Producto.[Id]) > 2