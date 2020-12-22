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


        A.1)FLOAT: As condições de maior, menor, 
        maior ou igual, menor ou igual, igual e diferente
         não se aplica muito bem a campos FLOAT.

    
    B) TEXTOS
        => ordem alfabética

            
            
            {BETWEEN AND}

        
    SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;