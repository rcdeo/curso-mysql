USE hcode;

 /* 
 
Removing only a specific mode from sql_mode without removing others
SET sql_mode=(SELECT REPLACE(@@sql_mode,'<mode_to_remove>',''));

Adding only one mode to sql_mode without removing existing ones
SET sql_mode=(SELECT CONCAT(@@sql_mode,',<mode_to_add>'));

*/

CREATE TABLE tb_pedidos (
	idpedido INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10,2),
    CONSTRAINT PK_pedidos PRIMARY KEY(idpedido),
    CONSTRAINT FK_pedidos_pessoas  FOREIGN KEY (idpessoa) 
		REFERENCES tb_pessoas (idpessoa)
);

SELECT * FROM tb_pessoas;

INSERT INTO tb_pedidos VALUES(NULL, 1, CURRENT_DATE(), 22000.00);
INSERT INTO tb_pedidos VALUES(NULL, 1, CURRENT_DATE(), 5000);
INSERT INTO tb_pedidos VALUES(NULL, 1, CURRENT_DATE(), 10000);
INSERT INTO tb_pedidos VALUES(NULL, 1, CURRENT_DATE(), 1000);
INSERT INTO tb_pedidos VALUES(NULL, 1, CURRENT_DATE(), 3000);

INSERT INTO tb_pedidos VALUES(NULL, 2, CURRENT_DATE(), 1999.90);
INSERT INTO tb_pedidos VALUES(NULL, 2, CURRENT_DATE(), 2000); /* 2x */
INSERT INTO tb_pedidos VALUES(NULL, 2, CURRENT_DATE(), 123.45);

INSERT INTO tb_pedidos VALUES(NULL, 3, CURRENT_DATE(), 40000);

SELECT * FROM tb_pedidos;
SELECT * FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa);

SELECT b.desnome, a.vlpedido FROM tb_pedidos a 
	INNER JOIN tb_pessoas b USING(idpessoa);
 
 /* 

In your case, if you want to remove only ONLY_FULL_GROUP_BY mode, then use below command:
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

*/

SELECT b.desnome, a.vlpedido FROM tb_pedidos a 
	INNER JOIN tb_pessoas b USING(idpessoa)
    GROUP BY b.idpessoa; /* vem apenas vlpedido do primeiro pedido */

SELECT b.desnome, SUM(a.vlpedido) AS total FROM tb_pedidos a 
	INNER JOIN tb_pessoas b USING(idpessoa)
    GROUP BY b.idpessoa; /* soma os valores dos pedidos */

SELECT b.desnome, SUM(a.vlpedido) AS total, /* soma */
    CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
    CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',	
    CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
    COUNT(*) AS 'total de pedidos'
    FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa)
    GROUP BY b.idpessoa
    ORDER BY SUM(a.vlpedido); /* ordena por valores */
