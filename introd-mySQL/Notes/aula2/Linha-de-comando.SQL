--Entrar na pasta MySQL Server 8.0 e digitar:
cd bin
dir mysql.exe
mysql -h localhost -u root -p 


--SENDO:
 -h  o nome da maquina por qual queremos acessar
 -u o nome do usuario
 -p a senha, porém após digitarmos -p daremos enter e então na linha seguinte irá pedir a senha


Enter password: 
--colocar senha e dar enter

--o comando agora irá partir do mysql> para mostrar que esta dentro:

mysql>

        --COMANDOS:

--      => CRIAR NOVO BANCO DE DADOS
    mysql> create database sucos;

--      =>  SELECIONAR BANCO DE DADOS EXISTENTE:

    mysql> use nomeDB;

--Irá aparecer a msg: 
    database changed

    mysql> select * from nomeDaTabela;

--SAIR DO BANCO DE DADOS: DIGITAR 
EXIT 
--(Maiuscula ou Minuscula, tanto faz)

mysql>EXIT