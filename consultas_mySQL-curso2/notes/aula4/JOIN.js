                JOIN

Possibilidade de unir  uma ou mais tabelas através de campos em comum;
Os campos no final do comando 
on a.identificador = b.identificador

não precisam ter o mesmo nome, mas precisam ter o mesmo conteúdo para poderem se ligar

            inner JOIN

    SELECT A.NOME, B HOBBY FROM TABELA_ESQUERDA A (está dando um as label, um nome pra tab da esq que é onde tem o campo nome)
    inner join tabela_direita b
    on a.identificador = b.identificador

    na tab esq tem o campo nome e o campo identificador;
    na tab direita tem o campo hobby e identificador;
    esses campos identificadores estão presentes nas duas tabelas é o que faz a ligação entre elas possível


            
            LEFT JOIN
(ESQUERDA DO JOIN)

VAI trazer todos da tabela da esquerda (que vem antes da palavra join), mas somente os que tem campos correspondentes da tb direita;
Os que nao tem correspondencia, vem o campo da tb esquerda e o que nao tem na direita vem RESULTADO null.



            right join
RETORNA TODOS DA TABELA DA DIREITA E SOMENTE OS correspondentes NA DA DIREITA

Vai fazer o contrário DA LEFT, pegar todos da tb da direita
da esquerda so vai pegar os que tem correspondentes 
e o que não tiver correspondencia vai ter um nulo

SELECT A.NOME, B.HOBBY FROM TABELA_eSQUERDA A right JOIN tabela_direita B
ON A.identificador = B.identificador;


                FULL JOIN
RETORNA TODOS OS REGISTROS DE TODAS AS TABELAS
Vai pegar todos os dados presentes nas tabelas citadas antes e dps da palavra JOIN
e os campos sem correspondentes terão NULL como resultado;

SELECT A.NOME, B.HOBBY FROM TABELA_ESQUERDA A 
FULL JOIN tabela_direita B ON
A.identificador = b.identificador;



                    CROSS JOIN
    Retorna o produto cartesiano de duas tabelas =
    vai ligar todos os dados de uma tabela com todos os dados da outra.

=> se tem 4 dados na tb da direita e 4 na tb da esquerda, vai resultar numa nova tab de 16 combinações

        SELECT A.NOME, B.HOBBY FROM
        TABELA_ESQUERDA A, tabela_direita B

    (sem nenhuma condição de união dessas tabelas, ou seja, quando não especificar
        como que as tabelas se ligam, fará o plano cartesiano das duas tabelss)





EXEMPLO:

SABER FATURAMENTO ANUAL DA EMPRESA (Apresentando todos os anos)
faturamento: valor x QUANTIDADE
data: para saber o ano


SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF 
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA)