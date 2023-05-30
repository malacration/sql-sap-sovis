CREATE OR REPLACE VIEW ITEMPEDIDORETORNO AS
SELECT 
DISTINCT
RDR1."ItemCode" AS "IDITEMPEDIDORETORNOERP",
RDR1."U_id_item_forca" AS "IDITEMPEDIDOSOVIS",
(SELECT "ListNum"   FROM OPLN WHERE "ListNum" = 4) AS "IDTABPRECOERP",
"IDPEDIDORETORNOERP" AS "IDPEDIDORETORNOERP",
RDR1."ItemCode" AS "IDPRODUTOERP",
RDR1."Quantity" AS "QTDE",
INV1."Quantity" AS "QTDEFATURADO",
12 AS "DESCONTOPERMITIDO",
RDR1."DiscPrcnt" AS "DESCONTOPRATICADO",
(SELECT "Price"  FROM ITM1 WHERE "PriceList" = 4 AND "ItemCode" = RDR1."ItemCode" ) AS "VALORTABPRECO",
RDR1."PriceBefDi" AS "VALORUNITARIO",
INV1."PriceBefDi" AS "VALORUNFAT",
RDR1."LineTotal" AS "VALORTOTAL",
INV1."LineTotal" AS "VALORTOTALFAT",
0 AS "SALDOGERADO",
0 AS "VALORDIFERENCA",
RDR1."Usage" AS "TIPO",
0 AS "CUSTOPRODUTO",
'N' AS "PACOTE",
'N' AS "IMUTAVEL",
0 AS "IDPACOTE",
0 AS "VALORST",
0 AS "VALORTOTALST", 
'' AS "OBSERVACAO",
0 AS "IDUNIDADEMEDIDAERP",
0 AS "PERCENTUALREAJUST",
0 AS "FATORCONVERSAOESTOQUE",
0 AS"IDTIPOCULTURA",
0 AS "PESO",
0 AS "COMISSAO",
0 AS "INDICERENTABILIDADE"


FROM ORDR  
INNER JOIN RDR1 ON ORDR."DocEntry"  = RDR1."DocEntry"
LEFT JOIN INV1 ON RDR1."DocEntry" = INV1."BaseEntry"
LEFT JOIN OINV ON INV1."DocEntry" = OINV."DocEntry"
INNER JOIN PEDIDORETORNO ON ORDR."DocNum"  = PEDIDORETORNO."IDPEDIDORETORNOERP" 
WHERE ORDR."U_id_pedido_forca" > 0


