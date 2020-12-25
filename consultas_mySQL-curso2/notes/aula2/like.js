colocar %Dado%

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%';

Vai selecionar todos os sabore maçãs e com maça (que contenha maça, pode ter mais de um sabor)
SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%' and 
embalagem = pet;



vai mostrar tudo que contenha maça no sabor e seja da garrafa pet.