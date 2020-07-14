USE hcode;

/* 

STORED PROCEDURES - colocar grupos de comando SQL compilados dentro do banco de dados. 
	- aceita parâmetros
    - desempenho

*/

DELIMITER $$ /* entende como apenas um comando */
CREATE PROCEDURE sp_pessoa_save (
	pdesnome VARCHAR(256) /* usamos o 'p' referente a "parâmetro" para diferenciar, visto que, não exige caractere especial para uma variável no MySQL */
)
BEGIN /* para inicar o corpo da procedure */
	INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
	SELECT * FROM tb_pessoas WHERE idpessoa = LAST_INSERT_ID();
END $$
DELIMITER ;

CALL sp_pessoa_save('Massaharu'); /* chamando a procedure e inserindo os dados */

