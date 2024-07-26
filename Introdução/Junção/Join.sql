/*
    SELEÇÃO, PROJEÇÃO E JUNÇÃO.

    PROJEÇÃO: É TUDO QUE VOCÊ QUER VISUALIZAR NA TELA.
    SELEÇÃO: É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA. A CLÁUSULA DE SELEÇÃO É O <WHERE>

*/
USE COMERCIO;

/* Forma incorreta */
SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE, ENDERECO 
WHERE CLIENTE.ID = ENDERECO.ID_CLIENTE; 


SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE 
INNER JOIN ENDERECO 
ON CLIENTE.ID = ENDERECO.ID_CLIENTE;

SELECT NOME, CPF, SEXO, EMAIL, DDD, NUMERO, TIPO 
FROM CLIENTE 
INNER JOIN  TELEFONE 
ON CLIENTE.ID = TELEFONE.ID_CLIENTE;

SELECT NOME, CPF, SEXO, EMAIL, DDD, NUMERO, TIPO, RUA, BAIRRO, CEP, CIDADE, ESTADO 
FROM CLIENTE 
INNER JOIN  TELEFONE 
ON CLIENTE.ID = TELEFONE.ID_CLIENTE
INNER JOIN ENDERECO 
ON CLIENTE.ID = ENDERECO.ID_CLIENTE;

SELECT C.NOME, C.CPF, C.SEXO, C.EMAIL, T.DDD, T.NUMERO, T.TIPO, E.RUA, E.BAIRRO, E.CEP, E.CIDADE, E.ESTADO 
FROM CLIENTE C
INNER JOIN  TELEFONE T
ON C.ID = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.ID = E.ID_CLIENTE;