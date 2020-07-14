USE hcode;

/*

REALCIONAMENTOS:
 - 1 para muitos
 - 1 para 1 (raro)
 - muitos para muitos

*/

DROP TABLE tb_funcionarios;
DROP TABLE tb_pessoas;

/* PADRAO - EXEMPLO	*/
CREATE TABLE tb_pessoas (
	idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(256) NOT NULL,
    dtcadstro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    CONSTRAINT PK_pessoas PRIMARY KEY (idpessoa)
) ENGINE = InnoDB;

CREATE TABLE tb_funcionarios (
	idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL(10,2) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionarios_pessoas FOREIGN KEY (idpessoa)
		REFERENCES tb_pessoas (idpessoa) /* integridade dos dados */
);

INSERT INTO tb_pessoas VALUES(NULL, 'João', NULL);
SELECT * FROM tb_pessoas;

INSERT INTO tb_funcionarios VALUES(NULL, 1, 5000, CURRENT_DATE());
SELECT * FROM tb_funcionarios;
INSERT INTO tb_funcionarios VALUES(NULL, 2, 5000, CURRENT_DATE()); /* não aceita incluir, id = 2 não existe na tb_pessoas*/
