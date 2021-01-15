
--ordenado, grupando e filtrando:

     select ESTADO, bairro, sum(limite_de_credito) 
      as LIMITE_TOTAL 
      from tabela_de_clientes
      where cidade = 'Rio de Janeiro' 
      group by BAIRRO, estado
      order by bairro;