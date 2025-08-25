#conexión_sql.py
from dotenv import load_dotenv
import os
import pyodbc

#Cargar las variables de entorno desde el archivo .env
load_dotenv()

#Leer variables desde el sistema
server=os.getenv("SQL_SERVER")
database=os.getenv("SQL_DATABASE")
username=os.getenv("SQL_USER")
password=os.getenv("SQL_PASSWORD")

#Función que devuelve una conexión activa
def obtener_conexion():
    conexion=pyodbc.connect(
        f"DRIVER={{ODBC Driver 17 for SQL server}};"
        f"SERVER={server};DATABASE={database};UID={username};PWD={password}"
    )
    return conexion
