USE hcode;

UPDATE tb_funcionarios
SET salario = 3000 /* apontando */
WHERE id = 5;

SELECT * FROM tb_funcionarios WHERE id = 5;

UPDATE tb_funcionarios
SET salario = 4000, admissao = '2015-12-20' /* Em SET se usa vírgula para mudar várias colunas */
WHERE id = 6; /* Em WHERE se usa operadores, como AND ou OR e não vírgula */

SELECT * FROM tb_funcionarios WHERE id = 6;