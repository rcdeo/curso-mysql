USE hcode;

/* CTRL + D - INSERE LINHA */

INSERT INTO tb_pessoas VALUES(1, 'João', 'M'); /* insert posicional */
INSERT INTO tb_pessoas (sexo, nome) VALUES('F', 'Maria'); /* insert declarativo */

SELECT * FROM tb_pessoas;

INSERT INTO tb_pessoas (nome, sexo) VALUES /* insert declarativo múltiplo */
('Divanei','M'),
('Luiz','M'),
('Djalma','M'),
('Natali','F'),
('Tatiane','F'),
('Cristiane','F'),
('Jaqueline','F');

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_pessoas;

INSERT INTO tb_funcionarios /* copiar dados de uma tabela para outra - tb_pessoas para tb_funcionarios */
SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;

SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;
SELECT * FROM tb_funcionarios;
