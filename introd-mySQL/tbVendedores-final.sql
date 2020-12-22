use sucos;

insert into tbvendedores (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES ('00235', 'Márcio Almeida Silva', '2014-08-15', 0.08, 0);

insert into tbvendedores (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES ('00236', 'Cláudia Morais', '2013-09-17', 0.08, 1);

insert into tbvendedores (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES ('00237', 'Roberta Martins', '2017-03-18', 0.11, 1);

insert into tbvendedores (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO, DE_FERIAS)
VALUES ('00238', 'Péricles Alves', '2014-08-21', 0.11, 0);

select NOME, MATRICULA from tbvendedores;

select * FROM tbvendedores WHERE NOME = 'CLÁUDIA MORAIS';
select * FROM tbvendedores WHERE PERCENTUAL_COMISSAO > 0.1;
select * FROM tbvendedores WHERE YEAR(DATA_ADMISSAO) < 2016 AND DE_FERIAS = 1;