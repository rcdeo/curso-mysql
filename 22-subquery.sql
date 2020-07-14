USE hcode;

/* SUBQUERY - consultas dentros de outras consultas. */

INSERT INTO tb_pessoas VALUES(NULL, 'José', NULL);
SELECT * FROM tb_pessoas;

SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'J%';

DELETE FROM tb_pessoas WHERE idpessoa IN(
	SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'J%'
); /* Esse script está incorreto. Não é possível excluir com subquery. Você pode informar os IDS dentro da cláusula IN(), mas não devemos usar subquery. */

DELETE FROM tb_pessoas WHERE idpessoa IN(1, 3); 
/* A tabela tb_pessoas está associada com a tabela tb_funcionarios. Assim, é necessário remover os registros relacionados nesta tabela antes de excluir a linha da tb_pessoas */