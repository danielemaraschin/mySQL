Campo tipo String 
Cadeias de caracteres (texto)

CHAR - Cadeia de caracteres com valor fixo (0-255)
    CHAR(4) - "aa" - "  aa" 
        Como está indicado 4 caracteres
         vai completar com espaços vazios
          para preencher os 4 espaços.

          -Ocupa mais espaço de memória pq armazena espaços (q podem ser desenecessários)



VARCHAR - Cadeia de caracteres com valor variado (0-255)
    VARCHAR(4) - "aa" - "aa"
        Está indicando 4 caracteres mas só está declarado 2
            Será armazenado somente 2.

            -Ocupa menos memória;