USE jugos_ventas;
SELECT * FROM tabla_de_productos;
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO;
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO DESC;
SELECT * FROM tabla_de_productos ORDER BY ENVASE ASC, NOMBRE_DEL_PRODUCTO DESC;
SELECT * FROM tabla_de_productos ORDER BY ENVASE DESC, NOMBRE_DEL_PRODUCTO ASC;
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO ASC, PRECIO_DE_LISTA DESC;

¿Cuál fue la mayor venta del producto “Refrescante, 1 Litro, Frutilla/Limón”, en cantidad? (Obtenga este resultado utilizando 2 comandos SQL).
SELECT * FROM facturas;
SELECT * FROM items_facturas ORDER BY CANTIDAD DESC LIMIT 1;

SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos 
WHERE NOMBRE_DEL_PRODUCTO = "Refrescante" AND TAMANO = "1 Litro" 
AND SABOR = "Frutilla/Limón"; 

SELECT * FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" ORDER BY CANTIDAD DESC;