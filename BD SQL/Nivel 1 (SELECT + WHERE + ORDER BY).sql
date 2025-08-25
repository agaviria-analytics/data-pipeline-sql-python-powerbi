SELECT * 
FROM clientes;

--Muéstrame todos los clientes que viven en Medellín, ordenados alfabéticamente por su nombre.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI = 'medellin'
ORDER BY nombre;

--Muéstrame los clientes del canal Distribuidor ordenados por fecha del mas reciente al msa antiguo
SELECT *
FROM clientes
WHERE canal = 'Distribuidor'
ORDER BY ciudad DESC;

--Muestra los clientes que son de la ciudad “Bogotá” y además tienen el canal “Digital”,
--Ordénalos por el nombre en orden alfabético.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI ='Bogota' AND canal='Digital'
ORDER BY nombre DESC;

--Muestra todos los clientes que estén en la ciudad de Medellín o que tengan el canal Distribuidor
--Ordénalos por ciudad en orden alfabético.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI ='medellin' OR canal='Distribuidor'
ORDER BY ciudad DESC;
