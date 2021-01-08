select distinct bairro from tabela_de_vendedores;

select * from tabela_DE_clientes where bairro
in ('TIJUCA', 'JARDINS', 'COPACABANA', 'SANTO AMARO');

select * from tabela_DE_clientes where bairro
in ('TIJUCA', 'JARDINS', 'SANTO AMARO');

select * from tabela_DE_clientes where bairro
in ('TIJUCA', 'JARDINS');

#colocamos a nossa primeira consulta (linha1) dentro dos parenteses

select * from tabela_DE_clientes where bairro
in (select distinct bairro from tabela_de_vendedores);

select embalagem ,  max(preco_de_lista) from tabela_de_produtos
group by EMBALAGEM;