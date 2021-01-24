SELECT DISTINCT BAIRRO FROM tabela_de_clientes;
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;


#juntar duas consultas com o MESMO CAMPO selecionado
SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION all
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS tipo FROM tabela_de_clientes
UNION all
SELECT DISTINCT BAIRRO, NOME, 'vendedor' as tipo FROM tabela_de_vendedores;


SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS tipo_cliente FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO, NOME, 'vendedor' as tipo_vendedor FROM tabela_de_vendedores;

#o nome do campo pesquisado na tabela resultante será o indicado na primeira pesquisa citaDA para aquele campo,
#como eh o caso de 'tipo_cliente' e CPF (vai aparecer o tipo vendedor quando for vendedor, 
#mas o titulo do campo resultante será tipo #tipo_cliente por que foi citado primeiro na pesquisa (consulta acima)
#o mesmo no cpf, o vendedor nao tem cpf cadastrado, somente sua matricula, mas como é um campo de mesmo tipo
# que cpf, então aparece a matricula do vendedor, mesmo que o titulo seja 'cpf' (consulta abaixo)

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS tipo_cliente, cpf FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO, NOME, 'vendedor' as tipo_vendedor, MATRICULA FROM tabela_de_vendedores;
