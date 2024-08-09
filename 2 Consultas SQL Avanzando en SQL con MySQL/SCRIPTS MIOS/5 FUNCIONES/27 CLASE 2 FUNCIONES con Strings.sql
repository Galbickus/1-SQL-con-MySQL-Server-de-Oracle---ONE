/*02
Funciones con STRINGS*/

/*principal página de documentos para MySQL es:
 dev.mysql.com/doc */

SELECT LTRIM("    MySQL es fácil");

SELECT RTRIM("MySQL es fácil    ");

SELECT TRIM("    MySQL es fácil    ");

SELECT CONCAT("MySQL es fácil,", " no lo crees?");

SELECT UPPER("mysql es una base de datos interesante.");

SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE.");

SELECT SUBSTRING("mysql es una base de datos interesante.", 14,4);

SELECT CONCAT(NOMBRE, " ", DNI) FROM tabla_de_clientes;

/*EJERCICIO 
Haz una consulta listando el nombre del cliente
 y la dirección completa (Con calle, barrio, ciudad y estado).*/
 

SELECT NOMBRE AS Cliente, CONCAT(DIRECCION_1, ', ', BARRIO, ', ', CIUDAD, ', ', ESTADO) AS Dirección FROM tabla_de_clientes;
 
