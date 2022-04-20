INSERT INTO Usuarios
VALUES
(1, 'Cleiton Vaz', 'Cleiton@email.com', '93482344'),
(2, 'Marquinhos Relampago', 'Marquinhos@email.com', '4349393'),
(3, 'Jorge Dutra', 'Jorge@email.com', '93428LOVE')

INSERT INTO Tema
VALUES
(1, 'Azul Esverdeado'),
(2, 'Verde Escuro'),
(3, 'Roxo')

INSERT INTO Postagens
VALUES
(1, 'Procuro Agiota que parcele em 24x', 'Estou precisando de dinheiro urgentemente, por favor!', 2, 1),
(2, 'Estou precisando de um Fiat Uno Emprestado, coisa rapida', 'Preciso do carro emprestado para uma emergência, da um help ai po', 3, 3),
(3, 'Solteiro Trabalhador', 'Estou procurando uma bela dama para me acompanhar no clube do livro', 1, 2)

SELECT * FROM Postagens

SELECT * FROM Postagens
WHERE ID = 3

--SELECT Postagens.Descricao
--FROM Postagens
--INNER JOIN Usuarios ON Usuarios.Nome = Usuarios.ID
--Boaz, me ensine depois isso Vou deixar Comentado