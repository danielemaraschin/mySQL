SELECT LTRIM ('          OLÁ');

SELECT rTRIM ('OLÁ          ') as resultado;

SELECT trim('    OLÁ      ') as resultado;

SELECT concat('OLÁ', ' ', 'tudo bem',  '?') as resultado;

SELECT upper('olá tudo bem?') as resultado;

SELECT LOWER('OLÁ TUDO BEM?') AS RESULTADO;

SELECT SUBSTRING('OLÁ, TUDO BEM?', 6) AS RESULTADO;

SELECT SUBSTRING('OLÁ, TUDO BEM?', 6, 4) AS RESULTADO;

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM tabela_de_clientes;