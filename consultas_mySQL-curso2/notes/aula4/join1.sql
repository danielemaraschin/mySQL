-- JOIN
-- 
 SELECT A.CPF, B.CPF FROM tB_CLIENTE A left join tb_nf B 
     ON A.CPF = B.CPF
-- 
-- No ex acima a.CPF e b.cpf AS LETRAS A e B são as labels (alias) dadas para os campos
-- eh possivel colocaR O NOME da tabela ao inves de uma label
-- 
-- Só é obrigado a colocar prefixo/sufixo em campos que são comuns em ambas tabelas.
-- Na duvida colocar como prefixo do campo e sufixo do nome da tabela sempre
-- 
-- EX.:
 select tabela_de_vendedores.BAIRRO,
  tabela_de_vendedores.NOME ,
  DE_FERIAS,
  tabela_de_clientes.BAIRRO,
  tabela_de_clientes.NOME
  from tabela_de_vendedores inner join tabela_de_clientes
 on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
-- 
-- No caso do campo: DE_FERIAS ele só é presente na tabela_de_vendedores então não precisa colocar
--                 tabela_de_vendedores.DE_FERIAS
--     pq o SQL só irá encontrar esse campo na tabela_de_vendedores;
-- 
-- Agora, o BAIRRO é um campo presente nas duas tabelas, então é necessário indicar de qual tabela 
-- tu quer buscar a informacao bairro.