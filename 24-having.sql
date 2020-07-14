USE hcode;

SELECT b.desnome, 
SUM(a.vlpedido) AS total, /* soma */
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',	
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
COUNT(*) AS 'total de pedidos'
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa)
GROUP BY b.idpessoa
HAVING SUM(a.vlpedido) > 6200 /* Cuidado! SQL Injection */
ORDER BY SUM(a.vlpedido); /* ordena por valores */