USE hcode;

/* % - indiferente (coringa) */
/* - (underline) - para pular posição */

SELECT * FROM tb_funcionarios WHERE nome LIKE '%a%'; /* traz todos que tenha a letra 'a' */
SELECT * FROM tb_funcionarios WHERE nome LIKE 'j%'; /* traz apenas o que começam com a letra 'j' */
SELECT * FROM tb_funcionarios WHERE nome LIKE '%a'; /* traz apenas o que terminam com a letra 'a' */
SELECT * FROM tb_funcionarios WHERE nome LIKE '__v%'; /* traz apenas o que tenham a letra 'v' na 3ª posição */
SELECT * FROM tb_funcionarios WHERE nome NOT LIKE 'j%'; /* não traz os que começam com a letra 'j' */

SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 2000;
SELECT * FROM tb_funcionarios WHERE salario NOT BETWEEN 1000 AND 2000;

SELECT * FROM tb_funcionarios WHERE SOUNDEX(nome) = SOUNDEX('Luis'); /* CUIDADO - Exige a primeira igual (não funciona com 'catia' ou 'katia') */
