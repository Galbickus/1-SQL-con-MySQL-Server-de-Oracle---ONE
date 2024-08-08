/*06 Ejemplos de FULL y CROSS JOIN*/
USE jugos_ventas;
SELECT * FROM tabla_de_clientes;
SELECT * FROM tabla_de_vendedores;

/*Queremos saber que clientes son atendidos por que vendedores y en que barrio*/
/*La forma extensa, sin usar abreviaturas*/

SELECT
tabla_de_clientes.NOMBRE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.BARRIO
FROM tabla_de_clientes
INNER JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/*Lo mejoramos para que no se duplique el barrio y nombrar columnas  INNER JOIN*/

SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR
FROM tabla_de_clientes
INNER JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT * FROM tabla_de_vendedores;
SELECT count(*) FROM tabla_de_clientes;

/*Tengo 15 clientes y la muestra anterior solo me arroja 6 
porque tengo clientes que estan en barrios donde no tengo vendedores
Para solucionar esto hago un LEFT JOIN, entonces los que 
aparecen en NULL es porrque no tienen a nadie que los atienda*/

SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/*RIGHT*/

SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/*Agrego items de vendedores*/
SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/*FULL
si le damos FULL JOIN, nos debería a devolver un join de todos los vendedores
 y todos los clientes, todos, y en donde no haya debería aparecer nulo,
 eso es lo que esperamos, pero nos da un error.
El error aquí es, aunque no está muy explícito,
 aquí nos dice que supuestamente la columna tabla_de_clientes no está el nombre,
 bueno. ¿Qué pasa? MySQL, a pesar de que está dentro de los padrones ANSI
 y FULL JOIN es un comando considerado en general en los padrones ANSI de SQL,
 en MySQL no se usa de esta manera, sino que hay que hacer
 un RIGHT JOIN y después un LEFT JOIN,
 todo dentro del mismo comando para que funcione el FULL JOIN.
Pero esto es un ejemplo que vamos a ver posteriormente */

SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
FULL JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/*CROSS JOIN, solo llamo a las dos tablas y uso un where*/

SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores
WHERE tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;