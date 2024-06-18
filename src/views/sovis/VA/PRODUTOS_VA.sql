CREATE OR REPLACE VIEW PRODUTOS_VA AS
SELECT
	T0."ItemCode" AS "IDPRODUTOERP",
	T3.IDEMPRESAERP AS "IDEMPRESAERP",
	T0."ItemName" AS "DESCRICAO",
	t1."OnHand" AS "ESTOQUE",
	0 AS "CODBARRAS",
	NULL AS "QTDEDECIMAL"
FROM OITM T0
LEFT JOIN OITW t1 ON t0."ItemCode" = t1."ItemCode"
LEFT JOIN OWHS t2 ON t1."WhsCode" = t2."WhsCode" 
LEFT JOIN EMPRESA T3 ON T2."BPLid" = T3.IDEMPRESAERP 
WHERE
	T0."ItemCode"  Like 'PAC%%'
  AND	
 	t0."validFor" = 'Y'; 
	produto."IDPRODUTOERP",
	produto."IDEMPRESAERP",
	produto."DESCRICAO",
	10 AS "ESTOQUE",
	0 AS "CODBARRAS",
	NULL AS "QTDEDECIMAL"
FROM produto

