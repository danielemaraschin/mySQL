SELECT * FROM tabela_de_produtos;

select nome_do_produto, preco_de_lista,
case when preco_de_lista >= 12 then 'produto caro'
when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
else 'produto barato' end as status_preco from tabela_de_produtos;



select embalagem,
case
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end as status_preco, AVG(PRECO_DE_LISTA) AS PREÇO_MÉDIO from tabela_de_produtos
GROUP BY EMBALAGEM,
case
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end order by PREÇO_MÉDIO;