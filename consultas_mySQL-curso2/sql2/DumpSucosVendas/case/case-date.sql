select nome, DATA_DE_NASCIMENTO,
case
when year(DATA_DE_NASCIMENTO) < 1990 then 'velhos'
when year(DATA_DE_NASCIMENTO)  >= 1990 and year(DATA_DE_NASCIMENTO) <= 1995 then 'jovens'
else 'criança' end as IDADE_STATUS from tabela_de_clientes;


select nome, 
case
when year(DATA_DE_NASCIMENTO) < 1990 then 'velhos'
when year(DATA_DE_NASCIMENTO)  >= 1990 and year(DATA_DE_NASCIMENTO) <= 1995 then 'jovens'
else 'criança' end as IDADE_STATUS from tabela_de_clientes;