--            case = if/else


--usado mais para classificar os dados da tb 
--  jovens, velhos, crianças
--  bom, ruim, mediano


---> usa WHEN não 'where'
--CASE = CASO tal coisa (condição)
--THEN =pega um tipo de campo;

-- se não entrar em nenhuma das condições: ELSE


--WHEN <condição 1> THEN < VALOR1>
--WHEN <condição 2> THEN < VALOR2>
--(...)
--WHEN <condição n> THEN < VALORn>
--ELSE valor ELSE
--END
--AS nome-dessa-classificacao
--from nomeTB

-- EX.: 

select nome, 
case
when year(DATA_DE_NASCIMENTO) < 1990 then 'velhos'
when year(DATA_DE_NASCIMENTO)  >= 1990 and year(DATA_DE_NASCIMENTO) <= 1995 then 'jovens'
else 'criança' end as IDADE_STATUS from tabela_de_clientes;


 