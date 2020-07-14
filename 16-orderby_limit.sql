USE hcode;

SELECT * FROM tb_funcionarios ORDER BY nome;
SELECT * FROM tb_funcionarios ORDER BY 2;
SELECT * FROM tb_funcionarios ORDER BY salario; /* por padrão, a ordenação é ASC (ascendente) */
SELECT * FROM tb_funcionarios ORDER BY salario DESC; /* ordena do maior para o menor */
SELECT * FROM tb_funcionarios ORDER BY salario DESC, nome; /* ordena do maior para o menor e depois em ordem alfabética */

SELECT * FROM tb_funcionarios ORDER BY salario LIMIT 3; /* use LIMIT para limitar - principalmente, em tabelas grandes */

SELECT * FROM tb_funcionarios 
WHERE YEAR(admissao) = 2020 AND MONTH(admissao) = 2
ORDER BY salario LIMIT 3; /* ORDEM BY deve vir por último, após o WHERE */