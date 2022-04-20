INSERT INTO Usuarios
VALUES
(1, 'Marcelo Constantino', 'marcelo34@gmail.com', '82133', 434789),
(2, 'Matheus Euclides', 'matheusOOO@outlook.com', '2134', 453897),
(3, 'Marcela Pitagoras', 'marcela344@hotmail.com', '332452', 109982)


INSERT INTO Compras
VALUES
(1, 13.67, 13.67, 'CARTÃO DE CREDITO', 2),
(2, 45.87, 45.87, 'BOLETO', 3),
(3, 890.30, 890.30, 'PIX', 1)


INSERT INTO PRODUTOS
VALUES
(13.67, 1, 'ELETRODOMESTICOS', 2),
(45.87, 1, 'MOVEIS', 1),
(890.30, 1, 'SMARTPHONES', 3)

SELECT * FROM Compras

SELECT * FROM PRODUTOS
WHERE Preco = 890.30

SELECT * FROM Usuarios