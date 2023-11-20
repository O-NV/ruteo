CREATE TABLE zonas_poligonos (
    id SERIAL PRIMARY KEY,
    nombre_zona VARCHAR(255),
    geom GEOMETRY(Polygon, 4326)
);

INSERT INTO zonas_poligonos (nombre_zona, geom)
SELECT 
    m.zona, 
    ST_ConvexHull(ST_Collect(n.geom)) AS geom
FROM 
    nodos n
JOIN 
    metadata_atracciones m ON n.nombre = m.nodo_nombre
GROUP BY 
    m.zona;
    