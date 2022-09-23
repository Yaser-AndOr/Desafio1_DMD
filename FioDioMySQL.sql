use costarica;
select *, SUBSTRING(codigo_cliente, 1, 2) as CódigoPaís from cliente where idtipocliente = 1 or idtipocliente = 2;

use costarica;
select *, SUBSTRING(codigo_cliente, 1, 2) as CódigoPaís from cliente where idtipocliente = 3 or idtipocliente = 4;
