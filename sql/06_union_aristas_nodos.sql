
BEGIN;
-- Crear una nueva arista para cada nodo, conectándolo con la arista más cercana
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_ShortestLine(n.geom, a.wkb_geometry)) AS new_geom
FROM 
    nodos n,
    LATERAL (
        SELECT a.wkb_geometry
        FROM aristasbuenas a
        ORDER BY ST_Distance(a.wkb_geometry, n.geom)
        LIMIT 1
    ) AS a;
COMMIT;
