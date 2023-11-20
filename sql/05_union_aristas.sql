
BEGIN;

-- Conectar cada par de aristas en su punto más cercano
-- Calle 1
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 1 AND a2.id IN (2, 3, 4, 9, 10, 11, 12)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 2
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 2 AND a2.id IN (1, 3, 5, 6)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 3
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 3 AND a2.id IN (1, 2)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 4
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 4 AND a2.id IN (1, 9)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 5
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 5 AND a2.id IN (2, 6, 7, 8, 9, 11)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 6
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 6 AND a2.id IN (2, 5, 14)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;


-- Calle 7
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 7 AND a2.id IN (5, 14)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 8
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 8 AND a2.id IN (5, 11, 14)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 9
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 9 AND a2.id IN (1, 12, 4, 5)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 10
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 10 AND a2.id IN (1, 11)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 11
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 11 AND a2.id IN (1, 10, 5, 8)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 12
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 12 AND a2.id IN (1, 9, 15)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 13
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 13 AND a2.id IN (14)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 14
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 14 AND a2.id IN (6, 7, 8, 13)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

-- Calle 15
WITH ClosestPoints AS (
    SELECT
        ST_ClosestPoint(a1.wkb_geometry, a2.wkb_geometry) AS pt1,
        ST_ClosestPoint(a2.wkb_geometry, a1.wkb_geometry) AS pt2
    FROM
        aristasbuenas a1, aristasbuenas a2
    WHERE
        a1.id = 15 AND a2.id IN (12)
)
INSERT INTO aristasbuenas (wkb_geometry)
SELECT 
    ST_Multi(ST_MakeLine(pt1, pt2))
FROM 
    ClosestPoints;

COMMIT;
