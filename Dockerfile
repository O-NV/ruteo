FROM postgis/postgis:latest

# Instalar dependencias y pgRouting
RUN apt-get update && apt-get install -y \
    postgresql-16-pgrouting


# Limpiar archivos innecesarios
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*
