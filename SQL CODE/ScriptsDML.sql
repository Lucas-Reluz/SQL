INSERT INTO Usuarios
VALUES
(1, 'Yasmin Reluz', 'lucas@email.com', '82133', 'Rua Cleiton Bento , 188 - SP'),
(2, 'Matheus Reluz', 'matheus@email.com', '2134', 'Rua do seu Givaldo, 988 - SP'),
(3, 'Gustavo Reluz', 'gustavo@email.com', '332452', 'Rua do seu Marcio 349 - SP')

INSERT INTO Categorias
VALUES
(1, 'Pets'),
(2, 'Humanos')

INSERT INTO Produtos
VALUES
('Sabonete Dog', 'Sabonete para uso do seu cachorrinho', 2.75, 3, 1),
('Sabonete Cat', 'Sabonete para uso do seu Gato', 5.75, 3, 1),
('Shampoo Seda', 'Shampoo para uso Adulto Humano', 15.25, 2, 1)


INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 2)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua Clei%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5 AND 15

UPDATE Usuarios
SET Nome = 'Yasmin Cristine'
WHERE ID = 1

SELECT * FROM Usuarios

SELECT Usuarios.Nome, SUM(Produtos.Preco) AS Total
FROM Usuarios
INNER JOIN Compras ON Usuarios.ID = Compras.FK_Comprador
INNER JOIN Produtos ON Produtos.ID = Compras.FK_Produto
GROUP BY Usuarios.Nome;