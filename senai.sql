ATIVIDADE 1

CREATE DATABASE comprasSN;
USE comprasSN;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade_vendida INT NOT NULL,
    data_compra DATE NOT NULL
);

INSERT INTO cliente(nome_cliente, email, telefone)
VALUE ("Patroclo Santo", "zzz.estelar@gmail.com", "19-98545-6575");

INSERT INTO cliente(nome_cliente, email, telefone)
VALUE ("tony", "jarvisGOD@gmail.com", "19-96657-3184");

INSERT INTO cliente(nome_cliente, email, telefone)
VALUE ("Sherk", "nocobromuncho@gmail.com", "19-65677-4532");


INSERT INTO produto(nome_produto, preco,)
VALUE ("katana", 99.99);

INSERT INTO produto(nome_produto, preco,)
VALUE ("kit de sobrevivencia", 299.99);

INSERT INTO produto(nome_produto, preco,)
VALUE ("processador ryzen 5 5800x", 1200.45);

INSERT INTO compra(id_cliente, id_produto, quantidade_vendida, data_compra)
VALUE ("1", "1", 65, "08-12-2026");

INSERT INTO compra(id_cliente, id_produto, quantidade_vendida, data_compra)
VALUE ("2", "2", 10, "15-02-2026");

INSERT INTO compra(id_cliente, id_produto, quantidade_vendida, data_compra)
VALUE ("3", "3", 500, "28-05-2026");

ALTER TABLE aluno
ADD CONSTRAINT uk_email_unico UNIQUE(email);

USE comprassn;

UPDATE compra
SET data_compra = '2026-06-02'
WHERE id_compra = 1;

UPDATE compra
SET data_compra = '2026-07-11'
WHERE id_compra = 2;

UPDATE compra
SET data_compra = '2026-10-01'
WHERE id_compra = 3;


ATIVIDAD 2

CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL,
    curso VARCHAR (10) NOT NULL
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (30) NOT NULL,
    nome_autor VARCHAR (30) NOT NULL,
    data_publicada DATE NULL
);

CREATE TABLE empretismo (
    id_empretismo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_empretismo DATE NULL,
    data_devolução DATE NULL
);

INSERT INTO aluno(nome, email, curso)
VALUE ("Natalian Ramos do santos", "natalan@gmail.com", "1ºD");

INSERT INTO aluno(nome, email, curso)
VALUE ("Icaris taquito miculandi", "Insolara@gmail.com", "3ºA");

INSERT INTO aluno(nome, email, curso)
VALUE ("Teostra de Monster Hunter", "lunastra@gmail.com", "2ºF");

INSERT INTO livro(titulo, nome_autor, data_publicada)
VALUE ("Piter Pan", "Singaloa", "1898-03-11");

INSERT INTO livro(titulo, nome_autor, data_publicada)
VALUE ("Santa claus", "Nicolas tesla", "0666-01-11");

INSERT INTO livro(titulo, nome_autor, data_publicada)
VALUE ("pepito e a sua travesia", "Pepe choco milk", "2025-08-12");

INSERT INTO empretismo(id_aluno, id_livro, data_empretismo, data_devolução)
VALUE ("3", "2", "2026-06-08", "2026-07-10");

INSERT INTO empretismo(id_aluno, id_livro, data_empretismo, data_devolução)
VALUE ("1", "3", "2026-10-12", "2026-12-11");

INSERT INTO empretismo(id_aluno, id_livro, data_empretismo, data_devolução)
VALUE ("2", "1", "2026-06-12", "2026-09-10");


ALTER TABLE empretismo
ADD CONSTRAINT uk_email_unico UNIQUE(email);