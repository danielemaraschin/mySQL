                        LIMIT

     Limit será sempre a última informação quando digitar a busca:

               1)selecionar
               2) campo(s)
               3)from tabela
               4)where (filtro) => 
               depois de todos esses comandos SQL que coloco o LIMIT e  o número de linhas que quero limitar

               5)LIMIT   NUMERO DE UNIDADES QUE QUER;
                              OU
               5)LIMIT  NUMERO ONDE COMEÇA, NUMERO DE UNIDADES QUE QUER
     

     EX.:
          I)selecionar somente os n primeiros e mostrar so o nome e cpf:
          
               SELECT CPF, NOME FROM tbcliente LIMIT n;


          II)selecionar somente os 5 primeiros e mostrar so o nome e cpf:

                    SELECT CPF, NOME FROM tbcliente LIMIT 5;

          III) selecionar somente os 4 primeiros a partir do 3 elemento da tabela:

                              SELECT * FROM TABELA LIMIT 2,4
               o primeiro eleemento da tabela é considerado o zero
                    então colocar 2 se quer apartir do terceiro.


EX.:
                
    1) Seleciona as 10 primeiras vendas
        select data_venda from notas_fiscais limit 10;


    2) Selecionar as 10 primeiras vendas do dia 01 de janeiro de 2017:
                SELECT * FROM notas_fiscais  WHERE DATA_VENDA = '2017-01-01' limit 10