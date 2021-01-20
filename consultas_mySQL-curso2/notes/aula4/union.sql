--UNION

--Faz a união de 2 ou mais tb;
--É necessário que as tabelas tenham o mesmo numero de campos e sejam do mesmo tipo;
--Se existe duas informações iguais nas diferentes tabelas, essa informação só irá aparecer uma vez;


--como no mySQL não roda full join, pode fazer a consulta usando right join e então union e a mesma consulta com left join;


--EX.: (SUBSTITUINDO FULL JOIN):


select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 DE_FERIAS,
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores right join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
select tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, 
 DE_FERIAS,
 tabela_de_clientes.BAIRRO,
 tabela_de_clientes.NOME
 from tabela_de_vendedores left join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;






--UNION ALL
--
--Coloca todos os dados de todas as tabelas;
--Se algumas informações se repetirem, elas irão aparecer conforme o numero que aparecem nas tabelas