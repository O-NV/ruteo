#!/bin/bash

echo "Ejecutando scripts de Python para tiempos de espera..."

# Ejecutar tus scripts de Python
python3 /scripts/tiempos_espera.py
python3 /scripts/script.py
python3 /scripts/actualizacion_tiempos_db.py

echo "Scripts de tiempos de espera ejecutados."
