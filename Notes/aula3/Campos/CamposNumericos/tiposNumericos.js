            /Tipos Numéricos/ 

    Campos Numéricos não precisam de aspas ao declarar o valor;
    Decimais devem estar separados por ponto( não vírgula)

    
1) INTEIROS OU DECIMAIS

   1.A) Inteiros:
-TINYINT
-SMALLINT
-MEDINT ...
 *UNSIGNED : SOMENTE POSITIVOS (sem sinal)

    1.B)Decimais:

        -Float: Precisão simples;    
        -Double: arrendondamento mais preciso, mais casas decimais (Precisão dupla)

        por ex.: FLOAT(7,4) = máx 7 antes da virgula e 4. 
                                irá arredondar!
                999,00009 ====> será armazenado 999,0001;
    

        1.B.a)Decimais Fixos:
-Decimal OU Numeric:
    tamanho de até 65 digitos
    declarar campo com quantos números quer 
        DECIMAL(5,2) = 5 numeros antes da virgula e até 2 dps da virgula.
            	        não irá arredondar;


2)  BIT

Só armazena os dígitos 1 ou 0 (ou numeros compostos por eles)
Até 64 bits
Geralmente usado para campos logicos onde o 1 é true e 0 falso;

ex.:
     BIT(1) : SOMENTE 1 OU 0.
     BIT(2) : 01,10,11 ou 00;
     
    