--                HAVING

--Filtro sobre o resultado de um select agrupado.

--Critério que usa com o Having não precisa ser o mesmo usado após o select (SUM,MAX,..)

--O HAVING para o GROUP BY é equiparável ao WHERE para o SELECT
  --  WHERE é usado em contextos mais generalistas.
  --  HAVING é usado em grupos de resultados. 


 --   SELECT, X, SUM de Y, FROM, TAB GROUP BY 


 --ex. Quais foram os clientes que fizeram mais de 2000 compras em 2016?

select cpf, count(*) as numero_de_compras from notas_fiscais
where year(data_venda) = 2016
group by cpf having count(*) > 2000 ;


--ex2:
    --Mostrar qual estado tem a soma de valor de limite de credito superior a 900.000
select estado, sum(limite_DE_credito) as soma_limite from tabela_de_clientes
group by estado
having sum(limite_DE_credito) > 900000;

--ex.2.a
--por exemplo, antes do ex2 pediriamos o limite de credito por estado .. dps pediriamos o ex2 q seria 
--quais tem limite superior a 900000... 
-- sem restringir um minimo do valor de limite de credito o cd seria assim:
    select estado, sum(limite_DE_credito) as soma_limite from tabela_de_clientes
group by estado;
