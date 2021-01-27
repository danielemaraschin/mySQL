select distinct data_venda from notas_fiscais;

select distinct data_venda,
 dayname(data_venda) as dia, monthname(data_venda) as mes, year(data_venda) as ano
 from notas_fiscais;
 
select NOME, data_de_nascimento from tabela_de_clientes;

select NOME, data_de_nascimento from tabela_de_clientes;

SELECT date_add(current_timestamp(), INTERVAL 19 DAY) AS 1500_DIAS;

SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes

 