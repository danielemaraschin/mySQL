#Quais foram os clientes que fizeram mais de 2000 compras em 2016?

select cpf, count(*) as COMPRAS from notas_fiscais
where YEAR(DATA_VENDA) = 2016 group by cpf 
having count(*) > 2000;

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000