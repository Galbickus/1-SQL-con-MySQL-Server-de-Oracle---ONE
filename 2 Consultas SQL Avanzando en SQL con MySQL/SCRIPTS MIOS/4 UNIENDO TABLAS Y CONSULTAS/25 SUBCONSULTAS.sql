/*Analizando sub consultas. Una sub consulta es simplemente realizar
 una consulta al interior de otra consulta*/
 
 /*para saber los diferentes barrios de la tabla vendedores*/
 SELECT DISTINCT BARRIO FROM tabla_de_vendedores;
 
 /*ahora veamos que clientes tenemos en esos barrios*/
 SELECT * FROM tabla_de_clientes
 WHERE BARRIO IN('Condesa', 'Del Valle', 'Contadero', 'Oblatos');
 
 /*en vez de nombrar barrio por barrio hago un CONSUlta dentro de la otra y obtengo lo mismo*/
SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);

 /*Precios maximos*/
 SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;
 
 /*Nos devuelve los valores por encima de 10*/
 SELECT X.ENVASE, X.PRECIO_MAXIMO FROM
(SELECT ENVASE, MAX(PRECIO_DE_LISTA)
 AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE) X 
 WHERE X.PRECIO_MAXIMO >=10;
 
 /* EJERCICIO 
 Cuál sería la consulta utilizando la subconsulta que sería equivalente a:--*/

SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;

 /* --EJERCICIO --*/
 SELECT X.DNI, X.CONTADOR FROM 
(SELECT DNI, COUNT(*) AS CONTADOR FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI) X WHERE X.CONTADOR > 2000;
 