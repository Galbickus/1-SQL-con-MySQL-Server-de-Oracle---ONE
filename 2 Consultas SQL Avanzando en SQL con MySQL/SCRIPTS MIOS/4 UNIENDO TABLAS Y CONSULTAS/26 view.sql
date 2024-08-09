/*. Una View es una tabla lógica que es el resultado de una consulta
 que posteriormente puede ser usada al igual que una tabla.
tiene mucha utilidad cuando por ejemplo alguien quiere conocer nuestra base de datos
 y de no le queremos dar acceso a toda nuestra base de datos
 sino solamente a una parte de la base de datos, entonces se le genera una View
 a la persona o a la compañía, y ellos a través de esta View pueden analizar
 la estructura que estamos manejando.*/
 
 /*Pero ATENCION que las view pueden tener un ALTO COSTO DE PROCESAMIENTO*/
 
 SELECT ENVASE, MAX(PRECIO_DE_LISTA)
 AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;
 

/*Crear una vista y usarla*/
SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA,
B.PRECIO_MAXIMO FROM tabla_de_productos A 
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;

/*crear un indicador*/

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
((A.PRECIO_DE_LISTA/B.PRECIO_MAXIMO)-1)*100 AS PORCENTAJE_DE_VARIACION FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;
