select imposto from notas_fiscais;

select imposto, data_venda from notas_fiscais;

select imposto, DATA_VENDA
from notas_fiscais
WHERE YEAR(data_venda) = 2016;

SELECT PRECO, QUANTIDADE FROM itens_notas_fiscais;

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO *(PRECO * QUANTIDADE)))
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR (DATA_VENDA);

SELECT YEAR(DATA_VENDA) AS ANO, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) AS VALOR_IMPOSTO 
FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016 
GROUP BY YEAR(DATA_VENDA);

