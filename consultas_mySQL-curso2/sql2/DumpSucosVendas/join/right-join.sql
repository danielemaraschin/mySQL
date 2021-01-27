select distinct a.cpf, a.nome, b.cpf from notas_fiscais b 
 RIGHT join tabela_de_clientes a
 on a.cpf= b.cpf
 WHERE B.CPF IS NULL;