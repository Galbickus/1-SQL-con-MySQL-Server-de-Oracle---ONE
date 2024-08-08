/*08 Uniendo consultas*/

/*  UNION  vamos a unir tablas y consultas utilizando el comando UNION.
 Entonces, la estructura UNION permite unir dos o más tablas
 y ella implícitamente ejecuta DISTINCT.
Va seleccionando únicamente los campos o los registros los cuales no están siendo repetidos.
El número de campos en las tablas debe ser igual, 
tanto el número de campos como el tipo de los campos.
 Esta es una condición esencial para que funcione UNION*/
 
 /*Distinto es UNION ALL que si repite todo*/
 
USE jugos_ventas;
SELECT DISTINCT BARRIO FROM tabla_de_clientes;
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

/*hay 13 barrios de clientes y 4 de vendedores*/
/*Cuando uso UNION muestra 13*/

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

/*Cuando uso UNION ALL muestra 17 REPITE*/
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO, NOMBRE FROM tabla_de_vendedores;

/*Ambos Alias deben ser iguales o el segundo no se tendrá en cuenta
en este caso TIPO*/

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION 
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO FROM tabla_de_vendedores;

/*--Puedo agregar campor en ambas tablas siempre que sean del mismo tipo,
en este caso DNI Y MATRICULA son varchar-----*/

SELECT DISTINCT BARRIO, NOMBRE, DNI, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION 
SELECT DISTINCT BARRIO, NOMBRE, MATRICULA, 'Vendedor' AS TIPO FROM tabla_de_vendedores;

/*-----------------------*/

SELECT DISTINCT BARRIO, NOMBRE, DNI AS IDENTIFICACION, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION 
SELECT DISTINCT BARRIO, NOMBRE, MATRICULA AS IDENTIFICACION, 'Vendedor' AS TIPO FROM tabla_de_vendedores;

/*----------------------*/

/* anteriormente hablamos sobre FULL JOIN, que no se podía hacer en MySQL, 
de esa forma, sino que era una combinación de entre LEFT JOIN y RIGHT JOIN.
 Aquí lo vamos a hacer porque usa el comando UNION. 
 Copiamos código anterior del script 23, copiamos LEFT JOIN y luego copiamos el RIGHT JOIN.
 agregamos para que tengan exactamente la misma CANTIDAD Y TIPO de campos
 
 ES FULL FULL muestra TOOOODO y donde no hay que poner muestra NULL*/
 
SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT
tabla_de_clientes.NOMBRE AS CLIENTE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE AS VENDEDOR, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
