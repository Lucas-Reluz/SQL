--DML INSERT Usuario
INSERT INTO tb_usuario
VALUES
(1, 'Cleiton Boaz','cleiton@email.com', '342342', 'Rua Augusta - 934', 'Cartão'),
(2, 'Arthur Boaz','arthur@email.com', '123535', 'Rua Querupita - 345', 'Boleto'),
(3, 'Leonardo Boaz','leonardo@email.com', '435743098', 'Rua Miguel - 6584', 'Pix'),
(4, 'Lucas Boaz','lucas@email.com', '347853092', 'Rua Lopes - 234', 'Cartão')


INSERT INTO tb_produtos
VALUES
(1,'TV LG', '70 polegadas HDFULL', 8500.00, 15),
(2, 'SOM Semptoshiba', '1500w', 1000.00, 25),
(3, 'Frigideira Tramontina', '127v Branca ante aderente', 400.00, 48),
(4, 'Geladeira Eletrolux', '127v 20L Duas Portas', 5400.00, 4),
(5, 'Cama BOX', 'Queen size Colxão de molas ensacadas', 4250.00, 6),
(6, 'Batedeira OSTER', 'Batedeira planetaria', 750.00, 15)



INSERT INTO tb_vendas
VALUES
(1,1,2),
(1,1,6),
(2,2,1),
(2,2,4),
(2,2,5);

--LEFT OU RIGHT JOIN
INSERT INTO tb_vendas (ID_Compra, FK_Comprador)
VALUES
(3,3);

INSERT INTO tb_vendas (ID_Compra, FK_produto)
VALUES
(4,1),
(5,1);

SELECT*FROM tb_usuario;
SELECT*FROM tb_produtos;
SELECT*FROM tb_vendas;

SELECT tb_usuario.nome AS Nome, tb_usuario.endereco AS Endereço, tb_produtos.produto AS Produto
FROM tb_usuario
INNER JOIN tb_vendas ON tb_usuario.ID_Usuario = tb_vendas.FK_Comprador
INNER JOIN tb_produtos ON tb_vendas.FK_produto = tb_produtos.ID_produto


SELECT tb_usuario.nome AS Nome,tb_vendas.ID_Compra AS IDVENDA, tb_produtos.produto AS Produto
FROM tb_usuario
LEFT JOIN tb_vendas ON  tb_usuario.ID_Usuario = tb_vendas.FK_Comprador
RIGHT JOIN tb_produtos ON tb_vendas.FK_produto = tb_produtos.ID_produto
WHERE tb_vendas.FK_produto IS NULL;



SELECT tb_usuario.nome AS Nome, SUM(tb_produtos.valor) AS Preço
FROM tb_usuario
INNER JOIN tb_vendas ON tb_usuario.ID_Usuario = tb_vendas.FK_Comprador
INNER JOIN tb_produtos ON tb_vendas.FK_produto = tb_produtos.ID_produto
GROUP BY tb_usuario.nome;

SELECT * FROM tb_produtos
WHERE tb_produtos.produto IN ('TV LG', 'Cama BOX');