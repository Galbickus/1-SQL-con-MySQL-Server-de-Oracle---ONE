USE jugos;
SELECT * FROM tbproductos;
DELETE FROM tbproductos WHERE producto = 773912;

USE jugos;
ALTER TABLE tbproductos ADD primary key(producto);
SELECT * FROM tbproductos;

