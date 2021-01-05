select count(*) from tabela_de_clientes;

# eu usei o COUNT, não coloquei campo na frente, então não precisa usar GROUP BY.

select cpf, count(*) from notas_fiscais group by cpf;

select distinct a.cpf, a.nome, b.cpf from tabela_de_clientes a
 inner join notas_fiscais b
 on a.cpf= b.cpf;


select distinct a.cpf, a.nome, b.cpf from tabela_de_clientes a
left join notas_fiscais b
 on a.cpf= b.cpf; 