FILTROS:

1) Filtrando por apenas 1 característica

            { IGUALDADE }

    SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';
        somente os clientes do rio
ou
    SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';
        Somente o produto sabor cítrico;
ou
    SELECT * FROM tbcliente WHERE IDADE = 22;



        {MAIOR, MENOR, MENOR OU IGUAL, DIFERENTE}

A) NÚMEROS


    SELECT * FROM tbcliente WHERE IDADE > 22;
ou
    SELECT * FROM tbcliente WHERE IDADE < 22;
ou
    SELECT * FROM tbcliente WHERE IDADE <= 22;
ou 
    SELECT * FROM tbcliente WHERE IDADE <> 22; 
<> sinal de diferente, ou seja, todos clientes que não tenham 22 anos


        A.1)FLOAT: As condições igual, diferente, maior, menor, 
                    maior ou igual e menor ou igual
                    não se aplica muito bem a campos FLOAT
            (pq é ponto flutuante, arredondado...)

    


        A.1.a) BETWEEN 
        é o comando usado para filtrar valores através do FLOAT.
        Se sabe que existe por exemplo um valor 19.50 e quer encontrar ele usar o BETWEEN

        SELECT * FROM tb_prod WHERE PRECO_LISTA between 19.49 AND 19.51;


    B) TEXTOS
        => ordem alfabética

            
            
            {BETWEEN AND}

        
    SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;