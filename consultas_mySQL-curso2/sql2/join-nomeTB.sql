SELECT * FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes;

SELECT count(*) FROM tabela_de_clientes;

select * from tabela_de_vendedores inner join tabela_de_clientes
	on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
    
    
    
select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME , 
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores inner join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;



    
select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 DE_FERIAS,
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores inner join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;