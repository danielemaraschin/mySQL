                    FILTRANDO DATAS

    por exemplo:

1-  SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';



2-  SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';       
        só irá mostrar quem nasceu depois dps.



3- SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';
            irá mostrar quem nasceu nessa data e antes.

        
    
      Também é possível filtrar pela semana , mes, ano
            (através das funções da Data)

            
            SELECIONAR SOMENTE O Mes/ Ano do campo data

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;

SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;