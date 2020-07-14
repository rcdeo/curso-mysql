USE hcode;

DELIMITER $$
CREATE PROCEDURE sp_funcionario_save (
	pdesnome VARCHAR(256), 
    pvlsalario DECIMAL(10,2),
    pdtadmissao DATETIME
)
BEGIN
	DECLARE vidpessoa INT; /* variável */
    START TRANSACTION;
		
        IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) /* se */
			THEN /* então */
            INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
			SET vidpessoa = LAST_INSERT_ID();
		ELSE /* senão */
			SELECT 'Usuário já cadastrado!' AS resultado;
            ROLLBACK;
		END IF;
        
        IF NOT EXISTS(SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) /* se */
			THEN /* então */
            INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvlsalario, pdtadmissao);
		ELSE /* senão */
			SELECT 'Usuário já cadastrado!' AS resultado;
            ROLLBACK;
		END IF;  
        
        COMMIT;
        SELECT 'Dados cadastrados com sucesso!' AS resultado;
END $$
DELIMITER ;

CALL sp_funcionario_save ('João', 50000, CURRENT_DATE()); /* já existe na tb_pessoas */
CALL sp_funcionario_save ('Divanei', 50000, CURRENT_DATE()); /* não existe, cadastrado */

SELECT * FROM tb_pessoas;
SELECT * FROM tb_funcionarios;