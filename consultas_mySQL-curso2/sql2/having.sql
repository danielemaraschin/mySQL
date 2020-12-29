select estado, sum(limite_DE_credito) as soma_limite from tabela_de_clientes
group by estado;

#esse cd não vai funcionar por que quando o rodar o where o groupby ainda nao foi aplicado
select estado, sum(limite_DE_credito) as soma_limite from tabela_de_clientes
where soma_limite > 90
group by estado;

#então usamos o have pra funcionar:

select estado, sum(limite_DE_credito) as soma_limite from tabela_de_clientes
group by estado
having sum(limite_DE_credito) > 900000;
