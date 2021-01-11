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