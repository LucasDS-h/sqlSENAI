1°
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente)
on DELETE CASCADE

DELETE FROM cliente 
WHERE id_cliente = 5;

2°
DELETE FROM cliente
WHERE estado = 'SC';

3°
DELETE FROM produto
WHERE  marca = 'LG';

4°
DELETE FROM produto
WHERE id_produto IN (3, 5, 10);

5°
DELETE FROM venda
WHERE desconto_percentual = 0

6°
DELETE FROM venda
WHERE status_venda = 'Cancelada'

-- Atividade INSERT--
1°
INSERT INTO cliente(nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesiano", "ruber.sesi@gmail.com", "Jaguaríuna", "São paulo", "vigente");

2° 
INSERT INTO produto(nome_produto, categoria, marca, preco_unitario, estoque, ativo, data_cadastro)
VALUES ("MousePad 5POL", "Acessorios", "Lumix", 59.98, 35, "ativo", "vigente");

3°
INSERT INTO venda(id_produto, id_cliente, data_venda, quantidade, preco_unitario_venda, desconto_percentual, forma_pagamento, status_venda)
VALUES (21, 101, "2026-10-21", 10, 599.80, 1.33, "PIX", "Concluida"); 