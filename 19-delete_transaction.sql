USE hcode;

DELETE FROM tb_funcionarios WHERE id =1;

START TRANSACTION; /* inica operação*/
    DELETE FROM tb_pessoas; /* exclui os dados da tabela e deixa rastros */
    SELECT * FROM tb_pessoas; /* verificar */
ROLLBACK; /* cancelar a exclusão */

START TRANSACTION; /* inica operação*/
    DELETE FROM tb_pessoas; /* exclui a tabela */
    SELECT * FROM tb_pessoas; /* verificar */
COMMIT; /* confimrar a exclusão */

INSERT INTO tb_pessoas VALUES(NULL, 'José', 'M'); 

TRUNCATE TABLE tb_pessoas; /* limpa tudo */
INSERT INTO tb_pessoas VALUES(NULL, 'José', 'M'); 