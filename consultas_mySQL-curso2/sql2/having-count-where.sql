#Quais foram os clientes que fizeram mais de 2000 compras em 2016?

select cpf, count(*) as numero_de_compras from notas_fiscais
where year(data_venda) = 2016
group by cpf having count(*) > 2000 ;