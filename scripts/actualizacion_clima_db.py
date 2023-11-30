import psycopg2
import json
from datetime import datetime

conexion_params = {
    "dbname": "ruteo",
    "user": "postgres",
    "password": "123",
    "host": "db"
}

def actualizar_clima():
    try:
        conn = psycopg2.connect(**conexion_params)
        cursor = conn.cursor()

        # Cargar los datos del clima desde el archivo JSON
        with open("./data/clima_actual.json", "r") as file:
            clima_data = json.load(file)

        # Preparar los datos para insertarlos en la base de datos
        fecha_observacion = datetime.strptime(clima_data["LocalObservationDateTime"], "%Y-%m-%dT%H:%M:%S%z")
        hay_precipitacion = clima_data["HasPrecipitation"]
        es_de_dia = clima_data["IsDayTime"]
        temperatura_celsius = clima_data["Temperature"]["Metric"]["Value"]

        # SQL para insertar o actualizar la información del clima
        sql = """
        INSERT INTO clima (fecha_observacion, hay_precipitacion, es_de_dia, temperatura_celsius)
        VALUES (%s, %s, %s, %s)
        ON CONFLICT (fecha_observacion)
        DO UPDATE SET
            hay_precipitacion = EXCLUDED.hay_precipitacion,
            es_de_dia = EXCLUDED.es_de_dia,
            temperatura_celsius = EXCLUDED.temperatura_celsius;
        """

        # Ejecutar la consulta SQL
        cursor.execute(sql, (fecha_observacion, hay_precipitacion, es_de_dia, temperatura_celsius))
        conn.commit()

    except Exception as e:
        print(f"Ocurrió un error: {e}")
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

actualizar_clima()
