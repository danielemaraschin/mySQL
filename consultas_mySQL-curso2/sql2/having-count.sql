#Quais foram os clientes que fizeram mais de 2000 compras em 2016?

select VOLUME_DE_COMPRA  FROM TABELA_DE_CLIENTES;

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000