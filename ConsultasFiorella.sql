use FloristeriaFiorella

Drop Table if exists VentasSM;

Create Table VentasSM(
	Producto varchar(12) Primary Key Not Null,
	Porcentaje int not null
);
insert INTO VentasSM Values ('Rosas', (select COUNT(All Rosas) from SanMiguel_j20191007 where Rosas = 1));
insert INTO VentasSM Values ('Claveles', (select COUNT(All Claveles) from SanMiguel_j20191007 where Claveles = 1));
insert INTO VentasSM Values ('Macetas', (select COUNT(All Macetas) from SanMiguel_j20191007 where Macetas = 1));
insert INTO VentasSM Values ('Tierra', (select COUNT(All Tierra) from SanMiguel_j20191007 where Tierra = 1));
insert INTO VentasSM Values ('Girasoles', (select COUNT(All Girasoles) from SanMiguel_j20191007 where Girasoles = 1));
insert INTO VentasSM Values ('Hortensia', (select COUNT(All Hortensia) from SanMiguel_j20191007 where Hortensia = 1));
insert INTO VentasSM Values ('Globos', (select COUNT(All Globos) from SanMiguel_j20191007 where Globos = 1));
insert INTO VentasSM Values ('Tarjetas', (select COUNT(All Tarjetas) from SanMiguel_j20191007 where Tarjetas = 1));
insert INTO VentasSM Values ('fOrquídias', (select COUNT(All fOrquídias) from SanMiguel_j20191007 where fOrquídias = 1));
insert INTO VentasSM Values ('Carmesí', (select COUNT(All Carmesí) from SanMiguel_j20191007 where Carmesí = 1));
insert INTO VentasSM Values ('Lirios', (select COUNT(All Lirios) from SanMiguel_j20191007 where Lirios = 1));
insert INTO VentasSM Values ('Aurora', (select COUNT(All Aurora) from SanMiguel_j20191007 where Aurora = 1));
insert INTO VentasSM Values ('Tulipanes', (select COUNT(All Tulipanes) from SanMiguel_j20191007 where Tulipanes = 1));
insert INTO VentasSM Values ('Listón', (select COUNT(All Listón) from SanMiguel_j20191007 where Listón = 1));

declare @sumaSM float = (select SUM(ALL Porcentaje) from VentasSM); 
declare @ClientesSM float = (select Count(ALL id) from SanMiguel_j20191007); 

select Producto,
Porcentaje as TotalVentas,
round(Porcentaje*100/@ClientesSM,0) as [Compras C/100 Clientes]
from VentasSM order by Porcentaje desc 



Drop Table if exists VentasSS;

Create Table VentasSS(
	Producto varchar(12) Primary Key Not Null,
	Porcentaje int not null
);
insert INTO VentasSS Values ('Rosas', (select COUNT(All Rosas) from SanSalvador_i20191007 where Rosas = 1));
insert INTO VentasSS Values ('Claveles', (select COUNT(All Claveles) from SanSalvador_i20191007 where Claveles = 1));
insert INTO VentasSS Values ('Macetas', (select COUNT(All Macetas) from SanSalvador_i20191007 where Macetas = 1));
insert INTO VentasSS Values ('Tierra', (select COUNT(All Tierra) from SanSalvador_i20191007 where Tierra = 1));
insert INTO VentasSS Values ('Girasoles', (select COUNT(All Girasoles) from SanSalvador_i20191007 where Girasoles = 1));
insert INTO VentasSS Values ('Hortensia', (select COUNT(All Hortensia) from SanSalvador_i20191007 where Hortensia = 1));
insert INTO VentasSS Values ('Globos', (select COUNT(All Globos) from SanSalvador_i20191007 where Globos = 1));
insert INTO VentasSS Values ('Tarjetas', (select COUNT(All Tarjetas) from SanSalvador_i20191007 where Tarjetas = 1));
insert INTO VentasSS Values ('fOrquídias', (select COUNT(All fOrquídias) from SanSalvador_i20191007 where fOrquídias = 1));
insert INTO VentasSS Values ('Carmesí', (select COUNT(All Carmesí) from SanSalvador_i20191007 where Carmesí = 1));
insert INTO VentasSS Values ('Lirios', (select COUNT(All Lirios) from SanSalvador_i20191007 where Lirios = 1));
insert INTO VentasSS Values ('Aurora', (select COUNT(All Aurora) from SanSalvador_i20191007 where Aurora = 1));
insert INTO VentasSS Values ('Tulipanes', (select COUNT(All Tulipanes) from SanSalvador_i20191007 where Tulipanes = 1));
insert INTO VentasSS Values ('Listón', (select COUNT(All Listón) from SanSalvador_i20191007 where Listón = 1));

declare @sumaSS float = (select SUM(ALL Porcentaje) from VentasSS); 
declare @ClientesSS float = (select Count(ALL id) from SanSalvador_i20191007); 

select Producto,
Porcentaje as TotalVentas,
round(Porcentaje*100/@ClientesSS,0) as [Compras C/100 Clientes]
from VentasSS order by Porcentaje desc 


Drop Table if exists VentasSA;

Create Table VentasSA(
	Producto varchar(12) Primary Key Not Null,
	Porcentaje int not null
);
insert INTO VentasSA Values ('Rosas', (select COUNT(All Rosas) from SantaAna_c20191007 where Rosas = 1));
insert INTO VentasSA Values ('Claveles', (select COUNT(All Claveles) from SantaAna_c20191007 where Claveles = 1));
insert INTO VentasSA Values ('Macetas', (select COUNT(All Macetas) from SantaAna_c20191007 where Macetas = 1));
insert INTO VentasSA Values ('Tierra', (select COUNT(All Tierra) from SantaAna_c20191007 where Tierra = 1));
insert INTO VentasSA Values ('Girasoles', (select COUNT(All Girasoles) from SantaAna_c20191007 where Girasoles = 1));
insert INTO VentasSA Values ('Hortensia', (select COUNT(All Hortensia) from SantaAna_c20191007 where Hortensia = 1));
insert INTO VentasSA Values ('Globos', (select COUNT(All Globos) from SantaAna_c20191007 where Globos = 1));
insert INTO VentasSA Values ('Tarjetas', (select COUNT(All Tarjetas) from SantaAna_c20191007 where Tarjetas = 1));
insert INTO VentasSA Values ('fOrquídias', (select COUNT(All fOrquídias) from SantaAna_c20191007 where fOrquídias = 1));
insert INTO VentasSA Values ('Carmesí', (select COUNT(All Carmesí) from SantaAna_c20191007 where Carmesí = 1));
insert INTO VentasSA Values ('Lirios', (select COUNT(All Lirios) from SantaAna_c20191007 where Lirios = 1));
insert INTO VentasSA Values ('Aurora', (select COUNT(All Aurora) from SantaAna_c20191007 where Aurora = 1));
insert INTO VentasSA Values ('Tulipanes', (select COUNT(All Tulipanes) from SantaAna_c20191007 where Tulipanes = 1));
insert INTO VentasSA Values ('Listón', (select COUNT(All Listón) from SantaAna_c20191007 where Listón = 1));

declare @sumaSA float = (select SUM(ALL Porcentaje) from VentasSA); 
declare @ClientesSA float = (select Count(ALL id) from SantaAna_c20191007); 

select Producto,
Porcentaje as TotalVentas,
round(Porcentaje*100/@ClientesSA,0) as [Compras C/100 Clientes]
from VentasSA order by Porcentaje desc 