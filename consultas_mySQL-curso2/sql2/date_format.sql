select current_date();

select current_timestamp() as hoje;

select concat ('o dia de hoje é: ', current_timestamp()) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%d/%m/%Y')) as hoje ;

select concat ('o dia de hoje é: ', 
date_format (current_timestamp(), '%d-%m-%y')) as hoje ;

