/*
  View: Ponteiro para a query.
  A view não duplica os dados no banco. Basicamente, a view é uma tabela virtual.  
*/

USE comercio;

CREATE VIEW REPORT AS 
SELECT C.NOME, C.CPF, C.SEXO, C.EMAIL, T.DDD, T.NUMERO, T.TIPO, E.RUA, E.BAIRRO, E.CEP, E.CIDADE, E.ESTADO 
FROM CLIENTE C
INNER JOIN  TELEFONE T
ON C.ID = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.ID = E.ID_CLIENTE;

SELECT * FROM REPORT;

SELECT NOME, EMAIL, SEXO FROM REPORT;

/*
    Verificar uma view: 
    show tables;

    Apagar uma view: 
    drop view <nome da view>
*/