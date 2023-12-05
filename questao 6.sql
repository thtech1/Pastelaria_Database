SELECT p.idproduto, p.nome AS nome_pastel, sum(it.quantidade) AS quantidade_vendas
FROM produtos p
JOIN categoria_produtos cp ON p.id_categoria_prod = cp.idcategoria_produto
JOIN itens_do_pedido it ON p.idproduto = it.id_produto
WHERE p.id_categoria_prod = 1  
GROUP BY p.idproduto, p.nome
ORDER BY quantidade_vendas ASC;
-- Liste quais são os pastéis mais vendidos, incluindo a quantidade de vendas em ordem crescente.