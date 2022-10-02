CREATE DATABASE BD_PROYECTO_G4
use BD_PROYECTO_G4;

create table Tripulantes (
 Nombre nvarchar(30),
 Apellido nvarchar(30),
 usuario nvarchar(30),
contraseña nvarchar(30),
identificacion int8,
telefono int8,
correo nvarchar(30),
primary key (identificacion)
);

create table Tutores (
 Nombre nvarchar(30),
 Apellido nvarchar(30),
 usuario nvarchar(30),
contraseña nvarchar(30),
identificacion int8,
telefono int8,
correo nvarchar(30),
primary key (identificacion)
);

create table Sistemas (
 usuario nvarchar(30),
contraseña nvarchar(30),
idsistema int1,
idtriupulante int8,
idtutores int8,
fecha datetime,
primary key(idsistema),
FOREIGN KEY (idtripulante) REFERENCES Tripulantes (identificacion),
FOREIGN KEY (idtutores) REFERENCES Tutores (identificacion)
);

create table SistemasTutores(
idSistemasTutores int1,
idtutores int8,
idsistema int1,
primary key(idSistemasTutores),
FOREIGN KEY (idtutores) REFERENCES Tutores (identificacion),
FOREIGN KEY (idsistema) REFERENCES Sistemas(idsistema)
);

create table SistemasTripulantes(
idSistemasTripulantes int1,
idtripulantes int8,
idsistema int1,
primary key(idSistemasTripulantes),
FOREIGN KEY (idtripulantes) REFERENCES Tripulantes (identificacion),
FOREIGN KEY (idsistema) REFERENCES Sistemas(idsistema)
);