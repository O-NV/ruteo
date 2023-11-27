import psycopg2
import json

conexion_params = {
    "dbname": "ruteo",
    "user": "postgres",
    "password": "123",
    "host": "db"
}

def actualizar_tiempos_espera():
    try:
        conn = psycopg2.connect(**conexion_params)
        cursor = conn.cursor()

        with open("/data/tiempos_espera_atraccion.json", "r") as file:
            tiempos_espera_data = json.load(file)

        for atraccion, tiempos in tiempos_espera_data["tiempos_espera"].items():
            tiempos_json = json.dumps(tiempos)
            sql = "UPDATE metadata_atracciones SET tiempo_espera = %s WHERE nodo_nombre = %s"
            cursor.execute(sql, (tiempos_json, atraccion))
        conn.commit()

    except Exception as e:
        print(f"Ocurrió un error: {e}")
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()

actualizar_tiempos_espera()
