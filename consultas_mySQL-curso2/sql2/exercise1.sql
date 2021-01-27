#REGRA DE NEGÓCIO: VOLUME_DE_COMPRA na tb de clientes é o limite que os clientes podem comprar por mes
# Pedido do chefe: RELATÓRIO DE VENDAS VÁLIDAS
# saber se estão respeitando esse volume POR MES



select * from itens_notas_fiscais;
select * from notas_fiscais;

#oq une essas duas tabelas é o campo 'número'que é o numero da nf
select * from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero;

#CPF é o cliente. Pode ver pela data a quantidade de compra mas pode ter mais de uma compra na mesma data
select NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero;

#agrupar pela data mas somente o mes e o ano são importantes
select NF.CPF, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano, INF.QUANTIDADE from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero;

#agora devemos agrupar e somar pq está aparecendo mais de uma venda pro mesmo cliente no mesmo dia
select NF.CPF, date_format(NF.DATA_VENDA, '%Y - %m ') as mes_ano, sum(INF.QUANTIDADE) as quantidade_vendas
from notas_fiscais NF
INNER JOIN itens_notas_fiscais inf
on nf.numero = inf.numero
group by (nf.cpf), date_format(NF.DATA_VENDA, '%Y - %m ');




