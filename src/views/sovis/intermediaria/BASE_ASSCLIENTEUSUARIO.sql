CREATE OR REPLACE VIEW BASE_ASSCLIENTEUSUARIO AS 
SELECT
	 OCRD."CardCode"  AS "IDCLIENTEERP",
	 "IDUSUARIOERP" AS "IDUSUARIOERP" 
FROM
	OCRD INNER JOIN USUARIO ON  OCRD."SlpCode" = USUARIO."IDUSUARIOERP"
	INNER JOIN CLIENTE c on(c.IDCLIENTEERP = OCRD."CardCode")
WHERE
	OCRD."CardType" = 'C';
	

	
	
	
	