USE hcode;

/* COUNT => exibe o número total de registros da tabaela. */
/* AS => dá um nome a para a coluna da consulta. */
/* CONVERT => converte o resultado da consulta. */

SELECT COUNT(*) AS total FROM tb_funcionarios;

SELECT nome, salario AS atual,
CONVERT(salario * 1.1, DEC(10,2)) AS 'salário com aumento de 10%'
FROM tb_funcionarios;