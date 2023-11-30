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
    tiempo_espera VARCHAR(3000),
    juegos_horarios VARCHAR(255), -- JSON con horarios de juegos
    popularidad INT,
    CONSTRAINT fk_nodo_nombre FOREIGN KEY (nodo_nombre) REFERENCES nodos(nombre)
);

-- Crear tabla para el clima
CREATE TABLE IF NOT EXISTS clima (
    id SERIAL PRIMARY KEY,
    fecha_observacion TIMESTAMP NOT NULL,
    hay_precipitacion BOOLEAN,
    es_de_dia BOOLEAN,
    temperatura_celsius FLOAT
);

-- Crear tabla para eventos
CREATE TABLE IF NOT EXISTS eventos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_inicio TIMESTAMP NOT NULL,
    fecha_fin TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS eventos_nodos (
    evento_id INT,
    nodo_id INT,
    PRIMARY KEY (evento_id, nodo_id),
    FOREIGN KEY (evento_id) REFERENCES eventos(id) ON DELETE CASCADE,
    FOREIGN KEY (nodo_id) REFERENCES nodos(id) ON DELETE CASCADE
);

ALTER TABLE clima ADD UNIQUE (fecha_observacion);
-- Agregar la extensión PostGIS para geolocalización
CREATE EXTENSION IF NOT EXISTS postgis;

-- Agregar la extensión pgRouting para ruteo
CREATE EXTENSION IF NOT EXISTS pgrouting;
