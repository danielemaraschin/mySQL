Consultando Dados da TABELA

1) CAMPOS
SELECT * FROM nometb
 o asterisco quer dizer = 'todos os campos'

    Se quiser apenas dois campos ( por exemplo nome):

            select NOME, MATRICULA from tbvendedores;

2) ORDEM (LIMITANDO)

     a)LIMIT

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






3) Alias / Label / identificador : 'criar' um nome/apelido pro campos

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente;

irá aparecer em cima dos numeros /texto
     do cpf (onde estaria escrito o nome original do campo) CPF_CLIENTE
     do nome : NOME_CLIENTE

=> usamos principalmente quando os campos tem nomes complicados, conforme regra da empresa, 
então colocamos esse nome na hora da consulta para entender melhor a tabela quandop estiver consultando