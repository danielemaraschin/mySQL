--                ORDER BY

    SELECT * FROM TAB ORDER BY CAMPO

 
--Podemos 'direcionar' a ordenação que os dados serão exibidos.
--
--
   --     AO pedirmos normal ou so colocar order by sem o criterio que quer,
   --     automaticamente os dados irao aparecer na ordem crescente se forem numeros
   --     ou alfabetica inicia do A-Z
--
   --     DESC (DESCENDENTE)
   -- Do maior pro menor, do Z - A.
--
   -- Podemos ter mais de um campo participando da ordenação:
--
   -- O campo 1 será o primeiro a ordenar e dentro dele o segundo campo será ordenado
--
   -- por ex o campo 1 é letra e o 2 são numeros:
--
   -- a 1
   -- a 5
   -- a 99
   -- b 1
   -- b 23
   -- c 5
   -- c 77

--    botei numeros e letra aleatorias so pra mostrar q o q determina a ordem em primeiro nivel é 
--    o campo1 e o campo 2 em segundo nivel.
--    
--EX.:
    select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;

 --   => SELECIONARA PELA ORDEM DA EMBALAGEM PRIMEIRAMENTE E DPS PELO NOME_DO_PRODUTO
--
--
 --   -> Seleciona as embalagens de forma descendente e o nome dos produtos ascendente
    select * from tabela_de_produtos order by EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

    --começa nas pet do nome a, b, ...
    --vai pra lata e dai o nome do prod em ordem alfabetica
    --vai pra garrafas a, b, ..
    



      --                  critério composto:

    select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;
    --        (ordena pela embalagem e dentro do que tem embalagem ordena por nome)


    select * from tabela_de_produtos order by EMBALAGEM DESC, NOME_DO_PRODUTO ASC;
  --      (ordena embalagem da maior pra menor e dentro do que tem embalagem ordena por nome)



--quando é ascendente nao precisa colocar os ASC, o normal é ser ascendente;


  --  Quando quer na order descendente ai deve colocar DESC

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO DESC;