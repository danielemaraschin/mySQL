#Faça uma consulta listando o nome do cliente e o endereço completo (Com rua, bairro, cidade e estado).

Select nome, concat(endereco_1, ' ', bairro, ' ', cidade, ' ', estado) as cliente_completo from tabela_de_clientes;