SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_PERMITIDA,
CASE when (X.QUANTIDADE_PERMITIDA - X.QUANTIDADE_VENDAS) < 0 then 'inválida'
else 'válida' end as status_venda
FROM (select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 max(tc.VOLUME_DE_COMPRA) as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by nf.cpf, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ')) X;

#TAREFA: Mostrar somente as vendas inválidas, 
#calculando a diferença entre o limite de venda máximo e o realizado, em percentuais.


SELECT 
	X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,
	CASE WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDA'
		ELSE 'VÁLIDA' 
	END AS STATUS_VENDA, 
    (1 - (X.QUANTIDADE_LIMITE/X.QUANTIDADE_VENDAS)) * 100 AS PERCENTUAL
FROM 
	(SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS MES_ANO, 
    SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS, 
    MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON TC.CPF = NF.CPF
	GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) X
		WHERE (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0;