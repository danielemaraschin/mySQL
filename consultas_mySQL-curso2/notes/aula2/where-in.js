    in

where NOME DO CAMPO in (dados dentro do campo):

ex.:

select * FROM tabela_de_produtos WHERE SABOR IN ('LARANJA',  'MANGA') ;

                    é o mesmo que :

select * FROM tabela_de_produtos WHERE SABOR ='LARANJA' OR SABOR = 'MANGA' ;


select * FROM tabela_de_clientes WHERE cidade IN ('Rio de Janeiro', 'São Paulo') 
and idade >=20;