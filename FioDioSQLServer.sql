use db_roaming_honduras
select *, SUBSTRING(codigo_cliente, 1, 2) as [Código País] from cliente where idtipocliente = 1 or idtipocliente = 2

use db_roaming_honduras
select *, SUBSTRING(codigo_cliente, 1, 2) as [Código País] from cliente where idtipocliente = 4 or idtipocliente = 3
