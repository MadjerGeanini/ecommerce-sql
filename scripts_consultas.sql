SELECT c.nome, COUNT(p.id) AS total_pedidos 
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id;

-- Algum vendedor também é fornecedor?
SELECT c.nome FROM clientes c
INNER JOIN fornecedores f ON c.nome = f.nome;

-- Relação de produtos, fornecedores e estoques
SELECT p.nome AS produto, f.nome AS fornecedor, p.estoque 
FROM produtos p
JOIN fornecedores f ON p.fornecedor_id = f.id;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.nome AS fornecedor, p.nome AS produto 
FROM fornecedores f
JOIN produtos p ON f.id = p.fornecedor_id;