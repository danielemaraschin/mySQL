select distinct data_venda from notas_fiscais;

select distinct data_venda,
 dayname(data_venda) as dia, monthname(data_venda) as mes, year(data_venda) as ano
 from notas_fiscais;