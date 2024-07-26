CREATE DATABASE COMERCIO;
USE COMERCIO;

CREATE TABLE CLIENTE(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    NOME VARCHAR(50) NOT NULL, 
    SEXO ENUM("M", "F") NOT NULL, 
    EMAIL VARCHAR(50) NOT NULL UNIQUE, 
    CPF VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE ENDERECO(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(50) NOT NULL, 
    BAIRRO VARCHAR(50) NOT NULL, 
    CEP VARCHAR(15) NOT NULL, 
    CIDADE VARCHAR(30) NOT NULL, 
    ESTADO VARCHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID)
); 

CREATE TABLE TELEFONE(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    DDD VARCHAR(2) NOT NULL, 
    NUMERO VARCHAR(10) NOT NULL, 
    TIPO ENUM("COMERCIAL", "RESIDENCIAL", "CELULAR" , "OUTRO"), 
    ID_CLIENTE INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID)
);

/*
    1x1: A chave estrangeira ficará na tabela mais fraca.
    1xN: A chave estrangeira sempre ficará na cardinalidade N. 
    NxN:


    class Telefone {
        @ManyToOne
        private Customer customer; 
    }

    class Customer {
        @OneToMany(mappedBy = "customer")
        private Collection<Telefone> telefone;
    }

*/

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("João Gabriel Carvalho", "M", "27.joaogabriel@gmail.com", "11122233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Laís Mansano", "F", "lais@gmail.com", "11922233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Antônio Lopes da Cruz", "M", "antonio@gmail.com", "11822233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Doralice de Carvalho", "F", "dora@gmail.com", "11722233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Ruy Barbosa de Carvalho", "M", "ruy@gmail.com", "11622233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Maria José de Carvalho", "F", "maria@gmail.com", "11522233344");

INSERT INTO CLIENTE(NOME, SEXO, EMAIL, CPF) 
VALUES ("Marília Gabriela Carvalho", "F", "mi@gmail.com", "11422233344");

/*__*/

INSERT INTO ENDERECO(RUA, BAIRRO, CEP, CIDADE, ESTADO, ID_CLIENTE) 
VALUES ("Eduardo Martins Romeira", "Jardim Planalto", "19930086", "Ribeirão do Sul", "SP", 1);

INSERT INTO ENDERECO(RUA, BAIRRO, CEP, CIDADE, ESTADO, ID_CLIENTE) 
VALUES ("Eduardo Martins Romeira", "Jardim Planalto", "19930086", "Ribeirão do Sul", "SP", 4);

INSERT INTO ENDERECO(RUA, BAIRRO, CEP, CIDADE, ESTADO, ID_CLIENTE) 
VALUES ("Eduardo Martins Romeira", "Jardim Planalto", "19930086", "Ribeirão do Sul", "SP", 5);

INSERT INTO ENDERECO(RUA, BAIRRO, CEP, CIDADE, ESTADO, ID_CLIENTE) 
VALUES ("Rua Fábio Francisco Bordin Camargo", "Jardim Europa", "19914305", "Ourinhos", "SP", 2);

/*__*/

INSERT INTO TELEFONE(DDD, NUMERO, TIPO, ID_CLIENTE) 
VALUES ("14", "999999999", "CELULAR", 1);

INSERT INTO TELEFONE(DDD, NUMERO, TIPO, ID_CLIENTE) 
VALUES ("14", "33790000", "RESIDENCIAL", 1);

INSERT INTO TELEFONE(DDD, NUMERO, TIPO, ID_CLIENTE) 
VALUES ("14", "999999998", "CELULAR", 2);