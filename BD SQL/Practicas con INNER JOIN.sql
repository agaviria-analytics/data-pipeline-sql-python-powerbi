USE ventas_demo;

SELECT * FROM ventas
SELECT * FROM clientes
SELECT * FROM productos
SELECT
	v.id_venta,v.fecha,
	c.ciudad,
	v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE YEAR(v.fecha) = 2025

SELECT
	c.ciudad,
	SUM(v.cantidad * v.precio_unitario) AS ventas_totales
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE YEAR(v.fecha) = 2025
GROUP BY c.ciudad;

SELECT
	p.categoria,
	SUM(v.cantidad * v.precio_unitario)AS ventas_totales
FROM ventas v
INNER JOIN productos p  ON v.id_producto = p.id_producto
WHERE YEAR(v.fecha) = 2025
GROUP BY p.categoria;

SELECT
	c.ciudad,
	p.categoria,
	SUM(v.cantidad * v.precio_unitario)AS ventas_totales
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
WHERE YEAR(v.fecha)=2025
GROUP BY c.ciudad,p.categoria
ORDER BY c.ciudad,p.categoria;

SELECT
	c.canal,
	MONTH(v.fecha) AS num_mes,
	DATENAME(MONTH,v.fecha)AS mes,
	SUM(v.cantidad * v.precio_unitario)AS ventas_mensuales
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE YEAR(v.fecha) = 2025
GROUP BY c.canal,MONTH(v.fecha),DATENAME(MONTH,v.fecha)
ORDER BY mes

SELECT * FROM ventas
SELECT * FROM productos
SELECT * FROM clientes

SELECT
	c.nombre,
	p.nombre,
	SUM(v.cantidad * v.precio_unitario)AS ventas
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
WHERE YEAR(v.fecha)=2025
GROUP BY c.nombre,p.nombre;

SELECT
    v.id_venta,
    v.fecha,
    c.nombre AS cliente,
    p.nombre AS producto,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
WHERE YEAR(v.fecha) = 2025
ORDER BY v.fecha;
