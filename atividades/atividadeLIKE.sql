SELECT * FROM produto WHERE nome_produto LIKE "D%";

SELECT nome_produto, marca, estoque FROM produto WHERE marca LIKE "%E";

SELECT nome_produto, marca, preco_unitario FROM produto WHERE nome_produto LIKE "%GAMER%";

SELECT * FROM cliente WHERE nome_cliente LIKE "%Barbosa";

SELECT cliente.nome_cliente, venda.data_venda, produto.preco_unitario, venda.forma_pagamento
FROM cliente
INNER JOIN venda, produto
WHERE nome_cliente LIKE "C%";

SELECT produto.nome_produto, produto.preco_unitario, venda.id_venda, venda.forma_pagamento 
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto
WHERE venda.forma_pagamento IN ("PIX", "Boleto") 
OR nome_produto
LIKE "Polegadas%";

SELECT produto.nome_produto, cliente.nome_cliente, venda.forma_pagamento
FROM produto
INNER JOIN venda 
ON venda.id_produto = produto.id_produto   
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
WHERE produto.nome_produto 
IN ('Placa', 'Notebook')
OR cliente.nome_cliente LIKE 'Ana%'
ORDER BY venda.forma_pagamento ASC;