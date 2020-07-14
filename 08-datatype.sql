/*

DATATYPE


NUMÉRICOS INTEIROS:
- tinyint (1 Byte) -128 até 127 (unsigned 0 até 255)
- smallint (2 Byte) -32768 até 32767
- mediumint (3 Byte) -8388608 até 8388607
- int (4 Byte) -2147483648 até 2147483647
- bigint (8 Byte) -9223372036854775808 até 9223372036854775807
Obs.:
SIGNED (default - permite negativos) e UNSIGNED.
ZEROFILL - preenche espaços vazios da coluna com o número zero (opicional):
Exemplo: INT(4) ZEROFILL, um valor de 5 é recuperado como 0005.


NUMÉRICOS DE PONTO FIXO (EXATO):
- decimal, dec, numeric (sinônimos)
DECIMAL(65,30)
65 - número máximo de dígitos.
30 - número máximo de dígitos do lado direito do separador de casas decimais.
Dígitos de Precisão x Pesos:
0 (0 Byte)
1-2 (1 Byte)
3-4 (2 Byte)
5-6 (3 Byte)
7-9 (4 Byte)
Exemplo: DECIMAL (10,2) = 99999999.99 (10-2 = 8 dígitos de precisão), nesse caso, 4 bytes.


NUMÉRICOS DE PONTO FLUTUANTE (APROXIMADO):
- float, real, double (sinônimos)
FLOAT(255,30)
255 - número máximo de dígitos.
30 - número máximo de dígitos do lado direito do separador de casas decimais.

DATA E HORA:
- date (3 Byte) 1000-01-01 até 9999-12-31 | Ex.: 2017-01-01
- time (3 Byte) 
- datetime (8 Byte) 1000-01-01 00:00:00 até 9999-12-31 23:59:59 | Ex.: 2017-01-15 12:00:00
- timestamp (4 Byte)
- year (1 Byte) Ex.: 2017


TEXTO:
- char(10) (10 Byte)
- varchar(10) (1 a 10 Byte)
- text (1 a 65535 Byte)
- enum (1 ou 2 Byte)
Obs.: 
VARCHAR(10) - depende do conteúdo - 'hcode', por exemplo, contém 5 letras e irá armazenar 5 bytes.
ENUM utilizado para valores predefinidos, como masculino ou feminino.

*/