/* LEFT JOIN, RIGHT JOIN, IS, DISTINTIC*/

USE jugos_ventas;
SELECT * FROM tabla_de_clientes;
SELECT COUNT(*) FROM tabla_de_clientes;

SELECT A.DNI, A.NOMBRE, B.DNI 
FROM tabla_de_clientes A 
INNER JOIN
facturas B
ON A.DNI = B.DNI;

/*para ver los clientes y si tienen facturas o no*/
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI 
FROM tabla_de_clientes A 
LEFT JOIN
facturas B
ON A.DNI = B.DNI;

/*para ver los clientes, si facturaron y la ciudad*/
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI 
FROM tabla_de_clientes A 
LEFT JOIN
facturas B
ON A.DNI = B.DNI;

/*para ver solo los clientes que nunca compraron*/
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI 
FROM tabla_de_clientes A 
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

/*right join, si la tabla derecha es facturas y la de la izquierda es cliente me daría lo mismo*/
SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI 
FROM facturas A 
RIGHT JOIN
tabla_de_clientes B
ON B.DNI = A.DNI
WHERE A.DNI IS NULL;





