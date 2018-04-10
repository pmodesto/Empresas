/*
pamela modesto
isamar
javier
*/

create database empresa
go

use empresa 
go

create table empresa
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	direccion varchar(100)
);

go

create table posicion
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	sueldo float
);

go

create table empleado
(
	id int identity(1,1) not null primary key,
	nombre varchar(50),
	posicionID int foreign key references posicion(id)
);

go

insert into empresa
values
('cocacola','prueba'),
('sosua','prueba'),
('nextle','prueba'),
('pepsi','prueba'),
('google','prueba'),
('induveca','prueba'),
('rica','prueba'),
('mercasid','prueba'),
('crisol','prueba'),
('colgate','prueba');

go

insert into posicion
values
('presidente',150000),
('vice-presidente',100000),
('secretaria',25000),
('contable',50000),
('coordinador',60000),
('programador',70000),
('asistente',35000),
('soporte tecnico',45000),
('conserge',18000),
('consultor',85000);

go

insert into empleado
values
('pedro',1),
('juan',2),
('jose',3),
('maria',4),
('pamela',5),
('rafael',6),
('luis',7),
('manuel',8),
('arleene',9),
('brayan',10);
