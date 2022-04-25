INSERT INTO Usuarios
VALUES
(1, 'Jose Aufonso', 'Jose44@hotmail.com', '822343', 'Rua Cleiton Bento , 188 - SP'),
(2, 'Leticia Mercedes', 'Leticia33@gmail.com', '26536', 'Rua do seu Givaldo, 988 - SP'),
(3, 'Audenor Menozato', 'audenor123@outlook.com', '297364mdd', 'Rua do seu Marcio 349 - SP')

INSERT INTO Categorias
VALUES
(1, 'HIGIENE'),
(2, 'ROUPAS')

INSERT INTO Produtos
VALUES
('Pasta de dente', 'Para ficar com os dentes bacanas e sem bafo', 2.75, 3, 1),
('Copo Stanley', 'Copo Bacana ', 34.50, 3, 1),
('Camiseta Preta', 'Camiseta estilosa de gola V', 40.90, 2, 1)


INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 2)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua Clei%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5 AND 40

SELECT Usuarios.Nome AS Nome, SUM(Produtos.Preco) AS 'Total gasto'
FROM Usuarios
INNER JOIN Compras ON Usuarios.ID = Compras.FK_Comprador
INNER JOIN Produtos ON FK_Produto = Produtos.ID
GROUP BY Usuarios.Nome;

SELECT Usuarios.Nome AS Nome, Produtos.NomeProduto AS 'Nome do Produto', Produtos.Preco AS Preço
FROM Usuarios
LEFT JOIN Produtos ON  Usuarios.ID = Produtos.FK_Criador

UPDATE Produtos
SET Preco = NULL
WHERE ID = 1