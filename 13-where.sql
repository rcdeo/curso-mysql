USE hcode;

/* O OPERADOR RESPEITA O TIPO DE DADO (DATA TYPE) */

SELECT * FROM tb_funcionarios WHERE sexo = 'M' AND salario > 500;
UPDATE tb_funcionarios SET salario = salario * 1.4 WHERE id = 3;
SELECT * FROM tb_funcionarios WHERE sexo = 'M' AND salario > 1000;

SELECT * FROM tb_funcionarios WHERE sexo = 'F' OR salario > 1000;
/*

Tenha respeito e medo do END e pavor do OR. E quando utilizar,
cuidado com a prioridade de operadores, utilize ().

*/