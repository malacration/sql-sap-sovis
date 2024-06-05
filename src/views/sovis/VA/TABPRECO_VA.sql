  CREATE OR REPLACE VIEW TABPRECO_VA AS
SELECT
	T0."ListNum" AS "IDTABPRECOERP",
	0 AS "IDEMPRESAERP", 
	T0."ListName" AS "DESCRICAO",
	IFNULL(CAST(T0."ValidTo" AS DATE),'2100-01-01') AS "DATAVALIDADE"
  FROM OPLN T0
 WHERE T0."U_publica_forca" = 1 
   AND T0."U_tipoComissao" <> '';
  