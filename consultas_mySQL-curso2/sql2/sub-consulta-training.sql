  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
  
 select x.embalagem, x.preco_max from 
(select embalagem ,  max(preco_de_lista) as preco_max from tabela_de_produtos
group by EMBALAGEM) x 
where x.preco_max >= 10;

  
  SELECT X.CPF, X.CONTADOR FROM 
(SELECT CPF, COUNT(*) AS CONTADOR FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000;