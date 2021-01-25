select curdate();

select current_time();

select current_timestamp();

select year(current_timestamp());

select day(current_timestamp());

select month(current_timestamp());

select datediff(current_timestamp(), '2017-01-05') as junto_com_mozones;

select datediff(current_timestamp(), '1990-07-08') as dias_vividos_dani;

select datediff(current_timestamp(), '1962-12-15') as dias_vividos_mamys;

select datediff(current_timestamp(), '1953-04-24') as dias_vividos_mamys;

select monthname(current_timestamp());

SELECT date_add(current_timestamp(), INTERVAL 19 DAY) AS 1500_DIAS;

SELECT current_timestamp() AS DIA_HOJE
, date_sub(current_timestamp(), INTERVAL 1000 DAY) AS RESULTADO;