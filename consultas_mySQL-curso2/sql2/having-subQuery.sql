#usando having

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
  
  #usando sub-consultas
  
  select x.cpf, x.numero_vendas from 
(select cpf ,  count(*) as numero_vendas from notas_fiscais
where year(data_venda) = 2016
group by cpf) x 
where x.numero_vendas > 2000;
