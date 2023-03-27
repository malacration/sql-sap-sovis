CREATE OR REPLACE VIEW ASSPRAZOPAGTOEMPRESA AS 
	SELECT
		"IDPRAZOPAGTOERP"  AS "IDPRAZOPAGTOERP",
		"IDEMPRESAERP" AS "IDEMPRESAERP",
		0.00   AS "REAJUSTE",
		0.00   AS "MARGEMPEDIDO",
		0.00   AS "VALORPEDMINIMO",
		0.00   AS "INDICEPEDIDO",
		0.00   AS "MARGEMMEDIAPEDIDO",
		1 AS "COLUNAVENDA",
		1 AS "COLUNADESCONTO",
		0 AS "PRAZOINICIAL",
		'S' AS "IGNORAREGRASALDOCLIENTE",
		0 AS "PRAZOMAXIMO",
		0 AS "PRAZOMINIMO",
		1 AS "QTDEPARCELAS",
		0 AS "PRAZOMEDIOMAXIMO",
		0 AS "VALORPEDMAXIMO",
		1 AS "ASSPRAZOPAGTOEMPRESA.SITUACAO",
		0 AS "PRAZOFIXO"		
	FROM
		prazopagto,empresa
		

SELECT * FROM ASSPRAZOPAGTOEMPRESA
