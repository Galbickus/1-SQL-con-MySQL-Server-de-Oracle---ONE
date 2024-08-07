SELECT * FROM tbproductos;

DELETE FROM tbproductos WHERE producto = '695594' LIMIT 1;
UPDATE tbproductos SET precio = 28.51 WHERE producto = '695594' LIMIT 1;
UPDATE tbproductos SET sabor = 'Lima/Limón' WHERE producto = '1041119' LIMIT 1;

SELECT * FROM tbproductos;