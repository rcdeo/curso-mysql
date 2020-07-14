USE hcode;

DELIMITER $$
CREATE FUNCTION fn_imposto_renda (
	pvlsalario DECIMAL (10,2)
)
RETURNS DEC (10,2) /* retorno da function */
BEGIN
	DECLARE vimposto DECIMAL (10,2);
    /*
			até 1903,98 isento
			de 1903,99 até 2826,65 alíquota 7,5% parcela a deduzir 142,80
			de 2826,66 até 3751,05 alíquota 15% parcela a deduzir 354,80
			de 3751,06 até 4664,68 alíquota 22,5% parcela a deduzir 636,13
			acima de 4664,68 alíquota 27,5% parcela a deduzir 869,36
	*/
    SET vimposto = CASE
		WHEN pvlsalario <= 1923.98 THEN 0
		WHEN pvlsalario >= 1923.99 AND pvlsalario <= 2826.65 THEN (pvlsalario * 0.075) - 142.80
		WHEN pvlsalario >= 2826.66 AND pvlsalario <= 3751.05 THEN (pvlsalario * 0.15) - 354.80
		WHEN pvlsalario >= 3751.06 AND pvlsalario <= 4664.68 THEN (pvlsalario * 0.225) - 636.13
		WHEN pvlsalario > 4664.68 THEN (pvlsalario * 0.275) - 869.36
    END;
	
    RETURN vimposto;

END $$
DELIMITER ;

SELECT *, fn_imposto_renda(a.vlsalario) AS vlimposto
	FROM tb_funcionarios a 
	INNER JOIN tb_pessoas b USING(idpessoa);