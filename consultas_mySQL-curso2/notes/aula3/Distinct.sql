--Filtros aplicados sobre o resultado Visual
--É aplicado o filtro, mas sobre o resultado eu ainda aplico algumas condições.

                Distinct
-- uso o DISTINCT depois do SELECT e antes da exibição dos campos.


--exemplo: 
        Select Distinct * from TABELA;


     select distinct EMBALAGEM, TAMANHO FROM tabela_de_produtos
            where sabor = 'Laranja';

-- O q está pedindo são os diferentes tamanhos e embalagens do sabor laranja;

    
