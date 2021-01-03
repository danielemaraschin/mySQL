                JOIN

Possibilidade de unir  uma ou mais tabelas através de campos em comum;

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

Vai fazer o contrário, pegar todos da tb da direita
da esquerda so vai pegar os que tem correspondentes 
e o que não tiver correspondencia vai ter um nulo

SELECT A.NOME, B.HOBBY FROM TABELA_eSQUERDA A right JOIN tabela_direita B
ON A.identificador = B.identificador;