USE hcode;

/* 

VIEWS - um atalho do "select"
 - isolar o banco de dados
 - reduzir código
 - o programador não tem acesso da origem dos dados
 - segunrança
 - integridade

*/

CREATE VIEW v_pedidostotais /* para excluir DROP VIEW <name_view>*/
AS
SELECT b.desnome, 
SUM(a.vlpedido) AS total,
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',	
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
COUNT(*) AS 'total de pedidos'
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa)
GROUP BY b.idpessoa
ORDER BY SUM(a.vlpedido);

SELECT * FROM v_pedidostotais WHERE total > 7000;
