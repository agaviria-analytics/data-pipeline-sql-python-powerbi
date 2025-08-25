SELECT * 
FROM clientes;

--Mu�strame todos los clientes que viven en Medell�n, ordenados alfab�ticamente por su nombre.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI = 'medellin'
ORDER BY nombre;

--Mu�strame los clientes del canal Distribuidor ordenados por fecha del mas reciente al msa antiguo
SELECT *
FROM clientes
WHERE canal = 'Distribuidor'
ORDER BY ciudad DESC;

--Muestra los clientes que son de la ciudad �Bogot� y adem�s tienen el canal �Digital�,
--Ord�nalos por el nombre en orden alfab�tico.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI ='Bogota' AND canal='Digital'
ORDER BY nombre DESC;

--Muestra todos los clientes que est�n en la ciudad de Medell�n o que tengan el canal Distribuidor
--Ord�nalos por ciudad en orden alfab�tico.
SELECT *
FROM clientes
WHERE ciudad COLLATE Latin1_General_CI_AI ='medellin' OR canal='Distribuidor'
ORDER BY ciudad DESC;
