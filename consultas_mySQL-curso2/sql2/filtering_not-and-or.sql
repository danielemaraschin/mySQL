select * FROM tabela_de_produtos WHERE SABOR = 'MANGA' OR TAMANHO = '470 ml';

select * FROM tabela_de_produtos WHERE SABOR = 'MANGA' and TAMANHO = '470 ml';

select * FROM tabela_de_produtos WHERE not (SABOR = 'MANGA' and TAMANHO = '470 ml');

select * FROM tabela_de_produtos WHERE not (SABOR = 'MANGA' or TAMANHO = '470 ml');

select * FROM tabela_de_produtos WHERE SABOR = 'MANGA'
and not ( TAMANHO = '470 ml');

select * FROM tabela_de_produtos WHERE SABOR IN ('LARANJA',  'MANGA') ;
 #= 
 select * FROM tabela_de_produtos WHERE SABOR ='LARANJA' OR SABOR = 'MANGA' ;
 
 select * FROM tabela_de_clientes WHERE cidade IN ('Rio de Janeiro', 'São Paulo') 
and idade >=20;

 select * FROM tabela_de_clientes WHERE cidade IN ('Rio de Janeiro', 'São Paulo') 
and (idade >= 19 and idade <= 21);