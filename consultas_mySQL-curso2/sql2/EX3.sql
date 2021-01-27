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

#comparar o que faltou/passou do limite com quantidade permitida
#se vendeu mais a venda foi invalida
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_PERMITIDA,
X.QUANTIDADE_PERMITIDA - X.QUANTIDADE_VENDAS as diferença
FROM (select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 max(tc.VOLUME_DE_COMPRA) as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by nf.cpf, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ')) X;

#quando a diferença for negativa é pq vendeu mais do que podia então a venda é inválida!
#para mostrar isso usar o case
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_PERMITIDA,
X.QUANTIDADE_PERMITIDA - X.QUANTIDADE_VENDAS as diferença,
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

# TENDO O STATUS DA VENDA, NÃO PRECISA APARECER O CAMPO DIFERENÇA
#PODE APAGAR POR QUE A CONTA ESTÁ SENDO FEITA NOVAMENTE NO CASE WHEN
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



