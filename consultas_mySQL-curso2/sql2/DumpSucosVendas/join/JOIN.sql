select * from notas_fiscais;

select * from tabela_de_vendedores;

select * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

select a.matricula, a.nome, count(*) from
tabela_de_vendedores a
inner join notas_fiscais b
on a.matricula = b.matricula
group by a.matricula, a.nome;