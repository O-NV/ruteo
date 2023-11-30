-- Insertar metadata para atracciones de la Zona Adrenalina 
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, popularidad) VALUES
('Black Hole', 'Adrenalina', 100, false, true, null, null, null),
('Xtreme Fall', 'Adrenalina', 130, false, false, null, null, null),
('Spider', 'Adrenalina', 140, false, false, null, null, null),
('Air Race', 'Adrenalina', 120, false, false, null, null, null),
('Volare', 'Adrenalina', 120, false, false, null, null, null),
('Tsunami', 'Adrenalina', 120, false, true, null, null, null),
('Boomerang', 'Adrenalina', 120, false, false, null, null, null),
('Rapid River', 'Adrenalina', 90, false, true, null, null, null),
('Barco Pirata', 'Adrenalina', 100, false, false, null, null, null),
('Fly Over', 'Adrenalina', 120, false, false, null, null, null),
('Raptor', 'Adrenalina', 140, false, false, null, null, null),
('Kamikaze', 'Adrenalina', 140, false, false, null, null, null),
('Crazy Dance', 'Adrenalina', 120, false, false, null, null, null),
('Moby Dick', 'Adrenalina', 120, false, false, null, null, null),
('Castillo Encantado', 'Adrenalina', 140, true, false, null, null, null),
('Disko', 'Adrenalina', 120, false, false, null, null, null),
('Top Spin', 'Adrenalina', 140, false, false, null, null, null),
('Monga', 'Adrenalina', 120, false, false, null, null, null),
('Tagadá', 'Adrenalina', 140, false, false, null, null, null),
('Tren Minero', 'Adrenalina', 90, false, false, null, null, null);

-- Insertar metadata para atracciones de la Zona Familiares
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, popularidad) VALUES
('Skooter', 'Familiares', 120, false, false, null, null, null),
('Twister', 'Familiares', 90, false, false, null, null, null),
('Tren CP', 'Familiares', null, false, false, null, null, null),
('The Pirate Revenge', 'Familiares', 100, false, true, null, null, null),
('Botes Chocadores', 'Familiares', 100, false, true, null, null, null),
('Wild Mouse', 'Familiares', 120, false, false, null, null, null);

-- Insertar metadata para atracciones de la Zona Kids
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, estatura_maxima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, popularidad) VALUES
('Samba Balloon', 'Zona Kids', 90, null, false, false, null, null, null),
('Mini Splash', 'Zona Kids', 90, null, false, true, null, null, null),
('Carrusel', 'Zona Kids', null, 140, false, false, null, null, null),
('Ford T', 'Zona Kids', 90, null, false, false, null, null, null),
('Súper Trucks', 'Zona Kids', 90, null, false, false, null, null, null),
('Rockin´Tug', 'Zona Kids', 100, null, false, false, null, null, null),
('El Faro', 'Zona Kids', 110, null, false, false, null, null, null),
('Happy Swing', 'Zona Kids', 90, null, false, false, null, null, null),
('Montaña Dragón', 'Zona Kids', 90, null, false, false, null, null, null),
('Buggy Jump', 'Zona Kids', null, null, false, false, null, null, null),
('Circus Train', 'Zona Kids', 90, null, false, false, null, null, null);

-- Insertar metadata para juegos de Destreza
INSERT INTO metadata_atracciones (nodo_nombre, zona, estatura_minima, es_juego_pago, es_juego_acuatico, tiempo_espera, juegos_horarios, popularidad) VALUES
('Down the Clown', 'Destreza', null, true, false, null, null, null),
('Hi Striker', 'Destreza', null, true, false, null, null, null),
('Derby', 'Destreza', null, true, false, null, null, null),
('Box Challenge', 'Destreza', null, true, false, null, null, null),
('Lucky Shot Challenge', 'Destreza', null, true, false, null, null, null),
('Rueda de la Fortuna', 'Destreza', null, true, false, null, null, null),
('Tiro al Payaso', 'Destreza', null, true, false, null, null, null),
('Ring and Bowling', 'Destreza', null, true, false, null, null, null),
('Golf Challenge', 'Destreza', null, true, false, null, null, null);


-- Actualizar metadata para Tren CP
UPDATE metadata_atracciones 
SET juegos_horarios = '{"inicio": ["12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30"]}'
WHERE nodo_nombre = 'Tren CP';

-- Actualizar metadata para La Monga
UPDATE metadata_atracciones 
SET juegos_horarios = '{"inicio": ["14:00", "16:00", "18:00"]}'
WHERE nodo_nombre = 'Monga';
