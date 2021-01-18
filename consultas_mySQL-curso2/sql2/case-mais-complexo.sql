select SABOR, embalagem,
case
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
and as status_preco, AVG(PRECO_DE_LISTA) AS PREÇO_MÉDIO from tabela_de_produtos
WHERE SABOR = 'MANGA'
GROUP BY EMBALAGEM,
case
	when preco_de_lista >= 12 then 'produto caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'produto em conta'
	else 'produto barato' 
end order by EMBALAGEM;