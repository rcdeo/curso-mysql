CREATE DATABASE hcode;
USE hcode;

CREATE TABLE clientes (
	id INT,
    nome VARCHAR(100)
);

INSERT INTO clientes VALUES(1, 'José da Silva');
SELECT * FROM clientes; /* mostrar a tabela */

INSERT INTO clientes (nome, id) VALUES('João da Silva',2);
SELECT * FROM clientes;