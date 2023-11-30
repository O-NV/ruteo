INSERT INTO eventos (nombre, descripcion, fecha_inicio, fecha_fin)
VALUES ('Power Peralta', 'Baile entretenido', '2023-10-27 00:00:00', '2023-10-31 23:59:59')
RETURNING id;

INSERT INTO eventos_nodos (evento_id, nodo_id)
VALUES 
    (1, 45), (1, 38), (1, 43), (1, 69), (1, 41), 
    (1, 42), (1, 46), (1, 11), (1, 67), (1, 44), 
    (1, 40), (1, 54);
