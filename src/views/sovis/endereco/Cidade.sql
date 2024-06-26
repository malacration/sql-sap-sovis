CREATE OR REPLACE VIEW CIDADE AS
    SELECT DISTINCT
        T0."AbsId" AS "IDCIDADEERP",
        T1."Code" AS "IDESTADOERP",
        T0."Name" AS "DESCRICAO",
        0 AS "VALORFRETEVOLUME",
        0 AS "COEFTABPRECO"
    FROM
        OCNT T0 
        INNER JOIN OCST T1 ON T0."State" = T1."Code"
    WHERE
        T0."AbsId" <> 5581;