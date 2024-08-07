USE jugos_ventas;
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%MANZANA';
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%MANZANA' AND ENVASE = 'Botella PET';
SELECT * FROM tabla_de_clientes;
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%ez%';