1:
UPDATE cliente
SET email = 'email@email.com.br'
WHERE estado IN ('SP', 'RJ');

2:
UPDATE cliente
SET data_cadastro = '2026-01-01'
WHERE cidade IN ('Manaus');

3:
UPDATE cliente 
SET nome_cliente = 'Michael Jackson'
WHERE id_cliente = 10;

4:
UPDATE produto 
SET nome_produto = 'Nootbook Lenovo IdeaPad7'
WHERE id_produto = 1;

5:
UPDATE venda
SET preco_unitario_venda = '4999.99'
WHERE marca IN ('DELL')
AND categoria IN ('Notebook');
6:
UPDATE venda 
SET desconto_percentual = 0.01
WHERE quantidade = 2;