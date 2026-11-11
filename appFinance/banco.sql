CREATE DATABASE empresa_internacional;
USE empresa_internacional;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE acoes (
    id_acoes INT AUTO_INCREMENT PRIMARY KEY,
    valor_acoes DECIMAL(10, 2) NOT NULL,
    tipo_acoes VARCHAR(20) NOT NULL,
    valor_regional DECIMAL(10, 2) NOT NULL
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto INT NOT NULL,
    marca INT NOT NULL,
    qtd INT NOT NULL,
    cor INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_produto INT NOT NULL,
    qtd_compra INT NOT NULL,
    data_compra DATE NOT NULL
);

/*CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_acoes INT NOT NULL,
    id_produto INT NOT NULL,
    qtd_compra INT NOT NULL,
    data_compra DATE NOT NULL
);*/

CREATE TABLE financas (
    id_financas INT AUTO_INCREMENT PRIMARY KEY,
    valor_bruto DECIMAL(10, 2) NOT NULL,
    valor_liquido DECIMAL(10, 2) NOT NULL,
    valor_mensal DECIMAL(10, 2) NOT NULL
);

/*insert infos*/


INSERT INTO usuario (nome, cpf, email, telefone, senha) VALUES 
('Julio Gabriel', '546.879.754-87', 'julio.gabriel@email.com', '(55) 98764-1561', 'subaru');

INSERT INTO usuario (nome, cpf, email, telefone, senha) VALUES 
('Pedro Turolla', '477.789.439-02', 'pedro.turolla@email.com', '(55) 79899-7997', 'reset');


INSERT INTO usuario (nome, cpf, email, telefone, senha) VALUES 
('Nikola Tesla', '345.754.984-63', 'nikola.tesla@email.com', '(55) 86947-9625', 'paco');

INSERT INTO usuario (nome, cpf, email, telefone, senha) VALUES 
('Barack Obama', '457.838.974-57', 'barack.obama@email.com', '(55) 49664-4378', 'patato');


INSERT INTO produtos (nome_produto, marca, qtd, cor, preco) VALUES 
('Notebook Gamer', 'Dell', 15, 'Preto', 4500.00);

INSERT INTO produtos (nome_produto, marca, qtd, cor, preco) VALUES 
('Smartphone Pro', 'Apple', 30, 'Prateado', 6200.00);

INSERT INTO produtos (nome_produto, marca, qtd, cor, preco) VALUES 
('Headset Wireless', 'JBL', 50, 'Azul', 250.00);

INSERT INTO produtos (nome_produto, marca, qtd, cor, preco) VALUES 
('Monitor Ultrawide', 'LG', 20, 'Preto', 1200.00);