select current_date();

select current_timestamp() as hoje;

select concat ('o dia de hoje é: ', current_timestamp()) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%d/%m/%Y')) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%d-%m-%y')) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%W, %d-%m-%y')) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%W ,%d-%m-%y - %U')) as hoje ;

SELECT CONVERT (23.3, CHAR) AS RESULTADO;

SELECT substring(CONVERT(23.3, CHAR),1, 1) AS RESULTADO;