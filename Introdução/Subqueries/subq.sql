CREATE DATABASE SELLERS; 

USE SELLERS;

CREATE TABLE SELLER(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(50) NOT NULL, 
    SEXO ENUM("Masculine", "Feminine") NOT NULL, 
    JANUARY FLOAT NOT NULL, 
    FEBRUARY FLOAT NOT NULL, 
    MARCH FLOAT NOT NULL 
); 

INSERT INTO SELLER(NAME, SEXO, JANUARY, FEBRUARY, MARCH) 
VALUES ("João Gabriel Carvalho", "Masculine", 1050.78, 1500.00, 767.90);

INSERT INTO SELLER(NAME, SEXO, JANUARY, FEBRUARY, MARCH) 
VALUES ("Ruy Barbosa", "Masculine", 2020.18, 3500.00, 2468.20);

INSERT INTO SELLER(NAME, SEXO, JANUARY, FEBRUARY, MARCH) 
VALUES ("Antônio Lopes da Cruz", "Masculine", 5050.08, 1200.40, 4219.90);

INSERT INTO SELLER(NAME, SEXO, JANUARY, FEBRUARY, MARCH) 
VALUES ("Doralice de Carvalho Lopes", "Feminine", 1000.00, 1100.00, 1200.00);

INSERT INTO SELLER(NAME, SEXO, JANUARY, FEBRUARY, MARCH) 
VALUES ("Lais Mansano", "Feminine", 4500.00, 6100.00, 7200.00);

SELECT NAME, SEXO, MARCH FROM SELLER 
WHERE MARCH = (SELECT MIN(MARCH) FROM SELLER);

SELECT NAME, MARCH FROM SELLER 
WHERE MARCH = (SELECT MAX(MARCH) FROM SELLER);

SELECT NAME, SEXO, FEBRUARY FROM SELLER 
WHERE FEBRUARY > (SELECT AVG(FEBRUARY) FROM SELLER);