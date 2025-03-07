/*
    PROJECTION -> SELECT
    SELECTION -> WHERE
*/

/* Filtrando */
SELECT NOME AS CUSTOMER, CPF AS DOCUMENT, EMAIL AS USERNAME FROM CLIENTE WHERE SEXO = 'M';

SELECT NOME AS CUSTOMER, CPF AS DOCUMENT, EMAIL AS USERNAME FROM CLIENTE 
WHERE ENDERECO LIKE '%SAO PAULO';

SELECT NOME AS CUSTOMER, CPF AS DOCUMENT, EMAIL AS USERNAME FROM CLIENTE 
WHERE ENDERECO LIKE 'EDUARDO%';

SELECT NOME AS CUSTOMER, CPF AS DOCUMENT, EMAIL AS USERNAME FROM CLIENTE 
WHERE ENDERECO LIKE '%RIBEIRÃO DO SUL%';