SET standard_conforming_strings = OFF;
DROP TABLE IF EXISTS "public"."aristasbuenas" CASCADE;
DELETE FROM geometry_columns WHERE f_table_name = 'aristasbuenas' AND f_table_schema = 'public';
BEGIN;
CREATE TABLE "public"."aristasbuenas" ( "ogc_fid" SERIAL, CONSTRAINT "aristasbuenas_pk" PRIMARY KEY ("ogc_fid") );
SELECT AddGeometryColumn('public','aristasbuenas','wkb_geometry',4326,'MULTILINESTRING',2);
CREATE INDEX "aristasbuenas_wkb_geometry_geom_idx" ON "public"."aristasbuenas" USING GIST ("wkb_geometry");
ALTER TABLE "public"."aristasbuenas" ADD COLUMN "id" NUMERIC(10,0);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E61000000100000001020000001A0000004BE8D2DC72AA51C076D5C40719BB40C05B72620B73AA51C0A842F18B1CBB40C001648A0372AA51C0A484E25D22BB40C0672D744170AA51C08470C30022BB40C05DD1692270AA51C0087F4EA31DBB40C0F86687FB6EAA51C0A045EE8319BB40C0AEE23E226EAA51C04109916C18BB40C094FCA4D46DAA51C0169967F017BB40C0D324E38E6EAA51C018F86E0715BB40C0EE0A7DDC6EAA51C0D0D22D4511BB40C0C9C8D86F6EAA51C054E1B8E70CBB40C09E58AFF36DAA51C0DFEC46920BBB40C0FE940C0B6FAA51C08D6BFBB007BB40C023D7B0776FAA51C0C496366305BB40C03DBD4AC56FAA51C09C8514FE01BB40C0F33802EC6EAA51C0F4237624FDBA40C0D324E38E6EAA51C0CC1254BFF9BA40C03AEECCCC6CAA51C04F21DF61F5BA40C0143CB27E66AA51C0AFDC56CDE7BA40C0B230D76E62AA51C076D12E58DEBA40C03D3C651961AA51C019F4D857DABA40C0B9BD63955FAA51C007FAD247D4BA40C00BCF38955DAA51C0CA309CA4D0BA40C04C567E665BAA51C0B7D78E7DCDBA40C0D8610C115AAA51C08FC66C18CABA40C0A9C35D8559AA51C0E505C727C8BA40C0', 1);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000009000000D324E38E6EAA51C08AADEC820DBB40C01A4A245172AA51C0A2C408D80ABB40C045BA4DCD72AA51C003606D0609BB40C045BA4DCD72AA51C0F4C46E0D00BB40C0F50780E471AA51C06D77EF90FBBA40C0BB0DC73971AA51C0AEFE3462F9BA40C0408CC8BD72AA51C08AAB212BF0BA40C065CE6C2A73AA51C06F5511FCE9BA40C0C569D15871AA51C0336AFCC3D4BA40C0', 2);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000002000000B976043271AA51C0BAF10189F9BA40C0F33802EC6EAA51C0E06B61E6FCBA40C0', 3);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000005000000265D04B566AA51C094F6BC7FE7BA40C08E9664D46AAA51C02E1C6477E0BA40C0F82ECC0A6CAA51C03BD775ADDDBA40C0C9901D7F6BAA51C032DA72A5DABA40C04D0F1F036DAA51C06DC3BC85D2BA40C0', 4);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000004000000B01AFA1271AA51C0369881D3D4BA40C0CC5F9B776EAA51C0B0A9096ECDBA40C0576B29226DAA51C0C91F2DDAC7BA40C09E20F4026BAA51C0B6C61FB3C4BA40C0', 5);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000004000000BFA4894171AA51C021E06C95D4BA40C0240F6C6872AA51C0F0D14728CEBA40C02F6B768772AA51C0F48F5656C8BA40C004FB4C0B72AA51C0F5EE5D6DC5BA40C0', 6);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000002000000F1A13FE46EAA51C0D0BD28CBCDBA40C060682C2A70AA51C035179C27C6BA40C0', 7);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000002000000B3D808416BAA51C0B6C61FB3C4BA40C0C10391586EAA51C03776A33EC3BA40C0', 8);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E6100000010000000102000000020000003AA5A21161AA51C0DDF91FADD9BA40C036F802AE6FAA51C0EE724011D1BA40C0', 9);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000002000000E72357305DAA51C06F22C49CCFBA40C036E793E366AA51C0CDDD3B08C2BA40C0', 10);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E6100000010000000102000000040000004B25293E77AA51C03337AF64BABA40C08A15AC0775AA51C066A4DBE8BDBA40C00300E87B73AA51C0C5E03800BFBA40C086462E0F72AA51C05F174FC2C0BA40C0', 13);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E610000001000000010200000019000000E915C68A71AA51C07531E0EDBFBA40C08A75C6EB71AA51C08F177A3BC0BA40C019B4741672AA51C0AAFD1389C0BA40C0EF117A5672AA51C073367B5EC1BA40C080E7EA8872AA51C0C57F0B4FC2BA40C07D50288172AA51C03EA202B4C3BA40C05577C10C72AA51C02FB4D0FDC4BA40C03D5ABB0A71AA51C081FD60EEC5BA40C03330822F70AA51C08EF02D15C6BA40C0B4AD34776FAA51C064800499C5BA40C0D921AA276FAA51C0C3200438C5BA40C0FBFE5CD06EAA51C0799CBB5EC4BA40C0A983FB9B6EAA51C0B0635489C3BA40C0DBEA3D736EAA51C046CBEC52C2BA40C0AC1ABEA36EAA51C060152928C1BA40C052A843146FAA51C013FA1D47C0BA40C0131C63D26FAA51C05286FE88BFBA40C0A91F591470AA51C0C6DE1266BFBA40C0EB77427870AA51C0BE19CB4EBFBA40C0C46C0AC070AA51C042FC6E5ABFBA40C0F9D126FD70AA51C04AC1B671BFBA40C038934D5971AA51C057B48398BFBA40C02870D58871AA51C06AD5D5CEBFBA40C0118815A171AA51C03A0556FFBFBA40C08DA5719571AA51C07A5F65FDBFBA40C0', 14);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E61000000100000001020000001300000012BF547659AA51C0ECFAB9E8C7BA40C08BE14BDB5AAA51C048689907C6BA40C0C6DB04865BAA51C018CAEA7BC5BA40C010604D5F5CAA51C0C4E99783C4BA40C027AF24A55CAA51C0350F8CE0C2BA40C0FD3EFB285CAA51C07696D1B1C0BA40C0D0370FA55BAA51C0ECE94A1EBFBA40C0B8E8375F5BAA51C073C753B9BDBA40C0BB7FFA665BAA51C004016773BCBA40C02F746CBC5CAA51C0B44E998ABBBA40C028E7DF955FAA51C0E4EC4716BCBA40C0726B286F60AA51C00E5D7192BCBA40C0F980ECFA61AA51C07D235ED8BDBA40C07EFFED7E63AA51C00CFE697BBFBA40C02429D16765AA51C07696D1B1C0BA40C0991D43BD66AA51C0AB62054DC1BA40C013403A2268AA51C0F5E64D26C2BA40C0B1A4D5F369AA51C04FF5252EC3BA40C0206BC2396BAA51C0D9A1ACC1C4BA40C0', 11);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E6100000010000000102000000020000009F61A52858AA51C05C53FBA4E0BA40C09F7214F360AA51C0F678A29CD9BA40C0', 12);
INSERT INTO "public"."aristasbuenas" ("wkb_geometry" , "id") VALUES ('0105000020E6100000010000000102000000030000002CDDA9B45CAA51C063F1F695E6BA40C030AC27AD5FAA51C035B24F21E3BA40C0990CD4F25DAA51C0DA330138DCBA40C0', 15);
COMMIT;


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
        a1.id = 9 AND a2.id IN (1, 12, 15, 4, 5)
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


BEGIN;
-- Crear una nueva arista para cada nodo, conectándolo con la arista más cercana
INSERT INTO aristas (wkb_geometry)
SELECT 
    ST_Multi(ST_ShortestLine(n.geom, a.wkb_geometry)) AS new_geom
FROM 
    nodos n,
    LATERAL (
        SELECT a.wkb_geometry
        FROM aristas a
        ORDER BY ST_Distance(a.wkb_geometry, n.geom)
        LIMIT 1
    ) AS a;
COMMIT;