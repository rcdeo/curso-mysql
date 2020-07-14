DROP DATABASE banco;
DROP DATABASE hcode;

CREATE DATABASE hcode;
USE hcode;
CREATE TABLE tb_funcionarios (
	id INT,
    nome VARCHAR(100),
    salario DECIMAL(10,2), /* 12345678.90 */
    admissao DATE,
    sexo ENUM('F', 'M'), /* para valores predefinidos */
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP() /* data e hora do cadastro no banco */
);

INSERT INTO tb_funcionarios VALUES(1, 'Pedro Henqiue', 4999.99, '2016-01-01', 'M', NULL);

DESCRIBE tb_funcionarios; /* mostra o nome das colunas e os tipos de dados */

SELECT * FROM tb_funcionarios;