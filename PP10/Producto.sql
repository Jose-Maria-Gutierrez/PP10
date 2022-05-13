CREATE TABLE Producto (
	Id INTEGER PRIMARY KEY NOT NULL,
	Nombre CHAR(50) NOT NULL ,
	Precio numeric(15,2) NOT NULL ,
	ProveedorId INTEGER NOT NULL
	CONSTRAINT fk_Proveedor_Producto REFERENCES Proveedor(Id)
);
