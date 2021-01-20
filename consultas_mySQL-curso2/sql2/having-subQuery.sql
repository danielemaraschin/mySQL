#usando having

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
  
  #usando sub-consultas
  
select x.cpf, x.contador from 
(select cpf ,  count(*) as contador from notas_fiscais
where year(data_venda) = 2016
group by cpf) x 
where x.contador > 2000;


SELECT X.CPF, X.CONTADOR FROM 
(SELECT CPF, COUNT(*) AS CONTADOR FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000
