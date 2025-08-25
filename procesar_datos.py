import pandas as pd
from conexion_sql import obtener_conexion
from pathlib import Path

#1. Obtener conexión con SQL Server
conn = obtener_conexion()

#2. Escribir la consulta SQL(sencillo)
query_ventas ="SELECT * FROM ventas"
query_clientes = "SELECT * FROM clientes"
query_productos = "SELECT * FROM productos"

#3. Cargar en un DataFrame - Leer tabla en DataFrame
df_ventas=pd.read_sql(query_ventas,conn)
df_clientes=pd.read_sql(query_clientes,conn)
df_productos=pd.read_sql(query_productos,conn)

#5. Transformaciones básicas de limpieza
#Converti fecha a datetime
df_ventas["fecha"]=pd.to_datetime(df_ventas["fecha"])

#Crear columna total_ventas
df_ventas["Total_ventas"]=df_ventas["cantidad"]*df_ventas["precio_unitario"]

#Normalizar estado_entrega(quitar espacios, capitalizar)
df_ventas["estado_entrega"]=df_ventas["estado_entrega"].str.strip().str.title()

#6. Exportación a Excel
# ruta=Path("archivos_limpios")/"ventas_limpias.xlsx"
# df_ventas.to_excel(ruta,index=False)
# print("\nVentas limpias guardado en carpeta archivos_limpios")

#4. Verificar datos ventas
# # print("\n----Cinco primeras filas ventas----")
print(df_ventas.head())

# print("\n----Info general ventas----")
# print(df_ventas.info())

# print("\n----Valores nulos ventas----")
# print(df_ventas.isna().sum())

# print("\n----Duplicados ventas----")
# print(df_ventas.duplicated().sum())

# print("\n----Estadisticas numérias ventas----")
# print(df_ventas.describe())

# print("\n----Columnas del DF ventas----")
# print(df_ventas.columns)

# print("\n----Info general clientes----")
# print(df_clientes.info())

# print("\n----Valores nulos clientes----")
# print(df_clientes.isna().sum())

# print("\n----Duplicados clientes----")
# print(df_clientes.duplicated().sum())

# print("\n----Estadísticas clientes----")
# print(df_clientes.describe(include="all"))

# print("\n----Primeras filas clientes----")
# print(df_clientes.head())

# print("\nDatos clientes")
# print(df_clientes.head())

df_clientes["nombre"] = df_clientes["nombre"].str.strip().str.title()
df_clientes["ciudad"] = df_clientes["ciudad"].str.strip().str.title()
df_clientes["canal"]  = df_clientes["canal"].str.strip().str.title()

# print(df_clientes.info())
# print(df_clientes.isna().sum())
# print(df_clientes.duplicated().sum())

# ruta=Path("archivos_limpios")/"clientes_limpios.xlsx"
# df_clientes.to_excel(ruta,index=False)
# print("\nClientes limpios guardado en carpeta archivos_limpios")

# print("\n---- Info general productos ----")
# print(df_productos.info())

# print("\n---- Valores nulos productos ----")
# print(df_productos.isna().sum())

# print("\n---- Duplicados productos ----")
# print(df_productos.duplicated().sum())

# print("\n---- Estadísticas productos ----")
# print(df_productos.describe(include="all"))

# print("\nDatos Productos")
# print(df_productos.head())

# Convertir fecha_registro a datetime
df_productos["fecha_registro"] = pd.to_datetime(df_productos["fecha_registro"])

# Normalizar textos en nombre y categoría
df_productos["nombre"] = df_productos["nombre"].str.strip().str.title()
df_productos["categoria"] = df_productos["categoria"].str.strip().str.title()

# print("\n---- Productos después de limpieza ----")
# print(df_productos.head())
# print(df_productos.info())

# ruta=Path("archivos_limpios")/"productos_limpios.xlsx"
# df_productos.to_excel(ruta,index=False)
# print("\nProductos limpios guardado en carpeta archivos_limpios")