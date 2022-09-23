use Diego_Spa

Drop Table if exists dbo.Centro;

Create Table Centro(
	Grupo varchar (8) Primary Key Not Null,
	ingresosProm float not null,
	edadProm int not null,
	PromVisit float not null
);
insert INTO Centro (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Sauna',
(SELECT AVG (ingresos)FROM SpaCentro_m20191007 WHERE Sauna = 1), 
(SELECT AVG (Edad)FROM SpaCentro_m20191007 WHERE Sauna = 1), 
(SELECT AVG (PromVisit)FROM SpaCentro_m20191007 WHERE Sauna = 1) );

insert INTO Centro (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Masaje',
(SELECT AVG (ingresos)FROM SpaCentro_m20191007 WHERE Masaje = 1), 
(SELECT AVG (Edad)FROM SpaCentro_m20191007 WHERE Masaje = 1), 
(SELECT AVG (PromVisit)FROM SpaCentro_m20191007 WHERE Masaje = 1) );

insert INTO Centro (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Hidro',
(SELECT AVG (ingresos)FROM SpaCentro_m20191007 WHERE Hidro = 1), 
(SELECT AVG (Edad)FROM SpaCentro_m20191007 WHERE Hidro = 1), 
(SELECT AVG (PromVisit)FROM SpaCentro_m20191007 WHERE Hidro = 1) );

insert INTO Centro (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Yoga',
(SELECT AVG (ingresos)FROM SpaCentro_m20191007 WHERE Yoga = 1), 
(SELECT AVG (Edad)FROM SpaCentro_m20191007 WHERE Yoga = 1), 
(SELECT AVG (PromVisit)FROM SpaCentro_m20191007 WHERE Yoga = 1) );

Select Grupo, round(ingresosProm,2) as ingresosProm, edadProm, round(PromVisit,2) As PromVisit from Centro

Drop Table if exists dbo.Escalon;

Create Table Escalon(
	Grupo varchar (8) Primary Key Not Null,
	ingresosProm float not null,
	edadProm int not null,
	PromVisit float not null
);
insert INTO Escalon (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Sauna',
(SELECT AVG (ingresos)FROM SpaEscalon_i20191007 WHERE Sauna = 1), 
(SELECT AVG (Edad)FROM SpaEscalon_i20191007 WHERE Sauna = 1), 
(SELECT AVG (PromVisit)FROM SpaEscalon_i20191007 WHERE Sauna = 1) );

insert INTO Escalon (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Masaje',
(SELECT AVG (ingresos)FROM SpaEscalon_i20191007 WHERE Masaje = 1), 
(SELECT AVG (Edad)FROM SpaEscalon_i20191007 WHERE Masaje = 1), 
(SELECT AVG (PromVisit)FROM SpaEscalon_i20191007 WHERE Masaje = 1) );

insert INTO Escalon (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Hidro',
(SELECT AVG (ingresos)FROM SpaEscalon_i20191007 WHERE Hidro = 1), 
(SELECT AVG (Edad)FROM SpaEscalon_i20191007 WHERE Hidro = 1), 
(SELECT AVG (PromVisit)FROM SpaEscalon_i20191007 WHERE Hidro = 1) );

insert INTO Escalon (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Yoga',
(SELECT AVG (ingresos) FROM SpaEscalon_i20191007 WHERE Yoga = 1), 
(SELECT AVG (Edad) FROM SpaEscalon_i20191007 WHERE Yoga = 1), 
(SELECT AVG (PromVisit) FROM SpaEscalon_i20191007 WHERE Yoga = 1) );

Select Grupo, round(ingresosProm,2) as ingresosProm, edadProm, round(PromVisit,2) As PromVisit from Escalon

Drop Table if exists dbo.SantaTecla;

Create Table SantaTecla(
	Grupo varchar (8) Primary Key Not Null,
	ingresosProm float not null,
	edadProm int not null,
	PromVisit float not null
);
insert INTO SantaTecla (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Sauna',
(SELECT AVG (ingresos)FROM SpaSantaTecla_m20191007 WHERE Sauna = 1), 
(SELECT AVG (Edad)FROM SpaSantaTecla_m20191007 WHERE Sauna = 1), 
(SELECT AVG (PromVisit)FROM SpaSantaTecla_m20191007 WHERE Sauna = 1) );

insert INTO SantaTecla (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Masaje',
(SELECT AVG (ingresos)FROM SpaSantaTecla_m20191007 WHERE Masaje = 1), 
(SELECT AVG (Edad)FROM SpaSantaTecla_m20191007 WHERE Masaje = 1), 
(SELECT AVG (PromVisit)FROM SpaSantaTecla_m20191007 WHERE Masaje = 1) );

insert INTO SantaTecla (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Hidro',
(SELECT AVG (ingresos)FROM SpaSantaTecla_m20191007 WHERE Hidro = 1), 
(SELECT AVG (Edad)FROM SpaSantaTecla_m20191007 WHERE Hidro = 1), 
(SELECT AVG (PromVisit)FROM SpaSantaTecla_m20191007 WHERE Hidro = 1) );

insert INTO SantaTecla (Grupo, ingresosProm, edadProm, PromVisit)
Values 
('Yoga',
(SELECT AVG (ingresos)FROM SpaSantaTecla_m20191007 WHERE Yoga = 1), 
(SELECT AVG (Edad)FROM SpaSantaTecla_m20191007 WHERE Yoga = 1), 
(SELECT AVG (PromVisit)FROM SpaSantaTecla_m20191007 WHERE Yoga = 1) );

Select Grupo, round(ingresosProm,2) as ingresosProm, edadProm, round(PromVisit,2) As PromVisit from SantaTecla
