 --           Group
--Juntar elementos da tabela apresentando um resultado

--Apresenta o resultado agrupando valores numéricos

--Podemos aplicar AS SEGUNTES FORMULAS:
--          SUM : somar
--      	MAX: Máximo (número máximo que aparce)
--          MIN: MIN
--          AVG: MÉDIA
--          COUNT: Conta ocorrências (conta o numero de linhas no momento em que agrupa as informacoes)


   --    ->SEM ESPAÇO ENTRE SUM(Y) (SUM E OS PARENTESES)
    --    -> VIRGULA ANTES E ,SUM()
    --          -> apos sum(), AS labelDadoPesquisado
    --( Sempre que utilizar uma fórmula, deve aplicar uma ALIAS `AS`)



--queremos agrupar pelo campo X e somar os valores em y:

        Select X, SUM(Y), FROM tab GROUP BY X.

--       ->SEM ESPAÇO ENTRE SUM(Y) (SUM E OS PARENTESES)
--     -> VIRGULA ANTES E ,SUM()
--    -> apos sum(), AS labelDadoPesquisado
--      -> Sempre que utilizar uma fórmula, deve aplicar uma ALIAS `AS`.

--Quando omitimos o campo de agregação, será agregado pra toda tabela e não precisa escrever group by no finally

        SELECT SUM(Y) FROM TAB


--      Quero saber o total de crédito que tem o estado do rio de Janeiro 
 --           e o total do limite de credito que pode ser dado em sp

    
            SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM TABELA

        
   --     LIMITE DE CREDITO POR BAIRRO
            select bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes group by BAIRRO;
            
            
     --   LIMITE DE CREDITO POR BAIRRO NA CIDADE DO RIO DE Janeiro

        select bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes 
            where cidade = 'RIO DE JANEIRO' group by BAIRRO;
        
       -- - no estado do rio de Janeiro

            select ESTADO, bairro, sum(limite_de_credito) as LIMITE_TOTAL from tabela_de_clientes 
            where cidade = 'Rio de Janeiro' group by BAIRRO, estado;
        
 --       -ordenado:
        select ESTADO, bairro, sum(limite_de_credito) 
        as LIMITE_TOTAL 
        from tabela_de_clientes
        where cidade = 'Rio de Janeiro' 
        group by BAIRRO, estado
        order by bairro;