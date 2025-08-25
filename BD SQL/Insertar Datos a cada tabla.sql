--Insertar datos en clientes
INSERT INTO clientes (nombre, ciudad, canal) VALUES
('Alfa S.A.', 'Medellín', 'Directo'),
('Beta Ltda.', 'Cali', 'Distribuidor'),
('Logística XYZ', 'Bogotá', 'Digital'),
('Mercado Uno', 'Medellín', 'Directo'),
('Comercial ABC', 'Barranquilla', 'Distribuidor'),
('Insumos SAS', 'Cali', 'Digital'),
('Superventas', 'Bogotá', 'Directo'),
('Tecnología Express', 'Cartagena', 'Distribuidor'),
('Global Market', 'Medellín', 'Digital'),
('Servicios Delta', 'Cali', 'Directo'),
('Almacén Central', 'Bogotá', 'Distribuidor'),
('Proveedor Uno', 'Medellín', 'Directo'),
('Distribuidora Rápida', 'Cali', 'Distribuidor'),
('Canal Online', 'Bogotá', 'Digital'),
('Mayorista 24H', 'Medellín', 'Directo');

--Insertar datos en productos
INSERT INTO productos (nombre, categoria, fecha_registro, precio_unitario) VALUES
('Mouse Óptico', 'Periféricos', '2024-01-15', 35000),
('Teclado', 'Periféricos', '2024-01-20', 60000),
('Portátil 14"', 'Computadores', '2024-02-10', 2800000),
('Monitor 24"', 'Monitores', '2024-03-05', 720000),
('Impresora Multifuncional', 'Impresoras', '2024-03-20', 580000),
('Disco Duro 1TB', 'Almacenamiento', '2024-04-01', 250000),
('Memoria USB 32GB', 'Almacenamiento', '2024-04-15', 45000),
('Silla Ergonómica', 'Muebles', '2024-05-10', 650000),
('Escritorio Oficina', 'Muebles', '2024-05-25', 820000),
('Tablet 10"', 'Tablets', '2024-06-05', 1200000),
('Smartphone 6"', 'Celulares', '2024-06-20', 1800000),
('Audífonos Bluetooth', 'Accesorios', '2024-07-01', 150000),
('Cámara Web HD', 'Accesorios', '2024-07-15', 180000),
('Proyector LED', 'Accesorios', '2024-08-01', 950000),
('Servidor Torre', 'Servidores', '2024-08-20', 6500000);

--Insertar datos en ventas
INSERT INTO ventas (fecha, id_cliente, id_producto, cantidad, precio_unitario, estado_entrega) VALUES
('2024-11-05', 1, 1, 3, 35000, 'A tiempo'),
('2024-11-07', 2, 2, 2, 60000, 'Retrasada'),
('2024-12-15', 3, 3, 1, 2800000, 'A tiempo'),
('2025-01-03', 1, 4, 1, 720000, 'A tiempo'),
('2025-01-10', 4, 1, 5, 36000, 'A tiempo'),
('2025-02-02', 5, 5, 1, 580000, 'Retrasada'),
('2025-02-18', 6, 6, 2, 250000, 'A tiempo'),
('2025-03-05', 7, 7, 10, 44000, 'A tiempo'),
('2025-03-20', 8, 8, 1, 650000, 'A tiempo'),
('2025-04-02', 9, 9, 2, 820000, 'Retrasada'),
('2025-04-15', 10, 10, 1, 1200000, 'A tiempo'),
('2025-05-09', 11, 11, 1, 1800000, 'A tiempo'),
('2024-10-12', 12, 12, 4, 150000, 'A tiempo'),
('2024-09-22', 13, 13, 2, 180000, 'Retrasada'),
('2025-06-01', 14, 14, 1, 950000, 'A tiempo');


