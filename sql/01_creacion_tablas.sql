-- Crear tabla para los nodos
CREATE TABLE IF NOT EXISTS nodos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE,
    tipo VARCHAR(50) NOT NULL, -- 'atraccion', 'servicio', 'restaurante', etc.
    latitud DOUBLE PRECISION NOT NULL,
    longitud DOUBLE PRECISION NOT NULL
);

-- Crear tabla para la metadata de atracciones con una llave foránea que referencia al nombre del nodo
CREATE TABLE IF NOT EXISTS metadata_atracciones (
    nodo_nombre VARCHAR(255) NOT NULL,
    zona VARCHAR(50), -- 'Adrenalina', 'Familiares', 'Zona Kids', 'Destreza'
    estatura_minima INT, -- en cm
    estatura_maxima INT, -- en cm
    es_juego_pago BOOLEAN,
    es_juego_acuatico BOOLEAN,
    tiempo_espera INT, -- en segundos
    juegos_horarios VARCHAR(255), -- JSON con horarios de juegos
    juegos_temporada BOOLEAN,
    popularidad INT,
    CONSTRAINT fk_nodo_nombre FOREIGN KEY (nodo_nombre) REFERENCES nodos(nombre)
);

-- Agregar la extensión PostGIS para geolocalización
CREATE EXTENSION IF NOT EXISTS postgis;

-- Agregar la extensión pgRouting para ruteo
CREATE EXTENSION IF NOT EXISTS pgrouting;
