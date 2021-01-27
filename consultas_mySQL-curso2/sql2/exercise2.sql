#CONSULTA LIMITE DE COMPRA POR MES POR CLIENTE DE ACORDO COM A QUANTIDADE PERMITIDA
SELECT * FROM tabela_de_clientes tc;

SELECT tc.CPF, tc.NOME, tc.VOLUME_DE_COMPRA as quantidade_limite
FROM tabela_de_clientes tc;

select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 tc.VOLUME_DE_COMPRA as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by (nf.cpf), tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ');

select NF.CPF, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano,
 sum(INF.QUANTIDADE) as quantidade_vendas,
 max(tc.VOLUME_DE_COMPRA) as quantidade_permitida
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
inner join tabela_de_clientes tc
on nf.cpf = tc.cpf
group by nf.cpf, tc.nome, date_format(NF.DATA_VENDA, '%Y - %m ');