import os
from dotenv import load_dotenv
from pathlib import Path

# Ruta absoluta al .env (siempre desde la carpeta del script actual)
dotenv_path = Path(__file__).parent / ".env"
load_dotenv(dotenv_path=dotenv_path)

print("Servidor:", os.getenv("SQL_SERVER"))
print("Base de datos:", os.getenv("SQL_DATABASE"))
print("Usuario:", os.getenv("SQL_USER"))
print("Contraseña:", os.getenv("SQL_PASSWORD"))

