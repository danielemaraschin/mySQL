Campo tipo String 
Cadeias de caracteres (texto)

Quando declarar o valor colocar entre aspas simples.

CHAR - Cadeia de caracteres com valor fixo (0-255 caracteres)
    CHAR(4) - "aa" - "  aa" 
        Como está indicado 4 caracteres
         vai completar com espaços vazios
          para preencher os 4 espaços.

          -Ocupa mais espaço de memória pq armazena espaços (q podem ser desenecessários)



VARCHAR - Cadeia de caracteres com valor variado (0-255 caracteres)
    VARCHAR(4) - "aa" - "aa"
        Está indicando 4 caracteres mas só está declarado 2
            Será armazenado somente 2.

            -Ocupa menos memória;


BINARY -  Cadeia de caracteres com valor fixo (0-255 bytes) expressos em binários.

VARBINARY - Cadeia de caracteres com valor variado (0-255 bytes) expressos em binários.


BLOB - Binário Longo. Podemos ter:

    TINYBLOB
    BLOB
    MEDIUMBLOB
    LONGBLOB


TEXT - Texto Longo
    TINYTEXT
    TEXT
    MEDIUMTEXT
    LONGTEXT


ENUM

Lista pré-definida de valores 
Somente algum dos valores já definidos

    EX.: Size ENUM ('macho','femea', 'castrado');



SET e COLLATE - 
    Define a cadeia de caracteres quer usar (tipo as tabelas de simbolos)
    Coloca no campo uma tabela ask ??
    pra usar quando tem letra russa, alfabeto chines/japones, ...