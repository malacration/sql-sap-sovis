CREATE OR REPLACE VIEW USUARIO AS
SELECT
    T0."SlpCode" AS "IDUSUARIOERP",
    T0."SlpName" AS "NOME",
    T0."Email" AS "EMAIL",
    T0."Memo" AS "EXTRA1",
    0 AS "PEDIDOEMAIL",
    0 AS "PINCOLOR",
    T0."Telephone" AS "TELEFONE",
    T0."Mobil" AS  "CELULAR"
FROM
    OSLP T0
WHERE
    "U_Integracao_sovis" = 1