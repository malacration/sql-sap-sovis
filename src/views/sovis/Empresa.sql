CREATE OR REPLACE VIEW EMPRESA AS
SELECT
		"BPLId" AS "IDEMPRESAERP",
		"AliasName" AS "NOME",
		"BPLName"  AS "RSOCIAL",
		SUBSTRING("Address",1,50) AS "ENDERECO",
		0 AS "TIPOEMPRESA",
		'RO' AS "UF",
		0 AS "ALIQUOTAICMS",
		0 AS "CALCULAIPI",
		0 AS "TIPOCALCJUROS",
		0 AS "PORCENTAGEMESTIPULADA",
		"Block"  AS "BAIRRO",
		"City"  AS "CIDADE",
		0 AS "CEP",
		0 AS "IE",
		"TaxIdNum"  AS "CNPJ",
		0 AS "TELEFONE",
		0 AS "FAX",
		'R$' AS "IDMOEDAERP",
		TRUE AS "MENUITEM",
		0 AS "MINIMOPEDIDO"
	FROM
		OBPL
	WHERE "Disabled" = 'N' AND "U_AtivaForca" = 'SIM';