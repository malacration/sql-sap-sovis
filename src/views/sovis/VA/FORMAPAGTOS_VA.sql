 CREATE OR REPLACE VIEW FORMAPAGTOS_VA AS
 SELECT
		"PayMethCod" AS "IDFORMAPAGTOERP",
		"Descript" AS "DESCRICAO",
		"IDFORMAPAGTOERP",
		"DESCRICAO",
		NULL AS "JURO",
		NULL AS "QTDEPARCELAS",
		NULL AS "TIPO"
	FROM
		OPYM;

