#RESPONDER À PERGUNTA: QUAIS VENDAS FORAM VÁLIDAS
#VENDAS INVÁLIDAS SÃO AS QUANTIDADES DE VENDAS (QUANTIDADE_VENDA) SUPERIORES ÀS QUANTIDADES PERMITIDAS (VOLUME_dE_COMPRA)
#TABELA EXERCICIO2
select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 max(tc.VOLUME_DE_COMPRA) as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by nf.cpf, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ');

#USAR SUB-CONSULTAS
#DARÁ O MESMO RESULTADO QUE O CÓDIGO ACIMA POR ENQUANTO
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_PERMITIDA
FROM (select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 max(tc.VOLUME_DE_COMPRA) as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by nf.cpf, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ')) X;






