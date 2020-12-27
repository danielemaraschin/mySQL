            Group
Juntar elementos da tabela apresentando um resultado

Apresenta o resultado agrupando valores numéricos

Podemos aplicar:
SUM : somar
MAX: Máximo (número máximo que aparce)
MIN: MIN
AVG: MÉDIA
COUNT: Conta ocorrências (conta o numero de linhas no momento em que agrupa as informacoes)


ex.:

queremos agrupar pelo campo X e somar os valores em y

        Select X, SUM (Y), FROM tab GROUP BY X.

Quando omitimos o campo de agregação, será agregado pra toda tabela e não precisa escrever group by no finally

SELECT SUM (Y) FROM TAB
