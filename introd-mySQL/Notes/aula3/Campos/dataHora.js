DATAS E HORÁRIOS


Date 1000-01-01 ate 9999-12-31 (só armazena a data);
    Se somente o ano que é importante colocar 01-01

Datetime 1000-01-01 00:00:00 até 9999-12-31 23:59:59 (Data e Hora)

TIMESTAMP - 1970-01-01 00:00:01 UTC até 2038-01-19 UTC
    Range menor por que tbm grava fuso-HORÁRIOS 
        quando usa fusos => {geralmente agenda}


TIME - 838:59:59 e 839:59:59 
        só hora


YEAR - 1901-2155 (pode ser expresso em 2 ou 4 digitos)
    Pouco usado
    Geralmente usam o campo Data 
        e colocam 01-01 se o dia/mes nao forem importante
            para so armazenar o ano