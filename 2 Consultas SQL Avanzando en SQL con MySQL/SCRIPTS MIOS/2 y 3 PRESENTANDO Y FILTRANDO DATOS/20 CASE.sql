USE jugos_ventas;
SELECT * FROM tabla_de_productos;
SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Normal'
    ELSE 'Barato'
END AS CONSIDERACION_PRECIO
FROM tabla_de_productos;
/*------------------ ESTE LO DA EL PROFE Y NO ME FUNCIONA---------*/
SELECT ENVASE, SABOR,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Normal'
    ELSE 'Barato'
END AS CONSIDERACION_PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Normal'
    ELSE 'Barato'
END
ORDER BY ENVASE;
/*--------------------------------------------------------
---------ESTE SI FUNCIONA CON MI CONFIGURACION-----------*/

SELECT 
    ENVASE, 
    MIN(SABOR) AS SABOR, 
    CASE 
        WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
        WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Normal'
        ELSE 'Barato' 
    END AS CONSIDERACION_PRECIO, 
    MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM 
    tabla_de_productos 
WHERE 
    TAMANO = '700 ml' 
GROUP BY 
    ENVASE, 
    CASE 
        WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
        WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Normal'
        ELSE 'Barato' 
    END 
ORDER BY 
    ENVASE 
LIMIT 
    0, 1000;

/*---------------------ejercicio-------------
Registre el año de nacimiento de los clientes y clasifíquelos de la siguiente manera:
Nacidos antes de 1990= Viejos, nacidos entre 1990 y 1995= Jóvenes y nacidos después de 1995= Niños. Liste el nombre del cliente y esta clasificación.*/

SELECT * FROM tabla_de_clientes;

SELECT NOMBRE, 
CASE
	WHEN YEAR(FECHA_DE_NACIMIENTO) < 1990 THEN 'Adulte'
	WHEN YEAR(FECHA_DE_NACIMIENTO) >= 1990 AND YEAR(FECHA_DE_NACIMIENTO) <= 1995 THEN 'Jóven'
    ELSE 'Niñe'
END AS CLASIFICACION_ESPANTOSA
FROM tabla_de_clientes;

/*------------------------------------------*/

SELECT NOMBRE,
CASE 
    WHEN YEAR(fecha_de_nacimiento) < 1990 THEN 'Viejos'
    WHEN YEAR(fecha_de_nacimiento) >= 1990 
    AND YEAR(fecha_de_nacimiento) <= 1995 THEN 'Jóvenes' 
    ELSE 'Niños' 
END AS CLASIFICACION_EDAD
FROM tabla_de_clientes;