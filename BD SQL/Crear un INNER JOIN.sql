--Crear un INNER JOIN Trae solo los registros que coinciden en ambas tablas
--Un JOIN sirve para unir datos de dos o más tablas que están relacionadas 
--por un campo en común (clave foránea ↔ clave primaria).
--Entonces, para que una venta “hable” de nombres de clientes y nombres de productos, necesitamos unirlas.
--Es decir, el JOIN convierte números en información entendible

--Paso a paso para hacer un JOIN
--1 Empezar por la tabla de hechos (ventas)
SELECT *
FROM ventas v;
-- Así ves todo lo que tienes en ventas.

SELECT v.id_venta,v.fecha,c.nombre AS cliente, c.ciudad,v.cantidad
FROM ventas v
INNER JOIN clientes c
	ON v.id_cliente = c.id_cliente;

SELECT v.id_venta,v.fecha,p.nombre AS producto,p.categoria,v.cantidad
FROM ventas v
INNER JOIN productos p
	ON v.id_producto = p.id_producto; 

SELECT
	v.id_venta,v.fecha,
	c.nombre AS cliente,c.ciudad,
	p.nombre AS producto,p.categoria,
	v.cantidad,v.precio_unitario,
	v.estado_entrega
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto;

SELECT * FROM clientes

SELECT nombre,ciudad FROM clientes

SELECT * FROM clientes
WHERE ciudad LIKE 'Barranquilla';

SELECT * FROM productos

SELECT * FROM productos
WHERE categoria IN('Muebles','Periféricos');