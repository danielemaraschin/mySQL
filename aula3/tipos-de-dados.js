Tipos de Dados:

Colunas da Tabela são os Campos;

Campos tem tipos e se determinarmos que o campo é do tipo TAL, todaaa aquela coluna será daquele tipo.


            /Tipos Numéricos/ 
INTEIROS OU DECIMAIS

    Inteiros:
-TINYINT
-SMALLINT
-MEDINT ...
 *UNSIGNED : SOMENTE POSITIVOS (sem sinal)

    Decimais:

        Float: Precisão simples;    
        Double: arrendondamento mais preciso, mais casas decimais (Precisão dupla)

        por ex.: FLOAT(7,4) = máx 7 antes da virgula e 4. 
                                irá arredondar!
                999,00009 ====> será armazenado 999,0001;
    
Decimais Fixos:
-Decimal OU Numeric:
    tamanho de até 65 digitos
    declarar campo com quantos números quer 
        DECIMAL(5,2) = 5 numeros antes da virgula e até 2 dps da virgula.
            	        não irá arredondar;
