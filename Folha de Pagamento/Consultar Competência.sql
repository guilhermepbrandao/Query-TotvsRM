/************************************************************
*   QUERY       : CONSULTAR COMPETENCIA                     *
*   DESCRIÇÃO   : CONSULTAR A COMPETENCIA DE CADA COLIGADA  *
*   CRIAÇÃO     : 16/06/2021                                *
*   AUTOR       : GUILHERME BRANDÃO                         *
************************************************************/

SELECT
EMPRESA = NOMEFANTASIA,
MESCOMP,
ANOCOMP,
MESCAIXA,
ANOCAIXA,
PERIODO,
DIAPAGAMENTO,
PERSEMANAL,
PERQUINZENAL,
PERMENSAL,
TAMCHAPA,
MASCARASECAO,
MODIFICADOPOR = P.RECMODIFIEDBY,
MODIFICADOEM = CONVERT(VARCHAR(10),(P.RECMODIFIEDON),103) +' - '+ CONVERT(VARCHAR(10),(P.RECMODIFIEDON),108)

FROM GCOLIGADA COL
INNER JOIN PPARAM P ON P.CODCOLIGADA = COL.CODCOLIGADA

ORDER BY COL.CODCOLIGADA