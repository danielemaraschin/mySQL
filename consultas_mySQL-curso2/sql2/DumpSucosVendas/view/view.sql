SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM TABELA_de_PRODUTOS
GROUP BY EMBALAGEM;

#USANDO SUB-CONSULTA
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM TABELA_de_PRODUTOS
GROUP BY EMBALAGEM) X WHERE X.MAIOR_PRECO >= 10;

#após criação da view podemos consultar diretamente 
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
vw_maiores_embalagens X WHERE X.MAIOR_PRECO >= 10;


select a.nome_do_produto, a.embalagem, a.preco_De_lista, x.maior_preco
from tabela_de_produtos a inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;

#criando indicadores para relatorios:
#verá o valor do produto,o quanto ele é mais barato que o mais caro daquele produto)
select a.nome_do_produto, a.embalagem, a.preco_De_lista, x.maior_preco,
(a.preco_de_lista / x.maior_preco) * 100 as Percentual
from tabela_de_produtos a inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;

#criando indicadores para relatorios:
#verá o valor do produto,o quanto ele é mais barato que o mais caro daquele produto)
select a.nome_do_produto, a.embalagem, a.preco_De_lista, x.maior_preco,
(a.preco_de_lista / x.maior_preco) * 100 as Percentual
from tabela_de_produtos a inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;


#criando indicadores para relatorios:
#verá o valor do produto,o quanto ele é mais barato que o mais caro daquele produto)
select a.nome_do_produto, a.embalagem, a.preco_De_lista, x.maior_preco,
((a.preco_de_lista / x.maior_preco) -1) * 100 as Percentual
from tabela_de_produtos a inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;




