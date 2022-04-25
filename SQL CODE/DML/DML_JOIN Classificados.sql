INSERT INTO Usuarios
VALUES
(1, 'Gevanildo Lopes', 'gevanildo99@gmail.com', 'll234235'),
(2, 'Augusto Vicenzo', 'augustoV@outlook.com',  '230498387666'),
(3, 'Manuel Eustacio', 'manuelEC@hotmail.com', '39483023@CC')

INSERT INTO ANUNCIO
VALUES
(1, 'Trabalho Bem remunerado', 'Trabalhar como ajudante geral, 20 reais por hora', 'CELULAR: 11 983234521', 1),
(2, 'UNO SEM PORTAS, NO PRECINHO', 'Uno zero bala, 4 mil e tu leva na hora, aceito propostas de trocas',  'CELULAR: 11 934529875', 3),
(3, 'Vagas para estagios', 'Trabalhar estagiando em uma empresa focada em desenvolvimento de torneiras voadoras, salario a combinar', 'CELULAR: 11 934023854', 2)


SELECT * FROM Usuarios

SELECT * FROM Usuarios
WHERE ID = 3

SELECT * FROM ANUNCIO

SELECT Usuarios.Nome AS Nome,ANUNCIO.Titulo AS Titulo, Usuarios.Email AS Email, ANUNCIO.Descricao AS Descrição
FROM Usuarios
RIGHT JOIN ANUNCIO ON Usuarios.ID = FK_Usuario
WHERE Descricao LIKE '%Trabalhar como%'
GROUP BY Usuarios.Nome, Usuarios.Email, ANUNCIO.Descricao, ANUNCIO.Titulo

SELECT COUNT(*) Descricao
FROM ANUNCIO


UPDATE ANUNCIO
SET Titulo = Null
WHERE ID = 1