SELECT (23+ (25-2)/2 * 45) AS RESULTADO;

SELECT FLOOR(12.777777) AS RESULTADO;
SELECT ceiling(12.777777) AS RESULTADO;
SELECT round(12.777777) AS RESULTADO;

SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE * PRECO AS FATURAMENTO
 FROM itens_notas_fiscais;
 
 SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO) AS FATURAMENTO
 FROM itens_notas_fiscais;
 
 
 #ROUND TEM O PARAMETRO QUE PODE COLOCAR O NUMERO DE CASAS DECIMAIS DPS DA VIRGULA
  SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
 FROM itens_notas_fiscais;