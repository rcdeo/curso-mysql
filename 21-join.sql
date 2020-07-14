USE hcode;

/*

INNER JOIN (intersecção) - somente dados que contenha nas duas tabelas.
LEFT OUTER JOIN - todos os dados da tabela localizada ao lado esquerdo da cláusula JOIN. Da tabela do lado direito, somente os dados relacionados.
RIGHT OUTER JOIN - todos os dados da tabela localizada ao lado direito da cláusula JOIN. Da tabela do lado esquerdo, somente os dados relacionados.

Obs.: LEFT e RIGHT OUTER JOIN possuem a mesma ideia emn lados diferentes. Entretanto, sua diferença será notada em consultas que envolvem mais de uma cláusula JOIN.

*/

SELECT * FROM tb_funcionarios a
INNER JOIN tb_pessoas b ON a.idpessoa = b.idpessoa; /* as letras 'a' e 'b' são apelidos para as tabelas */

SELECT * FROM tb_funcionarios
INNER JOIN tb_pessoas USING(idpessoa); /* ambas as colunas devem possuir o mesmo nome da coluna (ex.: id_pessoa) */

INSERT INTO tb_pessoas VALUES(NULL, 'Glaucio', NULL);

SELECT * FROM tb_pessoas a
LEFT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;

SELECT * FROM tb_pessoas a
RIGHT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;