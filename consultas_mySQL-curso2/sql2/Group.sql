select * from tabela_De_clientes;

select ESTADO, LIMITE_DE_CREDITO from tabela_de_clientes;
select ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL from tabela_de_clientes GROUP BY ESTADO;


select embalagem, preco_De_lista from tabela_de_produtos;

select embalagem , max(preco_De_lista) AS maior_valor from tabela_de_produtos GROUP BY embalagem;

select embalagem, count(*) as contador from tabela_de_produtos group by embalagem;

select bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes group by BAIRRO;
select bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes where cidade = 'RIO DE JANEIRO' group by BAIRRO;

select ESTADO, bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes  group by BAIRRO, estado;
select ESTADO, bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes  where cidade = 'Rio de Janeiro' group by BAIRRO, estado;

#ordenado, grupando e filtrando:

select ESTADO, bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes
where cidade = 'Rio de Janeiro' 
group by BAIRRO, estado
order by bairro;