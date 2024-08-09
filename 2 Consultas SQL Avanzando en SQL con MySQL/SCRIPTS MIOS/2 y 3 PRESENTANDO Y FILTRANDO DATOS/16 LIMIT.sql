USE jugos_ventas;
SELECT * FROM tabla_de_productos;
SELECT * FROM tabla_de_productos LIMIT 5;
SELECT * FROM tabla_de_productos LIMIT 2,3;

SELECT * FROM facturas;
SELECT * FROM facturas WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;
