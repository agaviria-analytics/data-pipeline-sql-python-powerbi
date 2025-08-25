--Nivel 1: SELECT y filtros b�sicos
--1. Ver todos los registros de una tabla
SELECT * FROM clientes;
SELECT * FROM productos;

--2. Seleccionar columnas espec�ficas
SELECT nombre,ciudad,canal
FROM clientes

--3. Renombrar columnas con alias
SELECT nombre AS cliente,ciudad AS ubicacion
FROM clientes;

--4. Filtrar con WHERE
SELECT *
FROM productos
WHERE categoria = 'Accesorios';

--5. Operadores de comparaci�n
SELECT *
FROM productos
WHERE precio_unitario > 500000;

--6. Filtrar por m�ltiples condiciones
SELECT *
FROM clientes
WHERE ciudad = 'Medell�n' AND canal = 'Directo';

--7. Buscar valores de texto (LIKE)
SELECT *
FROM clientes
WHERE nombre LIKE '%XYZ%';

--Nivel 2: Ordenar y limitar
--1. Ordenar resultados
SELECT *
FROM productos
ORDER BY precio_unitario DESC;

--2. Sacar los primeros N registros
SELECT TOP 5 *
FROM ventas
ORDER BY fecha DESC;

SELECT * FROM ventas;

--3. Ventas con mayor valor (cantidad � precio):
SELECT TOP 5 
    v.*, 
    v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
ORDER BY total_venta DESC;

--Nivel 3: Funciones de agregaci�n
--1.Contar registros
SELECT COUNT(*) AS total_clientes
FROM clientes;

--2. Promedio
SELECT AVG(precio_unitario)AS precio_promedio
FROM productos;

--3. Valor m�ximo y m�nimo
SELECT MAX(precio_unitario) AS precio_maximo,
	   MIN(precio_unitario) AS precio_minimo
FROM productos;

--Nivel 4: GROUP BY (res�menes)
--1. Ventas por estado de entrega
SELECT estado_entrega, COUNT(*)AS total_pedidos
FROM ventas
GROUP BY estado_entrega;

--2. Productos por categor�a
SELECT categoria, COUNT(*) AS total_productos
FROM productos
GROUP BY categoria;

--Nivel 5: JOIN
--1. Ventas con nombre de cliente
SELECT v.id_venta,v.fecha,c.nombre
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente;

--2. Ventas con cliente y producto
SELECT v.id_venta,v.fecha,c.nombre AS cliente,p.nombre AS producto
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto

