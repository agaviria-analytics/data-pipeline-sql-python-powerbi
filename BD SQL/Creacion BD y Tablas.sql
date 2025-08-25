-- Crear base de datos
CREATE DATABASE ventas_demo;
USE ventas_demo;

-- Crear tabla clientes
CREATE TABLE clientes(
	id_cliente INT IDENTITY(1,1)PRIMARY KEY,
	nombre NVARCHAR(50),
	ciudad NVARCHAR(50),
	canal  NVARCHAR(30),
);

-- Crear tabla productos
CREATE TABLE productos(
	id_producto INT IDENTITY(1,1)PRIMARY KEY,
	nombre NVARCHAR(80),
	categoria NVARCHAR(50),
	fecha_registro DATE,
	precio_unitario DECIMAL(12,2),
);

--Crear tabla ventas
CREATE TABLE ventas(
	id_venta INT IDENTITY(1,1)PRIMARY KEY,
	fecha DATE NOT NULL,
	id_cliente INT NOT NULL,
	id_producto INT NOT NULL,
	cantidad INT NOT NULL,
	precio_unitario DECIMAL(12,2) NOT NULL,
	estado_entrega NVARCHAR(20),
	CONSTRAINT FK_venta_cliente FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente),
	CONSTRAINT FK_venta_producto FOREIGN KEY(id_producto) REFERENCES productos(id_producto),
);
