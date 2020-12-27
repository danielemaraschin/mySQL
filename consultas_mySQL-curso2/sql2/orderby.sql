select * from tabela_de_produtos;

select * from tabela_de_produtos order by preco_DE_lista;

select * from tabela_de_produtos order by preco_DE_lista DESC;

select * from tabela_de_produtos order by NOME_DO_PRODUTO;

select * from tabela_de_produtos order by NOME_DO_PRODUTO DESC;

select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;

select * from tabela_de_produtos order by EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

select * from tabela_de_produtos where sabor like '%Morango%';
select * from itens_notas_fiscais where codigo_do_produto = '1101035' order by QUANTIDADE DESC  ;
