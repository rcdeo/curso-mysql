USE hcode;

SELECT * FROM tb_funcionarios WHERE cadastro > '2016-01-01';
SELECT * FROM tb_funcionarios WHERE cadastro > '2016.01.01';
SELECT * FROM tb_funcionarios WHERE cadastro > '2016/01/01';
SELECT * FROM tb_funcionarios WHERE cadastro > '20160101';

UPDATE tb_funcionarios SET admissao = CURRENT_DATE() WHERE id = 1;
UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60 DAY) WHERE id = 2; /* add 60 dias na data de admissão */
SELECT * FROM tb_funcionarios;

SELECT DATEDIFF(admissao, CURRENT_DATE()) AS 'diferença de dias' FROM tb_funcionarios WHERE id=2; 
SELECT * FROM tb_funcionarios WHERE MONTH(admissao) = 4;