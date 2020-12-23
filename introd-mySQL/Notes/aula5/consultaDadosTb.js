Consultando Dados da TABELA

1) CAMPOS
SELECT * FROM nometb
 o asterisco quer dizer = 'todos os campos'

    Se quiser apenas dois campos ( por exemplo nome):

            select NOME, MATRICULA from tbvendedores;

2) ORDEM (LIMITANDO)
selecionar somente os 5 primeiros e mostrar so o nome e cpf:

SELECT CPF, NOME FROM tbcliente LIMIT 5;


3) Alias / Label / identificador : 'criar' um nome/apelido pro campos

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente;

irá aparecer em cima dos numeros /texto
     do cpf (onde estaria escrito o nome original do campo) CPF_CLIENTE
     do nome : NOME_CLIENTE

=> usamos principalmente quando os campos tem nomes complicados, conforme regra da empresa, 
então colocamos esse nome na hora da consulta para entender melhor a tabela quandop estiver consultando