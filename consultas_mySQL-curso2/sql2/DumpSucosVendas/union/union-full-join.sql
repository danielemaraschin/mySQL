select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores full join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

#codigo acima (no mySQL) nao roda (o full join)
#então faz union 


select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 DE_FERIAS,
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores right join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
union
select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 DE_FERIAS,
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores left join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
