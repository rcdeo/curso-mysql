USE hcode;

SELECT * FROM tb_funcionarios;

UPDATE tb_funcionarios
SET salario = salario * 1.1; /* conjunto */
SELECT * FROM tb_funcionarios;

DELETE FROM tb_funcionarios;
SELECT * FROM tb_funcionarios; 

/* UPDATE E DELETE S/WHERE ESTÁ INCORRETO */