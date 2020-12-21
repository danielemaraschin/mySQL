\ALTERAR VALORES CONTIDOS NA TABELA\

1)Selecionar tabela :
 USE nomeDB

UPDATE nomeTabela SET nomeCampo = 'novoValor', nomeCampo2 = novoValor
WHERE nomeDoCampoDeChavePrimária = 'valor do item'; (se a identificacao for um numero, sem aspas)


exemplo:


USE SUCOS;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';
