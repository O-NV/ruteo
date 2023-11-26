-- Insertar metadata para atracciones de la Zona Adrenalina 
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, juegos_temporada, popularidad) VALUES
('Black Hole', 'Adrenalina', 100, false, true, null, null, false, null),
('Xtreme Fall', 'Adrenalina', 130, false, false, null, null, false, null),
('Spider', 'Adrenalina', 140, false, false, null, null, false, null),
('Air Race', 'Adrenalina', 120, false, false, null, null, false, null),
('Volare', 'Adrenalina', 120, false, false, null, null, false, null),
('Tsunami', 'Adrenalina', 120, false, true, null, null, false, null),
('Boomerang', 'Adrenalina', 120, false, false, null, null, false, null),
('Rapid River', 'Adrenalina', 90, false, true, null, null, false, null),
('Barco Pirata', 'Adrenalina', 100, false, false, null, null, false, null),
('Fly Over', 'Adrenalina', 120, false, false, null, null, false, null),
('Raptor', 'Adrenalina', 140, false, false, null, null, false, null),
('Kamikaze', 'Adrenalina', 140, false, false, null, null, false, null),
('Crazy Dance', 'Adrenalina', 120, false, false, null, null, false, null),
('Moby Dick', 'Adrenalina', 120, false, false, null, null, false, null),
('Castillo Encantado', 'Adrenalina', 140, true, false, null, null, false, null),
('Disko', 'Adrenalina', 120, false, false, null, null, false, null),
('Top Spin', 'Adrenalina', 140, false, false, null, null, false, null),
('Monga', 'Adrenalina', 120, false, false, null, null, false, null),
('Tagadá', 'Adrenalina', 140, false, false, null, null, false, null),
('Tren Minero', 'Adrenalina', 90, false, false, null, null, false, null);

-- Insertar metadata para atracciones de la Zona Familiares
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, juegos_temporada, popularidad) VALUES
('Skooter', 'Familiares', 120, false, false, null, null, false, null),
('Twister', 'Familiares', 90, false, false, null, null, false, null),
('Tren CP', 'Familiares', null, false, false, null, null, false, null),
('The Pirate Revenge', 'Familiares', 100, false, true, null, null, false, null),
('Botes Chocadores', 'Familiares', 100, false, true, null, null, false, null),
('Wild Mouse', 'Familiares', 120, false, false, null, null, false, null);

-- Insertar metadata para atracciones de la Zona Kids
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, estatura_maxima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, juegos_temporada, popularidad) VALUES
('Samba Balloon', 'Zona Kids', 90, null, false, false, null, null, false, null),
('Mini Splash', 'Zona Kids', 90, null, false, true, null, null, false, null),
('Carrusel', 'Zona Kids', null, 140, false, false, null, null, false, null),
('Ford T', 'Zona Kids', 90, null, false, false, null, null, false, null),
('Súper Trucks', 'Zona Kids', 90, null, false, false, null, null, false, null),
('Rockin´Tug', 'Zona Kids', 100, null, false, false, null, null, false, null),
('El Faro', 'Zona Kids', 110, null, false, false, null, null, false, null),
('Happy Swing', 'Zona Kids', 90, null, false, false, null, null, false, null),
('Montaña Dragón', 'Zona Kids', 90, null, false, false, null, null, false, null),
('Buggy Jump', 'Zona Kids', null, null, false, false, null, null, false, null),
('Circus Train', 'Zona Kids', 90, null, false, false, null, null, false, null);

-- Insertar metadata para juegos de Destreza
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, juegos_temporada, popularidad) VALUES
('Down the Clown', 'Destreza', null, true, false, null, null, false, null),
('Hi Striker', 'Destreza', null, true, false, null, null, false, null),
('Derby', 'Destreza', null, true, false, null, null, false, null),
('Box Challenge', 'Destreza', null, true, false, null, null, false, null),
('Lucky Shot Challenge', 'Destreza', null, true, false, null, null, false, null),
('Rueda de la Fortuna', 'Destreza', null, true, false, null, null, false, null),
('Tiro al Payaso', 'Destreza', null, true, false, null, null, false, null),
('Ring and Bowling', 'Destreza', null, true, false, null, null, false, null),
('Golf Challenge', 'Destreza', null, true, false, null, null, false, null);


-- Actualizar metadata para Tren CP
UPDATE metadata_atracciones 
SET juegos_horarios = '{"inicio": ["12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30"]}'
WHERE nodo_nombre = 'Tren CP';

-- Actualizar metadata para La Monga
UPDATE metadata_atracciones 
SET juegos_horarios = '{"inicio": ["14:00", "16:00", "18:00"]}'
WHERE nodo_nombre = 'Monga';
