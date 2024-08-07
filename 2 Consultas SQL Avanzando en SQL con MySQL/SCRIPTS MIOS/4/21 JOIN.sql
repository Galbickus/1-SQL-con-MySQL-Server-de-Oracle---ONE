USE jugos_ventas;
SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;
SELECT * FROM items_facturas;

/*Me trae todo*/
SELECT * FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA;

/*INNER JOINMe trae lo que pido y cuenta las operaciones hechas por cada vendedor*/
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) AS CANTIDAD_DE_VENTAS 
FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

/*CrossJoin forma antigua de hacer el INNER JOIN*/
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) AS CANTIDAD_DE_VENTAS 
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

/*EJERCICIO: 
Obtén la facturación anual de la empresa. 
Ten en cuenta que el valor financiero de las ventas consiste en
 multiplicar la cantidad por el precio.*/
 
 SELECT * FROM items_facturas;
 
SELECT YEAR(FECHA_VENTA) AS AÑO, SUM(CANTIDAD * PRECIO) AS FACTURACION
FROM facturas F
INNER JOIN 
items_facturas ItemFactura 
ON F.NUMERO = ItemFactura.NUMERO
GROUP BY YEAR(FECHA_VENTA);
 



