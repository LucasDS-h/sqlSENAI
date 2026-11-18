1:
SELECT * FROM produto;

2:
SELECT nome_produto, marca, estoque
FROM produto;

3:
SELECT nome_produto, categoria, marca, preco_unitario, data_cadastro
FROM produto 
ORDER BY marca ASC;

4:
SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
ORDER BY data_cadastro ASC;

5:
SELECT * FROM cliente;

6:
SELECT nome_cliente, email, cidade, estado
FROM cliente;

7:
SELECT nome_cliente, cidade, estado
FROM cliente
ORDER BY estado ASC;

8:
SELECT nome_cliente, email, estado, data_cadastro
FROM cliente
ORDER BY data_cadastro ASC;

9:
SELECT * FROM venda;

10:
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento
FROM cliente
INNER JOIN venda;

11:
SELECT produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda
FROM produto
INNER JOIN venda;

12:
SELECT produto.nome_produto, venda.preco_unitario_venda, venda.forma_pagamento
FROM produto
INNER JOIN venda
WHERE forma_pagamento IN ("PIX", "Boleto");

12.1:
SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda
FROM cliente
INNER JOIN produto, venda;

13:
SELECT produto.nome_produto, venda.desconto_percentual, venda.data_venda
FROM produto
INNER JOIN venda
ORDER BY data_venda ASC;

14:
SELECT produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento, venda.status_venda
FROM produto
INNER JOIN cliente, venda
ORDER BY status_venda ASC;

15:
SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca, produto.categoria, venda.forma_pagamento, venda.status_venda
FROM cliente
INNER JOIN produto, venda
ORDER BY  status_venda DESC;